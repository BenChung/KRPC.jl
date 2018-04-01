

function compute_reference_frame(body, lat, lon, alt::Float64)
    landing_position = SurfacePosition(body, lat, lon, body_frame)
    q_long = (
        0.0,
        sin(-lon * 0.5 * pi / 180),
        0.0,
        cos(-lon * 0.5 * pi / 180))
    q_lat = (
        0.0,
        0.0,
        sin(lat * 0.5 * pi / 180),
        cos(lat * 0.5 * pi / 180))
    cr1 = CreateRelative(body_frame, position=landing_position, rotation=q_long)
    cr2 = CreateRelative(cr1,rotation=q_lat)
    return CreateRelative(cr2,position=(alt,0.0,0.0))
end


function restrict_to_circle(radius, origin, vector)
    if norm(vector+origin) < radius
        return vector
    end
    normal = vector/norm(vector)
    inner = dot(normal, origin)^2 - norm(origin)^2 + radius^2
    if inner < 0
        # not intersecting, this is a weird case
        # we have to truncate the base vector to the sphere
        # shouldn't happen in real life, but needs to be handled
        return norm(origin)*radius - origin
    elseif inner == 0
        # bas must be touching the outside of the sphere
        # truncate the entire vector
        return vector*0
    elseif inner > 0
        # two solutions
        st = -dot(normal,origin)
        sol1 = st+sqrt(inner)
        sol2 = st-sqrt(inner)

        #we want the closest positive solution
        if sol1 < 0 && sol2 > 0
            out = sol2
        elseif sol1 > 0 && sol2 < 0
            out = sol1
        elseif sol1 < 0 && sol2 < 0 # they're both behind... somehow
            return norm(origin)*radius - origin
        elseif sol1 < sol2
            out = sol1
        else
            out = sol2
        end
        if out < norm(vector)
            return out * normal
        else
            return vector
        end
    end 
end 
function restrict_to_cone(basev, vect, conedir, theta)
    a = basev
    b = vect
    v = conedir
    lambdasq = cosd(theta)^2

    quad_a = dot(b,b)*(1-lambdasq) - dot(b,v)^2
    quad_b = 2*(dot(a,b)- lambdasq * dot(a,b) - dot(a,v) * dot(b,v))
    quad_c = dot(a,a) - lambdasq * dot(a,a) - dot(a,v)^2

    determinant = quad_b^2 - 4*quad_a*quad_c
    if determinant >= 0 && a != 0
        #intersection - need to find which is right
        #will always be the positive solution
        sol1 = (-quad_b + sqrt(determinant))/(2*quad_a)
        sol2 = (-quad_b - sqrt(determinant))/(2*quad_a)
        if sol1 >= 0
            return b*clamp(sol1,0,1)
        elseif sol2 >= 0
            return b*clamp(sol2,0,1)
        else
            return b #dunno
        end
    else
        # no intersections
        return vect
    end
end


function trajectory_predictor(itime::Float64, bodypos::SVector{3,Float64}, mu::Float64, 
                              pos::SVector{3,Float64}, vel::SVector{3,Float64})
    steps = 30
    dt = itime/steps
    println(dt)
    cpos = pos
    cvel = vel
    for i=1:steps
        bodyvec = cpos - bodypos
        accel = -mu / (norm(bodyvec)^3) * bodyvec
        cvel = cvel + accel*dt
        cpos = cpos + cvel*dt
    end
    return cvel, cpos
end