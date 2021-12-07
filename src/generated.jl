module Interface
module UI
import ...kRPCTypes
import ...Request
module RemoteTypes
import ....kRPCTypes
import ....KRPCConnection
struct Button <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Canvas <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct InputField <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Panel <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct RectTransform <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Text <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct UI
    conn::KRPCConnection
end
export Button, Canvas, InputField, Panel, RectTransform, Text
export UI
end
struct EFontStyle <: kRPCTypes.Enum
    value::Int32
end
const EFontStyle_Normal = EFontStyle(0)
const EFontStyle_Bold = EFontStyle(1)
const EFontStyle_Italic = EFontStyle(2)
const EFontStyle_BoldAndItalic = EFontStyle(3)
struct EMessagePosition <: kRPCTypes.Enum
    value::Int32
end
const EMessagePosition_BottomCenter = EMessagePosition(0)
const EMessagePosition_TopCenter = EMessagePosition(1)
const EMessagePosition_TopLeft = EMessagePosition(2)
const EMessagePosition_TopRight = EMessagePosition(3)
struct ETextAlignment <: kRPCTypes.Enum
    value::Int32
end
const ETextAlignment_Left = ETextAlignment(0)
const ETextAlignment_Right = ETextAlignment(1)
const ETextAlignment_Center = ETextAlignment(2)
struct ETextAnchor <: kRPCTypes.Enum
    value::Int32
end
const ETextAnchor_LowerCenter = ETextAnchor(0)
const ETextAnchor_LowerLeft = ETextAnchor(1)
const ETextAnchor_LowerRight = ETextAnchor(2)
const ETextAnchor_MiddleCenter = ETextAnchor(3)
const ETextAnchor_MiddleLeft = ETextAnchor(4)
const ETextAnchor_MiddleRight = ETextAnchor(5)
const ETextAnchor_UpperCenter = ETextAnchor(6)
const ETextAnchor_UpperLeft = ETextAnchor(7)
const ETextAnchor_UpperRight = ETextAnchor(8)
export EFontStyle, EMessagePosition, ETextAlignment, ETextAnchor
struct AddCanvas <: Request{:UI, :AddCanvas, RemoteTypes.Canvas}
    AddCanvas() = begin
            new()
        end
end
struct Message <: Request{:UI, :Message, Nothing}
    Message(content::String, duration::Float32, position::EMessagePosition, color::begin
                    Tuple{Float64, Float64, Float64}
                end, size::Float32) = begin
            new(content, duration, position, color, size)
        end
    content::String
    duration::Float32
    position::EMessagePosition
    color::begin
            Tuple{Float64, Float64, Float64}
        end
    size::Float32
end
struct Clear <: Request{:UI, :Clear, Nothing}
    Clear(clientOnly::Bool) = begin
            new(clientOnly)
        end
    clientOnly::Bool
end
struct get_StockCanvas <: Request{:UI, :get_StockCanvas, RemoteTypes.Canvas}
    get_StockCanvas() = begin
            new()
        end
end
struct Button_Remove <: Request{:UI, :Button_Remove, Nothing}
    Button_Remove(this::RemoteTypes.Button) = begin
            new(this)
        end
    this::RemoteTypes.Button
end
struct Button_get_RectTransform <: Request{:UI, :Button_get_RectTransform, RemoteTypes.RectTransform}
    Button_get_RectTransform(this::RemoteTypes.Button) = begin
            new(this)
        end
    this::RemoteTypes.Button
end
struct Button_get_Text <: Request{:UI, :Button_get_Text, RemoteTypes.Text}
    Button_get_Text(this::RemoteTypes.Button) = begin
            new(this)
        end
    this::RemoteTypes.Button
end
struct Button_get_Clicked <: Request{:UI, :Button_get_Clicked, Bool}
    Button_get_Clicked(this::RemoteTypes.Button) = begin
            new(this)
        end
    this::RemoteTypes.Button
end
struct Button_set_Clicked <: Request{:UI, :Button_set_Clicked, Nothing}
    Button_set_Clicked(this::RemoteTypes.Button, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Button
    value::Bool
end
struct Button_get_Visible <: Request{:UI, :Button_get_Visible, Bool}
    Button_get_Visible(this::RemoteTypes.Button) = begin
            new(this)
        end
    this::RemoteTypes.Button
end
struct Button_set_Visible <: Request{:UI, :Button_set_Visible, Nothing}
    Button_set_Visible(this::RemoteTypes.Button, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Button
    value::Bool
end
struct Canvas_AddPanel <: Request{:UI, :Canvas_AddPanel, RemoteTypes.Panel}
    Canvas_AddPanel(this::RemoteTypes.Canvas, visible::Bool) = begin
            new(this, visible)
        end
    this::RemoteTypes.Canvas
    visible::Bool
end
struct Canvas_AddText <: Request{:UI, :Canvas_AddText, RemoteTypes.Text}
    Canvas_AddText(this::RemoteTypes.Canvas, content::String, visible::Bool) = begin
            new(this, content, visible)
        end
    this::RemoteTypes.Canvas
    content::String
    visible::Bool
end
struct Canvas_AddInputField <: Request{:UI, :Canvas_AddInputField, RemoteTypes.InputField}
    Canvas_AddInputField(this::RemoteTypes.Canvas, visible::Bool) = begin
            new(this, visible)
        end
    this::RemoteTypes.Canvas
    visible::Bool
end
struct Canvas_AddButton <: Request{:UI, :Canvas_AddButton, RemoteTypes.Button}
    Canvas_AddButton(this::RemoteTypes.Canvas, content::String, visible::Bool) = begin
            new(this, content, visible)
        end
    this::RemoteTypes.Canvas
    content::String
    visible::Bool
end
struct Canvas_Remove <: Request{:UI, :Canvas_Remove, Nothing}
    Canvas_Remove(this::RemoteTypes.Canvas) = begin
            new(this)
        end
    this::RemoteTypes.Canvas
end
struct Canvas_get_RectTransform <: Request{:UI, :Canvas_get_RectTransform, RemoteTypes.RectTransform}
    Canvas_get_RectTransform(this::RemoteTypes.Canvas) = begin
            new(this)
        end
    this::RemoteTypes.Canvas
end
struct Canvas_get_Visible <: Request{:UI, :Canvas_get_Visible, Bool}
    Canvas_get_Visible(this::RemoteTypes.Canvas) = begin
            new(this)
        end
    this::RemoteTypes.Canvas
end
struct Canvas_set_Visible <: Request{:UI, :Canvas_set_Visible, Nothing}
    Canvas_set_Visible(this::RemoteTypes.Canvas, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Canvas
    value::Bool
end
struct InputField_Remove <: Request{:UI, :InputField_Remove, Nothing}
    InputField_Remove(this::RemoteTypes.InputField) = begin
            new(this)
        end
    this::RemoteTypes.InputField
end
struct InputField_get_RectTransform <: Request{:UI, :InputField_get_RectTransform, RemoteTypes.RectTransform}
    InputField_get_RectTransform(this::RemoteTypes.InputField) = begin
            new(this)
        end
    this::RemoteTypes.InputField
end
struct InputField_get_Value <: Request{:UI, :InputField_get_Value, String}
    InputField_get_Value(this::RemoteTypes.InputField) = begin
            new(this)
        end
    this::RemoteTypes.InputField
end
struct InputField_set_Value <: Request{:UI, :InputField_set_Value, Nothing}
    InputField_set_Value(this::RemoteTypes.InputField, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.InputField
    value::String
end
struct InputField_get_Text <: Request{:UI, :InputField_get_Text, RemoteTypes.Text}
    InputField_get_Text(this::RemoteTypes.InputField) = begin
            new(this)
        end
    this::RemoteTypes.InputField
end
struct InputField_get_Changed <: Request{:UI, :InputField_get_Changed, Bool}
    InputField_get_Changed(this::RemoteTypes.InputField) = begin
            new(this)
        end
    this::RemoteTypes.InputField
end
struct InputField_set_Changed <: Request{:UI, :InputField_set_Changed, Nothing}
    InputField_set_Changed(this::RemoteTypes.InputField, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.InputField
    value::Bool
end
struct InputField_get_Visible <: Request{:UI, :InputField_get_Visible, Bool}
    InputField_get_Visible(this::RemoteTypes.InputField) = begin
            new(this)
        end
    this::RemoteTypes.InputField
end
struct InputField_set_Visible <: Request{:UI, :InputField_set_Visible, Nothing}
    InputField_set_Visible(this::RemoteTypes.InputField, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.InputField
    value::Bool
end
struct Panel_AddPanel <: Request{:UI, :Panel_AddPanel, RemoteTypes.Panel}
    Panel_AddPanel(this::RemoteTypes.Panel, visible::Bool) = begin
            new(this, visible)
        end
    this::RemoteTypes.Panel
    visible::Bool
end
struct Panel_AddText <: Request{:UI, :Panel_AddText, RemoteTypes.Text}
    Panel_AddText(this::RemoteTypes.Panel, content::String, visible::Bool) = begin
            new(this, content, visible)
        end
    this::RemoteTypes.Panel
    content::String
    visible::Bool
end
struct Panel_AddInputField <: Request{:UI, :Panel_AddInputField, RemoteTypes.InputField}
    Panel_AddInputField(this::RemoteTypes.Panel, visible::Bool) = begin
            new(this, visible)
        end
    this::RemoteTypes.Panel
    visible::Bool
end
struct Panel_AddButton <: Request{:UI, :Panel_AddButton, RemoteTypes.Button}
    Panel_AddButton(this::RemoteTypes.Panel, content::String, visible::Bool) = begin
            new(this, content, visible)
        end
    this::RemoteTypes.Panel
    content::String
    visible::Bool
end
struct Panel_Remove <: Request{:UI, :Panel_Remove, Nothing}
    Panel_Remove(this::RemoteTypes.Panel) = begin
            new(this)
        end
    this::RemoteTypes.Panel
end
struct Panel_get_RectTransform <: Request{:UI, :Panel_get_RectTransform, RemoteTypes.RectTransform}
    Panel_get_RectTransform(this::RemoteTypes.Panel) = begin
            new(this)
        end
    this::RemoteTypes.Panel
end
struct Panel_get_Visible <: Request{:UI, :Panel_get_Visible, Bool}
    Panel_get_Visible(this::RemoteTypes.Panel) = begin
            new(this)
        end
    this::RemoteTypes.Panel
end
struct Panel_set_Visible <: Request{:UI, :Panel_set_Visible, Nothing}
    Panel_set_Visible(this::RemoteTypes.Panel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Panel
    value::Bool
end
struct RectTransform_get_Position <: Request{:UI, :RectTransform_get_Position, begin
                Tuple{Float64, Float64}
            end}
    RectTransform_get_Position(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_Position <: Request{:UI, :RectTransform_set_Position, Nothing}
    RectTransform_set_Position(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64}
        end
end
struct RectTransform_get_LocalPosition <: Request{:UI, :RectTransform_get_LocalPosition, begin
                Tuple{Float64, Float64, Float64}
            end}
    RectTransform_get_LocalPosition(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_LocalPosition <: Request{:UI, :RectTransform_set_LocalPosition, Nothing}
    RectTransform_set_LocalPosition(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct RectTransform_get_Size <: Request{:UI, :RectTransform_get_Size, begin
                Tuple{Float64, Float64}
            end}
    RectTransform_get_Size(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_Size <: Request{:UI, :RectTransform_set_Size, Nothing}
    RectTransform_set_Size(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64}
        end
end
struct RectTransform_get_UpperRight <: Request{:UI, :RectTransform_get_UpperRight, begin
                Tuple{Float64, Float64}
            end}
    RectTransform_get_UpperRight(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_UpperRight <: Request{:UI, :RectTransform_set_UpperRight, Nothing}
    RectTransform_set_UpperRight(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64}
        end
end
struct RectTransform_get_LowerLeft <: Request{:UI, :RectTransform_get_LowerLeft, begin
                Tuple{Float64, Float64}
            end}
    RectTransform_get_LowerLeft(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_LowerLeft <: Request{:UI, :RectTransform_set_LowerLeft, Nothing}
    RectTransform_set_LowerLeft(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64}
        end
end
struct RectTransform_set_Anchor <: Request{:UI, :RectTransform_set_Anchor, Nothing}
    RectTransform_set_Anchor(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64}
        end
end
struct RectTransform_get_AnchorMax <: Request{:UI, :RectTransform_get_AnchorMax, begin
                Tuple{Float64, Float64}
            end}
    RectTransform_get_AnchorMax(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_AnchorMax <: Request{:UI, :RectTransform_set_AnchorMax, Nothing}
    RectTransform_set_AnchorMax(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64}
        end
end
struct RectTransform_get_AnchorMin <: Request{:UI, :RectTransform_get_AnchorMin, begin
                Tuple{Float64, Float64}
            end}
    RectTransform_get_AnchorMin(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_AnchorMin <: Request{:UI, :RectTransform_set_AnchorMin, Nothing}
    RectTransform_set_AnchorMin(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64}
        end
end
struct RectTransform_get_Pivot <: Request{:UI, :RectTransform_get_Pivot, begin
                Tuple{Float64, Float64}
            end}
    RectTransform_get_Pivot(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_Pivot <: Request{:UI, :RectTransform_set_Pivot, Nothing}
    RectTransform_set_Pivot(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64}
        end
end
struct RectTransform_get_Rotation <: Request{:UI, :RectTransform_get_Rotation, begin
                Tuple{Float64, Float64, Float64, Float64}
            end}
    RectTransform_get_Rotation(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_Rotation <: Request{:UI, :RectTransform_set_Rotation, Nothing}
    RectTransform_set_Rotation(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64, Float64, Float64}
        end
end
struct RectTransform_get_Scale <: Request{:UI, :RectTransform_get_Scale, begin
                Tuple{Float64, Float64, Float64}
            end}
    RectTransform_get_Scale(this::RemoteTypes.RectTransform) = begin
            new(this)
        end
    this::RemoteTypes.RectTransform
end
struct RectTransform_set_Scale <: Request{:UI, :RectTransform_set_Scale, Nothing}
    RectTransform_set_Scale(this::RemoteTypes.RectTransform, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.RectTransform
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Text_Remove <: Request{:UI, :Text_Remove, Nothing}
    Text_Remove(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_get_RectTransform <: Request{:UI, :Text_get_RectTransform, RemoteTypes.RectTransform}
    Text_get_RectTransform(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_get_AvailableFonts <: Request{:UI, :Text_get_AvailableFonts, begin
                Array{String, 1}
            end}
    Text_get_AvailableFonts(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_get_Content <: Request{:UI, :Text_get_Content, String}
    Text_get_Content(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Content <: Request{:UI, :Text_set_Content, Nothing}
    Text_set_Content(this::RemoteTypes.Text, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::String
end
struct Text_get_Font <: Request{:UI, :Text_get_Font, String}
    Text_get_Font(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Font <: Request{:UI, :Text_set_Font, Nothing}
    Text_set_Font(this::RemoteTypes.Text, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::String
end
struct Text_get_Size <: Request{:UI, :Text_get_Size, Int32}
    Text_get_Size(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Size <: Request{:UI, :Text_set_Size, Nothing}
    Text_set_Size(this::RemoteTypes.Text, value::Int32) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::Int32
end
struct Text_get_Style <: Request{:UI, :Text_get_Style, EFontStyle}
    Text_get_Style(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Style <: Request{:UI, :Text_set_Style, Nothing}
    Text_set_Style(this::RemoteTypes.Text, value::EFontStyle) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::EFontStyle
end
struct Text_get_Alignment <: Request{:UI, :Text_get_Alignment, ETextAnchor}
    Text_get_Alignment(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Alignment <: Request{:UI, :Text_set_Alignment, Nothing}
    Text_set_Alignment(this::RemoteTypes.Text, value::ETextAnchor) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::ETextAnchor
end
struct Text_get_LineSpacing <: Request{:UI, :Text_get_LineSpacing, Float32}
    Text_get_LineSpacing(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_LineSpacing <: Request{:UI, :Text_set_LineSpacing, Nothing}
    Text_set_LineSpacing(this::RemoteTypes.Text, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::Float32
end
struct Text_get_Color <: Request{:UI, :Text_get_Color, begin
                Tuple{Float64, Float64, Float64}
            end}
    Text_get_Color(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Color <: Request{:UI, :Text_set_Color, Nothing}
    Text_set_Color(this::RemoteTypes.Text, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Text_get_Visible <: Request{:UI, :Text_get_Visible, Bool}
    Text_get_Visible(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Visible <: Request{:UI, :Text_set_Visible, Nothing}
    Text_set_Visible(this::RemoteTypes.Text, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::Bool
end
export AddCanvas, Message, Clear, get_StockCanvas, Button_Remove, Button_get_RectTransform, Button_get_Text, Button_get_Clicked, Button_set_Clicked, Button_get_Visible, Button_set_Visible, Canvas_AddPanel, Canvas_AddText, Canvas_AddInputField, Canvas_AddButton, Canvas_Remove, Canvas_get_RectTransform, Canvas_get_Visible, Canvas_set_Visible, InputField_Remove, InputField_get_RectTransform, InputField_get_Value, InputField_set_Value, InputField_get_Text, InputField_get_Changed, InputField_set_Changed, InputField_get_Visible, InputField_set_Visible, Panel_AddPanel, Panel_AddText, Panel_AddInputField, Panel_AddButton, Panel_Remove, Panel_get_RectTransform, Panel_get_Visible, Panel_set_Visible, RectTransform_get_Position, RectTransform_set_Position, RectTransform_get_LocalPosition, RectTransform_set_LocalPosition, RectTransform_get_Size, RectTransform_set_Size, RectTransform_get_UpperRight, RectTransform_set_UpperRight, RectTransform_get_LowerLeft, RectTransform_set_LowerLeft, RectTransform_set_Anchor, RectTransform_get_AnchorMax, RectTransform_set_AnchorMax, RectTransform_get_AnchorMin, RectTransform_set_AnchorMin, RectTransform_get_Pivot, RectTransform_set_Pivot, RectTransform_get_Rotation, RectTransform_set_Rotation, RectTransform_get_Scale, RectTransform_set_Scale, Text_Remove, Text_get_RectTransform, Text_get_AvailableFonts, Text_get_Content, Text_set_Content, Text_get_Font, Text_set_Font, Text_get_Size, Text_set_Size, Text_get_Style, Text_set_Style, Text_get_Alignment, Text_set_Alignment, Text_get_LineSpacing, Text_set_LineSpacing, Text_get_Color, Text_set_Color, Text_get_Visible, Text_set_Visible
module Helpers
import ....kerbal
import ....KRPCConnection
import ....Request
import ..RemoteTypes
import ...UI.ETextAnchor
import ...UI.EFontStyle
import ...UI.EMessagePosition
import ..AddCanvas as var"##1580"
AddCanvas(conn::KRPCConnection) = begin
        kerbal(conn, var"##1580"())
    end
@doc "    AddCanvas()\n\nAdd a new canvas.\n\n# Remarks\n If you want to add UI elements to KSPs stock UI canvas, use . \n" AddCanvas
export AddCanvas
import ..Message as var"##1581"
Message(conn::KRPCConnection, content::String, duration::Float32 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x80, 0x3f], Float32), position::EMessagePosition = getJuliaValue(this.conn, UInt8[0x02], EMessagePosition), color::begin
                    Tuple{Float64, Float64, Float64}
                end = getJuliaValue(this.conn, UInt8[0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x3f, 0x0a, 0x08, 0x71, 0x3d, 0x0a, 0xd7, 0xa3, 0x70, 0xed, 0x3f, 0x0a, 0x08, 0xfc, 0xa9, 0xf1, 0xd2, 0x4d, 0x62, 0x90, 0x3f], begin
                    Tuple{Float64, Float64, Float64}
                end), size::Float32 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0xa0, 0x41], Float32)) = begin
        kerbal(conn, var"##1581"(content, duration, position, color, size))
    end
@doc "    Message(content::String, duration::Float32, position::EMessagePosition, color::begin\n    Tuple{Float64, Float64, Float64}\nend, size::Float32)\n\nDisplay a message on the screen.\n\n# Arguments\n- `content::String`: Message content.\n- `duration::Float32`: Duration before the message disappears, in seconds.\n- `position::EMessagePosition`: Position to display the message.\n- `size::Float32`: Size of the message, differs per position.\n- `color::begin\n    Tuple{Float64, Float64, Float64}\nend`: The color of the message.\n# Remarks\n The message appears just like a stock message, for example quicksave or quickload messages. \n" Message
export Message
import ..Clear as var"##1582"
Clear(conn::KRPCConnection, clientOnly::Bool = getJuliaValue(this.conn, UInt8[0x00], Bool)) = begin
        kerbal(conn, var"##1582"(clientOnly))
    end
@doc "    Clear(clientOnly::Bool)\n\nRemove all user interface elements.\n\n# Arguments\n- `clientOnly::Bool`: If true, only remove objects created by the calling client.\n" Clear
export Clear
import ..get_StockCanvas as var"##1583"
StockCanvas(this::RemoteTypes.UI) = begin
        kerbal(this.conn, var"##1583"())
    end
@doc "    StockCanvas()\n\nThe stock UI canvas.\n\n" StockCanvas
export StockCanvas
import ..Button_Remove as var"##1584"
Remove(this::RemoteTypes.Button) = begin
        kerbal(this.conn, var"##1584"(this))
    end
@doc "    Remove(this::RemoteTypes.Button)\n\nRemove the UI object.\n\n" Remove
export Remove
import ..Button_get_RectTransform as var"##1585"
RectTransform(this::RemoteTypes.Button) = begin
        kerbal(this.conn, var"##1585"(this))
    end
@doc "    RectTransform(this::RemoteTypes.Button)\n\nThe rect transform for the text.\n\n" RectTransform
export RectTransform
import ..Button_get_Text as var"##1586"
Text(this::RemoteTypes.Button) = begin
        kerbal(this.conn, var"##1586"(this))
    end
@doc "    Text(this::RemoteTypes.Button)\n\nThe text for the button.\n\n" Text
export Text
import ..Button_get_Clicked as var"##1587"
Clicked(this::RemoteTypes.Button) = begin
        kerbal(this.conn, var"##1587"(this))
    end
@doc "    Clicked(this::RemoteTypes.Button)\n\nWhether the button has been clicked.\n\n# Remarks\n This property is set to true when the user clicks the button. A client script should reset the property to false in order to detect subsequent button presses. \n" Clicked
export Clicked
import ..Button_set_Clicked as var"##1588"
Clicked!(this::RemoteTypes.Button, value::Bool) = begin
        kerbal(this.conn, var"##1588"(this, value))
    end
@doc "    Clicked!(this::RemoteTypes.Button, value::Bool)\n\nWhether the button has been clicked.\n\n# Remarks\n This property is set to true when the user clicks the button. A client script should reset the property to false in order to detect subsequent button presses. \n" Clicked!
export Clicked!
import ..Button_get_Visible as var"##1589"
Visible(this::RemoteTypes.Button) = begin
        kerbal(this.conn, var"##1589"(this))
    end
@doc "    Visible(this::RemoteTypes.Button)\n\nWhether the UI object is visible.\n\n" Visible
export Visible
import ..Button_set_Visible as var"##1590"
Visible!(this::RemoteTypes.Button, value::Bool) = begin
        kerbal(this.conn, var"##1590"(this, value))
    end
@doc "    Visible!(this::RemoteTypes.Button, value::Bool)\n\nWhether the UI object is visible.\n\n" Visible!
export Visible!
import ..Canvas_AddPanel as var"##1591"
AddPanel(this::RemoteTypes.Canvas, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1591"(this, visible))
    end
@doc "    AddPanel(this::RemoteTypes.Canvas, visible::Bool)\n\nCreate a new container for user interface elements.\n\n# Arguments\n- `visible::Bool`: Whether the panel is visible.\n" AddPanel
export AddPanel
import ..Canvas_AddText as var"##1592"
AddText(this::RemoteTypes.Canvas, content::String, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1592"(this, content, visible))
    end
@doc "    AddText(this::RemoteTypes.Canvas, content::String, visible::Bool)\n\nAdd text to the canvas.\n\n# Arguments\n- `content::String`: The text.\n- `visible::Bool`: Whether the text is visible.\n" AddText
export AddText
import ..Canvas_AddInputField as var"##1593"
AddInputField(this::RemoteTypes.Canvas, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1593"(this, visible))
    end
@doc "    AddInputField(this::RemoteTypes.Canvas, visible::Bool)\n\nAdd an input field to the canvas.\n\n# Arguments\n- `visible::Bool`: Whether the input field is visible.\n" AddInputField
export AddInputField
import ..Canvas_AddButton as var"##1594"
AddButton(this::RemoteTypes.Canvas, content::String, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1594"(this, content, visible))
    end
@doc "    AddButton(this::RemoteTypes.Canvas, content::String, visible::Bool)\n\nAdd a button to the canvas.\n\n# Arguments\n- `content::String`: The label for the button.\n- `visible::Bool`: Whether the button is visible.\n" AddButton
export AddButton
import ..Canvas_Remove as var"##1595"
Remove(this::RemoteTypes.Canvas) = begin
        kerbal(this.conn, var"##1595"(this))
    end
@doc "    Remove(this::RemoteTypes.Canvas)\n\nRemove the UI object.\n\n" Remove
export Remove
import ..Canvas_get_RectTransform as var"##1596"
RectTransform(this::RemoteTypes.Canvas) = begin
        kerbal(this.conn, var"##1596"(this))
    end
@doc "    RectTransform(this::RemoteTypes.Canvas)\n\nThe rect transform for the canvas.\n\n" RectTransform
export RectTransform
import ..Canvas_get_Visible as var"##1597"
Visible(this::RemoteTypes.Canvas) = begin
        kerbal(this.conn, var"##1597"(this))
    end
@doc "    Visible(this::RemoteTypes.Canvas)\n\nWhether the UI object is visible.\n\n" Visible
export Visible
import ..Canvas_set_Visible as var"##1598"
Visible!(this::RemoteTypes.Canvas, value::Bool) = begin
        kerbal(this.conn, var"##1598"(this, value))
    end
@doc "    Visible!(this::RemoteTypes.Canvas, value::Bool)\n\nWhether the UI object is visible.\n\n" Visible!
export Visible!
import ..InputField_Remove as var"##1599"
Remove(this::RemoteTypes.InputField) = begin
        kerbal(this.conn, var"##1599"(this))
    end
@doc "    Remove(this::RemoteTypes.InputField)\n\nRemove the UI object.\n\n" Remove
export Remove
import ..InputField_get_RectTransform as var"##1600"
RectTransform(this::RemoteTypes.InputField) = begin
        kerbal(this.conn, var"##1600"(this))
    end
@doc "    RectTransform(this::RemoteTypes.InputField)\n\nThe rect transform for the input field.\n\n" RectTransform
export RectTransform
import ..InputField_get_Value as var"##1601"
Value(this::RemoteTypes.InputField) = begin
        kerbal(this.conn, var"##1601"(this))
    end
@doc "    Value(this::RemoteTypes.InputField)\n\nThe value of the input field.\n\n" Value
export Value
import ..InputField_set_Value as var"##1602"
Value!(this::RemoteTypes.InputField, value::String) = begin
        kerbal(this.conn, var"##1602"(this, value))
    end
@doc "    Value!(this::RemoteTypes.InputField, value::String)\n\nThe value of the input field.\n\n" Value!
export Value!
import ..InputField_get_Text as var"##1603"
Text(this::RemoteTypes.InputField) = begin
        kerbal(this.conn, var"##1603"(this))
    end
@doc "    Text(this::RemoteTypes.InputField)\n\nThe text component of the input field.\n\n# Remarks\n Use  to get and set the value in the field. This object can be used to alter the style of the input field's text. \n" Text
export Text
import ..InputField_get_Changed as var"##1604"
Changed(this::RemoteTypes.InputField) = begin
        kerbal(this.conn, var"##1604"(this))
    end
@doc "    Changed(this::RemoteTypes.InputField)\n\nWhether the input field has been changed.\n\n# Remarks\n This property is set to true when the user modifies the value of the input field. A client script should reset the property to false in order to detect subsequent changes. \n" Changed
export Changed
import ..InputField_set_Changed as var"##1605"
Changed!(this::RemoteTypes.InputField, value::Bool) = begin
        kerbal(this.conn, var"##1605"(this, value))
    end
@doc "    Changed!(this::RemoteTypes.InputField, value::Bool)\n\nWhether the input field has been changed.\n\n# Remarks\n This property is set to true when the user modifies the value of the input field. A client script should reset the property to false in order to detect subsequent changes. \n" Changed!
export Changed!
import ..InputField_get_Visible as var"##1606"
Visible(this::RemoteTypes.InputField) = begin
        kerbal(this.conn, var"##1606"(this))
    end
@doc "    Visible(this::RemoteTypes.InputField)\n\nWhether the UI object is visible.\n\n" Visible
export Visible
import ..InputField_set_Visible as var"##1607"
Visible!(this::RemoteTypes.InputField, value::Bool) = begin
        kerbal(this.conn, var"##1607"(this, value))
    end
@doc "    Visible!(this::RemoteTypes.InputField, value::Bool)\n\nWhether the UI object is visible.\n\n" Visible!
export Visible!
import ..Panel_AddPanel as var"##1608"
AddPanel(this::RemoteTypes.Panel, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1608"(this, visible))
    end
@doc "    AddPanel(this::RemoteTypes.Panel, visible::Bool)\n\nCreate a panel within this panel.\n\n# Arguments\n- `visible::Bool`: Whether the new panel is visible.\n" AddPanel
export AddPanel
import ..Panel_AddText as var"##1609"
AddText(this::RemoteTypes.Panel, content::String, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1609"(this, content, visible))
    end
@doc "    AddText(this::RemoteTypes.Panel, content::String, visible::Bool)\n\nAdd text to the panel.\n\n# Arguments\n- `content::String`: The text.\n- `visible::Bool`: Whether the text is visible.\n" AddText
export AddText
import ..Panel_AddInputField as var"##1610"
AddInputField(this::RemoteTypes.Panel, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1610"(this, visible))
    end
@doc "    AddInputField(this::RemoteTypes.Panel, visible::Bool)\n\nAdd an input field to the panel.\n\n# Arguments\n- `visible::Bool`: Whether the input field is visible.\n" AddInputField
export AddInputField
import ..Panel_AddButton as var"##1611"
AddButton(this::RemoteTypes.Panel, content::String, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1611"(this, content, visible))
    end
@doc "    AddButton(this::RemoteTypes.Panel, content::String, visible::Bool)\n\nAdd a button to the panel.\n\n# Arguments\n- `content::String`: The label for the button.\n- `visible::Bool`: Whether the button is visible.\n" AddButton
export AddButton
import ..Panel_Remove as var"##1612"
Remove(this::RemoteTypes.Panel) = begin
        kerbal(this.conn, var"##1612"(this))
    end
@doc "    Remove(this::RemoteTypes.Panel)\n\nRemove the UI object.\n\n" Remove
export Remove
import ..Panel_get_RectTransform as var"##1613"
RectTransform(this::RemoteTypes.Panel) = begin
        kerbal(this.conn, var"##1613"(this))
    end
@doc "    RectTransform(this::RemoteTypes.Panel)\n\nThe rect transform for the panel.\n\n" RectTransform
export RectTransform
import ..Panel_get_Visible as var"##1614"
Visible(this::RemoteTypes.Panel) = begin
        kerbal(this.conn, var"##1614"(this))
    end
@doc "    Visible(this::RemoteTypes.Panel)\n\nWhether the UI object is visible.\n\n" Visible
export Visible
import ..Panel_set_Visible as var"##1615"
Visible!(this::RemoteTypes.Panel, value::Bool) = begin
        kerbal(this.conn, var"##1615"(this, value))
    end
@doc "    Visible!(this::RemoteTypes.Panel, value::Bool)\n\nWhether the UI object is visible.\n\n" Visible!
export Visible!
import ..RectTransform_get_Position as var"##1616"
Position(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1616"(this))
    end
@doc "    Position(this::RemoteTypes.RectTransform)\n\nPosition of the rectangles pivot point relative to the anchors.\n\n" Position
export Position
import ..RectTransform_set_Position as var"##1617"
Position!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1617"(this, value))
    end
@doc "    Position!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64}\nend)\n\nPosition of the rectangles pivot point relative to the anchors.\n\n" Position!
export Position!
import ..RectTransform_get_LocalPosition as var"##1618"
LocalPosition(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1618"(this))
    end
@doc "    LocalPosition(this::RemoteTypes.RectTransform)\n\nPosition of the rectangles pivot point relative to the anchors.\n\n" LocalPosition
export LocalPosition
import ..RectTransform_set_LocalPosition as var"##1619"
LocalPosition!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1619"(this, value))
    end
@doc "    LocalPosition!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nPosition of the rectangles pivot point relative to the anchors.\n\n" LocalPosition!
export LocalPosition!
import ..RectTransform_get_Size as var"##1620"
Size(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1620"(this))
    end
@doc "    Size(this::RemoteTypes.RectTransform)\n\nWidth and height of the rectangle.\n\n" Size
export Size
import ..RectTransform_set_Size as var"##1621"
Size!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1621"(this, value))
    end
@doc "    Size!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64}\nend)\n\nWidth and height of the rectangle.\n\n" Size!
export Size!
import ..RectTransform_get_UpperRight as var"##1622"
UpperRight(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1622"(this))
    end
@doc "    UpperRight(this::RemoteTypes.RectTransform)\n\nPosition of the rectangles upper right corner relative to the anchors.\n\n" UpperRight
export UpperRight
import ..RectTransform_set_UpperRight as var"##1623"
UpperRight!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1623"(this, value))
    end
@doc "    UpperRight!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64}\nend)\n\nPosition of the rectangles upper right corner relative to the anchors.\n\n" UpperRight!
export UpperRight!
import ..RectTransform_get_LowerLeft as var"##1624"
LowerLeft(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1624"(this))
    end
@doc "    LowerLeft(this::RemoteTypes.RectTransform)\n\nPosition of the rectangles lower left corner relative to the anchors.\n\n" LowerLeft
export LowerLeft
import ..RectTransform_set_LowerLeft as var"##1625"
LowerLeft!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1625"(this, value))
    end
@doc "    LowerLeft!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64}\nend)\n\nPosition of the rectangles lower left corner relative to the anchors.\n\n" LowerLeft!
export LowerLeft!
import ..RectTransform_set_Anchor as var"##1626"
Anchor!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1626"(this, value))
    end
@doc "    Anchor!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64}\nend)\n\nSet the minimum and maximum anchor points as a fraction of the size of the parent rectangle.\n\n" Anchor!
export Anchor!
import ..RectTransform_get_AnchorMax as var"##1627"
AnchorMax(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1627"(this))
    end
@doc "    AnchorMax(this::RemoteTypes.RectTransform)\n\nThe anchor point for the lower left corner of the rectangle defined as a fraction of the size of the parent rectangle.\n\n" AnchorMax
export AnchorMax
import ..RectTransform_set_AnchorMax as var"##1628"
AnchorMax!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1628"(this, value))
    end
@doc "    AnchorMax!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64}\nend)\n\nThe anchor point for the lower left corner of the rectangle defined as a fraction of the size of the parent rectangle.\n\n" AnchorMax!
export AnchorMax!
import ..RectTransform_get_AnchorMin as var"##1629"
AnchorMin(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1629"(this))
    end
@doc "    AnchorMin(this::RemoteTypes.RectTransform)\n\nThe anchor point for the upper right corner of the rectangle defined as a fraction of the size of the parent rectangle.\n\n" AnchorMin
export AnchorMin
import ..RectTransform_set_AnchorMin as var"##1630"
AnchorMin!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1630"(this, value))
    end
@doc "    AnchorMin!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64}\nend)\n\nThe anchor point for the upper right corner of the rectangle defined as a fraction of the size of the parent rectangle.\n\n" AnchorMin!
export AnchorMin!
import ..RectTransform_get_Pivot as var"##1631"
Pivot(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1631"(this))
    end
@doc "    Pivot(this::RemoteTypes.RectTransform)\n\nLocation of the pivot point around which the rectangle rotates, defined as a fraction of the size of the rectangle itself.\n\n" Pivot
export Pivot
import ..RectTransform_set_Pivot as var"##1632"
Pivot!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1632"(this, value))
    end
@doc "    Pivot!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64}\nend)\n\nLocation of the pivot point around which the rectangle rotates, defined as a fraction of the size of the rectangle itself.\n\n" Pivot!
export Pivot!
import ..RectTransform_get_Rotation as var"##1633"
Rotation(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1633"(this))
    end
@doc "    Rotation(this::RemoteTypes.RectTransform)\n\nRotation, as a quaternion, of the object around its pivot point.\n\n" Rotation
export Rotation
import ..RectTransform_set_Rotation as var"##1634"
Rotation!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1634"(this, value))
    end
@doc "    Rotation!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64, Float64, Float64}\nend)\n\nRotation, as a quaternion, of the object around its pivot point.\n\n" Rotation!
export Rotation!
import ..RectTransform_get_Scale as var"##1635"
Scale(this::RemoteTypes.RectTransform) = begin
        kerbal(this.conn, var"##1635"(this))
    end
@doc "    Scale(this::RemoteTypes.RectTransform)\n\nScale factor applied to the object in the x, y and z dimensions.\n\n" Scale
export Scale
import ..RectTransform_set_Scale as var"##1636"
Scale!(this::RemoteTypes.RectTransform, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1636"(this, value))
    end
@doc "    Scale!(this::RemoteTypes.RectTransform, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nScale factor applied to the object in the x, y and z dimensions.\n\n" Scale!
export Scale!
import ..Text_Remove as var"##1637"
Remove(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1637"(this))
    end
@doc "    Remove(this::RemoteTypes.Text)\n\nRemove the UI object.\n\n" Remove
export Remove
import ..Text_get_RectTransform as var"##1638"
RectTransform(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1638"(this))
    end
@doc "    RectTransform(this::RemoteTypes.Text)\n\nThe rect transform for the text.\n\n" RectTransform
export RectTransform
import ..Text_get_AvailableFonts as var"##1639"
AvailableFonts(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1639"(this))
    end
@doc "    AvailableFonts(this::RemoteTypes.Text)\n\nA list of all available fonts.\n\n" AvailableFonts
export AvailableFonts
import ..Text_get_Content as var"##1640"
Content(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1640"(this))
    end
@doc "    Content(this::RemoteTypes.Text)\n\nThe text string\n\n" Content
export Content
import ..Text_set_Content as var"##1641"
Content!(this::RemoteTypes.Text, value::String) = begin
        kerbal(this.conn, var"##1641"(this, value))
    end
@doc "    Content!(this::RemoteTypes.Text, value::String)\n\nThe text string\n\n" Content!
export Content!
import ..Text_get_Font as var"##1642"
Font(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1642"(this))
    end
@doc "    Font(this::RemoteTypes.Text)\n\nName of the font\n\n" Font
export Font
import ..Text_set_Font as var"##1643"
Font!(this::RemoteTypes.Text, value::String) = begin
        kerbal(this.conn, var"##1643"(this, value))
    end
@doc "    Font!(this::RemoteTypes.Text, value::String)\n\nName of the font\n\n" Font!
export Font!
import ..Text_get_Size as var"##1644"
Size(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1644"(this))
    end
@doc "    Size(this::RemoteTypes.Text)\n\nFont size.\n\n" Size
export Size
import ..Text_set_Size as var"##1645"
Size!(this::RemoteTypes.Text, value::Int32) = begin
        kerbal(this.conn, var"##1645"(this, value))
    end
@doc "    Size!(this::RemoteTypes.Text, value::Int32)\n\nFont size.\n\n" Size!
export Size!
import ..Text_get_Style as var"##1646"
Style(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1646"(this))
    end
@doc "    Style(this::RemoteTypes.Text)\n\nFont style.\n\n" Style
export Style
import ..Text_set_Style as var"##1647"
Style!(this::RemoteTypes.Text, value::EFontStyle) = begin
        kerbal(this.conn, var"##1647"(this, value))
    end
@doc "    Style!(this::RemoteTypes.Text, value::EFontStyle)\n\nFont style.\n\n" Style!
export Style!
import ..Text_get_Alignment as var"##1648"
Alignment(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1648"(this))
    end
@doc "    Alignment(this::RemoteTypes.Text)\n\nAlignment.\n\n" Alignment
export Alignment
import ..Text_set_Alignment as var"##1649"
Alignment!(this::RemoteTypes.Text, value::ETextAnchor) = begin
        kerbal(this.conn, var"##1649"(this, value))
    end
@doc "    Alignment!(this::RemoteTypes.Text, value::ETextAnchor)\n\nAlignment.\n\n" Alignment!
export Alignment!
import ..Text_get_LineSpacing as var"##1650"
LineSpacing(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1650"(this))
    end
@doc "    LineSpacing(this::RemoteTypes.Text)\n\nLine spacing.\n\n" LineSpacing
export LineSpacing
import ..Text_set_LineSpacing as var"##1651"
LineSpacing!(this::RemoteTypes.Text, value::Float32) = begin
        kerbal(this.conn, var"##1651"(this, value))
    end
@doc "    LineSpacing!(this::RemoteTypes.Text, value::Float32)\n\nLine spacing.\n\n" LineSpacing!
export LineSpacing!
import ..Text_get_Color as var"##1652"
Color(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1652"(this))
    end
@doc "    Color(this::RemoteTypes.Text)\n\nSet the color\n\n" Color
export Color
import ..Text_set_Color as var"##1653"
Color!(this::RemoteTypes.Text, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1653"(this, value))
    end
@doc "    Color!(this::RemoteTypes.Text, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nSet the color\n\n" Color!
export Color!
import ..Text_get_Visible as var"##1654"
Visible(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##1654"(this))
    end
@doc "    Visible(this::RemoteTypes.Text)\n\nWhether the UI object is visible.\n\n" Visible
export Visible
import ..Text_set_Visible as var"##1655"
Visible!(this::RemoteTypes.Text, value::Bool) = begin
        kerbal(this.conn, var"##1655"(this, value))
    end
@doc "    Visible!(this::RemoteTypes.Text, value::Bool)\n\nWhether the UI object is visible.\n\n" Visible!
export Visible!
end
end
module KRPC
import ...kRPCTypes
import ...Request
module RemoteTypes
import ....kRPCTypes
import ....KRPCConnection
struct Expression <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Type <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct KRPC
    conn::KRPCConnection
end
export Expression, Type
export KRPC
end
struct EGameScene <: kRPCTypes.Enum
    value::Int32
end
const EGameScene_SpaceCenter = EGameScene(0)
const EGameScene_Flight = EGameScene(1)
const EGameScene_TrackingStation = EGameScene(2)
const EGameScene_EditorVAB = EGameScene(3)
const EGameScene_EditorSPH = EGameScene(4)
export EGameScene
struct GetClientID <: Request{:KRPC, :GetClientID, Array{UInt8, 1}}
    GetClientID() = begin
            new()
        end
end
struct GetClientName <: Request{:KRPC, :GetClientName, String}
    GetClientName() = begin
            new()
        end
end
struct GetStatus <: Request{:KRPC, :GetStatus, kRPCTypes.Service}
    GetStatus() = begin
            new()
        end
end
struct GetServices <: Request{:KRPC, :GetServices, kRPCTypes.Services}
    GetServices() = begin
            new()
        end
end
struct AddStream <: Request{:KRPC, :AddStream, kRPCTypes.kStream}
    AddStream(call::Request, start::Bool) = begin
            new(call, start)
        end
    call::Request
    start::Bool
end
struct StartStream <: Request{:KRPC, :StartStream, Nothing}
    StartStream(id::UInt64) = begin
            new(id)
        end
    id::UInt64
end
struct SetStreamRate <: Request{:KRPC, :SetStreamRate, Nothing}
    SetStreamRate(id::UInt64, rate::Float32) = begin
            new(id, rate)
        end
    id::UInt64
    rate::Float32
end
struct RemoveStream <: Request{:KRPC, :RemoveStream, Nothing}
    RemoveStream(id::UInt64) = begin
            new(id)
        end
    id::UInt64
end
struct AddEvent <: Request{:KRPC, :AddEvent, kRPCTypes.kEvent}
    AddEvent(expression::RemoteTypes.Expression) = begin
            new(expression)
        end
    expression::RemoteTypes.Expression
end
struct get_Clients <: Request{:KRPC, :get_Clients, begin
                Array{begin
                        Tuple{Array{UInt8, 1}, String, String}
                    end, 1}
            end}
    get_Clients() = begin
            new()
        end
end
struct get_CurrentGameScene <: Request{:KRPC, :get_CurrentGameScene, EGameScene}
    get_CurrentGameScene() = begin
            new()
        end
end
struct get_Paused <: Request{:KRPC, :get_Paused, Bool}
    get_Paused() = begin
            new()
        end
end
struct set_Paused <: Request{:KRPC, :set_Paused, Nothing}
    set_Paused(value::Bool) = begin
            new(value)
        end
    value::Bool
end
struct Expression_static_ConstantDouble <: Request{:KRPC, :Expression_static_ConstantDouble, RemoteTypes.Expression}
    Expression_static_ConstantDouble(value::Float64) = begin
            new(value)
        end
    value::Float64
end
struct Expression_static_ConstantFloat <: Request{:KRPC, :Expression_static_ConstantFloat, RemoteTypes.Expression}
    Expression_static_ConstantFloat(value::Float32) = begin
            new(value)
        end
    value::Float32
end
struct Expression_static_ConstantInt <: Request{:KRPC, :Expression_static_ConstantInt, RemoteTypes.Expression}
    Expression_static_ConstantInt(value::Int32) = begin
            new(value)
        end
    value::Int32
end
struct Expression_static_ConstantBool <: Request{:KRPC, :Expression_static_ConstantBool, RemoteTypes.Expression}
    Expression_static_ConstantBool(value::Bool) = begin
            new(value)
        end
    value::Bool
end
struct Expression_static_ConstantString <: Request{:KRPC, :Expression_static_ConstantString, RemoteTypes.Expression}
    Expression_static_ConstantString(value::String) = begin
            new(value)
        end
    value::String
end
struct Expression_static_Call <: Request{:KRPC, :Expression_static_Call, RemoteTypes.Expression}
    Expression_static_Call(call::Request) = begin
            new(call)
        end
    call::Request
end
struct Expression_static_Equal <: Request{:KRPC, :Expression_static_Equal, RemoteTypes.Expression}
    Expression_static_Equal(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_NotEqual <: Request{:KRPC, :Expression_static_NotEqual, RemoteTypes.Expression}
    Expression_static_NotEqual(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_GreaterThan <: Request{:KRPC, :Expression_static_GreaterThan, RemoteTypes.Expression}
    Expression_static_GreaterThan(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_GreaterThanOrEqual <: Request{:KRPC, :Expression_static_GreaterThanOrEqual, RemoteTypes.Expression}
    Expression_static_GreaterThanOrEqual(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_LessThan <: Request{:KRPC, :Expression_static_LessThan, RemoteTypes.Expression}
    Expression_static_LessThan(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_LessThanOrEqual <: Request{:KRPC, :Expression_static_LessThanOrEqual, RemoteTypes.Expression}
    Expression_static_LessThanOrEqual(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_And <: Request{:KRPC, :Expression_static_And, RemoteTypes.Expression}
    Expression_static_And(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_Or <: Request{:KRPC, :Expression_static_Or, RemoteTypes.Expression}
    Expression_static_Or(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_ExclusiveOr <: Request{:KRPC, :Expression_static_ExclusiveOr, RemoteTypes.Expression}
    Expression_static_ExclusiveOr(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_Not <: Request{:KRPC, :Expression_static_Not, RemoteTypes.Expression}
    Expression_static_Not(arg::RemoteTypes.Expression) = begin
            new(arg)
        end
    arg::RemoteTypes.Expression
end
struct Expression_static_Add <: Request{:KRPC, :Expression_static_Add, RemoteTypes.Expression}
    Expression_static_Add(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_Subtract <: Request{:KRPC, :Expression_static_Subtract, RemoteTypes.Expression}
    Expression_static_Subtract(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_Multiply <: Request{:KRPC, :Expression_static_Multiply, RemoteTypes.Expression}
    Expression_static_Multiply(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_Divide <: Request{:KRPC, :Expression_static_Divide, RemoteTypes.Expression}
    Expression_static_Divide(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_Modulo <: Request{:KRPC, :Expression_static_Modulo, RemoteTypes.Expression}
    Expression_static_Modulo(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_Power <: Request{:KRPC, :Expression_static_Power, RemoteTypes.Expression}
    Expression_static_Power(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_LeftShift <: Request{:KRPC, :Expression_static_LeftShift, RemoteTypes.Expression}
    Expression_static_LeftShift(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_RightShift <: Request{:KRPC, :Expression_static_RightShift, RemoteTypes.Expression}
    Expression_static_RightShift(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
            new(arg0, arg1)
        end
    arg0::RemoteTypes.Expression
    arg1::RemoteTypes.Expression
end
struct Expression_static_Cast <: Request{:KRPC, :Expression_static_Cast, RemoteTypes.Expression}
    Expression_static_Cast(arg::RemoteTypes.Expression, type::RemoteTypes.Type) = begin
            new(arg, type)
        end
    arg::RemoteTypes.Expression
    type::RemoteTypes.Type
end
struct Expression_static_Parameter <: Request{:KRPC, :Expression_static_Parameter, RemoteTypes.Expression}
    Expression_static_Parameter(name::String, type::RemoteTypes.Type) = begin
            new(name, type)
        end
    name::String
    type::RemoteTypes.Type
end
struct Expression_static_Function <: Request{:KRPC, :Expression_static_Function, RemoteTypes.Expression}
    Expression_static_Function(parameters::begin
                    Array{RemoteTypes.Expression, 1}
                end, body::RemoteTypes.Expression) = begin
            new(parameters, body)
        end
    parameters::begin
            Array{RemoteTypes.Expression, 1}
        end
    body::RemoteTypes.Expression
end
struct Expression_static_Invoke <: Request{:KRPC, :Expression_static_Invoke, RemoteTypes.Expression}
    Expression_static_Invoke(kFunction::RemoteTypes.Expression, args::begin
                    Dict{String, RemoteTypes.Expression}
                end) = begin
            new(kFunction, args)
        end
    kFunction::RemoteTypes.Expression
    args::begin
            Dict{String, RemoteTypes.Expression}
        end
end
struct Expression_static_CreateTuple <: Request{:KRPC, :Expression_static_CreateTuple, RemoteTypes.Expression}
    Expression_static_CreateTuple(elements::begin
                    Array{RemoteTypes.Expression, 1}
                end) = begin
            new(elements)
        end
    elements::begin
            Array{RemoteTypes.Expression, 1}
        end
end
struct Expression_static_CreateList <: Request{:KRPC, :Expression_static_CreateList, RemoteTypes.Expression}
    Expression_static_CreateList(values::begin
                    Array{RemoteTypes.Expression, 1}
                end) = begin
            new(values)
        end
    values::begin
            Array{RemoteTypes.Expression, 1}
        end
end
struct Expression_static_CreateSet <: Request{:KRPC, :Expression_static_CreateSet, RemoteTypes.Expression}
    Expression_static_CreateSet(values::begin
                    Base.Set{RemoteTypes.Expression}
                end) = begin
            new(values)
        end
    values::begin
            Base.Set{RemoteTypes.Expression}
        end
end
struct Expression_static_CreateDictionary <: Request{:KRPC, :Expression_static_CreateDictionary, RemoteTypes.Expression}
    Expression_static_CreateDictionary(keys::begin
                    Array{RemoteTypes.Expression, 1}
                end, values::begin
                    Array{RemoteTypes.Expression, 1}
                end) = begin
            new(keys, values)
        end
    keys::begin
            Array{RemoteTypes.Expression, 1}
        end
    values::begin
            Array{RemoteTypes.Expression, 1}
        end
end
struct Expression_static_ToList <: Request{:KRPC, :Expression_static_ToList, RemoteTypes.Expression}
    Expression_static_ToList(arg::RemoteTypes.Expression) = begin
            new(arg)
        end
    arg::RemoteTypes.Expression
end
struct Expression_static_ToSet <: Request{:KRPC, :Expression_static_ToSet, RemoteTypes.Expression}
    Expression_static_ToSet(arg::RemoteTypes.Expression) = begin
            new(arg)
        end
    arg::RemoteTypes.Expression
end
struct Expression_static_Get <: Request{:KRPC, :Expression_static_Get, RemoteTypes.Expression}
    Expression_static_Get(arg::RemoteTypes.Expression, index::RemoteTypes.Expression) = begin
            new(arg, index)
        end
    arg::RemoteTypes.Expression
    index::RemoteTypes.Expression
end
struct Expression_static_Count <: Request{:KRPC, :Expression_static_Count, RemoteTypes.Expression}
    Expression_static_Count(arg::RemoteTypes.Expression) = begin
            new(arg)
        end
    arg::RemoteTypes.Expression
end
struct Expression_static_Sum <: Request{:KRPC, :Expression_static_Sum, RemoteTypes.Expression}
    Expression_static_Sum(arg::RemoteTypes.Expression) = begin
            new(arg)
        end
    arg::RemoteTypes.Expression
end
struct Expression_static_Max <: Request{:KRPC, :Expression_static_Max, RemoteTypes.Expression}
    Expression_static_Max(arg::RemoteTypes.Expression) = begin
            new(arg)
        end
    arg::RemoteTypes.Expression
end
struct Expression_static_Min <: Request{:KRPC, :Expression_static_Min, RemoteTypes.Expression}
    Expression_static_Min(arg::RemoteTypes.Expression) = begin
            new(arg)
        end
    arg::RemoteTypes.Expression
end
struct Expression_static_Average <: Request{:KRPC, :Expression_static_Average, RemoteTypes.Expression}
    Expression_static_Average(arg::RemoteTypes.Expression) = begin
            new(arg)
        end
    arg::RemoteTypes.Expression
end
struct Expression_static_Select <: Request{:KRPC, :Expression_static_Select, RemoteTypes.Expression}
    Expression_static_Select(arg::RemoteTypes.Expression, func::RemoteTypes.Expression) = begin
            new(arg, func)
        end
    arg::RemoteTypes.Expression
    func::RemoteTypes.Expression
end
struct Expression_static_Where <: Request{:KRPC, :Expression_static_Where, RemoteTypes.Expression}
    Expression_static_Where(arg::RemoteTypes.Expression, func::RemoteTypes.Expression) = begin
            new(arg, func)
        end
    arg::RemoteTypes.Expression
    func::RemoteTypes.Expression
end
struct Expression_static_Contains <: Request{:KRPC, :Expression_static_Contains, RemoteTypes.Expression}
    Expression_static_Contains(arg::RemoteTypes.Expression, value::RemoteTypes.Expression) = begin
            new(arg, value)
        end
    arg::RemoteTypes.Expression
    value::RemoteTypes.Expression
end
struct Expression_static_Aggregate <: Request{:KRPC, :Expression_static_Aggregate, RemoteTypes.Expression}
    Expression_static_Aggregate(arg::RemoteTypes.Expression, func::RemoteTypes.Expression) = begin
            new(arg, func)
        end
    arg::RemoteTypes.Expression
    func::RemoteTypes.Expression
end
struct Expression_static_AggregateWithSeed <: Request{:KRPC, :Expression_static_AggregateWithSeed, RemoteTypes.Expression}
    Expression_static_AggregateWithSeed(arg::RemoteTypes.Expression, seed::RemoteTypes.Expression, func::RemoteTypes.Expression) = begin
            new(arg, seed, func)
        end
    arg::RemoteTypes.Expression
    seed::RemoteTypes.Expression
    func::RemoteTypes.Expression
end
struct Expression_static_Concat <: Request{:KRPC, :Expression_static_Concat, RemoteTypes.Expression}
    Expression_static_Concat(arg1::RemoteTypes.Expression, arg2::RemoteTypes.Expression) = begin
            new(arg1, arg2)
        end
    arg1::RemoteTypes.Expression
    arg2::RemoteTypes.Expression
end
struct Expression_static_OrderBy <: Request{:KRPC, :Expression_static_OrderBy, RemoteTypes.Expression}
    Expression_static_OrderBy(arg::RemoteTypes.Expression, key::RemoteTypes.Expression) = begin
            new(arg, key)
        end
    arg::RemoteTypes.Expression
    key::RemoteTypes.Expression
end
struct Expression_static_All <: Request{:KRPC, :Expression_static_All, RemoteTypes.Expression}
    Expression_static_All(arg::RemoteTypes.Expression, predicate::RemoteTypes.Expression) = begin
            new(arg, predicate)
        end
    arg::RemoteTypes.Expression
    predicate::RemoteTypes.Expression
end
struct Expression_static_Any <: Request{:KRPC, :Expression_static_Any, RemoteTypes.Expression}
    Expression_static_Any(arg::RemoteTypes.Expression, predicate::RemoteTypes.Expression) = begin
            new(arg, predicate)
        end
    arg::RemoteTypes.Expression
    predicate::RemoteTypes.Expression
end
struct Type_static_Double <: Request{:KRPC, :Type_static_Double, RemoteTypes.Type}
    Type_static_Double() = begin
            new()
        end
end
struct Type_static_Float <: Request{:KRPC, :Type_static_Float, RemoteTypes.Type}
    Type_static_Float() = begin
            new()
        end
end
struct Type_static_Int <: Request{:KRPC, :Type_static_Int, RemoteTypes.Type}
    Type_static_Int() = begin
            new()
        end
end
struct Type_static_Bool <: Request{:KRPC, :Type_static_Bool, RemoteTypes.Type}
    Type_static_Bool() = begin
            new()
        end
end
struct Type_static_String <: Request{:KRPC, :Type_static_String, RemoteTypes.Type}
    Type_static_String() = begin
            new()
        end
end
export GetClientID, GetClientName, GetStatus, GetServices, AddStream, StartStream, SetStreamRate, RemoveStream, AddEvent, get_Clients, get_CurrentGameScene, get_Paused, set_Paused, Expression_static_ConstantDouble, Expression_static_ConstantFloat, Expression_static_ConstantInt, Expression_static_ConstantBool, Expression_static_ConstantString, Expression_static_Call, Expression_static_Equal, Expression_static_NotEqual, Expression_static_GreaterThan, Expression_static_GreaterThanOrEqual, Expression_static_LessThan, Expression_static_LessThanOrEqual, Expression_static_And, Expression_static_Or, Expression_static_ExclusiveOr, Expression_static_Not, Expression_static_Add, Expression_static_Subtract, Expression_static_Multiply, Expression_static_Divide, Expression_static_Modulo, Expression_static_Power, Expression_static_LeftShift, Expression_static_RightShift, Expression_static_Cast, Expression_static_Parameter, Expression_static_Function, Expression_static_Invoke, Expression_static_CreateTuple, Expression_static_CreateList, Expression_static_CreateSet, Expression_static_CreateDictionary, Expression_static_ToList, Expression_static_ToSet, Expression_static_Get, Expression_static_Count, Expression_static_Sum, Expression_static_Max, Expression_static_Min, Expression_static_Average, Expression_static_Select, Expression_static_Where, Expression_static_Contains, Expression_static_Aggregate, Expression_static_AggregateWithSeed, Expression_static_Concat, Expression_static_OrderBy, Expression_static_All, Expression_static_Any, Type_static_Double, Type_static_Float, Type_static_Int, Type_static_Bool, Type_static_String
module Helpers
import ....kerbal
import ....KRPCConnection
import ....Request
import ..RemoteTypes
import ...KRPC.EGameScene
import ..GetClientID as var"##259"
GetClientID(conn::KRPCConnection) = begin
        kerbal(conn, var"##259"())
    end
@doc "    GetClientID()\n\nReturns the identifier for the current client.\n\n" GetClientID
export GetClientID
import ..GetClientName as var"##260"
GetClientName(conn::KRPCConnection) = begin
        kerbal(conn, var"##260"())
    end
@doc "    GetClientName()\n\nReturns the name of the current client.\nThis is an empty string if the client has no name.\n\n" GetClientName
export GetClientName
import ..GetStatus as var"##261"
GetStatus(conn::KRPCConnection) = begin
        kerbal(conn, var"##261"())
    end
@doc "    GetStatus()\n\nReturns some information about the server, such as the version.\n\n" GetStatus
export GetStatus
import ..GetServices as var"##262"
GetServices(conn::KRPCConnection) = begin
        kerbal(conn, var"##262"())
    end
@doc "    GetServices()\n\nReturns information on all services, procedures, classes, properties etc. provided by the server.\nCan be used by client libraries to automatically create functionality such as stubs.\n\n" GetServices
export GetServices
import ..AddStream as var"##263"
AddStream(conn::KRPCConnection, call::Request, start::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(conn, var"##263"(call, start))
    end
@doc "    AddStream(call::Request, start::Bool)\n\nAdd a streaming request and return its identifier.\n\n" AddStream
export AddStream
import ..StartStream as var"##264"
StartStream(conn::KRPCConnection, id::UInt64) = begin
        kerbal(conn, var"##264"(id))
    end
@doc "    StartStream(id::UInt64)\n\nStart a previously added streaming request.\n\n" StartStream
export StartStream
import ..SetStreamRate as var"##265"
SetStreamRate(conn::KRPCConnection, id::UInt64, rate::Float32) = begin
        kerbal(conn, var"##265"(id, rate))
    end
@doc "    SetStreamRate(id::UInt64, rate::Float32)\n\nSet the update rate for a stream in Hz.\n\n" SetStreamRate
export SetStreamRate
import ..RemoveStream as var"##266"
RemoveStream(conn::KRPCConnection, id::UInt64) = begin
        kerbal(conn, var"##266"(id))
    end
@doc "    RemoveStream(id::UInt64)\n\nRemove a streaming request.\n\n" RemoveStream
export RemoveStream
import ..AddEvent as var"##267"
AddEvent(conn::KRPCConnection, expression::RemoteTypes.Expression) = begin
        kerbal(conn, var"##267"(expression))
    end
@doc "    AddEvent(expression::RemoteTypes.Expression)\n\nCreate an event from a server side expression.\n\n" AddEvent
export AddEvent
import ..get_Clients as var"##268"
Clients(this::RemoteTypes.KRPC) = begin
        kerbal(this.conn, var"##268"())
    end
@doc "    Clients()\n\nA list of RPC clients that are currently connected to the server.\nEach entry in the list is a clients identifier, name and address.\n\n" Clients
export Clients
import ..get_CurrentGameScene as var"##269"
CurrentGameScene(this::RemoteTypes.KRPC) = begin
        kerbal(this.conn, var"##269"())
    end
@doc "    CurrentGameScene()\n\nGet the current game scene.\n\n" CurrentGameScene
export CurrentGameScene
import ..get_Paused as var"##270"
Paused(this::RemoteTypes.KRPC) = begin
        kerbal(this.conn, var"##270"())
    end
@doc "    Paused()\n\nWhether the game is paused.\n\n" Paused
export Paused
import ..set_Paused as var"##271"
Paused!(this::RemoteTypes.KRPC, value::Bool) = begin
        kerbal(this.conn, var"##271"(value))
    end
@doc "    Paused!(value::Bool)\n\nWhether the game is paused.\n\n" Paused!
export Paused!
import ..Expression_static_ConstantDouble as var"##272"
ConstantDouble(conn::KRPCConnection, value::Float64) = begin
        kerbal(conn, var"##272"(value))
    end
@doc "    ConstantDouble(value::Float64)\n\nA constant value of double precision floating point type.\n\n# Arguments\n- `value::Float64`: \n" ConstantDouble
export ConstantDouble
import ..Expression_static_ConstantFloat as var"##273"
ConstantFloat(conn::KRPCConnection, value::Float32) = begin
        kerbal(conn, var"##273"(value))
    end
@doc "    ConstantFloat(value::Float32)\n\nA constant value of single precision floating point type.\n\n# Arguments\n- `value::Float32`: \n" ConstantFloat
export ConstantFloat
import ..Expression_static_ConstantInt as var"##274"
ConstantInt(conn::KRPCConnection, value::Int32) = begin
        kerbal(conn, var"##274"(value))
    end
@doc "    ConstantInt(value::Int32)\n\nA constant value of integer type.\n\n# Arguments\n- `value::Int32`: \n" ConstantInt
export ConstantInt
import ..Expression_static_ConstantBool as var"##275"
ConstantBool(conn::KRPCConnection, value::Bool) = begin
        kerbal(conn, var"##275"(value))
    end
@doc "    ConstantBool(value::Bool)\n\nA constant value of boolean type.\n\n# Arguments\n- `value::Bool`: \n" ConstantBool
export ConstantBool
import ..Expression_static_ConstantString as var"##276"
ConstantString(conn::KRPCConnection, value::String) = begin
        kerbal(conn, var"##276"(value))
    end
@doc "    ConstantString(value::String)\n\nA constant value of string type.\n\n# Arguments\n- `value::String`: \n" ConstantString
export ConstantString
import ..Expression_static_Call as var"##277"
Call(conn::KRPCConnection, call::Request) = begin
        kerbal(conn, var"##277"(call))
    end
@doc "    Call(call::Request)\n\nAn RPC call.\n\n# Arguments\n- `call::Request`: \n" Call
export Call
import ..Expression_static_Equal as var"##278"
Equal(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##278"(arg0, arg1))
    end
@doc "    Equal(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nEquality comparison.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" Equal
export Equal
import ..Expression_static_NotEqual as var"##279"
NotEqual(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##279"(arg0, arg1))
    end
@doc "    NotEqual(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nInequality comparison.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" NotEqual
export NotEqual
import ..Expression_static_GreaterThan as var"##280"
GreaterThan(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##280"(arg0, arg1))
    end
@doc "    GreaterThan(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nGreater than numerical comparison.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" GreaterThan
export GreaterThan
import ..Expression_static_GreaterThanOrEqual as var"##281"
GreaterThanOrEqual(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##281"(arg0, arg1))
    end
@doc "    GreaterThanOrEqual(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nGreater than or equal numerical comparison.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" GreaterThanOrEqual
export GreaterThanOrEqual
import ..Expression_static_LessThan as var"##282"
LessThan(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##282"(arg0, arg1))
    end
@doc "    LessThan(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nLess than numerical comparison.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" LessThan
export LessThan
import ..Expression_static_LessThanOrEqual as var"##283"
LessThanOrEqual(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##283"(arg0, arg1))
    end
@doc "    LessThanOrEqual(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nLess than or equal numerical comparison.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" LessThanOrEqual
export LessThanOrEqual
import ..Expression_static_And as var"##284"
And(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##284"(arg0, arg1))
    end
@doc "    And(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nBoolean and operator.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" And
export And
import ..Expression_static_Or as var"##285"
Or(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##285"(arg0, arg1))
    end
@doc "    Or(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nBoolean or operator.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" Or
export Or
import ..Expression_static_ExclusiveOr as var"##286"
ExclusiveOr(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##286"(arg0, arg1))
    end
@doc "    ExclusiveOr(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nBoolean exclusive-or operator.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" ExclusiveOr
export ExclusiveOr
import ..Expression_static_Not as var"##287"
Not(conn::KRPCConnection, arg::RemoteTypes.Expression) = begin
        kerbal(conn, var"##287"(arg))
    end
@doc "    Not(arg::RemoteTypes.Expression)\n\nBoolean negation operator.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: \n" Not
export Not
import ..Expression_static_Add as var"##288"
Add(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##288"(arg0, arg1))
    end
@doc "    Add(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nNumerical addition.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" Add
export Add
import ..Expression_static_Subtract as var"##289"
Subtract(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##289"(arg0, arg1))
    end
@doc "    Subtract(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nNumerical subtraction.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" Subtract
export Subtract
import ..Expression_static_Multiply as var"##290"
Multiply(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##290"(arg0, arg1))
    end
@doc "    Multiply(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nNumerical multiplication.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" Multiply
export Multiply
import ..Expression_static_Divide as var"##291"
Divide(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##291"(arg0, arg1))
    end
@doc "    Divide(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nNumerical division.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" Divide
export Divide
import ..Expression_static_Modulo as var"##292"
Modulo(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##292"(arg0, arg1))
    end
@doc "    Modulo(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nNumerical modulo operator.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n# Returns\nThe remainder of arg0 divided by arg1\n" Modulo
export Modulo
import ..Expression_static_Power as var"##293"
Power(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##293"(arg0, arg1))
    end
@doc "    Power(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nNumerical power operator.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n# Returns\narg0 raised to the power of arg1, with type of arg0\n" Power
export Power
import ..Expression_static_LeftShift as var"##294"
LeftShift(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##294"(arg0, arg1))
    end
@doc "    LeftShift(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nBitwise left shift.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" LeftShift
export LeftShift
import ..Expression_static_RightShift as var"##295"
RightShift(conn::KRPCConnection, arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression) = begin
        kerbal(conn, var"##295"(arg0, arg1))
    end
@doc "    RightShift(arg0::RemoteTypes.Expression, arg1::RemoteTypes.Expression)\n\nBitwise right shift.\n\n# Arguments\n- `arg0::RemoteTypes.Expression`: \n- `arg1::RemoteTypes.Expression`: \n" RightShift
export RightShift
import ..Expression_static_Cast as var"##296"
Cast(conn::KRPCConnection, arg::RemoteTypes.Expression, type::RemoteTypes.Type) = begin
        kerbal(conn, var"##296"(arg, type))
    end
@doc "    Cast(arg::RemoteTypes.Expression, type::RemoteTypes.Type)\n\nPerform a cast to the given type.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: \n- `type::RemoteTypes.Type`: Type to cast the argument to.\n" Cast
export Cast
import ..Expression_static_Parameter as var"##297"
Parameter(conn::KRPCConnection, name::String, type::RemoteTypes.Type) = begin
        kerbal(conn, var"##297"(name, type))
    end
@doc "    Parameter(name::String, type::RemoteTypes.Type)\n\nA named parameter of type double.\n\n# Arguments\n- `name::String`: The name of the parameter.\n- `type::RemoteTypes.Type`: The type of the parameter.\n# Returns\nA named parameter.\n" Parameter
export Parameter
import ..Expression_static_Function as var"##298"
Function(conn::KRPCConnection, parameters::begin
                Array{RemoteTypes.Expression, 1}
            end, body::RemoteTypes.Expression) = begin
        kerbal(conn, var"##298"(parameters, body))
    end
@doc "    Function(parameters::begin\n    Array{RemoteTypes.Expression, 1}\nend, body::RemoteTypes.Expression)\n\nA function.\n\n# Arguments\n- `parameters::begin\n    Array{RemoteTypes.Expression, 1}\nend`: The parameters of the function.\n- `body::RemoteTypes.Expression`: The body of the function.\n# Returns\nA function.\n" Function
export Function
import ..Expression_static_Invoke as var"##299"
Invoke(conn::KRPCConnection, kFunction::RemoteTypes.Expression, args::begin
                Dict{String, RemoteTypes.Expression}
            end) = begin
        kerbal(conn, var"##299"(kFunction, args))
    end
@doc "    Invoke(kFunction::RemoteTypes.Expression, args::begin\n    Dict{String, RemoteTypes.Expression}\nend)\n\nA function call.\n\n# Arguments\n- `kFunction::RemoteTypes.Expression`: The function to call.\n- `args::begin\n    Dict{String, RemoteTypes.Expression}\nend`: The arguments to call the function with.\n# Returns\nA function call.\n" Invoke
export Invoke
import ..Expression_static_CreateTuple as var"##300"
CreateTuple(conn::KRPCConnection, elements::begin
                Array{RemoteTypes.Expression, 1}
            end) = begin
        kerbal(conn, var"##300"(elements))
    end
@doc "    CreateTuple(elements::begin\n    Array{RemoteTypes.Expression, 1}\nend)\n\nConstruct a tuple.\n\n# Arguments\n- `elements::begin\n    Array{RemoteTypes.Expression, 1}\nend`: The elements.\n# Returns\nThe tuple.\n" CreateTuple
export CreateTuple
import ..Expression_static_CreateList as var"##301"
CreateList(conn::KRPCConnection, values::begin
                Array{RemoteTypes.Expression, 1}
            end) = begin
        kerbal(conn, var"##301"(values))
    end
@doc "    CreateList(values::begin\n    Array{RemoteTypes.Expression, 1}\nend)\n\nConstruct a list.\n\n# Arguments\n- `values::begin\n    Array{RemoteTypes.Expression, 1}\nend`: The value. Should all be of the same type.\n# Returns\nThe list.\n" CreateList
export CreateList
import ..Expression_static_CreateSet as var"##302"
CreateSet(conn::KRPCConnection, values::begin
                Base.Set{RemoteTypes.Expression}
            end) = begin
        kerbal(conn, var"##302"(values))
    end
@doc "    CreateSet(values::begin\n    Base.Set{RemoteTypes.Expression}\nend)\n\nConstruct a set.\n\n# Arguments\n- `values::begin\n    Base.Set{RemoteTypes.Expression}\nend`: The values. Should all be of the same type.\n# Returns\nThe set.\n" CreateSet
export CreateSet
import ..Expression_static_CreateDictionary as var"##303"
CreateDictionary(conn::KRPCConnection, keys::begin
                Array{RemoteTypes.Expression, 1}
            end, values::begin
                Array{RemoteTypes.Expression, 1}
            end) = begin
        kerbal(conn, var"##303"(keys, values))
    end
@doc "    CreateDictionary(keys::begin\n    Array{RemoteTypes.Expression, 1}\nend, values::begin\n    Array{RemoteTypes.Expression, 1}\nend)\n\nConstruct a dictionary, from a list of corresponding keys and values.\n\n# Arguments\n- `keys::begin\n    Array{RemoteTypes.Expression, 1}\nend`: The keys. Should all be of the same type.\n- `values::begin\n    Array{RemoteTypes.Expression, 1}\nend`: The values. Should all be of the same type.\n# Returns\nThe dictionary.\n" CreateDictionary
export CreateDictionary
import ..Expression_static_ToList as var"##304"
ToList(conn::KRPCConnection, arg::RemoteTypes.Expression) = begin
        kerbal(conn, var"##304"(arg))
    end
@doc "    ToList(arg::RemoteTypes.Expression)\n\nConvert a collection to a list.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The collection.\n# Returns\nThe collection as a list.\n" ToList
export ToList
import ..Expression_static_ToSet as var"##305"
ToSet(conn::KRPCConnection, arg::RemoteTypes.Expression) = begin
        kerbal(conn, var"##305"(arg))
    end
@doc "    ToSet(arg::RemoteTypes.Expression)\n\nConvert a collection to a set.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The collection.\n# Returns\nThe collection as a set.\n" ToSet
export ToSet
import ..Expression_static_Get as var"##306"
Get(conn::KRPCConnection, arg::RemoteTypes.Expression, index::RemoteTypes.Expression) = begin
        kerbal(conn, var"##306"(arg, index))
    end
@doc "    Get(arg::RemoteTypes.Expression, index::RemoteTypes.Expression)\n\nAccess an element in a tuple, list or dictionary.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The tuple, list or dictionary.\n- `index::RemoteTypes.Expression`: The index of the element to access. A zero indexed integer for a tuple or list, or a key for a dictionary.\n# Returns\nThe element.\n" Get
export Get
import ..Expression_static_Count as var"##307"
Count(conn::KRPCConnection, arg::RemoteTypes.Expression) = begin
        kerbal(conn, var"##307"(arg))
    end
@doc "    Count(arg::RemoteTypes.Expression)\n\nNumber of elements in a collection.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The list, set or dictionary.\n# Returns\nThe number of elements in the collection.\n" Count
export Count
import ..Expression_static_Sum as var"##308"
Sum(conn::KRPCConnection, arg::RemoteTypes.Expression) = begin
        kerbal(conn, var"##308"(arg))
    end
@doc "    Sum(arg::RemoteTypes.Expression)\n\nSum all elements of a collection.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The list or set.\n# Returns\nThe sum of the elements in the collection.\n" Sum
export Sum
import ..Expression_static_Max as var"##309"
Max(conn::KRPCConnection, arg::RemoteTypes.Expression) = begin
        kerbal(conn, var"##309"(arg))
    end
@doc "    Max(arg::RemoteTypes.Expression)\n\nMaximum of all elements in a collection.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The list or set.\n# Returns\nThe maximum elements in the collection.\n" Max
export Max
import ..Expression_static_Min as var"##310"
Min(conn::KRPCConnection, arg::RemoteTypes.Expression) = begin
        kerbal(conn, var"##310"(arg))
    end
@doc "    Min(arg::RemoteTypes.Expression)\n\nMinimum of all elements in a collection.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The list or set.\n# Returns\nThe minimum elements in the collection.\n" Min
export Min
import ..Expression_static_Average as var"##311"
Average(conn::KRPCConnection, arg::RemoteTypes.Expression) = begin
        kerbal(conn, var"##311"(arg))
    end
@doc "    Average(arg::RemoteTypes.Expression)\n\nMinimum of all elements in a collection.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The list or set.\n# Returns\nThe minimum elements in the collection.\n" Average
export Average
import ..Expression_static_Select as var"##312"
Select(conn::KRPCConnection, arg::RemoteTypes.Expression, func::RemoteTypes.Expression) = begin
        kerbal(conn, var"##312"(arg, func))
    end
@doc "    Select(arg::RemoteTypes.Expression, func::RemoteTypes.Expression)\n\nRun a function on every element in the collection.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The list or set.\n- `func::RemoteTypes.Expression`: The function.\n# Returns\nThe modified collection.\n" Select
export Select
import ..Expression_static_Where as var"##313"
Where(conn::KRPCConnection, arg::RemoteTypes.Expression, func::RemoteTypes.Expression) = begin
        kerbal(conn, var"##313"(arg, func))
    end
@doc "    Where(arg::RemoteTypes.Expression, func::RemoteTypes.Expression)\n\nRun a function on every element in the collection.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The list or set.\n- `func::RemoteTypes.Expression`: The function.\n# Returns\nThe modified collection.\n" Where
export Where
import ..Expression_static_Contains as var"##314"
Contains(conn::KRPCConnection, arg::RemoteTypes.Expression, value::RemoteTypes.Expression) = begin
        kerbal(conn, var"##314"(arg, value))
    end
@doc "    Contains(arg::RemoteTypes.Expression, value::RemoteTypes.Expression)\n\nDetermine if a collection contains a value.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The collection.\n- `value::RemoteTypes.Expression`: The value to look for.\n# Returns\nWhether the collection contains a value.\n" Contains
export Contains
import ..Expression_static_Aggregate as var"##315"
Aggregate(conn::KRPCConnection, arg::RemoteTypes.Expression, func::RemoteTypes.Expression) = begin
        kerbal(conn, var"##315"(arg, func))
    end
@doc "    Aggregate(arg::RemoteTypes.Expression, func::RemoteTypes.Expression)\n\nApplies an accumulator function over a sequence.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The collection.\n- `func::RemoteTypes.Expression`: The accumulator function.\n# Returns\nThe accumulated value.\n" Aggregate
export Aggregate
import ..Expression_static_AggregateWithSeed as var"##316"
AggregateWithSeed(conn::KRPCConnection, arg::RemoteTypes.Expression, seed::RemoteTypes.Expression, func::RemoteTypes.Expression) = begin
        kerbal(conn, var"##316"(arg, seed, func))
    end
@doc "    AggregateWithSeed(arg::RemoteTypes.Expression, seed::RemoteTypes.Expression, func::RemoteTypes.Expression)\n\nApplies an accumulator function over a sequence, with a given seed.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The collection.\n- `seed::RemoteTypes.Expression`: The seed value.\n- `func::RemoteTypes.Expression`: The accumulator function.\n# Returns\nThe accumulated value.\n" AggregateWithSeed
export AggregateWithSeed
import ..Expression_static_Concat as var"##317"
Concat(conn::KRPCConnection, arg1::RemoteTypes.Expression, arg2::RemoteTypes.Expression) = begin
        kerbal(conn, var"##317"(arg1, arg2))
    end
@doc "    Concat(arg1::RemoteTypes.Expression, arg2::RemoteTypes.Expression)\n\nConcatenate two sequences.\n\n# Arguments\n- `arg1::RemoteTypes.Expression`: The first sequence.\n- `arg2::RemoteTypes.Expression`: The second sequence.\n# Returns\nThe first sequence followed by the second sequence.\n" Concat
export Concat
import ..Expression_static_OrderBy as var"##318"
OrderBy(conn::KRPCConnection, arg::RemoteTypes.Expression, key::RemoteTypes.Expression) = begin
        kerbal(conn, var"##318"(arg, key))
    end
@doc "    OrderBy(arg::RemoteTypes.Expression, key::RemoteTypes.Expression)\n\nOrder a collection using a key function.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The collection to order.\n- `key::RemoteTypes.Expression`: A function that takes a value from the collection and generates a key to sort on.\n# Returns\nThe ordered collection.\n" OrderBy
export OrderBy
import ..Expression_static_All as var"##319"
All(conn::KRPCConnection, arg::RemoteTypes.Expression, predicate::RemoteTypes.Expression) = begin
        kerbal(conn, var"##319"(arg, predicate))
    end
@doc "    All(arg::RemoteTypes.Expression, predicate::RemoteTypes.Expression)\n\nDetermine whether all items in a collection satisfy a boolean predicate.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The collection.\n- `predicate::RemoteTypes.Expression`: The predicate function.\n# Returns\nWhether all items satisfy the predicate.\n" All
export All
import ..Expression_static_Any as var"##320"
Any(conn::KRPCConnection, arg::RemoteTypes.Expression, predicate::RemoteTypes.Expression) = begin
        kerbal(conn, var"##320"(arg, predicate))
    end
@doc "    Any(arg::RemoteTypes.Expression, predicate::RemoteTypes.Expression)\n\nDetermine whether any item in a collection satisfies a boolean predicate.\n\n# Arguments\n- `arg::RemoteTypes.Expression`: The collection.\n- `predicate::RemoteTypes.Expression`: The predicate function.\n# Returns\nWhether any item satisfies the predicate.\n" Any
export Any
import ..Type_static_Double as var"##321"
Double(conn::KRPCConnection) = begin
        kerbal(conn, var"##321"())
    end
@doc "    Double()\n\nDouble type.\n\n" Double
export Double
import ..Type_static_Float as var"##322"
Float(conn::KRPCConnection) = begin
        kerbal(conn, var"##322"())
    end
@doc "    Float()\n\nFloat type.\n\n" Float
export Float
import ..Type_static_Int as var"##323"
Int(conn::KRPCConnection) = begin
        kerbal(conn, var"##323"())
    end
@doc "    Int()\n\nInt type.\n\n" Int
export Int
import ..Type_static_Bool as var"##324"
Bool(conn::KRPCConnection) = begin
        kerbal(conn, var"##324"())
    end
@doc "    Bool()\n\nBool type.\n\n" Bool
export Bool
import ..Type_static_String as var"##325"
String(conn::KRPCConnection) = begin
        kerbal(conn, var"##325"())
    end
@doc "    String()\n\nString type.\n\n" String
export String
end
end
module SpaceCenter
import ...kRPCTypes
import ...Request
module RemoteTypes
import ....kRPCTypes
import ....KRPCConnection
struct Alarm <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct AlarmClock <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct AutoPilot <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Camera <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct CelestialBody <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct CommLink <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct CommNode <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Comms <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Contract <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ContractManager <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ContractParameter <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Control <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct CrewMember <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Flight <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Node <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Orbit <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ReferenceFrame <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Resource <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ResourceTransfer <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Resources <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Vessel <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Waypoint <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct WaypointManager <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Antenna <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct CargoBay <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ControlSurface <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Decoupler <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct DockingPort <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Engine <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Experiment <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Fairing <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Force <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Intake <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct LaunchClamp <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Leg <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Light <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Module <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Parachute <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Part <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Parts <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Propellant <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct RCS <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Radiator <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ReactionWheel <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ResourceConverter <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ResourceDrain <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ResourceHarvester <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct RoboticHinge <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct RoboticPiston <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct RoboticRotation <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct RoboticRotor <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ScienceData <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ScienceSubject <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Sensor <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct SolarPanel <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Thruster <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Wheel <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct SpaceCenter
    conn::KRPCConnection
end
export Alarm, AlarmClock, AutoPilot, Camera, CelestialBody, CommLink, CommNode, Comms, Contract, ContractManager, ContractParameter, Control, CrewMember, Flight, Node, Orbit, ReferenceFrame, Resource, ResourceTransfer, Resources, Vessel, Waypoint, WaypointManager, Antenna, CargoBay, ControlSurface, Decoupler, DockingPort, Engine, Experiment, Fairing, Force, Intake, LaunchClamp, Leg, Light, Module, Parachute, Part, Parts, Propellant, RCS, Radiator, ReactionWheel, ResourceConverter, ResourceDrain, ResourceHarvester, RoboticHinge, RoboticPiston, RoboticRotation, RoboticRotor, ScienceData, ScienceSubject, Sensor, SolarPanel, Thruster, Wheel
export SpaceCenter
end
struct EGameMode <: kRPCTypes.Enum
    value::Int32
end
const EGameMode_Sandbox = EGameMode(0)
const EGameMode_Career = EGameMode(1)
const EGameMode_Science = EGameMode(2)
const EGameMode_ScienceSandbox = EGameMode(3)
const EGameMode_Mission = EGameMode(4)
const EGameMode_MissionBuilder = EGameMode(5)
const EGameMode_Scenario = EGameMode(6)
const EGameMode_ScenarioNonResumable = EGameMode(7)
struct EWarpMode <: kRPCTypes.Enum
    value::Int32
end
const EWarpMode_Rails = EWarpMode(0)
const EWarpMode_Physics = EWarpMode(1)
const EWarpMode_None = EWarpMode(2)
struct ECameraMode <: kRPCTypes.Enum
    value::Int32
end
const ECameraMode_Automatic = ECameraMode(0)
const ECameraMode_Free = ECameraMode(1)
const ECameraMode_Chase = ECameraMode(2)
const ECameraMode_Locked = ECameraMode(3)
const ECameraMode_Orbital = ECameraMode(4)
const ECameraMode_IVA = ECameraMode(5)
const ECameraMode_Map = ECameraMode(6)
struct ECommLinkType <: kRPCTypes.Enum
    value::Int32
end
const ECommLinkType_Home = ECommLinkType(0)
const ECommLinkType_Control = ECommLinkType(1)
const ECommLinkType_Relay = ECommLinkType(2)
struct EContractState <: kRPCTypes.Enum
    value::Int32
end
const EContractState_Active = EContractState(0)
const EContractState_Canceled = EContractState(1)
const EContractState_Completed = EContractState(2)
const EContractState_DeadlineExpired = EContractState(3)
const EContractState_Declined = EContractState(4)
const EContractState_Failed = EContractState(5)
const EContractState_Generated = EContractState(6)
const EContractState_Offered = EContractState(7)
const EContractState_OfferExpired = EContractState(8)
const EContractState_Withdrawn = EContractState(9)
struct EControlInputMode <: kRPCTypes.Enum
    value::Int32
end
const EControlInputMode_Additive = EControlInputMode(0)
const EControlInputMode_Override = EControlInputMode(1)
struct EControlSource <: kRPCTypes.Enum
    value::Int32
end
const EControlSource_Kerbal = EControlSource(0)
const EControlSource_Probe = EControlSource(1)
const EControlSource_None = EControlSource(2)
struct EControlState <: kRPCTypes.Enum
    value::Int32
end
const EControlState_Full = EControlState(0)
const EControlState_Partial = EControlState(1)
const EControlState_None = EControlState(2)
struct ECrewMemberType <: kRPCTypes.Enum
    value::Int32
end
const ECrewMemberType_Applicant = ECrewMemberType(0)
const ECrewMemberType_Crew = ECrewMemberType(1)
const ECrewMemberType_Tourist = ECrewMemberType(2)
const ECrewMemberType_Unowned = ECrewMemberType(3)
struct EResourceFlowMode <: kRPCTypes.Enum
    value::Int32
end
const EResourceFlowMode_Vessel = EResourceFlowMode(0)
const EResourceFlowMode_Stage = EResourceFlowMode(1)
const EResourceFlowMode_Adjacent = EResourceFlowMode(2)
const EResourceFlowMode_None = EResourceFlowMode(3)
struct ESASMode <: kRPCTypes.Enum
    value::Int32
end
const ESASMode_StabilityAssist = ESASMode(0)
const ESASMode_Maneuver = ESASMode(1)
const ESASMode_Prograde = ESASMode(2)
const ESASMode_Retrograde = ESASMode(3)
const ESASMode_Normal = ESASMode(4)
const ESASMode_AntiNormal = ESASMode(5)
const ESASMode_Radial = ESASMode(6)
const ESASMode_AntiRadial = ESASMode(7)
const ESASMode_Target = ESASMode(8)
const ESASMode_AntiTarget = ESASMode(9)
struct ESpeedMode <: kRPCTypes.Enum
    value::Int32
end
const ESpeedMode_Orbit = ESpeedMode(0)
const ESpeedMode_Surface = ESpeedMode(1)
const ESpeedMode_Target = ESpeedMode(2)
struct EVesselSituation <: kRPCTypes.Enum
    value::Int32
end
const EVesselSituation_PreLaunch = EVesselSituation(0)
const EVesselSituation_Orbiting = EVesselSituation(1)
const EVesselSituation_SubOrbital = EVesselSituation(2)
const EVesselSituation_Escaping = EVesselSituation(3)
const EVesselSituation_Flying = EVesselSituation(4)
const EVesselSituation_Landed = EVesselSituation(5)
const EVesselSituation_Splashed = EVesselSituation(6)
const EVesselSituation_Docked = EVesselSituation(7)
struct EVesselType <: kRPCTypes.Enum
    value::Int32
end
const EVesselType_Base = EVesselType(0)
const EVesselType_Debris = EVesselType(1)
const EVesselType_Lander = EVesselType(2)
const EVesselType_Plane = EVesselType(3)
const EVesselType_Probe = EVesselType(4)
const EVesselType_Relay = EVesselType(5)
const EVesselType_Rover = EVesselType(6)
const EVesselType_Ship = EVesselType(7)
const EVesselType_Station = EVesselType(8)
struct EAntennaState <: kRPCTypes.Enum
    value::Int32
end
const EAntennaState_Deployed = EAntennaState(0)
const EAntennaState_Retracted = EAntennaState(1)
const EAntennaState_Deploying = EAntennaState(2)
const EAntennaState_Retracting = EAntennaState(3)
const EAntennaState_Broken = EAntennaState(4)
struct EAutostrutState <: kRPCTypes.Enum
    value::Int32
end
const EAutostrutState_Off = EAutostrutState(0)
const EAutostrutState_Root = EAutostrutState(1)
const EAutostrutState_Heaviest = EAutostrutState(2)
const EAutostrutState_Grandparent = EAutostrutState(3)
const EAutostrutState_ForceRoot = EAutostrutState(4)
const EAutostrutState_ForceHeaviest = EAutostrutState(5)
const EAutostrutState_ForceGrandparent = EAutostrutState(6)
struct ECargoBayState <: kRPCTypes.Enum
    value::Int32
end
const ECargoBayState_Open = ECargoBayState(0)
const ECargoBayState_Closed = ECargoBayState(1)
const ECargoBayState_Opening = ECargoBayState(2)
const ECargoBayState_Closing = ECargoBayState(3)
struct EDockingPortState <: kRPCTypes.Enum
    value::Int32
end
const EDockingPortState_Ready = EDockingPortState(0)
const EDockingPortState_Docked = EDockingPortState(1)
const EDockingPortState_Docking = EDockingPortState(2)
const EDockingPortState_Undocking = EDockingPortState(3)
const EDockingPortState_Shielded = EDockingPortState(4)
const EDockingPortState_Moving = EDockingPortState(5)
struct ELegState <: kRPCTypes.Enum
    value::Int32
end
const ELegState_Deployed = ELegState(0)
const ELegState_Retracted = ELegState(1)
const ELegState_Deploying = ELegState(2)
const ELegState_Retracting = ELegState(3)
const ELegState_Broken = ELegState(4)
struct EMotorState <: kRPCTypes.Enum
    value::Int32
end
const EMotorState_Idle = EMotorState(0)
const EMotorState_Running = EMotorState(1)
const EMotorState_Disabled = EMotorState(2)
const EMotorState_Inoperable = EMotorState(3)
const EMotorState_NotEnoughResources = EMotorState(4)
struct EParachuteState <: kRPCTypes.Enum
    value::Int32
end
const EParachuteState_Stowed = EParachuteState(0)
const EParachuteState_Armed = EParachuteState(1)
const EParachuteState_Active = EParachuteState(2)
const EParachuteState_SemiDeployed = EParachuteState(3)
const EParachuteState_Deployed = EParachuteState(4)
const EParachuteState_Cut = EParachuteState(5)
struct ERadiatorState <: kRPCTypes.Enum
    value::Int32
end
const ERadiatorState_Extended = ERadiatorState(0)
const ERadiatorState_Retracted = ERadiatorState(1)
const ERadiatorState_Extending = ERadiatorState(2)
const ERadiatorState_Retracting = ERadiatorState(3)
const ERadiatorState_Broken = ERadiatorState(4)
struct EResourceConverterState <: kRPCTypes.Enum
    value::Int32
end
const EResourceConverterState_Running = EResourceConverterState(0)
const EResourceConverterState_Idle = EResourceConverterState(1)
const EResourceConverterState_MissingResource = EResourceConverterState(2)
const EResourceConverterState_StorageFull = EResourceConverterState(3)
const EResourceConverterState_Capacity = EResourceConverterState(4)
const EResourceConverterState_Unknown = EResourceConverterState(5)
struct EResourceHarvesterState <: kRPCTypes.Enum
    value::Int32
end
const EResourceHarvesterState_Deploying = EResourceHarvesterState(0)
const EResourceHarvesterState_Deployed = EResourceHarvesterState(1)
const EResourceHarvesterState_Retracting = EResourceHarvesterState(2)
const EResourceHarvesterState_Retracted = EResourceHarvesterState(3)
const EResourceHarvesterState_Active = EResourceHarvesterState(4)
struct ESolarPanelState <: kRPCTypes.Enum
    value::Int32
end
const ESolarPanelState_Extended = ESolarPanelState(0)
const ESolarPanelState_Retracted = ESolarPanelState(1)
const ESolarPanelState_Extending = ESolarPanelState(2)
const ESolarPanelState_Retracting = ESolarPanelState(3)
const ESolarPanelState_Broken = ESolarPanelState(4)
struct EWheelState <: kRPCTypes.Enum
    value::Int32
end
const EWheelState_Deployed = EWheelState(0)
const EWheelState_Retracted = EWheelState(1)
const EWheelState_Deploying = EWheelState(2)
const EWheelState_Retracting = EWheelState(3)
const EWheelState_Broken = EWheelState(4)
struct EDrainModes <: kRPCTypes.Enum
    value::Int32
end
const EDrainModes_part = EDrainModes(0)
const EDrainModes_vessel = EDrainModes(1)
export EGameMode, EWarpMode, ECameraMode, ECommLinkType, EContractState, EControlInputMode, EControlSource, EControlState, ECrewMemberType, EResourceFlowMode, ESASMode, ESpeedMode, EVesselSituation, EVesselType, EAntennaState, EAutostrutState, ECargoBayState, EDockingPortState, ELegState, EMotorState, EParachuteState, ERadiatorState, EResourceConverterState, EResourceHarvesterState, ESolarPanelState, EWheelState, EDrainModes
struct ClearTarget <: Request{:SpaceCenter, :ClearTarget, Nothing}
    ClearTarget() = begin
            new()
        end
end
struct LaunchableVessels <: Request{:SpaceCenter, :LaunchableVessels, begin
                Array{String, 1}
            end}
    LaunchableVessels(craftDirectory::String) = begin
            new(craftDirectory)
        end
    craftDirectory::String
end
struct LaunchVessel <: Request{:SpaceCenter, :LaunchVessel, Nothing}
    LaunchVessel(craftDirectory::String, name::String, launchSite::String, recover::Bool) = begin
            new(craftDirectory, name, launchSite, recover)
        end
    craftDirectory::String
    name::String
    launchSite::String
    recover::Bool
end
struct LaunchVesselFromVAB <: Request{:SpaceCenter, :LaunchVesselFromVAB, Nothing}
    LaunchVesselFromVAB(name::String, recover::Bool) = begin
            new(name, recover)
        end
    name::String
    recover::Bool
end
struct LaunchVesselFromSPH <: Request{:SpaceCenter, :LaunchVesselFromSPH, Nothing}
    LaunchVesselFromSPH(name::String, recover::Bool) = begin
            new(name, recover)
        end
    name::String
    recover::Bool
end
struct Save <: Request{:SpaceCenter, :Save, Nothing}
    Save(name::String) = begin
            new(name)
        end
    name::String
end
struct Load <: Request{:SpaceCenter, :Load, Nothing}
    Load(name::String) = begin
            new(name)
        end
    name::String
end
struct Quicksave <: Request{:SpaceCenter, :Quicksave, Nothing}
    Quicksave() = begin
            new()
        end
end
struct Quickload <: Request{:SpaceCenter, :Quickload, Nothing}
    Quickload() = begin
            new()
        end
end
struct CanRailsWarpAt <: Request{:SpaceCenter, :CanRailsWarpAt, Bool}
    CanRailsWarpAt(factor::Int32) = begin
            new(factor)
        end
    factor::Int32
end
struct WarpTo <: Request{:SpaceCenter, :WarpTo, Nothing}
    WarpTo(ut::Float64, maxRailsRate::Float32, maxPhysicsRate::Float32) = begin
            new(ut, maxRailsRate, maxPhysicsRate)
        end
    ut::Float64
    maxRailsRate::Float32
    maxPhysicsRate::Float32
end
struct TransformPosition <: Request{:SpaceCenter, :TransformPosition, begin
                Tuple{Float64, Float64, Float64}
            end}
    TransformPosition(position::begin
                    Tuple{Float64, Float64, Float64}
                end, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame) = begin
            new(position, from, to)
        end
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    from::RemoteTypes.ReferenceFrame
    to::RemoteTypes.ReferenceFrame
end
struct TransformDirection <: Request{:SpaceCenter, :TransformDirection, begin
                Tuple{Float64, Float64, Float64}
            end}
    TransformDirection(direction::begin
                    Tuple{Float64, Float64, Float64}
                end, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame) = begin
            new(direction, from, to)
        end
    direction::begin
            Tuple{Float64, Float64, Float64}
        end
    from::RemoteTypes.ReferenceFrame
    to::RemoteTypes.ReferenceFrame
end
struct TransformRotation <: Request{:SpaceCenter, :TransformRotation, begin
                Tuple{Float64, Float64, Float64, Float64}
            end}
    TransformRotation(rotation::begin
                    Tuple{Float64, Float64, Float64, Float64}
                end, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame) = begin
            new(rotation, from, to)
        end
    rotation::begin
            Tuple{Float64, Float64, Float64, Float64}
        end
    from::RemoteTypes.ReferenceFrame
    to::RemoteTypes.ReferenceFrame
end
struct TransformVelocity <: Request{:SpaceCenter, :TransformVelocity, begin
                Tuple{Float64, Float64, Float64}
            end}
    TransformVelocity(position::begin
                    Tuple{Float64, Float64, Float64}
                end, velocity::begin
                    Tuple{Float64, Float64, Float64}
                end, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame) = begin
            new(position, velocity, from, to)
        end
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    velocity::begin
            Tuple{Float64, Float64, Float64}
        end
    from::RemoteTypes.ReferenceFrame
    to::RemoteTypes.ReferenceFrame
end
struct RaycastDistance <: Request{:SpaceCenter, :RaycastDistance, Float64}
    RaycastDistance(position::begin
                    Tuple{Float64, Float64, Float64}
                end, direction::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(position, direction, referenceFrame)
        end
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    direction::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct RaycastPart <: Request{:SpaceCenter, :RaycastPart, RemoteTypes.Part}
    RaycastPart(position::begin
                    Tuple{Float64, Float64, Float64}
                end, direction::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(position, direction, referenceFrame)
        end
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    direction::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct get_GameMode <: Request{:SpaceCenter, :get_GameMode, EGameMode}
    get_GameMode() = begin
            new()
        end
end
struct get_Science <: Request{:SpaceCenter, :get_Science, Float32}
    get_Science() = begin
            new()
        end
end
struct get_Funds <: Request{:SpaceCenter, :get_Funds, Float64}
    get_Funds() = begin
            new()
        end
end
struct get_Reputation <: Request{:SpaceCenter, :get_Reputation, Float32}
    get_Reputation() = begin
            new()
        end
end
struct get_ActiveVessel <: Request{:SpaceCenter, :get_ActiveVessel, RemoteTypes.Vessel}
    get_ActiveVessel() = begin
            new()
        end
end
struct set_ActiveVessel <: Request{:SpaceCenter, :set_ActiveVessel, Nothing}
    set_ActiveVessel(value::RemoteTypes.Vessel) = begin
            new(value)
        end
    value::RemoteTypes.Vessel
end
struct get_Vessels <: Request{:SpaceCenter, :get_Vessels, begin
                Array{RemoteTypes.Vessel, 1}
            end}
    get_Vessels() = begin
            new()
        end
end
struct get_Bodies <: Request{:SpaceCenter, :get_Bodies, begin
                Dict{String, RemoteTypes.CelestialBody}
            end}
    get_Bodies() = begin
            new()
        end
end
struct get_TargetBody <: Request{:SpaceCenter, :get_TargetBody, RemoteTypes.CelestialBody}
    get_TargetBody() = begin
            new()
        end
end
struct set_TargetBody <: Request{:SpaceCenter, :set_TargetBody, Nothing}
    set_TargetBody(value::RemoteTypes.CelestialBody) = begin
            new(value)
        end
    value::RemoteTypes.CelestialBody
end
struct get_TargetVessel <: Request{:SpaceCenter, :get_TargetVessel, RemoteTypes.Vessel}
    get_TargetVessel() = begin
            new()
        end
end
struct set_TargetVessel <: Request{:SpaceCenter, :set_TargetVessel, Nothing}
    set_TargetVessel(value::RemoteTypes.Vessel) = begin
            new(value)
        end
    value::RemoteTypes.Vessel
end
struct get_TargetDockingPort <: Request{:SpaceCenter, :get_TargetDockingPort, RemoteTypes.DockingPort}
    get_TargetDockingPort() = begin
            new()
        end
end
struct set_TargetDockingPort <: Request{:SpaceCenter, :set_TargetDockingPort, Nothing}
    set_TargetDockingPort(value::RemoteTypes.DockingPort) = begin
            new(value)
        end
    value::RemoteTypes.DockingPort
end
struct get_WaypointManager <: Request{:SpaceCenter, :get_WaypointManager, RemoteTypes.WaypointManager}
    get_WaypointManager() = begin
            new()
        end
end
struct get_ContractManager <: Request{:SpaceCenter, :get_ContractManager, RemoteTypes.ContractManager}
    get_ContractManager() = begin
            new()
        end
end
struct get_AlarmClock <: Request{:SpaceCenter, :get_AlarmClock, RemoteTypes.AlarmClock}
    get_AlarmClock() = begin
            new()
        end
end
struct get_Camera <: Request{:SpaceCenter, :get_Camera, RemoteTypes.Camera}
    get_Camera() = begin
            new()
        end
end
struct get_UIVisible <: Request{:SpaceCenter, :get_UIVisible, Bool}
    get_UIVisible() = begin
            new()
        end
end
struct set_UIVisible <: Request{:SpaceCenter, :set_UIVisible, Nothing}
    set_UIVisible(value::Bool) = begin
            new(value)
        end
    value::Bool
end
struct get_Navball <: Request{:SpaceCenter, :get_Navball, Bool}
    get_Navball() = begin
            new()
        end
end
struct set_Navball <: Request{:SpaceCenter, :set_Navball, Nothing}
    set_Navball(value::Bool) = begin
            new(value)
        end
    value::Bool
end
struct get_UT <: Request{:SpaceCenter, :get_UT, Float64}
    get_UT() = begin
            new()
        end
end
struct get_G <: Request{:SpaceCenter, :get_G, Float64}
    get_G() = begin
            new()
        end
end
struct get_WarpMode <: Request{:SpaceCenter, :get_WarpMode, EWarpMode}
    get_WarpMode() = begin
            new()
        end
end
struct get_WarpRate <: Request{:SpaceCenter, :get_WarpRate, Float32}
    get_WarpRate() = begin
            new()
        end
end
struct get_WarpFactor <: Request{:SpaceCenter, :get_WarpFactor, Float32}
    get_WarpFactor() = begin
            new()
        end
end
struct get_RailsWarpFactor <: Request{:SpaceCenter, :get_RailsWarpFactor, Int32}
    get_RailsWarpFactor() = begin
            new()
        end
end
struct set_RailsWarpFactor <: Request{:SpaceCenter, :set_RailsWarpFactor, Nothing}
    set_RailsWarpFactor(value::Int32) = begin
            new(value)
        end
    value::Int32
end
struct get_PhysicsWarpFactor <: Request{:SpaceCenter, :get_PhysicsWarpFactor, Int32}
    get_PhysicsWarpFactor() = begin
            new()
        end
end
struct set_PhysicsWarpFactor <: Request{:SpaceCenter, :set_PhysicsWarpFactor, Nothing}
    set_PhysicsWarpFactor(value::Int32) = begin
            new(value)
        end
    value::Int32
end
struct get_MaximumRailsWarpFactor <: Request{:SpaceCenter, :get_MaximumRailsWarpFactor, Int32}
    get_MaximumRailsWarpFactor() = begin
            new()
        end
end
struct get_FARAvailable <: Request{:SpaceCenter, :get_FARAvailable, Bool}
    get_FARAvailable() = begin
            new()
        end
end
struct Alarm_get_Type <: Request{:SpaceCenter, :Alarm_get_Type, String}
    Alarm_get_Type(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_Title <: Request{:SpaceCenter, :Alarm_get_Title, String}
    Alarm_get_Title(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_Description <: Request{:SpaceCenter, :Alarm_get_Description, String}
    Alarm_get_Description(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_UT <: Request{:SpaceCenter, :Alarm_get_UT, Float64}
    Alarm_get_UT(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_TimeTill <: Request{:SpaceCenter, :Alarm_get_TimeTill, Float64}
    Alarm_get_TimeTill(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_EventOffset <: Request{:SpaceCenter, :Alarm_get_EventOffset, Float64}
    Alarm_get_EventOffset(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_Vessel <: Request{:SpaceCenter, :Alarm_get_Vessel, RemoteTypes.Vessel}
    Alarm_get_Vessel(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_ID <: Request{:SpaceCenter, :Alarm_get_ID, Int32}
    Alarm_get_ID(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct AlarmClock_MakeRawAlarm <: Request{:SpaceCenter, :AlarmClock_MakeRawAlarm, RemoteTypes.Alarm}
    AlarmClock_MakeRawAlarm(this::RemoteTypes.AlarmClock, time::Float64, title::String, description::String) = begin
            new(this, time, title, description)
        end
    this::RemoteTypes.AlarmClock
    time::Float64
    title::String
    description::String
end
struct AlarmClock_MakeRawAlarmVessel <: Request{:SpaceCenter, :AlarmClock_MakeRawAlarmVessel, RemoteTypes.Alarm}
    AlarmClock_MakeRawAlarmVessel(this::RemoteTypes.AlarmClock, time::Float64, V::RemoteTypes.Vessel, title::String, description::String) = begin
            new(this, time, V, title, description)
        end
    this::RemoteTypes.AlarmClock
    time::Float64
    V::RemoteTypes.Vessel
    title::String
    description::String
end
struct AlarmClock_MakeApaAlarm <: Request{:SpaceCenter, :AlarmClock_MakeApaAlarm, RemoteTypes.Alarm}
    AlarmClock_MakeApaAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, offset::Float64, title::String, description::String) = begin
            new(this, V, offset, title, description)
        end
    this::RemoteTypes.AlarmClock
    V::RemoteTypes.Vessel
    offset::Float64
    title::String
    description::String
end
struct AlarmClock_MakePeaAlarm <: Request{:SpaceCenter, :AlarmClock_MakePeaAlarm, RemoteTypes.Alarm}
    AlarmClock_MakePeaAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, offset::Float64, title::String, description::String) = begin
            new(this, V, offset, title, description)
        end
    this::RemoteTypes.AlarmClock
    V::RemoteTypes.Vessel
    offset::Float64
    title::String
    description::String
end
struct AlarmClock_MakeManeuverAlarm <: Request{:SpaceCenter, :AlarmClock_MakeManeuverAlarm, RemoteTypes.Alarm}
    AlarmClock_MakeManeuverAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, Man::RemoteTypes.Node, offset::Float64, AddBurnTime::Bool, title::String, description::String) = begin
            new(this, V, Man, offset, AddBurnTime, title, description)
        end
    this::RemoteTypes.AlarmClock
    V::RemoteTypes.Vessel
    Man::RemoteTypes.Node
    offset::Float64
    AddBurnTime::Bool
    title::String
    description::String
end
struct AlarmClock_MakeSOIAlarm <: Request{:SpaceCenter, :AlarmClock_MakeSOIAlarm, RemoteTypes.Alarm}
    AlarmClock_MakeSOIAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, offset::Float64, title::String, description::String) = begin
            new(this, V, offset, title, description)
        end
    this::RemoteTypes.AlarmClock
    V::RemoteTypes.Vessel
    offset::Float64
    title::String
    description::String
end
struct AlarmClock_GetAlarms <: Request{:SpaceCenter, :AlarmClock_GetAlarms, begin
                Array{RemoteTypes.Alarm, 1}
            end}
    AlarmClock_GetAlarms(this::RemoteTypes.AlarmClock) = begin
            new(this)
        end
    this::RemoteTypes.AlarmClock
end
struct AutoPilot_Engage <: Request{:SpaceCenter, :AutoPilot_Engage, Nothing}
    AutoPilot_Engage(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_Disengage <: Request{:SpaceCenter, :AutoPilot_Disengage, Nothing}
    AutoPilot_Disengage(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_Wait <: Request{:SpaceCenter, :AutoPilot_Wait, Nothing}
    AutoPilot_Wait(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_TargetPitchAndHeading <: Request{:SpaceCenter, :AutoPilot_TargetPitchAndHeading, Nothing}
    AutoPilot_TargetPitchAndHeading(this::RemoteTypes.AutoPilot, pitch::Float32, heading::Float32) = begin
            new(this, pitch, heading)
        end
    this::RemoteTypes.AutoPilot
    pitch::Float32
    heading::Float32
end
struct AutoPilot_get_Error <: Request{:SpaceCenter, :AutoPilot_get_Error, Float32}
    AutoPilot_get_Error(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_get_PitchError <: Request{:SpaceCenter, :AutoPilot_get_PitchError, Float32}
    AutoPilot_get_PitchError(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_get_HeadingError <: Request{:SpaceCenter, :AutoPilot_get_HeadingError, Float32}
    AutoPilot_get_HeadingError(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_get_RollError <: Request{:SpaceCenter, :AutoPilot_get_RollError, Float32}
    AutoPilot_get_RollError(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_get_ReferenceFrame <: Request{:SpaceCenter, :AutoPilot_get_ReferenceFrame, RemoteTypes.ReferenceFrame}
    AutoPilot_get_ReferenceFrame(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_ReferenceFrame <: Request{:SpaceCenter, :AutoPilot_set_ReferenceFrame, Nothing}
    AutoPilot_set_ReferenceFrame(this::RemoteTypes.AutoPilot, value::RemoteTypes.ReferenceFrame) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::RemoteTypes.ReferenceFrame
end
struct AutoPilot_get_TargetPitch <: Request{:SpaceCenter, :AutoPilot_get_TargetPitch, Float32}
    AutoPilot_get_TargetPitch(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_TargetPitch <: Request{:SpaceCenter, :AutoPilot_set_TargetPitch, Nothing}
    AutoPilot_set_TargetPitch(this::RemoteTypes.AutoPilot, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::Float32
end
struct AutoPilot_get_TargetHeading <: Request{:SpaceCenter, :AutoPilot_get_TargetHeading, Float32}
    AutoPilot_get_TargetHeading(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_TargetHeading <: Request{:SpaceCenter, :AutoPilot_set_TargetHeading, Nothing}
    AutoPilot_set_TargetHeading(this::RemoteTypes.AutoPilot, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::Float32
end
struct AutoPilot_get_TargetRoll <: Request{:SpaceCenter, :AutoPilot_get_TargetRoll, Float32}
    AutoPilot_get_TargetRoll(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_TargetRoll <: Request{:SpaceCenter, :AutoPilot_set_TargetRoll, Nothing}
    AutoPilot_set_TargetRoll(this::RemoteTypes.AutoPilot, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::Float32
end
struct AutoPilot_get_TargetDirection <: Request{:SpaceCenter, :AutoPilot_get_TargetDirection, begin
                Tuple{Float64, Float64, Float64}
            end}
    AutoPilot_get_TargetDirection(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_TargetDirection <: Request{:SpaceCenter, :AutoPilot_set_TargetDirection, Nothing}
    AutoPilot_set_TargetDirection(this::RemoteTypes.AutoPilot, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct AutoPilot_get_SAS <: Request{:SpaceCenter, :AutoPilot_get_SAS, Bool}
    AutoPilot_get_SAS(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_SAS <: Request{:SpaceCenter, :AutoPilot_set_SAS, Nothing}
    AutoPilot_set_SAS(this::RemoteTypes.AutoPilot, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::Bool
end
struct AutoPilot_get_SASMode <: Request{:SpaceCenter, :AutoPilot_get_SASMode, ESASMode}
    AutoPilot_get_SASMode(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_SASMode <: Request{:SpaceCenter, :AutoPilot_set_SASMode, Nothing}
    AutoPilot_set_SASMode(this::RemoteTypes.AutoPilot, value::ESASMode) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::ESASMode
end
struct AutoPilot_get_RollThreshold <: Request{:SpaceCenter, :AutoPilot_get_RollThreshold, Float64}
    AutoPilot_get_RollThreshold(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_RollThreshold <: Request{:SpaceCenter, :AutoPilot_set_RollThreshold, Nothing}
    AutoPilot_set_RollThreshold(this::RemoteTypes.AutoPilot, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::Float64
end
struct AutoPilot_get_StoppingTime <: Request{:SpaceCenter, :AutoPilot_get_StoppingTime, begin
                Tuple{Float64, Float64, Float64}
            end}
    AutoPilot_get_StoppingTime(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_StoppingTime <: Request{:SpaceCenter, :AutoPilot_set_StoppingTime, Nothing}
    AutoPilot_set_StoppingTime(this::RemoteTypes.AutoPilot, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct AutoPilot_get_DecelerationTime <: Request{:SpaceCenter, :AutoPilot_get_DecelerationTime, begin
                Tuple{Float64, Float64, Float64}
            end}
    AutoPilot_get_DecelerationTime(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_DecelerationTime <: Request{:SpaceCenter, :AutoPilot_set_DecelerationTime, Nothing}
    AutoPilot_set_DecelerationTime(this::RemoteTypes.AutoPilot, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct AutoPilot_get_AttenuationAngle <: Request{:SpaceCenter, :AutoPilot_get_AttenuationAngle, begin
                Tuple{Float64, Float64, Float64}
            end}
    AutoPilot_get_AttenuationAngle(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_AttenuationAngle <: Request{:SpaceCenter, :AutoPilot_set_AttenuationAngle, Nothing}
    AutoPilot_set_AttenuationAngle(this::RemoteTypes.AutoPilot, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct AutoPilot_get_AutoTune <: Request{:SpaceCenter, :AutoPilot_get_AutoTune, Bool}
    AutoPilot_get_AutoTune(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_AutoTune <: Request{:SpaceCenter, :AutoPilot_set_AutoTune, Nothing}
    AutoPilot_set_AutoTune(this::RemoteTypes.AutoPilot, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::Bool
end
struct AutoPilot_get_TimeToPeak <: Request{:SpaceCenter, :AutoPilot_get_TimeToPeak, begin
                Tuple{Float64, Float64, Float64}
            end}
    AutoPilot_get_TimeToPeak(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_TimeToPeak <: Request{:SpaceCenter, :AutoPilot_set_TimeToPeak, Nothing}
    AutoPilot_set_TimeToPeak(this::RemoteTypes.AutoPilot, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct AutoPilot_get_Overshoot <: Request{:SpaceCenter, :AutoPilot_get_Overshoot, begin
                Tuple{Float64, Float64, Float64}
            end}
    AutoPilot_get_Overshoot(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_Overshoot <: Request{:SpaceCenter, :AutoPilot_set_Overshoot, Nothing}
    AutoPilot_set_Overshoot(this::RemoteTypes.AutoPilot, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct AutoPilot_get_PitchPIDGains <: Request{:SpaceCenter, :AutoPilot_get_PitchPIDGains, begin
                Tuple{Float64, Float64, Float64}
            end}
    AutoPilot_get_PitchPIDGains(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_PitchPIDGains <: Request{:SpaceCenter, :AutoPilot_set_PitchPIDGains, Nothing}
    AutoPilot_set_PitchPIDGains(this::RemoteTypes.AutoPilot, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct AutoPilot_get_RollPIDGains <: Request{:SpaceCenter, :AutoPilot_get_RollPIDGains, begin
                Tuple{Float64, Float64, Float64}
            end}
    AutoPilot_get_RollPIDGains(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_RollPIDGains <: Request{:SpaceCenter, :AutoPilot_set_RollPIDGains, Nothing}
    AutoPilot_set_RollPIDGains(this::RemoteTypes.AutoPilot, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct AutoPilot_get_YawPIDGains <: Request{:SpaceCenter, :AutoPilot_get_YawPIDGains, begin
                Tuple{Float64, Float64, Float64}
            end}
    AutoPilot_get_YawPIDGains(this::RemoteTypes.AutoPilot) = begin
            new(this)
        end
    this::RemoteTypes.AutoPilot
end
struct AutoPilot_set_YawPIDGains <: Request{:SpaceCenter, :AutoPilot_set_YawPIDGains, Nothing}
    AutoPilot_set_YawPIDGains(this::RemoteTypes.AutoPilot, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.AutoPilot
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Camera_get_Mode <: Request{:SpaceCenter, :Camera_get_Mode, ECameraMode}
    Camera_get_Mode(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_set_Mode <: Request{:SpaceCenter, :Camera_set_Mode, Nothing}
    Camera_set_Mode(this::RemoteTypes.Camera, value::ECameraMode) = begin
            new(this, value)
        end
    this::RemoteTypes.Camera
    value::ECameraMode
end
struct Camera_get_Pitch <: Request{:SpaceCenter, :Camera_get_Pitch, Float32}
    Camera_get_Pitch(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_set_Pitch <: Request{:SpaceCenter, :Camera_set_Pitch, Nothing}
    Camera_set_Pitch(this::RemoteTypes.Camera, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Camera
    value::Float32
end
struct Camera_get_Heading <: Request{:SpaceCenter, :Camera_get_Heading, Float32}
    Camera_get_Heading(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_set_Heading <: Request{:SpaceCenter, :Camera_set_Heading, Nothing}
    Camera_set_Heading(this::RemoteTypes.Camera, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Camera
    value::Float32
end
struct Camera_get_Distance <: Request{:SpaceCenter, :Camera_get_Distance, Float32}
    Camera_get_Distance(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_set_Distance <: Request{:SpaceCenter, :Camera_set_Distance, Nothing}
    Camera_set_Distance(this::RemoteTypes.Camera, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Camera
    value::Float32
end
struct Camera_get_MinPitch <: Request{:SpaceCenter, :Camera_get_MinPitch, Float32}
    Camera_get_MinPitch(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_get_MaxPitch <: Request{:SpaceCenter, :Camera_get_MaxPitch, Float32}
    Camera_get_MaxPitch(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_get_MinDistance <: Request{:SpaceCenter, :Camera_get_MinDistance, Float32}
    Camera_get_MinDistance(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_get_MaxDistance <: Request{:SpaceCenter, :Camera_get_MaxDistance, Float32}
    Camera_get_MaxDistance(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_get_DefaultDistance <: Request{:SpaceCenter, :Camera_get_DefaultDistance, Float32}
    Camera_get_DefaultDistance(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_get_FocussedBody <: Request{:SpaceCenter, :Camera_get_FocussedBody, RemoteTypes.CelestialBody}
    Camera_get_FocussedBody(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_set_FocussedBody <: Request{:SpaceCenter, :Camera_set_FocussedBody, Nothing}
    Camera_set_FocussedBody(this::RemoteTypes.Camera, value::RemoteTypes.CelestialBody) = begin
            new(this, value)
        end
    this::RemoteTypes.Camera
    value::RemoteTypes.CelestialBody
end
struct Camera_get_FocussedVessel <: Request{:SpaceCenter, :Camera_get_FocussedVessel, RemoteTypes.Vessel}
    Camera_get_FocussedVessel(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_set_FocussedVessel <: Request{:SpaceCenter, :Camera_set_FocussedVessel, Nothing}
    Camera_set_FocussedVessel(this::RemoteTypes.Camera, value::RemoteTypes.Vessel) = begin
            new(this, value)
        end
    this::RemoteTypes.Camera
    value::RemoteTypes.Vessel
end
struct Camera_get_FocussedNode <: Request{:SpaceCenter, :Camera_get_FocussedNode, RemoteTypes.Node}
    Camera_get_FocussedNode(this::RemoteTypes.Camera) = begin
            new(this)
        end
    this::RemoteTypes.Camera
end
struct Camera_set_FocussedNode <: Request{:SpaceCenter, :Camera_set_FocussedNode, Nothing}
    Camera_set_FocussedNode(this::RemoteTypes.Camera, value::RemoteTypes.Node) = begin
            new(this, value)
        end
    this::RemoteTypes.Camera
    value::RemoteTypes.Node
end
struct CelestialBody_SurfaceHeight <: Request{:SpaceCenter, :CelestialBody_SurfaceHeight, Float64}
    CelestialBody_SurfaceHeight(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64) = begin
            new(this, latitude, longitude)
        end
    this::RemoteTypes.CelestialBody
    latitude::Float64
    longitude::Float64
end
struct CelestialBody_BedrockHeight <: Request{:SpaceCenter, :CelestialBody_BedrockHeight, Float64}
    CelestialBody_BedrockHeight(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64) = begin
            new(this, latitude, longitude)
        end
    this::RemoteTypes.CelestialBody
    latitude::Float64
    longitude::Float64
end
struct CelestialBody_MSLPosition <: Request{:SpaceCenter, :CelestialBody_MSLPosition, begin
                Tuple{Float64, Float64, Float64}
            end}
    CelestialBody_MSLPosition(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, latitude, longitude, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    latitude::Float64
    longitude::Float64
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_SurfacePosition <: Request{:SpaceCenter, :CelestialBody_SurfacePosition, begin
                Tuple{Float64, Float64, Float64}
            end}
    CelestialBody_SurfacePosition(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, latitude, longitude, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    latitude::Float64
    longitude::Float64
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_BedrockPosition <: Request{:SpaceCenter, :CelestialBody_BedrockPosition, begin
                Tuple{Float64, Float64, Float64}
            end}
    CelestialBody_BedrockPosition(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, latitude, longitude, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    latitude::Float64
    longitude::Float64
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_PositionAtAltitude <: Request{:SpaceCenter, :CelestialBody_PositionAtAltitude, begin
                Tuple{Float64, Float64, Float64}
            end}
    CelestialBody_PositionAtAltitude(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, altitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, latitude, longitude, altitude, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    latitude::Float64
    longitude::Float64
    altitude::Float64
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_LatitudeAtPosition <: Request{:SpaceCenter, :CelestialBody_LatitudeAtPosition, Float64}
    CelestialBody_LatitudeAtPosition(this::RemoteTypes.CelestialBody, position::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, position, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_LongitudeAtPosition <: Request{:SpaceCenter, :CelestialBody_LongitudeAtPosition, Float64}
    CelestialBody_LongitudeAtPosition(this::RemoteTypes.CelestialBody, position::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, position, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_AltitudeAtPosition <: Request{:SpaceCenter, :CelestialBody_AltitudeAtPosition, Float64}
    CelestialBody_AltitudeAtPosition(this::RemoteTypes.CelestialBody, position::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, position, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_AtmosphericDensityAtPosition <: Request{:SpaceCenter, :CelestialBody_AtmosphericDensityAtPosition, Float64}
    CelestialBody_AtmosphericDensityAtPosition(this::RemoteTypes.CelestialBody, position::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, position, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_TemperatureAt <: Request{:SpaceCenter, :CelestialBody_TemperatureAt, Float64}
    CelestialBody_TemperatureAt(this::RemoteTypes.CelestialBody, position::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, position, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_DensityAt <: Request{:SpaceCenter, :CelestialBody_DensityAt, Float64}
    CelestialBody_DensityAt(this::RemoteTypes.CelestialBody, altitude::Float64) = begin
            new(this, altitude)
        end
    this::RemoteTypes.CelestialBody
    altitude::Float64
end
struct CelestialBody_PressureAt <: Request{:SpaceCenter, :CelestialBody_PressureAt, Float64}
    CelestialBody_PressureAt(this::RemoteTypes.CelestialBody, altitude::Float64) = begin
            new(this, altitude)
        end
    this::RemoteTypes.CelestialBody
    altitude::Float64
end
struct CelestialBody_BiomeAt <: Request{:SpaceCenter, :CelestialBody_BiomeAt, String}
    CelestialBody_BiomeAt(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64) = begin
            new(this, latitude, longitude)
        end
    this::RemoteTypes.CelestialBody
    latitude::Float64
    longitude::Float64
end
struct CelestialBody_Position <: Request{:SpaceCenter, :CelestialBody_Position, begin
                Tuple{Float64, Float64, Float64}
            end}
    CelestialBody_Position(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_Velocity <: Request{:SpaceCenter, :CelestialBody_Velocity, begin
                Tuple{Float64, Float64, Float64}
            end}
    CelestialBody_Velocity(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_Rotation <: Request{:SpaceCenter, :CelestialBody_Rotation, begin
                Tuple{Float64, Float64, Float64, Float64}
            end}
    CelestialBody_Rotation(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_Direction <: Request{:SpaceCenter, :CelestialBody_Direction, begin
                Tuple{Float64, Float64, Float64}
            end}
    CelestialBody_Direction(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_AngularVelocity <: Request{:SpaceCenter, :CelestialBody_AngularVelocity, begin
                Tuple{Float64, Float64, Float64}
            end}
    CelestialBody_AngularVelocity(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.CelestialBody
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct CelestialBody_get_Name <: Request{:SpaceCenter, :CelestialBody_get_Name, String}
    CelestialBody_get_Name(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_Satellites <: Request{:SpaceCenter, :CelestialBody_get_Satellites, begin
                Array{RemoteTypes.CelestialBody, 1}
            end}
    CelestialBody_get_Satellites(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_Mass <: Request{:SpaceCenter, :CelestialBody_get_Mass, Float32}
    CelestialBody_get_Mass(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_GravitationalParameter <: Request{:SpaceCenter, :CelestialBody_get_GravitationalParameter, Float32}
    CelestialBody_get_GravitationalParameter(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_SurfaceGravity <: Request{:SpaceCenter, :CelestialBody_get_SurfaceGravity, Float32}
    CelestialBody_get_SurfaceGravity(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_RotationalPeriod <: Request{:SpaceCenter, :CelestialBody_get_RotationalPeriod, Float32}
    CelestialBody_get_RotationalPeriod(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_RotationalSpeed <: Request{:SpaceCenter, :CelestialBody_get_RotationalSpeed, Float32}
    CelestialBody_get_RotationalSpeed(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_RotationAngle <: Request{:SpaceCenter, :CelestialBody_get_RotationAngle, Float64}
    CelestialBody_get_RotationAngle(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_InitialRotation <: Request{:SpaceCenter, :CelestialBody_get_InitialRotation, Float64}
    CelestialBody_get_InitialRotation(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_EquatorialRadius <: Request{:SpaceCenter, :CelestialBody_get_EquatorialRadius, Float32}
    CelestialBody_get_EquatorialRadius(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_SphereOfInfluence <: Request{:SpaceCenter, :CelestialBody_get_SphereOfInfluence, Float32}
    CelestialBody_get_SphereOfInfluence(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_Orbit <: Request{:SpaceCenter, :CelestialBody_get_Orbit, RemoteTypes.Orbit}
    CelestialBody_get_Orbit(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_HasAtmosphere <: Request{:SpaceCenter, :CelestialBody_get_HasAtmosphere, Bool}
    CelestialBody_get_HasAtmosphere(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_AtmosphereDepth <: Request{:SpaceCenter, :CelestialBody_get_AtmosphereDepth, Float32}
    CelestialBody_get_AtmosphereDepth(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_HasAtmosphericOxygen <: Request{:SpaceCenter, :CelestialBody_get_HasAtmosphericOxygen, Bool}
    CelestialBody_get_HasAtmosphericOxygen(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_Biomes <: Request{:SpaceCenter, :CelestialBody_get_Biomes, begin
                Base.Set{String}
            end}
    CelestialBody_get_Biomes(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_FlyingHighAltitudeThreshold <: Request{:SpaceCenter, :CelestialBody_get_FlyingHighAltitudeThreshold, Float32}
    CelestialBody_get_FlyingHighAltitudeThreshold(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_SpaceHighAltitudeThreshold <: Request{:SpaceCenter, :CelestialBody_get_SpaceHighAltitudeThreshold, Float32}
    CelestialBody_get_SpaceHighAltitudeThreshold(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_ReferenceFrame <: Request{:SpaceCenter, :CelestialBody_get_ReferenceFrame, RemoteTypes.ReferenceFrame}
    CelestialBody_get_ReferenceFrame(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_NonRotatingReferenceFrame <: Request{:SpaceCenter, :CelestialBody_get_NonRotatingReferenceFrame, RemoteTypes.ReferenceFrame}
    CelestialBody_get_NonRotatingReferenceFrame(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CelestialBody_get_OrbitalReferenceFrame <: Request{:SpaceCenter, :CelestialBody_get_OrbitalReferenceFrame, RemoteTypes.ReferenceFrame}
    CelestialBody_get_OrbitalReferenceFrame(this::RemoteTypes.CelestialBody) = begin
            new(this)
        end
    this::RemoteTypes.CelestialBody
end
struct CommLink_get_Type <: Request{:SpaceCenter, :CommLink_get_Type, ECommLinkType}
    CommLink_get_Type(this::RemoteTypes.CommLink) = begin
            new(this)
        end
    this::RemoteTypes.CommLink
end
struct CommLink_get_SignalStrength <: Request{:SpaceCenter, :CommLink_get_SignalStrength, Float64}
    CommLink_get_SignalStrength(this::RemoteTypes.CommLink) = begin
            new(this)
        end
    this::RemoteTypes.CommLink
end
struct CommLink_get_Start <: Request{:SpaceCenter, :CommLink_get_Start, RemoteTypes.CommNode}
    CommLink_get_Start(this::RemoteTypes.CommLink) = begin
            new(this)
        end
    this::RemoteTypes.CommLink
end
struct CommLink_get_End <: Request{:SpaceCenter, :CommLink_get_End, RemoteTypes.CommNode}
    CommLink_get_End(this::RemoteTypes.CommLink) = begin
            new(this)
        end
    this::RemoteTypes.CommLink
end
struct CommNode_get_Name <: Request{:SpaceCenter, :CommNode_get_Name, String}
    CommNode_get_Name(this::RemoteTypes.CommNode) = begin
            new(this)
        end
    this::RemoteTypes.CommNode
end
struct CommNode_get_IsHome <: Request{:SpaceCenter, :CommNode_get_IsHome, Bool}
    CommNode_get_IsHome(this::RemoteTypes.CommNode) = begin
            new(this)
        end
    this::RemoteTypes.CommNode
end
struct CommNode_get_IsControlPoint <: Request{:SpaceCenter, :CommNode_get_IsControlPoint, Bool}
    CommNode_get_IsControlPoint(this::RemoteTypes.CommNode) = begin
            new(this)
        end
    this::RemoteTypes.CommNode
end
struct CommNode_get_IsVessel <: Request{:SpaceCenter, :CommNode_get_IsVessel, Bool}
    CommNode_get_IsVessel(this::RemoteTypes.CommNode) = begin
            new(this)
        end
    this::RemoteTypes.CommNode
end
struct CommNode_get_Vessel <: Request{:SpaceCenter, :CommNode_get_Vessel, RemoteTypes.Vessel}
    CommNode_get_Vessel(this::RemoteTypes.CommNode) = begin
            new(this)
        end
    this::RemoteTypes.CommNode
end
struct Comms_get_CanCommunicate <: Request{:SpaceCenter, :Comms_get_CanCommunicate, Bool}
    Comms_get_CanCommunicate(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_CanTransmitScience <: Request{:SpaceCenter, :Comms_get_CanTransmitScience, Bool}
    Comms_get_CanTransmitScience(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_SignalStrength <: Request{:SpaceCenter, :Comms_get_SignalStrength, Float64}
    Comms_get_SignalStrength(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_SignalDelay <: Request{:SpaceCenter, :Comms_get_SignalDelay, Float64}
    Comms_get_SignalDelay(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_Power <: Request{:SpaceCenter, :Comms_get_Power, Float64}
    Comms_get_Power(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_ControlPath <: Request{:SpaceCenter, :Comms_get_ControlPath, begin
                Array{RemoteTypes.CommLink, 1}
            end}
    Comms_get_ControlPath(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Contract_Cancel <: Request{:SpaceCenter, :Contract_Cancel, Nothing}
    Contract_Cancel(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_Accept <: Request{:SpaceCenter, :Contract_Accept, Nothing}
    Contract_Accept(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_Decline <: Request{:SpaceCenter, :Contract_Decline, Nothing}
    Contract_Decline(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Type <: Request{:SpaceCenter, :Contract_get_Type, String}
    Contract_get_Type(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Title <: Request{:SpaceCenter, :Contract_get_Title, String}
    Contract_get_Title(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Description <: Request{:SpaceCenter, :Contract_get_Description, String}
    Contract_get_Description(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Notes <: Request{:SpaceCenter, :Contract_get_Notes, String}
    Contract_get_Notes(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Synopsis <: Request{:SpaceCenter, :Contract_get_Synopsis, String}
    Contract_get_Synopsis(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Keywords <: Request{:SpaceCenter, :Contract_get_Keywords, begin
                Array{String, 1}
            end}
    Contract_get_Keywords(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_State <: Request{:SpaceCenter, :Contract_get_State, EContractState}
    Contract_get_State(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Active <: Request{:SpaceCenter, :Contract_get_Active, Bool}
    Contract_get_Active(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Failed <: Request{:SpaceCenter, :Contract_get_Failed, Bool}
    Contract_get_Failed(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Seen <: Request{:SpaceCenter, :Contract_get_Seen, Bool}
    Contract_get_Seen(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Read <: Request{:SpaceCenter, :Contract_get_Read, Bool}
    Contract_get_Read(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_CanBeCanceled <: Request{:SpaceCenter, :Contract_get_CanBeCanceled, Bool}
    Contract_get_CanBeCanceled(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_CanBeDeclined <: Request{:SpaceCenter, :Contract_get_CanBeDeclined, Bool}
    Contract_get_CanBeDeclined(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_CanBeFailed <: Request{:SpaceCenter, :Contract_get_CanBeFailed, Bool}
    Contract_get_CanBeFailed(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_FundsAdvance <: Request{:SpaceCenter, :Contract_get_FundsAdvance, Float64}
    Contract_get_FundsAdvance(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_FundsCompletion <: Request{:SpaceCenter, :Contract_get_FundsCompletion, Float64}
    Contract_get_FundsCompletion(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_FundsFailure <: Request{:SpaceCenter, :Contract_get_FundsFailure, Float64}
    Contract_get_FundsFailure(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_ReputationCompletion <: Request{:SpaceCenter, :Contract_get_ReputationCompletion, Float64}
    Contract_get_ReputationCompletion(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_ReputationFailure <: Request{:SpaceCenter, :Contract_get_ReputationFailure, Float64}
    Contract_get_ReputationFailure(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_ScienceCompletion <: Request{:SpaceCenter, :Contract_get_ScienceCompletion, Float64}
    Contract_get_ScienceCompletion(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct Contract_get_Parameters <: Request{:SpaceCenter, :Contract_get_Parameters, begin
                Array{RemoteTypes.ContractParameter, 1}
            end}
    Contract_get_Parameters(this::RemoteTypes.Contract) = begin
            new(this)
        end
    this::RemoteTypes.Contract
end
struct ContractManager_get_Types <: Request{:SpaceCenter, :ContractManager_get_Types, begin
                Base.Set{String}
            end}
    ContractManager_get_Types(this::RemoteTypes.ContractManager) = begin
            new(this)
        end
    this::RemoteTypes.ContractManager
end
struct ContractManager_get_AllContracts <: Request{:SpaceCenter, :ContractManager_get_AllContracts, begin
                Array{RemoteTypes.Contract, 1}
            end}
    ContractManager_get_AllContracts(this::RemoteTypes.ContractManager) = begin
            new(this)
        end
    this::RemoteTypes.ContractManager
end
struct ContractManager_get_ActiveContracts <: Request{:SpaceCenter, :ContractManager_get_ActiveContracts, begin
                Array{RemoteTypes.Contract, 1}
            end}
    ContractManager_get_ActiveContracts(this::RemoteTypes.ContractManager) = begin
            new(this)
        end
    this::RemoteTypes.ContractManager
end
struct ContractManager_get_OfferedContracts <: Request{:SpaceCenter, :ContractManager_get_OfferedContracts, begin
                Array{RemoteTypes.Contract, 1}
            end}
    ContractManager_get_OfferedContracts(this::RemoteTypes.ContractManager) = begin
            new(this)
        end
    this::RemoteTypes.ContractManager
end
struct ContractManager_get_CompletedContracts <: Request{:SpaceCenter, :ContractManager_get_CompletedContracts, begin
                Array{RemoteTypes.Contract, 1}
            end}
    ContractManager_get_CompletedContracts(this::RemoteTypes.ContractManager) = begin
            new(this)
        end
    this::RemoteTypes.ContractManager
end
struct ContractManager_get_FailedContracts <: Request{:SpaceCenter, :ContractManager_get_FailedContracts, begin
                Array{RemoteTypes.Contract, 1}
            end}
    ContractManager_get_FailedContracts(this::RemoteTypes.ContractManager) = begin
            new(this)
        end
    this::RemoteTypes.ContractManager
end
struct ContractParameter_get_Title <: Request{:SpaceCenter, :ContractParameter_get_Title, String}
    ContractParameter_get_Title(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_Notes <: Request{:SpaceCenter, :ContractParameter_get_Notes, String}
    ContractParameter_get_Notes(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_Children <: Request{:SpaceCenter, :ContractParameter_get_Children, begin
                Array{RemoteTypes.ContractParameter, 1}
            end}
    ContractParameter_get_Children(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_Completed <: Request{:SpaceCenter, :ContractParameter_get_Completed, Bool}
    ContractParameter_get_Completed(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_Failed <: Request{:SpaceCenter, :ContractParameter_get_Failed, Bool}
    ContractParameter_get_Failed(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_Optional <: Request{:SpaceCenter, :ContractParameter_get_Optional, Bool}
    ContractParameter_get_Optional(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_FundsCompletion <: Request{:SpaceCenter, :ContractParameter_get_FundsCompletion, Float64}
    ContractParameter_get_FundsCompletion(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_FundsFailure <: Request{:SpaceCenter, :ContractParameter_get_FundsFailure, Float64}
    ContractParameter_get_FundsFailure(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_ReputationCompletion <: Request{:SpaceCenter, :ContractParameter_get_ReputationCompletion, Float64}
    ContractParameter_get_ReputationCompletion(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_ReputationFailure <: Request{:SpaceCenter, :ContractParameter_get_ReputationFailure, Float64}
    ContractParameter_get_ReputationFailure(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct ContractParameter_get_ScienceCompletion <: Request{:SpaceCenter, :ContractParameter_get_ScienceCompletion, Float64}
    ContractParameter_get_ScienceCompletion(this::RemoteTypes.ContractParameter) = begin
            new(this)
        end
    this::RemoteTypes.ContractParameter
end
struct Control_ActivateNextStage <: Request{:SpaceCenter, :Control_ActivateNextStage, begin
                Array{RemoteTypes.Vessel, 1}
            end}
    Control_ActivateNextStage(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_GetActionGroup <: Request{:SpaceCenter, :Control_GetActionGroup, Bool}
    Control_GetActionGroup(this::RemoteTypes.Control, group::UInt32) = begin
            new(this, group)
        end
    this::RemoteTypes.Control
    group::UInt32
end
struct Control_SetActionGroup <: Request{:SpaceCenter, :Control_SetActionGroup, Nothing}
    Control_SetActionGroup(this::RemoteTypes.Control, group::UInt32, state::Bool) = begin
            new(this, group, state)
        end
    this::RemoteTypes.Control
    group::UInt32
    state::Bool
end
struct Control_ToggleActionGroup <: Request{:SpaceCenter, :Control_ToggleActionGroup, Nothing}
    Control_ToggleActionGroup(this::RemoteTypes.Control, group::UInt32) = begin
            new(this, group)
        end
    this::RemoteTypes.Control
    group::UInt32
end
struct Control_AddNode <: Request{:SpaceCenter, :Control_AddNode, RemoteTypes.Node}
    Control_AddNode(this::RemoteTypes.Control, ut::Float64, prograde::Float32, normal::Float32, radial::Float32) = begin
            new(this, ut, prograde, normal, radial)
        end
    this::RemoteTypes.Control
    ut::Float64
    prograde::Float32
    normal::Float32
    radial::Float32
end
struct Control_RemoveNodes <: Request{:SpaceCenter, :Control_RemoveNodes, Nothing}
    Control_RemoveNodes(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_get_State <: Request{:SpaceCenter, :Control_get_State, EControlState}
    Control_get_State(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_get_Source <: Request{:SpaceCenter, :Control_get_Source, EControlSource}
    Control_get_Source(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_get_SAS <: Request{:SpaceCenter, :Control_get_SAS, Bool}
    Control_get_SAS(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_SAS <: Request{:SpaceCenter, :Control_set_SAS, Nothing}
    Control_set_SAS(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_SASMode <: Request{:SpaceCenter, :Control_get_SASMode, ESASMode}
    Control_get_SASMode(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_SASMode <: Request{:SpaceCenter, :Control_set_SASMode, Nothing}
    Control_set_SASMode(this::RemoteTypes.Control, value::ESASMode) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::ESASMode
end
struct Control_get_SpeedMode <: Request{:SpaceCenter, :Control_get_SpeedMode, ESpeedMode}
    Control_get_SpeedMode(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_SpeedMode <: Request{:SpaceCenter, :Control_set_SpeedMode, Nothing}
    Control_set_SpeedMode(this::RemoteTypes.Control, value::ESpeedMode) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::ESpeedMode
end
struct Control_get_RCS <: Request{:SpaceCenter, :Control_get_RCS, Bool}
    Control_get_RCS(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_RCS <: Request{:SpaceCenter, :Control_set_RCS, Nothing}
    Control_set_RCS(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_ReactionWheels <: Request{:SpaceCenter, :Control_get_ReactionWheels, Bool}
    Control_get_ReactionWheels(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_ReactionWheels <: Request{:SpaceCenter, :Control_set_ReactionWheels, Nothing}
    Control_set_ReactionWheels(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Gear <: Request{:SpaceCenter, :Control_get_Gear, Bool}
    Control_get_Gear(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Gear <: Request{:SpaceCenter, :Control_set_Gear, Nothing}
    Control_set_Gear(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Legs <: Request{:SpaceCenter, :Control_get_Legs, Bool}
    Control_get_Legs(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Legs <: Request{:SpaceCenter, :Control_set_Legs, Nothing}
    Control_set_Legs(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Wheels <: Request{:SpaceCenter, :Control_get_Wheels, Bool}
    Control_get_Wheels(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Wheels <: Request{:SpaceCenter, :Control_set_Wheels, Nothing}
    Control_set_Wheels(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Lights <: Request{:SpaceCenter, :Control_get_Lights, Bool}
    Control_get_Lights(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Lights <: Request{:SpaceCenter, :Control_set_Lights, Nothing}
    Control_set_Lights(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Brakes <: Request{:SpaceCenter, :Control_get_Brakes, Bool}
    Control_get_Brakes(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Brakes <: Request{:SpaceCenter, :Control_set_Brakes, Nothing}
    Control_set_Brakes(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Antennas <: Request{:SpaceCenter, :Control_get_Antennas, Bool}
    Control_get_Antennas(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Antennas <: Request{:SpaceCenter, :Control_set_Antennas, Nothing}
    Control_set_Antennas(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_CargoBays <: Request{:SpaceCenter, :Control_get_CargoBays, Bool}
    Control_get_CargoBays(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_CargoBays <: Request{:SpaceCenter, :Control_set_CargoBays, Nothing}
    Control_set_CargoBays(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Intakes <: Request{:SpaceCenter, :Control_get_Intakes, Bool}
    Control_get_Intakes(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Intakes <: Request{:SpaceCenter, :Control_set_Intakes, Nothing}
    Control_set_Intakes(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Parachutes <: Request{:SpaceCenter, :Control_get_Parachutes, Bool}
    Control_get_Parachutes(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Parachutes <: Request{:SpaceCenter, :Control_set_Parachutes, Nothing}
    Control_set_Parachutes(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Radiators <: Request{:SpaceCenter, :Control_get_Radiators, Bool}
    Control_get_Radiators(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Radiators <: Request{:SpaceCenter, :Control_set_Radiators, Nothing}
    Control_set_Radiators(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_ResourceHarvesters <: Request{:SpaceCenter, :Control_get_ResourceHarvesters, Bool}
    Control_get_ResourceHarvesters(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_ResourceHarvesters <: Request{:SpaceCenter, :Control_set_ResourceHarvesters, Nothing}
    Control_set_ResourceHarvesters(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_ResourceHarvestersActive <: Request{:SpaceCenter, :Control_get_ResourceHarvestersActive, Bool}
    Control_get_ResourceHarvestersActive(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_ResourceHarvestersActive <: Request{:SpaceCenter, :Control_set_ResourceHarvestersActive, Nothing}
    Control_set_ResourceHarvestersActive(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_SolarPanels <: Request{:SpaceCenter, :Control_get_SolarPanels, Bool}
    Control_get_SolarPanels(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_SolarPanels <: Request{:SpaceCenter, :Control_set_SolarPanels, Nothing}
    Control_set_SolarPanels(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Abort <: Request{:SpaceCenter, :Control_get_Abort, Bool}
    Control_get_Abort(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Abort <: Request{:SpaceCenter, :Control_set_Abort, Nothing}
    Control_set_Abort(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Throttle <: Request{:SpaceCenter, :Control_get_Throttle, Float32}
    Control_get_Throttle(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Throttle <: Request{:SpaceCenter, :Control_set_Throttle, Nothing}
    Control_set_Throttle(this::RemoteTypes.Control, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Float32
end
struct Control_get_InputMode <: Request{:SpaceCenter, :Control_get_InputMode, EControlInputMode}
    Control_get_InputMode(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_InputMode <: Request{:SpaceCenter, :Control_set_InputMode, Nothing}
    Control_set_InputMode(this::RemoteTypes.Control, value::EControlInputMode) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::EControlInputMode
end
struct Control_get_Pitch <: Request{:SpaceCenter, :Control_get_Pitch, Float32}
    Control_get_Pitch(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Pitch <: Request{:SpaceCenter, :Control_set_Pitch, Nothing}
    Control_set_Pitch(this::RemoteTypes.Control, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Float32
end
struct Control_get_Yaw <: Request{:SpaceCenter, :Control_get_Yaw, Float32}
    Control_get_Yaw(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Yaw <: Request{:SpaceCenter, :Control_set_Yaw, Nothing}
    Control_set_Yaw(this::RemoteTypes.Control, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Float32
end
struct Control_get_Roll <: Request{:SpaceCenter, :Control_get_Roll, Float32}
    Control_get_Roll(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Roll <: Request{:SpaceCenter, :Control_set_Roll, Nothing}
    Control_set_Roll(this::RemoteTypes.Control, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Float32
end
struct Control_get_Forward <: Request{:SpaceCenter, :Control_get_Forward, Float32}
    Control_get_Forward(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Forward <: Request{:SpaceCenter, :Control_set_Forward, Nothing}
    Control_set_Forward(this::RemoteTypes.Control, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Float32
end
struct Control_get_Up <: Request{:SpaceCenter, :Control_get_Up, Float32}
    Control_get_Up(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Up <: Request{:SpaceCenter, :Control_set_Up, Nothing}
    Control_set_Up(this::RemoteTypes.Control, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Float32
end
struct Control_get_Right <: Request{:SpaceCenter, :Control_get_Right, Float32}
    Control_get_Right(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_Right <: Request{:SpaceCenter, :Control_set_Right, Nothing}
    Control_set_Right(this::RemoteTypes.Control, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Float32
end
struct Control_get_WheelThrottle <: Request{:SpaceCenter, :Control_get_WheelThrottle, Float32}
    Control_get_WheelThrottle(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_WheelThrottle <: Request{:SpaceCenter, :Control_set_WheelThrottle, Nothing}
    Control_set_WheelThrottle(this::RemoteTypes.Control, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Float32
end
struct Control_get_WheelSteering <: Request{:SpaceCenter, :Control_get_WheelSteering, Float32}
    Control_get_WheelSteering(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_WheelSteering <: Request{:SpaceCenter, :Control_set_WheelSteering, Nothing}
    Control_set_WheelSteering(this::RemoteTypes.Control, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Float32
end
struct Control_get_CurrentStage <: Request{:SpaceCenter, :Control_get_CurrentStage, Int32}
    Control_get_CurrentStage(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_get_StageLock <: Request{:SpaceCenter, :Control_get_StageLock, Bool}
    Control_get_StageLock(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct Control_set_StageLock <: Request{:SpaceCenter, :Control_set_StageLock, Nothing}
    Control_set_StageLock(this::RemoteTypes.Control, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Control
    value::Bool
end
struct Control_get_Nodes <: Request{:SpaceCenter, :Control_get_Nodes, begin
                Array{RemoteTypes.Node, 1}
            end}
    Control_get_Nodes(this::RemoteTypes.Control) = begin
            new(this)
        end
    this::RemoteTypes.Control
end
struct CrewMember_get_Name <: Request{:SpaceCenter, :CrewMember_get_Name, String}
    CrewMember_get_Name(this::RemoteTypes.CrewMember) = begin
            new(this)
        end
    this::RemoteTypes.CrewMember
end
struct CrewMember_set_Name <: Request{:SpaceCenter, :CrewMember_set_Name, Nothing}
    CrewMember_set_Name(this::RemoteTypes.CrewMember, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.CrewMember
    value::String
end
struct CrewMember_get_Type <: Request{:SpaceCenter, :CrewMember_get_Type, ECrewMemberType}
    CrewMember_get_Type(this::RemoteTypes.CrewMember) = begin
            new(this)
        end
    this::RemoteTypes.CrewMember
end
struct CrewMember_get_OnMission <: Request{:SpaceCenter, :CrewMember_get_OnMission, Bool}
    CrewMember_get_OnMission(this::RemoteTypes.CrewMember) = begin
            new(this)
        end
    this::RemoteTypes.CrewMember
end
struct CrewMember_get_Courage <: Request{:SpaceCenter, :CrewMember_get_Courage, Float32}
    CrewMember_get_Courage(this::RemoteTypes.CrewMember) = begin
            new(this)
        end
    this::RemoteTypes.CrewMember
end
struct CrewMember_set_Courage <: Request{:SpaceCenter, :CrewMember_set_Courage, Nothing}
    CrewMember_set_Courage(this::RemoteTypes.CrewMember, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.CrewMember
    value::Float32
end
struct CrewMember_get_Stupidity <: Request{:SpaceCenter, :CrewMember_get_Stupidity, Float32}
    CrewMember_get_Stupidity(this::RemoteTypes.CrewMember) = begin
            new(this)
        end
    this::RemoteTypes.CrewMember
end
struct CrewMember_set_Stupidity <: Request{:SpaceCenter, :CrewMember_set_Stupidity, Nothing}
    CrewMember_set_Stupidity(this::RemoteTypes.CrewMember, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.CrewMember
    value::Float32
end
struct CrewMember_get_Experience <: Request{:SpaceCenter, :CrewMember_get_Experience, Float32}
    CrewMember_get_Experience(this::RemoteTypes.CrewMember) = begin
            new(this)
        end
    this::RemoteTypes.CrewMember
end
struct CrewMember_set_Experience <: Request{:SpaceCenter, :CrewMember_set_Experience, Nothing}
    CrewMember_set_Experience(this::RemoteTypes.CrewMember, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.CrewMember
    value::Float32
end
struct CrewMember_get_Badass <: Request{:SpaceCenter, :CrewMember_get_Badass, Bool}
    CrewMember_get_Badass(this::RemoteTypes.CrewMember) = begin
            new(this)
        end
    this::RemoteTypes.CrewMember
end
struct CrewMember_set_Badass <: Request{:SpaceCenter, :CrewMember_set_Badass, Nothing}
    CrewMember_set_Badass(this::RemoteTypes.CrewMember, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.CrewMember
    value::Bool
end
struct CrewMember_get_Veteran <: Request{:SpaceCenter, :CrewMember_get_Veteran, Bool}
    CrewMember_get_Veteran(this::RemoteTypes.CrewMember) = begin
            new(this)
        end
    this::RemoteTypes.CrewMember
end
struct CrewMember_set_Veteran <: Request{:SpaceCenter, :CrewMember_set_Veteran, Nothing}
    CrewMember_set_Veteran(this::RemoteTypes.CrewMember, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.CrewMember
    value::Bool
end
struct Flight_SimulateAerodynamicForceAt <: Request{:SpaceCenter, :Flight_SimulateAerodynamicForceAt, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_SimulateAerodynamicForceAt(this::RemoteTypes.Flight, body::RemoteTypes.CelestialBody, position::begin
                    Tuple{Float64, Float64, Float64}
                end, velocity::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, body, position, velocity)
        end
    this::RemoteTypes.Flight
    body::RemoteTypes.CelestialBody
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    velocity::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Flight_get_GForce <: Request{:SpaceCenter, :Flight_get_GForce, Float32}
    Flight_get_GForce(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_MeanAltitude <: Request{:SpaceCenter, :Flight_get_MeanAltitude, Float64}
    Flight_get_MeanAltitude(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_SurfaceAltitude <: Request{:SpaceCenter, :Flight_get_SurfaceAltitude, Float64}
    Flight_get_SurfaceAltitude(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_BedrockAltitude <: Request{:SpaceCenter, :Flight_get_BedrockAltitude, Float64}
    Flight_get_BedrockAltitude(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Elevation <: Request{:SpaceCenter, :Flight_get_Elevation, Float64}
    Flight_get_Elevation(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Latitude <: Request{:SpaceCenter, :Flight_get_Latitude, Float64}
    Flight_get_Latitude(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Longitude <: Request{:SpaceCenter, :Flight_get_Longitude, Float64}
    Flight_get_Longitude(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Velocity <: Request{:SpaceCenter, :Flight_get_Velocity, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_Velocity(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Speed <: Request{:SpaceCenter, :Flight_get_Speed, Float64}
    Flight_get_Speed(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_HorizontalSpeed <: Request{:SpaceCenter, :Flight_get_HorizontalSpeed, Float64}
    Flight_get_HorizontalSpeed(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_VerticalSpeed <: Request{:SpaceCenter, :Flight_get_VerticalSpeed, Float64}
    Flight_get_VerticalSpeed(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_CenterOfMass <: Request{:SpaceCenter, :Flight_get_CenterOfMass, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_CenterOfMass(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Rotation <: Request{:SpaceCenter, :Flight_get_Rotation, begin
                Tuple{Float64, Float64, Float64, Float64}
            end}
    Flight_get_Rotation(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Direction <: Request{:SpaceCenter, :Flight_get_Direction, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_Direction(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Pitch <: Request{:SpaceCenter, :Flight_get_Pitch, Float32}
    Flight_get_Pitch(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Heading <: Request{:SpaceCenter, :Flight_get_Heading, Float32}
    Flight_get_Heading(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Roll <: Request{:SpaceCenter, :Flight_get_Roll, Float32}
    Flight_get_Roll(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Prograde <: Request{:SpaceCenter, :Flight_get_Prograde, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_Prograde(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Retrograde <: Request{:SpaceCenter, :Flight_get_Retrograde, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_Retrograde(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Normal <: Request{:SpaceCenter, :Flight_get_Normal, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_Normal(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_AntiNormal <: Request{:SpaceCenter, :Flight_get_AntiNormal, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_AntiNormal(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Radial <: Request{:SpaceCenter, :Flight_get_Radial, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_Radial(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_AntiRadial <: Request{:SpaceCenter, :Flight_get_AntiRadial, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_AntiRadial(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_AtmosphereDensity <: Request{:SpaceCenter, :Flight_get_AtmosphereDensity, Float32}
    Flight_get_AtmosphereDensity(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_DynamicPressure <: Request{:SpaceCenter, :Flight_get_DynamicPressure, Float32}
    Flight_get_DynamicPressure(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_StaticPressureAtMSL <: Request{:SpaceCenter, :Flight_get_StaticPressureAtMSL, Float32}
    Flight_get_StaticPressureAtMSL(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_StaticPressure <: Request{:SpaceCenter, :Flight_get_StaticPressure, Float32}
    Flight_get_StaticPressure(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_AerodynamicForce <: Request{:SpaceCenter, :Flight_get_AerodynamicForce, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_AerodynamicForce(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Lift <: Request{:SpaceCenter, :Flight_get_Lift, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_Lift(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Drag <: Request{:SpaceCenter, :Flight_get_Drag, begin
                Tuple{Float64, Float64, Float64}
            end}
    Flight_get_Drag(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_SpeedOfSound <: Request{:SpaceCenter, :Flight_get_SpeedOfSound, Float32}
    Flight_get_SpeedOfSound(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_Mach <: Request{:SpaceCenter, :Flight_get_Mach, Float32}
    Flight_get_Mach(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_ReynoldsNumber <: Request{:SpaceCenter, :Flight_get_ReynoldsNumber, Float32}
    Flight_get_ReynoldsNumber(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_TrueAirSpeed <: Request{:SpaceCenter, :Flight_get_TrueAirSpeed, Float32}
    Flight_get_TrueAirSpeed(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_EquivalentAirSpeed <: Request{:SpaceCenter, :Flight_get_EquivalentAirSpeed, Float32}
    Flight_get_EquivalentAirSpeed(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_TerminalVelocity <: Request{:SpaceCenter, :Flight_get_TerminalVelocity, Float32}
    Flight_get_TerminalVelocity(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_AngleOfAttack <: Request{:SpaceCenter, :Flight_get_AngleOfAttack, Float32}
    Flight_get_AngleOfAttack(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_SideslipAngle <: Request{:SpaceCenter, :Flight_get_SideslipAngle, Float32}
    Flight_get_SideslipAngle(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_TotalAirTemperature <: Request{:SpaceCenter, :Flight_get_TotalAirTemperature, Float32}
    Flight_get_TotalAirTemperature(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_StaticAirTemperature <: Request{:SpaceCenter, :Flight_get_StaticAirTemperature, Float32}
    Flight_get_StaticAirTemperature(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_StallFraction <: Request{:SpaceCenter, :Flight_get_StallFraction, Float32}
    Flight_get_StallFraction(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_DragCoefficient <: Request{:SpaceCenter, :Flight_get_DragCoefficient, Float32}
    Flight_get_DragCoefficient(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_LiftCoefficient <: Request{:SpaceCenter, :Flight_get_LiftCoefficient, Float32}
    Flight_get_LiftCoefficient(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_BallisticCoefficient <: Request{:SpaceCenter, :Flight_get_BallisticCoefficient, Float32}
    Flight_get_BallisticCoefficient(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Flight_get_ThrustSpecificFuelConsumption <: Request{:SpaceCenter, :Flight_get_ThrustSpecificFuelConsumption, Float32}
    Flight_get_ThrustSpecificFuelConsumption(this::RemoteTypes.Flight) = begin
            new(this)
        end
    this::RemoteTypes.Flight
end
struct Node_BurnVector <: Request{:SpaceCenter, :Node_BurnVector, begin
                Tuple{Float64, Float64, Float64}
            end}
    Node_BurnVector(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Node
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Node_RemainingBurnVector <: Request{:SpaceCenter, :Node_RemainingBurnVector, begin
                Tuple{Float64, Float64, Float64}
            end}
    Node_RemainingBurnVector(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Node
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Node_Remove <: Request{:SpaceCenter, :Node_Remove, Nothing}
    Node_Remove(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_Position <: Request{:SpaceCenter, :Node_Position, begin
                Tuple{Float64, Float64, Float64}
            end}
    Node_Position(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Node
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Node_Direction <: Request{:SpaceCenter, :Node_Direction, begin
                Tuple{Float64, Float64, Float64}
            end}
    Node_Direction(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Node
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Node_get_Prograde <: Request{:SpaceCenter, :Node_get_Prograde, Float64}
    Node_get_Prograde(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_set_Prograde <: Request{:SpaceCenter, :Node_set_Prograde, Nothing}
    Node_set_Prograde(this::RemoteTypes.Node, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Node
    value::Float64
end
struct Node_get_Normal <: Request{:SpaceCenter, :Node_get_Normal, Float64}
    Node_get_Normal(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_set_Normal <: Request{:SpaceCenter, :Node_set_Normal, Nothing}
    Node_set_Normal(this::RemoteTypes.Node, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Node
    value::Float64
end
struct Node_get_Radial <: Request{:SpaceCenter, :Node_get_Radial, Float64}
    Node_get_Radial(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_set_Radial <: Request{:SpaceCenter, :Node_set_Radial, Nothing}
    Node_set_Radial(this::RemoteTypes.Node, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Node
    value::Float64
end
struct Node_get_DeltaV <: Request{:SpaceCenter, :Node_get_DeltaV, Float64}
    Node_get_DeltaV(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_set_DeltaV <: Request{:SpaceCenter, :Node_set_DeltaV, Nothing}
    Node_set_DeltaV(this::RemoteTypes.Node, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Node
    value::Float64
end
struct Node_get_RemainingDeltaV <: Request{:SpaceCenter, :Node_get_RemainingDeltaV, Float64}
    Node_get_RemainingDeltaV(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_get_UT <: Request{:SpaceCenter, :Node_get_UT, Float64}
    Node_get_UT(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_set_UT <: Request{:SpaceCenter, :Node_set_UT, Nothing}
    Node_set_UT(this::RemoteTypes.Node, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Node
    value::Float64
end
struct Node_get_TimeTo <: Request{:SpaceCenter, :Node_get_TimeTo, Float64}
    Node_get_TimeTo(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_get_Orbit <: Request{:SpaceCenter, :Node_get_Orbit, RemoteTypes.Orbit}
    Node_get_Orbit(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_get_ReferenceFrame <: Request{:SpaceCenter, :Node_get_ReferenceFrame, RemoteTypes.ReferenceFrame}
    Node_get_ReferenceFrame(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Node_get_OrbitalReferenceFrame <: Request{:SpaceCenter, :Node_get_OrbitalReferenceFrame, RemoteTypes.ReferenceFrame}
    Node_get_OrbitalReferenceFrame(this::RemoteTypes.Node) = begin
            new(this)
        end
    this::RemoteTypes.Node
end
struct Orbit_static_ReferencePlaneNormal <: Request{:SpaceCenter, :Orbit_static_ReferencePlaneNormal, begin
                Tuple{Float64, Float64, Float64}
            end}
    Orbit_static_ReferencePlaneNormal(referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(referenceFrame)
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Orbit_static_ReferencePlaneDirection <: Request{:SpaceCenter, :Orbit_static_ReferencePlaneDirection, begin
                Tuple{Float64, Float64, Float64}
            end}
    Orbit_static_ReferencePlaneDirection(referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(referenceFrame)
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Orbit_MeanAnomalyAtUT <: Request{:SpaceCenter, :Orbit_MeanAnomalyAtUT, Float64}
    Orbit_MeanAnomalyAtUT(this::RemoteTypes.Orbit, ut::Float64) = begin
            new(this, ut)
        end
    this::RemoteTypes.Orbit
    ut::Float64
end
struct Orbit_RadiusAtTrueAnomaly <: Request{:SpaceCenter, :Orbit_RadiusAtTrueAnomaly, Float64}
    Orbit_RadiusAtTrueAnomaly(this::RemoteTypes.Orbit, trueAnomaly::Float64) = begin
            new(this, trueAnomaly)
        end
    this::RemoteTypes.Orbit
    trueAnomaly::Float64
end
struct Orbit_TrueAnomalyAtRadius <: Request{:SpaceCenter, :Orbit_TrueAnomalyAtRadius, Float64}
    Orbit_TrueAnomalyAtRadius(this::RemoteTypes.Orbit, radius::Float64) = begin
            new(this, radius)
        end
    this::RemoteTypes.Orbit
    radius::Float64
end
struct Orbit_TrueAnomalyAtUT <: Request{:SpaceCenter, :Orbit_TrueAnomalyAtUT, Float64}
    Orbit_TrueAnomalyAtUT(this::RemoteTypes.Orbit, ut::Float64) = begin
            new(this, ut)
        end
    this::RemoteTypes.Orbit
    ut::Float64
end
struct Orbit_UTAtTrueAnomaly <: Request{:SpaceCenter, :Orbit_UTAtTrueAnomaly, Float64}
    Orbit_UTAtTrueAnomaly(this::RemoteTypes.Orbit, trueAnomaly::Float64) = begin
            new(this, trueAnomaly)
        end
    this::RemoteTypes.Orbit
    trueAnomaly::Float64
end
struct Orbit_EccentricAnomalyAtUT <: Request{:SpaceCenter, :Orbit_EccentricAnomalyAtUT, Float64}
    Orbit_EccentricAnomalyAtUT(this::RemoteTypes.Orbit, ut::Float64) = begin
            new(this, ut)
        end
    this::RemoteTypes.Orbit
    ut::Float64
end
struct Orbit_OrbitalSpeedAt <: Request{:SpaceCenter, :Orbit_OrbitalSpeedAt, Float64}
    Orbit_OrbitalSpeedAt(this::RemoteTypes.Orbit, time::Float64) = begin
            new(this, time)
        end
    this::RemoteTypes.Orbit
    time::Float64
end
struct Orbit_RadiusAt <: Request{:SpaceCenter, :Orbit_RadiusAt, Float64}
    Orbit_RadiusAt(this::RemoteTypes.Orbit, ut::Float64) = begin
            new(this, ut)
        end
    this::RemoteTypes.Orbit
    ut::Float64
end
struct Orbit_PositionAt <: Request{:SpaceCenter, :Orbit_PositionAt, begin
                Tuple{Float64, Float64, Float64}
            end}
    Orbit_PositionAt(this::RemoteTypes.Orbit, ut::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, ut, referenceFrame)
        end
    this::RemoteTypes.Orbit
    ut::Float64
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Orbit_TimeOfClosestApproach <: Request{:SpaceCenter, :Orbit_TimeOfClosestApproach, Float64}
    Orbit_TimeOfClosestApproach(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
            new(this, target)
        end
    this::RemoteTypes.Orbit
    target::RemoteTypes.Orbit
end
struct Orbit_DistanceAtClosestApproach <: Request{:SpaceCenter, :Orbit_DistanceAtClosestApproach, Float64}
    Orbit_DistanceAtClosestApproach(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
            new(this, target)
        end
    this::RemoteTypes.Orbit
    target::RemoteTypes.Orbit
end
struct Orbit_ListClosestApproaches <: Request{:SpaceCenter, :Orbit_ListClosestApproaches, begin
                Array{begin
                        Array{Float64, 1}
                    end, 1}
            end}
    Orbit_ListClosestApproaches(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit, orbits::Int32) = begin
            new(this, target, orbits)
        end
    this::RemoteTypes.Orbit
    target::RemoteTypes.Orbit
    orbits::Int32
end
struct Orbit_TrueAnomalyAtAN <: Request{:SpaceCenter, :Orbit_TrueAnomalyAtAN, Float64}
    Orbit_TrueAnomalyAtAN(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
            new(this, target)
        end
    this::RemoteTypes.Orbit
    target::RemoteTypes.Orbit
end
struct Orbit_TrueAnomalyAtDN <: Request{:SpaceCenter, :Orbit_TrueAnomalyAtDN, Float64}
    Orbit_TrueAnomalyAtDN(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
            new(this, target)
        end
    this::RemoteTypes.Orbit
    target::RemoteTypes.Orbit
end
struct Orbit_RelativeInclination <: Request{:SpaceCenter, :Orbit_RelativeInclination, Float64}
    Orbit_RelativeInclination(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
            new(this, target)
        end
    this::RemoteTypes.Orbit
    target::RemoteTypes.Orbit
end
struct Orbit_get_Body <: Request{:SpaceCenter, :Orbit_get_Body, RemoteTypes.CelestialBody}
    Orbit_get_Body(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_Apoapsis <: Request{:SpaceCenter, :Orbit_get_Apoapsis, Float64}
    Orbit_get_Apoapsis(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_Periapsis <: Request{:SpaceCenter, :Orbit_get_Periapsis, Float64}
    Orbit_get_Periapsis(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_ApoapsisAltitude <: Request{:SpaceCenter, :Orbit_get_ApoapsisAltitude, Float64}
    Orbit_get_ApoapsisAltitude(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_PeriapsisAltitude <: Request{:SpaceCenter, :Orbit_get_PeriapsisAltitude, Float64}
    Orbit_get_PeriapsisAltitude(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_SemiMajorAxis <: Request{:SpaceCenter, :Orbit_get_SemiMajorAxis, Float64}
    Orbit_get_SemiMajorAxis(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_SemiMinorAxis <: Request{:SpaceCenter, :Orbit_get_SemiMinorAxis, Float64}
    Orbit_get_SemiMinorAxis(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_Radius <: Request{:SpaceCenter, :Orbit_get_Radius, Float64}
    Orbit_get_Radius(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_Speed <: Request{:SpaceCenter, :Orbit_get_Speed, Float64}
    Orbit_get_Speed(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_Period <: Request{:SpaceCenter, :Orbit_get_Period, Float64}
    Orbit_get_Period(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_TimeToApoapsis <: Request{:SpaceCenter, :Orbit_get_TimeToApoapsis, Float64}
    Orbit_get_TimeToApoapsis(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_TimeToPeriapsis <: Request{:SpaceCenter, :Orbit_get_TimeToPeriapsis, Float64}
    Orbit_get_TimeToPeriapsis(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_Eccentricity <: Request{:SpaceCenter, :Orbit_get_Eccentricity, Float64}
    Orbit_get_Eccentricity(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_Inclination <: Request{:SpaceCenter, :Orbit_get_Inclination, Float64}
    Orbit_get_Inclination(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_LongitudeOfAscendingNode <: Request{:SpaceCenter, :Orbit_get_LongitudeOfAscendingNode, Float64}
    Orbit_get_LongitudeOfAscendingNode(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_ArgumentOfPeriapsis <: Request{:SpaceCenter, :Orbit_get_ArgumentOfPeriapsis, Float64}
    Orbit_get_ArgumentOfPeriapsis(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_MeanAnomalyAtEpoch <: Request{:SpaceCenter, :Orbit_get_MeanAnomalyAtEpoch, Float64}
    Orbit_get_MeanAnomalyAtEpoch(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_Epoch <: Request{:SpaceCenter, :Orbit_get_Epoch, Float64}
    Orbit_get_Epoch(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_MeanAnomaly <: Request{:SpaceCenter, :Orbit_get_MeanAnomaly, Float64}
    Orbit_get_MeanAnomaly(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_EccentricAnomaly <: Request{:SpaceCenter, :Orbit_get_EccentricAnomaly, Float64}
    Orbit_get_EccentricAnomaly(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_TrueAnomaly <: Request{:SpaceCenter, :Orbit_get_TrueAnomaly, Float64}
    Orbit_get_TrueAnomaly(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_NextOrbit <: Request{:SpaceCenter, :Orbit_get_NextOrbit, RemoteTypes.Orbit}
    Orbit_get_NextOrbit(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_TimeToSOIChange <: Request{:SpaceCenter, :Orbit_get_TimeToSOIChange, Float64}
    Orbit_get_TimeToSOIChange(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct Orbit_get_OrbitalSpeed <: Request{:SpaceCenter, :Orbit_get_OrbitalSpeed, Float64}
    Orbit_get_OrbitalSpeed(this::RemoteTypes.Orbit) = begin
            new(this)
        end
    this::RemoteTypes.Orbit
end
struct ReferenceFrame_static_CreateRelative <: Request{:SpaceCenter, :ReferenceFrame_static_CreateRelative, RemoteTypes.ReferenceFrame}
    ReferenceFrame_static_CreateRelative(referenceFrame::RemoteTypes.ReferenceFrame, position::begin
                    Tuple{Float64, Float64, Float64}
                end, rotation::begin
                    Tuple{Float64, Float64, Float64, Float64}
                end, velocity::begin
                    Tuple{Float64, Float64, Float64}
                end, angularVelocity::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(referenceFrame, position, rotation, velocity, angularVelocity)
        end
    referenceFrame::RemoteTypes.ReferenceFrame
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    rotation::begin
            Tuple{Float64, Float64, Float64, Float64}
        end
    velocity::begin
            Tuple{Float64, Float64, Float64}
        end
    angularVelocity::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct ReferenceFrame_static_CreateHybrid <: Request{:SpaceCenter, :ReferenceFrame_static_CreateHybrid, RemoteTypes.ReferenceFrame}
    ReferenceFrame_static_CreateHybrid(position::RemoteTypes.ReferenceFrame, rotation::RemoteTypes.ReferenceFrame, velocity::RemoteTypes.ReferenceFrame, angularVelocity::RemoteTypes.ReferenceFrame) = begin
            new(position, rotation, velocity, angularVelocity)
        end
    position::RemoteTypes.ReferenceFrame
    rotation::RemoteTypes.ReferenceFrame
    velocity::RemoteTypes.ReferenceFrame
    angularVelocity::RemoteTypes.ReferenceFrame
end
struct Resource_get_Name <: Request{:SpaceCenter, :Resource_get_Name, String}
    Resource_get_Name(this::RemoteTypes.Resource) = begin
            new(this)
        end
    this::RemoteTypes.Resource
end
struct Resource_get_Part <: Request{:SpaceCenter, :Resource_get_Part, RemoteTypes.Part}
    Resource_get_Part(this::RemoteTypes.Resource) = begin
            new(this)
        end
    this::RemoteTypes.Resource
end
struct Resource_get_Max <: Request{:SpaceCenter, :Resource_get_Max, Float32}
    Resource_get_Max(this::RemoteTypes.Resource) = begin
            new(this)
        end
    this::RemoteTypes.Resource
end
struct Resource_get_Amount <: Request{:SpaceCenter, :Resource_get_Amount, Float32}
    Resource_get_Amount(this::RemoteTypes.Resource) = begin
            new(this)
        end
    this::RemoteTypes.Resource
end
struct Resource_get_Density <: Request{:SpaceCenter, :Resource_get_Density, Float32}
    Resource_get_Density(this::RemoteTypes.Resource) = begin
            new(this)
        end
    this::RemoteTypes.Resource
end
struct Resource_get_FlowMode <: Request{:SpaceCenter, :Resource_get_FlowMode, EResourceFlowMode}
    Resource_get_FlowMode(this::RemoteTypes.Resource) = begin
            new(this)
        end
    this::RemoteTypes.Resource
end
struct Resource_get_Enabled <: Request{:SpaceCenter, :Resource_get_Enabled, Bool}
    Resource_get_Enabled(this::RemoteTypes.Resource) = begin
            new(this)
        end
    this::RemoteTypes.Resource
end
struct Resource_set_Enabled <: Request{:SpaceCenter, :Resource_set_Enabled, Nothing}
    Resource_set_Enabled(this::RemoteTypes.Resource, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Resource
    value::Bool
end
struct ResourceTransfer_static_Start <: Request{:SpaceCenter, :ResourceTransfer_static_Start, RemoteTypes.ResourceTransfer}
    ResourceTransfer_static_Start(fromPart::RemoteTypes.Part, toPart::RemoteTypes.Part, resource::String, maxAmount::Float32) = begin
            new(fromPart, toPart, resource, maxAmount)
        end
    fromPart::RemoteTypes.Part
    toPart::RemoteTypes.Part
    resource::String
    maxAmount::Float32
end
struct ResourceTransfer_get_Complete <: Request{:SpaceCenter, :ResourceTransfer_get_Complete, Bool}
    ResourceTransfer_get_Complete(this::RemoteTypes.ResourceTransfer) = begin
            new(this)
        end
    this::RemoteTypes.ResourceTransfer
end
struct ResourceTransfer_get_Amount <: Request{:SpaceCenter, :ResourceTransfer_get_Amount, Float32}
    ResourceTransfer_get_Amount(this::RemoteTypes.ResourceTransfer) = begin
            new(this)
        end
    this::RemoteTypes.ResourceTransfer
end
struct Resources_WithResource <: Request{:SpaceCenter, :Resources_WithResource, begin
                Array{RemoteTypes.Resource, 1}
            end}
    Resources_WithResource(this::RemoteTypes.Resources, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Resources
    name::String
end
struct Resources_HasResource <: Request{:SpaceCenter, :Resources_HasResource, Bool}
    Resources_HasResource(this::RemoteTypes.Resources, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Resources
    name::String
end
struct Resources_Max <: Request{:SpaceCenter, :Resources_Max, Float32}
    Resources_Max(this::RemoteTypes.Resources, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Resources
    name::String
end
struct Resources_Amount <: Request{:SpaceCenter, :Resources_Amount, Float32}
    Resources_Amount(this::RemoteTypes.Resources, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Resources
    name::String
end
struct Resources_static_Density <: Request{:SpaceCenter, :Resources_static_Density, Float32}
    Resources_static_Density(name::String) = begin
            new(name)
        end
    name::String
end
struct Resources_static_FlowMode <: Request{:SpaceCenter, :Resources_static_FlowMode, EResourceFlowMode}
    Resources_static_FlowMode(name::String) = begin
            new(name)
        end
    name::String
end
struct Resources_get_All <: Request{:SpaceCenter, :Resources_get_All, begin
                Array{RemoteTypes.Resource, 1}
            end}
    Resources_get_All(this::RemoteTypes.Resources) = begin
            new(this)
        end
    this::RemoteTypes.Resources
end
struct Resources_get_Names <: Request{:SpaceCenter, :Resources_get_Names, begin
                Array{String, 1}
            end}
    Resources_get_Names(this::RemoteTypes.Resources) = begin
            new(this)
        end
    this::RemoteTypes.Resources
end
struct Resources_get_Enabled <: Request{:SpaceCenter, :Resources_get_Enabled, Bool}
    Resources_get_Enabled(this::RemoteTypes.Resources) = begin
            new(this)
        end
    this::RemoteTypes.Resources
end
struct Resources_set_Enabled <: Request{:SpaceCenter, :Resources_set_Enabled, Nothing}
    Resources_set_Enabled(this::RemoteTypes.Resources, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Resources
    value::Bool
end
struct Vessel_Recover <: Request{:SpaceCenter, :Vessel_Recover, Nothing}
    Vessel_Recover(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_Flight <: Request{:SpaceCenter, :Vessel_Flight, RemoteTypes.Flight}
    Vessel_Flight(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Vessel
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Vessel_ResourcesInDecoupleStage <: Request{:SpaceCenter, :Vessel_ResourcesInDecoupleStage, RemoteTypes.Resources}
    Vessel_ResourcesInDecoupleStage(this::RemoteTypes.Vessel, stage::Int32, cumulative::Bool) = begin
            new(this, stage, cumulative)
        end
    this::RemoteTypes.Vessel
    stage::Int32
    cumulative::Bool
end
struct Vessel_Position <: Request{:SpaceCenter, :Vessel_Position, begin
                Tuple{Float64, Float64, Float64}
            end}
    Vessel_Position(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Vessel
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Vessel_BoundingBox <: Request{:SpaceCenter, :Vessel_BoundingBox, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    Vessel_BoundingBox(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Vessel
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Vessel_Velocity <: Request{:SpaceCenter, :Vessel_Velocity, begin
                Tuple{Float64, Float64, Float64}
            end}
    Vessel_Velocity(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Vessel
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Vessel_Rotation <: Request{:SpaceCenter, :Vessel_Rotation, begin
                Tuple{Float64, Float64, Float64, Float64}
            end}
    Vessel_Rotation(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Vessel
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Vessel_Direction <: Request{:SpaceCenter, :Vessel_Direction, begin
                Tuple{Float64, Float64, Float64}
            end}
    Vessel_Direction(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Vessel
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Vessel_AngularVelocity <: Request{:SpaceCenter, :Vessel_AngularVelocity, begin
                Tuple{Float64, Float64, Float64}
            end}
    Vessel_AngularVelocity(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Vessel
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Vessel_get_Name <: Request{:SpaceCenter, :Vessel_get_Name, String}
    Vessel_get_Name(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_set_Name <: Request{:SpaceCenter, :Vessel_set_Name, Nothing}
    Vessel_set_Name(this::RemoteTypes.Vessel, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Vessel
    value::String
end
struct Vessel_get_Type <: Request{:SpaceCenter, :Vessel_get_Type, EVesselType}
    Vessel_get_Type(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_set_Type <: Request{:SpaceCenter, :Vessel_set_Type, Nothing}
    Vessel_set_Type(this::RemoteTypes.Vessel, value::EVesselType) = begin
            new(this, value)
        end
    this::RemoteTypes.Vessel
    value::EVesselType
end
struct Vessel_get_Situation <: Request{:SpaceCenter, :Vessel_get_Situation, EVesselSituation}
    Vessel_get_Situation(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Recoverable <: Request{:SpaceCenter, :Vessel_get_Recoverable, Bool}
    Vessel_get_Recoverable(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_MET <: Request{:SpaceCenter, :Vessel_get_MET, Float64}
    Vessel_get_MET(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Biome <: Request{:SpaceCenter, :Vessel_get_Biome, String}
    Vessel_get_Biome(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Orbit <: Request{:SpaceCenter, :Vessel_get_Orbit, RemoteTypes.Orbit}
    Vessel_get_Orbit(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Control <: Request{:SpaceCenter, :Vessel_get_Control, RemoteTypes.Control}
    Vessel_get_Control(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Comms <: Request{:SpaceCenter, :Vessel_get_Comms, RemoteTypes.Comms}
    Vessel_get_Comms(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_AutoPilot <: Request{:SpaceCenter, :Vessel_get_AutoPilot, RemoteTypes.AutoPilot}
    Vessel_get_AutoPilot(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_CrewCapacity <: Request{:SpaceCenter, :Vessel_get_CrewCapacity, Int32}
    Vessel_get_CrewCapacity(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_CrewCount <: Request{:SpaceCenter, :Vessel_get_CrewCount, Int32}
    Vessel_get_CrewCount(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Crew <: Request{:SpaceCenter, :Vessel_get_Crew, begin
                Array{RemoteTypes.CrewMember, 1}
            end}
    Vessel_get_Crew(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Resources <: Request{:SpaceCenter, :Vessel_get_Resources, RemoteTypes.Resources}
    Vessel_get_Resources(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Parts <: Request{:SpaceCenter, :Vessel_get_Parts, RemoteTypes.Parts}
    Vessel_get_Parts(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Mass <: Request{:SpaceCenter, :Vessel_get_Mass, Float32}
    Vessel_get_Mass(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_DryMass <: Request{:SpaceCenter, :Vessel_get_DryMass, Float32}
    Vessel_get_DryMass(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_Thrust <: Request{:SpaceCenter, :Vessel_get_Thrust, Float32}
    Vessel_get_Thrust(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_AvailableThrust <: Request{:SpaceCenter, :Vessel_get_AvailableThrust, Float32}
    Vessel_get_AvailableThrust(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_MaxThrust <: Request{:SpaceCenter, :Vessel_get_MaxThrust, Float32}
    Vessel_get_MaxThrust(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_MaxVacuumThrust <: Request{:SpaceCenter, :Vessel_get_MaxVacuumThrust, Float32}
    Vessel_get_MaxVacuumThrust(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_SpecificImpulse <: Request{:SpaceCenter, :Vessel_get_SpecificImpulse, Float32}
    Vessel_get_SpecificImpulse(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_VacuumSpecificImpulse <: Request{:SpaceCenter, :Vessel_get_VacuumSpecificImpulse, Float32}
    Vessel_get_VacuumSpecificImpulse(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_KerbinSeaLevelSpecificImpulse <: Request{:SpaceCenter, :Vessel_get_KerbinSeaLevelSpecificImpulse, Float32}
    Vessel_get_KerbinSeaLevelSpecificImpulse(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_MomentOfInertia <: Request{:SpaceCenter, :Vessel_get_MomentOfInertia, begin
                Tuple{Float64, Float64, Float64}
            end}
    Vessel_get_MomentOfInertia(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_InertiaTensor <: Request{:SpaceCenter, :Vessel_get_InertiaTensor, begin
                Array{Float64, 1}
            end}
    Vessel_get_InertiaTensor(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_AvailableTorque <: Request{:SpaceCenter, :Vessel_get_AvailableTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    Vessel_get_AvailableTorque(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_AvailableReactionWheelTorque <: Request{:SpaceCenter, :Vessel_get_AvailableReactionWheelTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    Vessel_get_AvailableReactionWheelTorque(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_AvailableRCSTorque <: Request{:SpaceCenter, :Vessel_get_AvailableRCSTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    Vessel_get_AvailableRCSTorque(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_AvailableEngineTorque <: Request{:SpaceCenter, :Vessel_get_AvailableEngineTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    Vessel_get_AvailableEngineTorque(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_AvailableControlSurfaceTorque <: Request{:SpaceCenter, :Vessel_get_AvailableControlSurfaceTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    Vessel_get_AvailableControlSurfaceTorque(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_AvailableOtherTorque <: Request{:SpaceCenter, :Vessel_get_AvailableOtherTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    Vessel_get_AvailableOtherTorque(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_ReferenceFrame <: Request{:SpaceCenter, :Vessel_get_ReferenceFrame, RemoteTypes.ReferenceFrame}
    Vessel_get_ReferenceFrame(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_OrbitalReferenceFrame <: Request{:SpaceCenter, :Vessel_get_OrbitalReferenceFrame, RemoteTypes.ReferenceFrame}
    Vessel_get_OrbitalReferenceFrame(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_SurfaceReferenceFrame <: Request{:SpaceCenter, :Vessel_get_SurfaceReferenceFrame, RemoteTypes.ReferenceFrame}
    Vessel_get_SurfaceReferenceFrame(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Vessel_get_SurfaceVelocityReferenceFrame <: Request{:SpaceCenter, :Vessel_get_SurfaceVelocityReferenceFrame, RemoteTypes.ReferenceFrame}
    Vessel_get_SurfaceVelocityReferenceFrame(this::RemoteTypes.Vessel) = begin
            new(this)
        end
    this::RemoteTypes.Vessel
end
struct Waypoint_Remove <: Request{:SpaceCenter, :Waypoint_Remove, Nothing}
    Waypoint_Remove(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_get_Body <: Request{:SpaceCenter, :Waypoint_get_Body, RemoteTypes.CelestialBody}
    Waypoint_get_Body(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_set_Body <: Request{:SpaceCenter, :Waypoint_set_Body, Nothing}
    Waypoint_set_Body(this::RemoteTypes.Waypoint, value::RemoteTypes.CelestialBody) = begin
            new(this, value)
        end
    this::RemoteTypes.Waypoint
    value::RemoteTypes.CelestialBody
end
struct Waypoint_get_Name <: Request{:SpaceCenter, :Waypoint_get_Name, String}
    Waypoint_get_Name(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_set_Name <: Request{:SpaceCenter, :Waypoint_set_Name, Nothing}
    Waypoint_set_Name(this::RemoteTypes.Waypoint, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Waypoint
    value::String
end
struct Waypoint_get_Color <: Request{:SpaceCenter, :Waypoint_get_Color, Int32}
    Waypoint_get_Color(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_set_Color <: Request{:SpaceCenter, :Waypoint_set_Color, Nothing}
    Waypoint_set_Color(this::RemoteTypes.Waypoint, value::Int32) = begin
            new(this, value)
        end
    this::RemoteTypes.Waypoint
    value::Int32
end
struct Waypoint_get_Icon <: Request{:SpaceCenter, :Waypoint_get_Icon, String}
    Waypoint_get_Icon(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_set_Icon <: Request{:SpaceCenter, :Waypoint_set_Icon, Nothing}
    Waypoint_set_Icon(this::RemoteTypes.Waypoint, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Waypoint
    value::String
end
struct Waypoint_get_Latitude <: Request{:SpaceCenter, :Waypoint_get_Latitude, Float64}
    Waypoint_get_Latitude(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_set_Latitude <: Request{:SpaceCenter, :Waypoint_set_Latitude, Nothing}
    Waypoint_set_Latitude(this::RemoteTypes.Waypoint, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Waypoint
    value::Float64
end
struct Waypoint_get_Longitude <: Request{:SpaceCenter, :Waypoint_get_Longitude, Float64}
    Waypoint_get_Longitude(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_set_Longitude <: Request{:SpaceCenter, :Waypoint_set_Longitude, Nothing}
    Waypoint_set_Longitude(this::RemoteTypes.Waypoint, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Waypoint
    value::Float64
end
struct Waypoint_get_MeanAltitude <: Request{:SpaceCenter, :Waypoint_get_MeanAltitude, Float64}
    Waypoint_get_MeanAltitude(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_set_MeanAltitude <: Request{:SpaceCenter, :Waypoint_set_MeanAltitude, Nothing}
    Waypoint_set_MeanAltitude(this::RemoteTypes.Waypoint, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Waypoint
    value::Float64
end
struct Waypoint_get_SurfaceAltitude <: Request{:SpaceCenter, :Waypoint_get_SurfaceAltitude, Float64}
    Waypoint_get_SurfaceAltitude(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_set_SurfaceAltitude <: Request{:SpaceCenter, :Waypoint_set_SurfaceAltitude, Nothing}
    Waypoint_set_SurfaceAltitude(this::RemoteTypes.Waypoint, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Waypoint
    value::Float64
end
struct Waypoint_get_BedrockAltitude <: Request{:SpaceCenter, :Waypoint_get_BedrockAltitude, Float64}
    Waypoint_get_BedrockAltitude(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_set_BedrockAltitude <: Request{:SpaceCenter, :Waypoint_set_BedrockAltitude, Nothing}
    Waypoint_set_BedrockAltitude(this::RemoteTypes.Waypoint, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Waypoint
    value::Float64
end
struct Waypoint_get_NearSurface <: Request{:SpaceCenter, :Waypoint_get_NearSurface, Bool}
    Waypoint_get_NearSurface(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_get_Grounded <: Request{:SpaceCenter, :Waypoint_get_Grounded, Bool}
    Waypoint_get_Grounded(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_get_Index <: Request{:SpaceCenter, :Waypoint_get_Index, Int32}
    Waypoint_get_Index(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_get_Clustered <: Request{:SpaceCenter, :Waypoint_get_Clustered, Bool}
    Waypoint_get_Clustered(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_get_HasContract <: Request{:SpaceCenter, :Waypoint_get_HasContract, Bool}
    Waypoint_get_HasContract(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct Waypoint_get_Contract <: Request{:SpaceCenter, :Waypoint_get_Contract, RemoteTypes.Contract}
    Waypoint_get_Contract(this::RemoteTypes.Waypoint) = begin
            new(this)
        end
    this::RemoteTypes.Waypoint
end
struct WaypointManager_AddWaypoint <: Request{:SpaceCenter, :WaypointManager_AddWaypoint, RemoteTypes.Waypoint}
    WaypointManager_AddWaypoint(this::RemoteTypes.WaypointManager, latitude::Float64, longitude::Float64, body::RemoteTypes.CelestialBody, name::String) = begin
            new(this, latitude, longitude, body, name)
        end
    this::RemoteTypes.WaypointManager
    latitude::Float64
    longitude::Float64
    body::RemoteTypes.CelestialBody
    name::String
end
struct WaypointManager_AddWaypointAtAltitude <: Request{:SpaceCenter, :WaypointManager_AddWaypointAtAltitude, RemoteTypes.Waypoint}
    WaypointManager_AddWaypointAtAltitude(this::RemoteTypes.WaypointManager, latitude::Float64, longitude::Float64, altitude::Float64, body::RemoteTypes.CelestialBody, name::String) = begin
            new(this, latitude, longitude, altitude, body, name)
        end
    this::RemoteTypes.WaypointManager
    latitude::Float64
    longitude::Float64
    altitude::Float64
    body::RemoteTypes.CelestialBody
    name::String
end
struct WaypointManager_get_Waypoints <: Request{:SpaceCenter, :WaypointManager_get_Waypoints, begin
                Array{RemoteTypes.Waypoint, 1}
            end}
    WaypointManager_get_Waypoints(this::RemoteTypes.WaypointManager) = begin
            new(this)
        end
    this::RemoteTypes.WaypointManager
end
struct WaypointManager_get_Icons <: Request{:SpaceCenter, :WaypointManager_get_Icons, begin
                Array{String, 1}
            end}
    WaypointManager_get_Icons(this::RemoteTypes.WaypointManager) = begin
            new(this)
        end
    this::RemoteTypes.WaypointManager
end
struct WaypointManager_get_Colors <: Request{:SpaceCenter, :WaypointManager_get_Colors, begin
                Dict{String, Int32}
            end}
    WaypointManager_get_Colors(this::RemoteTypes.WaypointManager) = begin
            new(this)
        end
    this::RemoteTypes.WaypointManager
end
struct Antenna_Transmit <: Request{:SpaceCenter, :Antenna_Transmit, Nothing}
    Antenna_Transmit(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_Cancel <: Request{:SpaceCenter, :Antenna_Cancel, Nothing}
    Antenna_Cancel(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_Part <: Request{:SpaceCenter, :Antenna_get_Part, RemoteTypes.Part}
    Antenna_get_Part(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_State <: Request{:SpaceCenter, :Antenna_get_State, EAntennaState}
    Antenna_get_State(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_Deployable <: Request{:SpaceCenter, :Antenna_get_Deployable, Bool}
    Antenna_get_Deployable(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_Deployed <: Request{:SpaceCenter, :Antenna_get_Deployed, Bool}
    Antenna_get_Deployed(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_set_Deployed <: Request{:SpaceCenter, :Antenna_set_Deployed, Nothing}
    Antenna_set_Deployed(this::RemoteTypes.Antenna, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Antenna
    value::Bool
end
struct Antenna_get_CanTransmit <: Request{:SpaceCenter, :Antenna_get_CanTransmit, Bool}
    Antenna_get_CanTransmit(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_AllowPartial <: Request{:SpaceCenter, :Antenna_get_AllowPartial, Bool}
    Antenna_get_AllowPartial(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_set_AllowPartial <: Request{:SpaceCenter, :Antenna_set_AllowPartial, Nothing}
    Antenna_set_AllowPartial(this::RemoteTypes.Antenna, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Antenna
    value::Bool
end
struct Antenna_get_Power <: Request{:SpaceCenter, :Antenna_get_Power, Float64}
    Antenna_get_Power(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_Combinable <: Request{:SpaceCenter, :Antenna_get_Combinable, Bool}
    Antenna_get_Combinable(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_CombinableExponent <: Request{:SpaceCenter, :Antenna_get_CombinableExponent, Float64}
    Antenna_get_CombinableExponent(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_PacketInterval <: Request{:SpaceCenter, :Antenna_get_PacketInterval, Float32}
    Antenna_get_PacketInterval(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_PacketSize <: Request{:SpaceCenter, :Antenna_get_PacketSize, Float32}
    Antenna_get_PacketSize(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_PacketResourceCost <: Request{:SpaceCenter, :Antenna_get_PacketResourceCost, Float64}
    Antenna_get_PacketResourceCost(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct CargoBay_get_Part <: Request{:SpaceCenter, :CargoBay_get_Part, RemoteTypes.Part}
    CargoBay_get_Part(this::RemoteTypes.CargoBay) = begin
            new(this)
        end
    this::RemoteTypes.CargoBay
end
struct CargoBay_get_State <: Request{:SpaceCenter, :CargoBay_get_State, ECargoBayState}
    CargoBay_get_State(this::RemoteTypes.CargoBay) = begin
            new(this)
        end
    this::RemoteTypes.CargoBay
end
struct CargoBay_get_Open <: Request{:SpaceCenter, :CargoBay_get_Open, Bool}
    CargoBay_get_Open(this::RemoteTypes.CargoBay) = begin
            new(this)
        end
    this::RemoteTypes.CargoBay
end
struct CargoBay_set_Open <: Request{:SpaceCenter, :CargoBay_set_Open, Nothing}
    CargoBay_set_Open(this::RemoteTypes.CargoBay, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.CargoBay
    value::Bool
end
struct ControlSurface_get_Part <: Request{:SpaceCenter, :ControlSurface_get_Part, RemoteTypes.Part}
    ControlSurface_get_Part(this::RemoteTypes.ControlSurface) = begin
            new(this)
        end
    this::RemoteTypes.ControlSurface
end
struct ControlSurface_get_PitchEnabled <: Request{:SpaceCenter, :ControlSurface_get_PitchEnabled, Bool}
    ControlSurface_get_PitchEnabled(this::RemoteTypes.ControlSurface) = begin
            new(this)
        end
    this::RemoteTypes.ControlSurface
end
struct ControlSurface_set_PitchEnabled <: Request{:SpaceCenter, :ControlSurface_set_PitchEnabled, Nothing}
    ControlSurface_set_PitchEnabled(this::RemoteTypes.ControlSurface, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.ControlSurface
    value::Bool
end
struct ControlSurface_get_YawEnabled <: Request{:SpaceCenter, :ControlSurface_get_YawEnabled, Bool}
    ControlSurface_get_YawEnabled(this::RemoteTypes.ControlSurface) = begin
            new(this)
        end
    this::RemoteTypes.ControlSurface
end
struct ControlSurface_set_YawEnabled <: Request{:SpaceCenter, :ControlSurface_set_YawEnabled, Nothing}
    ControlSurface_set_YawEnabled(this::RemoteTypes.ControlSurface, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.ControlSurface
    value::Bool
end
struct ControlSurface_get_RollEnabled <: Request{:SpaceCenter, :ControlSurface_get_RollEnabled, Bool}
    ControlSurface_get_RollEnabled(this::RemoteTypes.ControlSurface) = begin
            new(this)
        end
    this::RemoteTypes.ControlSurface
end
struct ControlSurface_set_RollEnabled <: Request{:SpaceCenter, :ControlSurface_set_RollEnabled, Nothing}
    ControlSurface_set_RollEnabled(this::RemoteTypes.ControlSurface, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.ControlSurface
    value::Bool
end
struct ControlSurface_get_AuthorityLimiter <: Request{:SpaceCenter, :ControlSurface_get_AuthorityLimiter, Float32}
    ControlSurface_get_AuthorityLimiter(this::RemoteTypes.ControlSurface) = begin
            new(this)
        end
    this::RemoteTypes.ControlSurface
end
struct ControlSurface_set_AuthorityLimiter <: Request{:SpaceCenter, :ControlSurface_set_AuthorityLimiter, Nothing}
    ControlSurface_set_AuthorityLimiter(this::RemoteTypes.ControlSurface, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.ControlSurface
    value::Float32
end
struct ControlSurface_get_Inverted <: Request{:SpaceCenter, :ControlSurface_get_Inverted, Bool}
    ControlSurface_get_Inverted(this::RemoteTypes.ControlSurface) = begin
            new(this)
        end
    this::RemoteTypes.ControlSurface
end
struct ControlSurface_set_Inverted <: Request{:SpaceCenter, :ControlSurface_set_Inverted, Nothing}
    ControlSurface_set_Inverted(this::RemoteTypes.ControlSurface, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.ControlSurface
    value::Bool
end
struct ControlSurface_get_Deployed <: Request{:SpaceCenter, :ControlSurface_get_Deployed, Bool}
    ControlSurface_get_Deployed(this::RemoteTypes.ControlSurface) = begin
            new(this)
        end
    this::RemoteTypes.ControlSurface
end
struct ControlSurface_set_Deployed <: Request{:SpaceCenter, :ControlSurface_set_Deployed, Nothing}
    ControlSurface_set_Deployed(this::RemoteTypes.ControlSurface, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.ControlSurface
    value::Bool
end
struct ControlSurface_get_SurfaceArea <: Request{:SpaceCenter, :ControlSurface_get_SurfaceArea, Float32}
    ControlSurface_get_SurfaceArea(this::RemoteTypes.ControlSurface) = begin
            new(this)
        end
    this::RemoteTypes.ControlSurface
end
struct ControlSurface_get_AvailableTorque <: Request{:SpaceCenter, :ControlSurface_get_AvailableTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    ControlSurface_get_AvailableTorque(this::RemoteTypes.ControlSurface) = begin
            new(this)
        end
    this::RemoteTypes.ControlSurface
end
struct Decoupler_Decouple <: Request{:SpaceCenter, :Decoupler_Decouple, RemoteTypes.Vessel}
    Decoupler_Decouple(this::RemoteTypes.Decoupler) = begin
            new(this)
        end
    this::RemoteTypes.Decoupler
end
struct Decoupler_get_Part <: Request{:SpaceCenter, :Decoupler_get_Part, RemoteTypes.Part}
    Decoupler_get_Part(this::RemoteTypes.Decoupler) = begin
            new(this)
        end
    this::RemoteTypes.Decoupler
end
struct Decoupler_get_Decoupled <: Request{:SpaceCenter, :Decoupler_get_Decoupled, Bool}
    Decoupler_get_Decoupled(this::RemoteTypes.Decoupler) = begin
            new(this)
        end
    this::RemoteTypes.Decoupler
end
struct Decoupler_get_Staged <: Request{:SpaceCenter, :Decoupler_get_Staged, Bool}
    Decoupler_get_Staged(this::RemoteTypes.Decoupler) = begin
            new(this)
        end
    this::RemoteTypes.Decoupler
end
struct Decoupler_get_Impulse <: Request{:SpaceCenter, :Decoupler_get_Impulse, Float32}
    Decoupler_get_Impulse(this::RemoteTypes.Decoupler) = begin
            new(this)
        end
    this::RemoteTypes.Decoupler
end
struct DockingPort_Undock <: Request{:SpaceCenter, :DockingPort_Undock, RemoteTypes.Vessel}
    DockingPort_Undock(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_Position <: Request{:SpaceCenter, :DockingPort_Position, begin
                Tuple{Float64, Float64, Float64}
            end}
    DockingPort_Position(this::RemoteTypes.DockingPort, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.DockingPort
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct DockingPort_Direction <: Request{:SpaceCenter, :DockingPort_Direction, begin
                Tuple{Float64, Float64, Float64}
            end}
    DockingPort_Direction(this::RemoteTypes.DockingPort, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.DockingPort
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct DockingPort_Rotation <: Request{:SpaceCenter, :DockingPort_Rotation, begin
                Tuple{Float64, Float64, Float64, Float64}
            end}
    DockingPort_Rotation(this::RemoteTypes.DockingPort, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.DockingPort
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct DockingPort_get_Part <: Request{:SpaceCenter, :DockingPort_get_Part, RemoteTypes.Part}
    DockingPort_get_Part(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_get_State <: Request{:SpaceCenter, :DockingPort_get_State, EDockingPortState}
    DockingPort_get_State(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_get_DockedPart <: Request{:SpaceCenter, :DockingPort_get_DockedPart, RemoteTypes.Part}
    DockingPort_get_DockedPart(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_get_ReengageDistance <: Request{:SpaceCenter, :DockingPort_get_ReengageDistance, Float32}
    DockingPort_get_ReengageDistance(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_get_HasShield <: Request{:SpaceCenter, :DockingPort_get_HasShield, Bool}
    DockingPort_get_HasShield(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_get_Shielded <: Request{:SpaceCenter, :DockingPort_get_Shielded, Bool}
    DockingPort_get_Shielded(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_set_Shielded <: Request{:SpaceCenter, :DockingPort_set_Shielded, Nothing}
    DockingPort_set_Shielded(this::RemoteTypes.DockingPort, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.DockingPort
    value::Bool
end
struct DockingPort_get_CanRotate <: Request{:SpaceCenter, :DockingPort_get_CanRotate, Bool}
    DockingPort_get_CanRotate(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_get_MaximumRotation <: Request{:SpaceCenter, :DockingPort_get_MaximumRotation, Float32}
    DockingPort_get_MaximumRotation(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_get_MinimumRotation <: Request{:SpaceCenter, :DockingPort_get_MinimumRotation, Float32}
    DockingPort_get_MinimumRotation(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_get_RotationTarget <: Request{:SpaceCenter, :DockingPort_get_RotationTarget, Float32}
    DockingPort_get_RotationTarget(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_set_RotationTarget <: Request{:SpaceCenter, :DockingPort_set_RotationTarget, Nothing}
    DockingPort_set_RotationTarget(this::RemoteTypes.DockingPort, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.DockingPort
    value::Float32
end
struct DockingPort_get_RotationLocked <: Request{:SpaceCenter, :DockingPort_get_RotationLocked, Bool}
    DockingPort_get_RotationLocked(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct DockingPort_set_RotationLocked <: Request{:SpaceCenter, :DockingPort_set_RotationLocked, Nothing}
    DockingPort_set_RotationLocked(this::RemoteTypes.DockingPort, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.DockingPort
    value::Bool
end
struct DockingPort_get_ReferenceFrame <: Request{:SpaceCenter, :DockingPort_get_ReferenceFrame, RemoteTypes.ReferenceFrame}
    DockingPort_get_ReferenceFrame(this::RemoteTypes.DockingPort) = begin
            new(this)
        end
    this::RemoteTypes.DockingPort
end
struct Engine_ToggleMode <: Request{:SpaceCenter, :Engine_ToggleMode, Nothing}
    Engine_ToggleMode(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_Part <: Request{:SpaceCenter, :Engine_get_Part, RemoteTypes.Part}
    Engine_get_Part(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_Active <: Request{:SpaceCenter, :Engine_get_Active, Bool}
    Engine_get_Active(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_set_Active <: Request{:SpaceCenter, :Engine_set_Active, Nothing}
    Engine_set_Active(this::RemoteTypes.Engine, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Engine
    value::Bool
end
struct Engine_get_Thrust <: Request{:SpaceCenter, :Engine_get_Thrust, Float32}
    Engine_get_Thrust(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_AvailableThrust <: Request{:SpaceCenter, :Engine_get_AvailableThrust, Float32}
    Engine_get_AvailableThrust(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_MaxThrust <: Request{:SpaceCenter, :Engine_get_MaxThrust, Float32}
    Engine_get_MaxThrust(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_MaxVacuumThrust <: Request{:SpaceCenter, :Engine_get_MaxVacuumThrust, Float32}
    Engine_get_MaxVacuumThrust(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_ThrustLimit <: Request{:SpaceCenter, :Engine_get_ThrustLimit, Float32}
    Engine_get_ThrustLimit(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_set_ThrustLimit <: Request{:SpaceCenter, :Engine_set_ThrustLimit, Nothing}
    Engine_set_ThrustLimit(this::RemoteTypes.Engine, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Engine
    value::Float32
end
struct Engine_get_Thrusters <: Request{:SpaceCenter, :Engine_get_Thrusters, begin
                Array{RemoteTypes.Thruster, 1}
            end}
    Engine_get_Thrusters(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_SpecificImpulse <: Request{:SpaceCenter, :Engine_get_SpecificImpulse, Float32}
    Engine_get_SpecificImpulse(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_VacuumSpecificImpulse <: Request{:SpaceCenter, :Engine_get_VacuumSpecificImpulse, Float32}
    Engine_get_VacuumSpecificImpulse(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_KerbinSeaLevelSpecificImpulse <: Request{:SpaceCenter, :Engine_get_KerbinSeaLevelSpecificImpulse, Float32}
    Engine_get_KerbinSeaLevelSpecificImpulse(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_PropellantNames <: Request{:SpaceCenter, :Engine_get_PropellantNames, begin
                Array{String, 1}
            end}
    Engine_get_PropellantNames(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_Propellants <: Request{:SpaceCenter, :Engine_get_Propellants, begin
                Array{RemoteTypes.Propellant, 1}
            end}
    Engine_get_Propellants(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_PropellantRatios <: Request{:SpaceCenter, :Engine_get_PropellantRatios, begin
                Dict{String, Float32}
            end}
    Engine_get_PropellantRatios(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_HasFuel <: Request{:SpaceCenter, :Engine_get_HasFuel, Bool}
    Engine_get_HasFuel(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_Throttle <: Request{:SpaceCenter, :Engine_get_Throttle, Float32}
    Engine_get_Throttle(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_ThrottleLocked <: Request{:SpaceCenter, :Engine_get_ThrottleLocked, Bool}
    Engine_get_ThrottleLocked(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_CanRestart <: Request{:SpaceCenter, :Engine_get_CanRestart, Bool}
    Engine_get_CanRestart(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_CanShutdown <: Request{:SpaceCenter, :Engine_get_CanShutdown, Bool}
    Engine_get_CanShutdown(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_HasModes <: Request{:SpaceCenter, :Engine_get_HasModes, Bool}
    Engine_get_HasModes(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_Mode <: Request{:SpaceCenter, :Engine_get_Mode, String}
    Engine_get_Mode(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_set_Mode <: Request{:SpaceCenter, :Engine_set_Mode, Nothing}
    Engine_set_Mode(this::RemoteTypes.Engine, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Engine
    value::String
end
struct Engine_get_Modes <: Request{:SpaceCenter, :Engine_get_Modes, begin
                Dict{String, RemoteTypes.Engine}
            end}
    Engine_get_Modes(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_AutoModeSwitch <: Request{:SpaceCenter, :Engine_get_AutoModeSwitch, Bool}
    Engine_get_AutoModeSwitch(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_set_AutoModeSwitch <: Request{:SpaceCenter, :Engine_set_AutoModeSwitch, Nothing}
    Engine_set_AutoModeSwitch(this::RemoteTypes.Engine, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Engine
    value::Bool
end
struct Engine_get_Gimballed <: Request{:SpaceCenter, :Engine_get_Gimballed, Bool}
    Engine_get_Gimballed(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_GimbalRange <: Request{:SpaceCenter, :Engine_get_GimbalRange, Float32}
    Engine_get_GimbalRange(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_get_GimbalLocked <: Request{:SpaceCenter, :Engine_get_GimbalLocked, Bool}
    Engine_get_GimbalLocked(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_set_GimbalLocked <: Request{:SpaceCenter, :Engine_set_GimbalLocked, Nothing}
    Engine_set_GimbalLocked(this::RemoteTypes.Engine, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Engine
    value::Bool
end
struct Engine_get_GimbalLimit <: Request{:SpaceCenter, :Engine_get_GimbalLimit, Float32}
    Engine_get_GimbalLimit(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Engine_set_GimbalLimit <: Request{:SpaceCenter, :Engine_set_GimbalLimit, Nothing}
    Engine_set_GimbalLimit(this::RemoteTypes.Engine, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Engine
    value::Float32
end
struct Engine_get_AvailableTorque <: Request{:SpaceCenter, :Engine_get_AvailableTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    Engine_get_AvailableTorque(this::RemoteTypes.Engine) = begin
            new(this)
        end
    this::RemoteTypes.Engine
end
struct Experiment_Run <: Request{:SpaceCenter, :Experiment_Run, Nothing}
    Experiment_Run(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_Transmit <: Request{:SpaceCenter, :Experiment_Transmit, Nothing}
    Experiment_Transmit(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_Dump <: Request{:SpaceCenter, :Experiment_Dump, Nothing}
    Experiment_Dump(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_Reset <: Request{:SpaceCenter, :Experiment_Reset, Nothing}
    Experiment_Reset(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_Part <: Request{:SpaceCenter, :Experiment_get_Part, RemoteTypes.Part}
    Experiment_get_Part(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_Name <: Request{:SpaceCenter, :Experiment_get_Name, String}
    Experiment_get_Name(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_Title <: Request{:SpaceCenter, :Experiment_get_Title, String}
    Experiment_get_Title(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_Inoperable <: Request{:SpaceCenter, :Experiment_get_Inoperable, Bool}
    Experiment_get_Inoperable(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_Deployed <: Request{:SpaceCenter, :Experiment_get_Deployed, Bool}
    Experiment_get_Deployed(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_Rerunnable <: Request{:SpaceCenter, :Experiment_get_Rerunnable, Bool}
    Experiment_get_Rerunnable(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_HasData <: Request{:SpaceCenter, :Experiment_get_HasData, Bool}
    Experiment_get_HasData(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_Data <: Request{:SpaceCenter, :Experiment_get_Data, begin
                Array{RemoteTypes.ScienceData, 1}
            end}
    Experiment_get_Data(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_Available <: Request{:SpaceCenter, :Experiment_get_Available, Bool}
    Experiment_get_Available(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_Biome <: Request{:SpaceCenter, :Experiment_get_Biome, String}
    Experiment_get_Biome(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Experiment_get_ScienceSubject <: Request{:SpaceCenter, :Experiment_get_ScienceSubject, RemoteTypes.ScienceSubject}
    Experiment_get_ScienceSubject(this::RemoteTypes.Experiment) = begin
            new(this)
        end
    this::RemoteTypes.Experiment
end
struct Fairing_Jettison <: Request{:SpaceCenter, :Fairing_Jettison, Nothing}
    Fairing_Jettison(this::RemoteTypes.Fairing) = begin
            new(this)
        end
    this::RemoteTypes.Fairing
end
struct Fairing_get_Part <: Request{:SpaceCenter, :Fairing_get_Part, RemoteTypes.Part}
    Fairing_get_Part(this::RemoteTypes.Fairing) = begin
            new(this)
        end
    this::RemoteTypes.Fairing
end
struct Fairing_get_Jettisoned <: Request{:SpaceCenter, :Fairing_get_Jettisoned, Bool}
    Fairing_get_Jettisoned(this::RemoteTypes.Fairing) = begin
            new(this)
        end
    this::RemoteTypes.Fairing
end
struct Force_Remove <: Request{:SpaceCenter, :Force_Remove, Nothing}
    Force_Remove(this::RemoteTypes.Force) = begin
            new(this)
        end
    this::RemoteTypes.Force
end
struct Force_get_Part <: Request{:SpaceCenter, :Force_get_Part, RemoteTypes.Part}
    Force_get_Part(this::RemoteTypes.Force) = begin
            new(this)
        end
    this::RemoteTypes.Force
end
struct Force_get_ForceVector <: Request{:SpaceCenter, :Force_get_ForceVector, begin
                Tuple{Float64, Float64, Float64}
            end}
    Force_get_ForceVector(this::RemoteTypes.Force) = begin
            new(this)
        end
    this::RemoteTypes.Force
end
struct Force_set_ForceVector <: Request{:SpaceCenter, :Force_set_ForceVector, Nothing}
    Force_set_ForceVector(this::RemoteTypes.Force, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Force
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Force_get_Position <: Request{:SpaceCenter, :Force_get_Position, begin
                Tuple{Float64, Float64, Float64}
            end}
    Force_get_Position(this::RemoteTypes.Force) = begin
            new(this)
        end
    this::RemoteTypes.Force
end
struct Force_set_Position <: Request{:SpaceCenter, :Force_set_Position, Nothing}
    Force_set_Position(this::RemoteTypes.Force, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Force
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Force_get_ReferenceFrame <: Request{:SpaceCenter, :Force_get_ReferenceFrame, RemoteTypes.ReferenceFrame}
    Force_get_ReferenceFrame(this::RemoteTypes.Force) = begin
            new(this)
        end
    this::RemoteTypes.Force
end
struct Force_set_ReferenceFrame <: Request{:SpaceCenter, :Force_set_ReferenceFrame, Nothing}
    Force_set_ReferenceFrame(this::RemoteTypes.Force, value::RemoteTypes.ReferenceFrame) = begin
            new(this, value)
        end
    this::RemoteTypes.Force
    value::RemoteTypes.ReferenceFrame
end
struct Intake_get_Part <: Request{:SpaceCenter, :Intake_get_Part, RemoteTypes.Part}
    Intake_get_Part(this::RemoteTypes.Intake) = begin
            new(this)
        end
    this::RemoteTypes.Intake
end
struct Intake_get_Open <: Request{:SpaceCenter, :Intake_get_Open, Bool}
    Intake_get_Open(this::RemoteTypes.Intake) = begin
            new(this)
        end
    this::RemoteTypes.Intake
end
struct Intake_set_Open <: Request{:SpaceCenter, :Intake_set_Open, Nothing}
    Intake_set_Open(this::RemoteTypes.Intake, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Intake
    value::Bool
end
struct Intake_get_Speed <: Request{:SpaceCenter, :Intake_get_Speed, Float32}
    Intake_get_Speed(this::RemoteTypes.Intake) = begin
            new(this)
        end
    this::RemoteTypes.Intake
end
struct Intake_get_Flow <: Request{:SpaceCenter, :Intake_get_Flow, Float32}
    Intake_get_Flow(this::RemoteTypes.Intake) = begin
            new(this)
        end
    this::RemoteTypes.Intake
end
struct Intake_get_Area <: Request{:SpaceCenter, :Intake_get_Area, Float32}
    Intake_get_Area(this::RemoteTypes.Intake) = begin
            new(this)
        end
    this::RemoteTypes.Intake
end
struct LaunchClamp_Release <: Request{:SpaceCenter, :LaunchClamp_Release, Nothing}
    LaunchClamp_Release(this::RemoteTypes.LaunchClamp) = begin
            new(this)
        end
    this::RemoteTypes.LaunchClamp
end
struct LaunchClamp_get_Part <: Request{:SpaceCenter, :LaunchClamp_get_Part, RemoteTypes.Part}
    LaunchClamp_get_Part(this::RemoteTypes.LaunchClamp) = begin
            new(this)
        end
    this::RemoteTypes.LaunchClamp
end
struct Leg_get_Part <: Request{:SpaceCenter, :Leg_get_Part, RemoteTypes.Part}
    Leg_get_Part(this::RemoteTypes.Leg) = begin
            new(this)
        end
    this::RemoteTypes.Leg
end
struct Leg_get_State <: Request{:SpaceCenter, :Leg_get_State, ELegState}
    Leg_get_State(this::RemoteTypes.Leg) = begin
            new(this)
        end
    this::RemoteTypes.Leg
end
struct Leg_get_Deployable <: Request{:SpaceCenter, :Leg_get_Deployable, Bool}
    Leg_get_Deployable(this::RemoteTypes.Leg) = begin
            new(this)
        end
    this::RemoteTypes.Leg
end
struct Leg_get_Deployed <: Request{:SpaceCenter, :Leg_get_Deployed, Bool}
    Leg_get_Deployed(this::RemoteTypes.Leg) = begin
            new(this)
        end
    this::RemoteTypes.Leg
end
struct Leg_set_Deployed <: Request{:SpaceCenter, :Leg_set_Deployed, Nothing}
    Leg_set_Deployed(this::RemoteTypes.Leg, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Leg
    value::Bool
end
struct Leg_get_IsGrounded <: Request{:SpaceCenter, :Leg_get_IsGrounded, Bool}
    Leg_get_IsGrounded(this::RemoteTypes.Leg) = begin
            new(this)
        end
    this::RemoteTypes.Leg
end
struct Light_BlinkStart <: Request{:SpaceCenter, :Light_BlinkStart, Nothing}
    Light_BlinkStart(this::RemoteTypes.Light) = begin
            new(this)
        end
    this::RemoteTypes.Light
end
struct Light_BlinkStop <: Request{:SpaceCenter, :Light_BlinkStop, Nothing}
    Light_BlinkStop(this::RemoteTypes.Light) = begin
            new(this)
        end
    this::RemoteTypes.Light
end
struct Light_get_Part <: Request{:SpaceCenter, :Light_get_Part, RemoteTypes.Part}
    Light_get_Part(this::RemoteTypes.Light) = begin
            new(this)
        end
    this::RemoteTypes.Light
end
struct Light_get_Active <: Request{:SpaceCenter, :Light_get_Active, Bool}
    Light_get_Active(this::RemoteTypes.Light) = begin
            new(this)
        end
    this::RemoteTypes.Light
end
struct Light_set_Active <: Request{:SpaceCenter, :Light_set_Active, Nothing}
    Light_set_Active(this::RemoteTypes.Light, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Light
    value::Bool
end
struct Light_get_Color <: Request{:SpaceCenter, :Light_get_Color, begin
                Tuple{Float32, Float32, Float32}
            end}
    Light_get_Color(this::RemoteTypes.Light) = begin
            new(this)
        end
    this::RemoteTypes.Light
end
struct Light_set_Color <: Request{:SpaceCenter, :Light_set_Color, Nothing}
    Light_set_Color(this::RemoteTypes.Light, value::begin
                    Tuple{Float32, Float32, Float32}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Light
    value::begin
            Tuple{Float32, Float32, Float32}
        end
end
struct Light_get_BlinkRate <: Request{:SpaceCenter, :Light_get_BlinkRate, Float32}
    Light_get_BlinkRate(this::RemoteTypes.Light) = begin
            new(this)
        end
    this::RemoteTypes.Light
end
struct Light_set_BlinkRate <: Request{:SpaceCenter, :Light_set_BlinkRate, Nothing}
    Light_set_BlinkRate(this::RemoteTypes.Light, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Light
    value::Float32
end
struct Light_get_PowerUsage <: Request{:SpaceCenter, :Light_get_PowerUsage, Float32}
    Light_get_PowerUsage(this::RemoteTypes.Light) = begin
            new(this)
        end
    this::RemoteTypes.Light
end
struct Module_HasField <: Request{:SpaceCenter, :Module_HasField, Bool}
    Module_HasField(this::RemoteTypes.Module, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Module
    name::String
end
struct Module_GetField <: Request{:SpaceCenter, :Module_GetField, String}
    Module_GetField(this::RemoteTypes.Module, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Module
    name::String
end
struct Module_SetFieldInt <: Request{:SpaceCenter, :Module_SetFieldInt, Nothing}
    Module_SetFieldInt(this::RemoteTypes.Module, name::String, value::Int32) = begin
            new(this, name, value)
        end
    this::RemoteTypes.Module
    name::String
    value::Int32
end
struct Module_SetFieldFloat <: Request{:SpaceCenter, :Module_SetFieldFloat, Nothing}
    Module_SetFieldFloat(this::RemoteTypes.Module, name::String, value::Float32) = begin
            new(this, name, value)
        end
    this::RemoteTypes.Module
    name::String
    value::Float32
end
struct Module_SetFieldString <: Request{:SpaceCenter, :Module_SetFieldString, Nothing}
    Module_SetFieldString(this::RemoteTypes.Module, name::String, value::String) = begin
            new(this, name, value)
        end
    this::RemoteTypes.Module
    name::String
    value::String
end
struct Module_ResetField <: Request{:SpaceCenter, :Module_ResetField, Nothing}
    Module_ResetField(this::RemoteTypes.Module, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Module
    name::String
end
struct Module_HasEvent <: Request{:SpaceCenter, :Module_HasEvent, Bool}
    Module_HasEvent(this::RemoteTypes.Module, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Module
    name::String
end
struct Module_TriggerEvent <: Request{:SpaceCenter, :Module_TriggerEvent, Nothing}
    Module_TriggerEvent(this::RemoteTypes.Module, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Module
    name::String
end
struct Module_HasAction <: Request{:SpaceCenter, :Module_HasAction, Bool}
    Module_HasAction(this::RemoteTypes.Module, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Module
    name::String
end
struct Module_SetAction <: Request{:SpaceCenter, :Module_SetAction, Nothing}
    Module_SetAction(this::RemoteTypes.Module, name::String, value::Bool) = begin
            new(this, name, value)
        end
    this::RemoteTypes.Module
    name::String
    value::Bool
end
struct Module_get_Name <: Request{:SpaceCenter, :Module_get_Name, String}
    Module_get_Name(this::RemoteTypes.Module) = begin
            new(this)
        end
    this::RemoteTypes.Module
end
struct Module_get_Part <: Request{:SpaceCenter, :Module_get_Part, RemoteTypes.Part}
    Module_get_Part(this::RemoteTypes.Module) = begin
            new(this)
        end
    this::RemoteTypes.Module
end
struct Module_get_Fields <: Request{:SpaceCenter, :Module_get_Fields, begin
                Dict{String, String}
            end}
    Module_get_Fields(this::RemoteTypes.Module) = begin
            new(this)
        end
    this::RemoteTypes.Module
end
struct Module_get_Events <: Request{:SpaceCenter, :Module_get_Events, begin
                Array{String, 1}
            end}
    Module_get_Events(this::RemoteTypes.Module) = begin
            new(this)
        end
    this::RemoteTypes.Module
end
struct Module_get_Actions <: Request{:SpaceCenter, :Module_get_Actions, begin
                Array{String, 1}
            end}
    Module_get_Actions(this::RemoteTypes.Module) = begin
            new(this)
        end
    this::RemoteTypes.Module
end
struct Parachute_Deploy <: Request{:SpaceCenter, :Parachute_Deploy, Nothing}
    Parachute_Deploy(this::RemoteTypes.Parachute) = begin
            new(this)
        end
    this::RemoteTypes.Parachute
end
struct Parachute_Arm <: Request{:SpaceCenter, :Parachute_Arm, Nothing}
    Parachute_Arm(this::RemoteTypes.Parachute) = begin
            new(this)
        end
    this::RemoteTypes.Parachute
end
struct Parachute_get_Part <: Request{:SpaceCenter, :Parachute_get_Part, RemoteTypes.Part}
    Parachute_get_Part(this::RemoteTypes.Parachute) = begin
            new(this)
        end
    this::RemoteTypes.Parachute
end
struct Parachute_get_Deployed <: Request{:SpaceCenter, :Parachute_get_Deployed, Bool}
    Parachute_get_Deployed(this::RemoteTypes.Parachute) = begin
            new(this)
        end
    this::RemoteTypes.Parachute
end
struct Parachute_get_Armed <: Request{:SpaceCenter, :Parachute_get_Armed, Bool}
    Parachute_get_Armed(this::RemoteTypes.Parachute) = begin
            new(this)
        end
    this::RemoteTypes.Parachute
end
struct Parachute_get_State <: Request{:SpaceCenter, :Parachute_get_State, EParachuteState}
    Parachute_get_State(this::RemoteTypes.Parachute) = begin
            new(this)
        end
    this::RemoteTypes.Parachute
end
struct Parachute_get_DeployAltitude <: Request{:SpaceCenter, :Parachute_get_DeployAltitude, Float32}
    Parachute_get_DeployAltitude(this::RemoteTypes.Parachute) = begin
            new(this)
        end
    this::RemoteTypes.Parachute
end
struct Parachute_set_DeployAltitude <: Request{:SpaceCenter, :Parachute_set_DeployAltitude, Nothing}
    Parachute_set_DeployAltitude(this::RemoteTypes.Parachute, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Parachute
    value::Float32
end
struct Parachute_get_DeployMinPressure <: Request{:SpaceCenter, :Parachute_get_DeployMinPressure, Float32}
    Parachute_get_DeployMinPressure(this::RemoteTypes.Parachute) = begin
            new(this)
        end
    this::RemoteTypes.Parachute
end
struct Parachute_set_DeployMinPressure <: Request{:SpaceCenter, :Parachute_set_DeployMinPressure, Nothing}
    Parachute_set_DeployMinPressure(this::RemoteTypes.Parachute, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Parachute
    value::Float32
end
struct Part_Position <: Request{:SpaceCenter, :Part_Position, begin
                Tuple{Float64, Float64, Float64}
            end}
    Part_Position(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Part
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Part_CenterOfMass <: Request{:SpaceCenter, :Part_CenterOfMass, begin
                Tuple{Float64, Float64, Float64}
            end}
    Part_CenterOfMass(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Part
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Part_BoundingBox <: Request{:SpaceCenter, :Part_BoundingBox, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    Part_BoundingBox(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Part
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Part_Direction <: Request{:SpaceCenter, :Part_Direction, begin
                Tuple{Float64, Float64, Float64}
            end}
    Part_Direction(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Part
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Part_Velocity <: Request{:SpaceCenter, :Part_Velocity, begin
                Tuple{Float64, Float64, Float64}
            end}
    Part_Velocity(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Part
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Part_Rotation <: Request{:SpaceCenter, :Part_Rotation, begin
                Tuple{Float64, Float64, Float64, Float64}
            end}
    Part_Rotation(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Part
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Part_AddForce <: Request{:SpaceCenter, :Part_AddForce, RemoteTypes.Force}
    Part_AddForce(this::RemoteTypes.Part, force::begin
                    Tuple{Float64, Float64, Float64}
                end, position::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, force, position, referenceFrame)
        end
    this::RemoteTypes.Part
    force::begin
            Tuple{Float64, Float64, Float64}
        end
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Part_InstantaneousForce <: Request{:SpaceCenter, :Part_InstantaneousForce, Nothing}
    Part_InstantaneousForce(this::RemoteTypes.Part, force::begin
                    Tuple{Float64, Float64, Float64}
                end, position::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, force, position, referenceFrame)
        end
    this::RemoteTypes.Part
    force::begin
            Tuple{Float64, Float64, Float64}
        end
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Part_get_Name <: Request{:SpaceCenter, :Part_get_Name, String}
    Part_get_Name(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Title <: Request{:SpaceCenter, :Part_get_Title, String}
    Part_get_Title(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Tag <: Request{:SpaceCenter, :Part_get_Tag, String}
    Part_get_Tag(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_set_Tag <: Request{:SpaceCenter, :Part_set_Tag, Nothing}
    Part_set_Tag(this::RemoteTypes.Part, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Part
    value::String
end
struct Part_get_Highlighted <: Request{:SpaceCenter, :Part_get_Highlighted, Bool}
    Part_get_Highlighted(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_set_Highlighted <: Request{:SpaceCenter, :Part_set_Highlighted, Nothing}
    Part_set_Highlighted(this::RemoteTypes.Part, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Part
    value::Bool
end
struct Part_get_HighlightColor <: Request{:SpaceCenter, :Part_get_HighlightColor, begin
                Tuple{Float64, Float64, Float64}
            end}
    Part_get_HighlightColor(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_set_HighlightColor <: Request{:SpaceCenter, :Part_set_HighlightColor, Nothing}
    Part_set_HighlightColor(this::RemoteTypes.Part, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Part
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Part_get_Cost <: Request{:SpaceCenter, :Part_get_Cost, Float64}
    Part_get_Cost(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Vessel <: Request{:SpaceCenter, :Part_get_Vessel, RemoteTypes.Vessel}
    Part_get_Vessel(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Parent <: Request{:SpaceCenter, :Part_get_Parent, RemoteTypes.Part}
    Part_get_Parent(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Children <: Request{:SpaceCenter, :Part_get_Children, begin
                Array{RemoteTypes.Part, 1}
            end}
    Part_get_Children(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_AxiallyAttached <: Request{:SpaceCenter, :Part_get_AxiallyAttached, Bool}
    Part_get_AxiallyAttached(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_RadiallyAttached <: Request{:SpaceCenter, :Part_get_RadiallyAttached, Bool}
    Part_get_RadiallyAttached(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Stage <: Request{:SpaceCenter, :Part_get_Stage, Int32}
    Part_get_Stage(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_DecoupleStage <: Request{:SpaceCenter, :Part_get_DecoupleStage, Int32}
    Part_get_DecoupleStage(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Massless <: Request{:SpaceCenter, :Part_get_Massless, Bool}
    Part_get_Massless(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Mass <: Request{:SpaceCenter, :Part_get_Mass, Float64}
    Part_get_Mass(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_DryMass <: Request{:SpaceCenter, :Part_get_DryMass, Float64}
    Part_get_DryMass(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Shielded <: Request{:SpaceCenter, :Part_get_Shielded, Bool}
    Part_get_Shielded(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_DynamicPressure <: Request{:SpaceCenter, :Part_get_DynamicPressure, Float32}
    Part_get_DynamicPressure(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ImpactTolerance <: Request{:SpaceCenter, :Part_get_ImpactTolerance, Float64}
    Part_get_ImpactTolerance(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Temperature <: Request{:SpaceCenter, :Part_get_Temperature, Float64}
    Part_get_Temperature(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_SkinTemperature <: Request{:SpaceCenter, :Part_get_SkinTemperature, Float64}
    Part_get_SkinTemperature(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_MaxTemperature <: Request{:SpaceCenter, :Part_get_MaxTemperature, Float64}
    Part_get_MaxTemperature(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_MaxSkinTemperature <: Request{:SpaceCenter, :Part_get_MaxSkinTemperature, Float64}
    Part_get_MaxSkinTemperature(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ThermalMass <: Request{:SpaceCenter, :Part_get_ThermalMass, Float32}
    Part_get_ThermalMass(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ThermalSkinMass <: Request{:SpaceCenter, :Part_get_ThermalSkinMass, Float32}
    Part_get_ThermalSkinMass(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ThermalResourceMass <: Request{:SpaceCenter, :Part_get_ThermalResourceMass, Float32}
    Part_get_ThermalResourceMass(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ThermalInternalFlux <: Request{:SpaceCenter, :Part_get_ThermalInternalFlux, Float32}
    Part_get_ThermalInternalFlux(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ThermalConductionFlux <: Request{:SpaceCenter, :Part_get_ThermalConductionFlux, Float32}
    Part_get_ThermalConductionFlux(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ThermalConvectionFlux <: Request{:SpaceCenter, :Part_get_ThermalConvectionFlux, Float32}
    Part_get_ThermalConvectionFlux(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ThermalRadiationFlux <: Request{:SpaceCenter, :Part_get_ThermalRadiationFlux, Float32}
    Part_get_ThermalRadiationFlux(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ThermalSkinToInternalFlux <: Request{:SpaceCenter, :Part_get_ThermalSkinToInternalFlux, Float32}
    Part_get_ThermalSkinToInternalFlux(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Resources <: Request{:SpaceCenter, :Part_get_Resources, RemoteTypes.Resources}
    Part_get_Resources(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Crossfeed <: Request{:SpaceCenter, :Part_get_Crossfeed, Bool}
    Part_get_Crossfeed(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_IsFuelLine <: Request{:SpaceCenter, :Part_get_IsFuelLine, Bool}
    Part_get_IsFuelLine(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_FuelLinesFrom <: Request{:SpaceCenter, :Part_get_FuelLinesFrom, begin
                Array{RemoteTypes.Part, 1}
            end}
    Part_get_FuelLinesFrom(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_FuelLinesTo <: Request{:SpaceCenter, :Part_get_FuelLinesTo, begin
                Array{RemoteTypes.Part, 1}
            end}
    Part_get_FuelLinesTo(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Modules <: Request{:SpaceCenter, :Part_get_Modules, begin
                Array{RemoteTypes.Module, 1}
            end}
    Part_get_Modules(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Antenna <: Request{:SpaceCenter, :Part_get_Antenna, RemoteTypes.Antenna}
    Part_get_Antenna(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_CargoBay <: Request{:SpaceCenter, :Part_get_CargoBay, RemoteTypes.CargoBay}
    Part_get_CargoBay(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ControlSurface <: Request{:SpaceCenter, :Part_get_ControlSurface, RemoteTypes.ControlSurface}
    Part_get_ControlSurface(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Decoupler <: Request{:SpaceCenter, :Part_get_Decoupler, RemoteTypes.Decoupler}
    Part_get_Decoupler(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_DockingPort <: Request{:SpaceCenter, :Part_get_DockingPort, RemoteTypes.DockingPort}
    Part_get_DockingPort(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ResourceDrain <: Request{:SpaceCenter, :Part_get_ResourceDrain, RemoteTypes.ResourceDrain}
    Part_get_ResourceDrain(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Engine <: Request{:SpaceCenter, :Part_get_Engine, RemoteTypes.Engine}
    Part_get_Engine(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Experiment <: Request{:SpaceCenter, :Part_get_Experiment, RemoteTypes.Experiment}
    Part_get_Experiment(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Experiments <: Request{:SpaceCenter, :Part_get_Experiments, begin
                Array{RemoteTypes.Experiment, 1}
            end}
    Part_get_Experiments(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Fairing <: Request{:SpaceCenter, :Part_get_Fairing, RemoteTypes.Fairing}
    Part_get_Fairing(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Intake <: Request{:SpaceCenter, :Part_get_Intake, RemoteTypes.Intake}
    Part_get_Intake(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Leg <: Request{:SpaceCenter, :Part_get_Leg, RemoteTypes.Leg}
    Part_get_Leg(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_LaunchClamp <: Request{:SpaceCenter, :Part_get_LaunchClamp, RemoteTypes.LaunchClamp}
    Part_get_LaunchClamp(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Light <: Request{:SpaceCenter, :Part_get_Light, RemoteTypes.Light}
    Part_get_Light(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Parachute <: Request{:SpaceCenter, :Part_get_Parachute, RemoteTypes.Parachute}
    Part_get_Parachute(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Radiator <: Request{:SpaceCenter, :Part_get_Radiator, RemoteTypes.Radiator}
    Part_get_Radiator(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_RCS <: Request{:SpaceCenter, :Part_get_RCS, RemoteTypes.RCS}
    Part_get_RCS(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ReactionWheel <: Request{:SpaceCenter, :Part_get_ReactionWheel, RemoteTypes.ReactionWheel}
    Part_get_ReactionWheel(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ResourceConverter <: Request{:SpaceCenter, :Part_get_ResourceConverter, RemoteTypes.ResourceConverter}
    Part_get_ResourceConverter(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ResourceHarvester <: Request{:SpaceCenter, :Part_get_ResourceHarvester, RemoteTypes.ResourceHarvester}
    Part_get_ResourceHarvester(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Sensor <: Request{:SpaceCenter, :Part_get_Sensor, RemoteTypes.Sensor}
    Part_get_Sensor(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_SolarPanel <: Request{:SpaceCenter, :Part_get_SolarPanel, RemoteTypes.SolarPanel}
    Part_get_SolarPanel(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_Wheel <: Request{:SpaceCenter, :Part_get_Wheel, RemoteTypes.Wheel}
    Part_get_Wheel(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_RoboticHinge <: Request{:SpaceCenter, :Part_get_RoboticHinge, RemoteTypes.RoboticHinge}
    Part_get_RoboticHinge(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_RoboticPiston <: Request{:SpaceCenter, :Part_get_RoboticPiston, RemoteTypes.RoboticPiston}
    Part_get_RoboticPiston(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_RoboticRotation <: Request{:SpaceCenter, :Part_get_RoboticRotation, RemoteTypes.RoboticRotation}
    Part_get_RoboticRotation(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_RoboticRotor <: Request{:SpaceCenter, :Part_get_RoboticRotor, RemoteTypes.RoboticRotor}
    Part_get_RoboticRotor(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_MomentOfInertia <: Request{:SpaceCenter, :Part_get_MomentOfInertia, begin
                Tuple{Float64, Float64, Float64}
            end}
    Part_get_MomentOfInertia(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_InertiaTensor <: Request{:SpaceCenter, :Part_get_InertiaTensor, begin
                Array{Float64, 1}
            end}
    Part_get_InertiaTensor(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_ReferenceFrame <: Request{:SpaceCenter, :Part_get_ReferenceFrame, RemoteTypes.ReferenceFrame}
    Part_get_ReferenceFrame(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_CenterOfMassReferenceFrame <: Request{:SpaceCenter, :Part_get_CenterOfMassReferenceFrame, RemoteTypes.ReferenceFrame}
    Part_get_CenterOfMassReferenceFrame(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_get_AutoStrutMode <: Request{:SpaceCenter, :Part_get_AutoStrutMode, EAutostrutState}
    Part_get_AutoStrutMode(this::RemoteTypes.Part) = begin
            new(this)
        end
    this::RemoteTypes.Part
end
struct Part_set_AutoStrutMode <: Request{:SpaceCenter, :Part_set_AutoStrutMode, Nothing}
    Part_set_AutoStrutMode(this::RemoteTypes.Part, value::EAutostrutState) = begin
            new(this, value)
        end
    this::RemoteTypes.Part
    value::EAutostrutState
end
struct Parts_WithName <: Request{:SpaceCenter, :Parts_WithName, begin
                Array{RemoteTypes.Part, 1}
            end}
    Parts_WithName(this::RemoteTypes.Parts, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.Parts
    name::String
end
struct Parts_WithTitle <: Request{:SpaceCenter, :Parts_WithTitle, begin
                Array{RemoteTypes.Part, 1}
            end}
    Parts_WithTitle(this::RemoteTypes.Parts, title::String) = begin
            new(this, title)
        end
    this::RemoteTypes.Parts
    title::String
end
struct Parts_WithTag <: Request{:SpaceCenter, :Parts_WithTag, begin
                Array{RemoteTypes.Part, 1}
            end}
    Parts_WithTag(this::RemoteTypes.Parts, tag::String) = begin
            new(this, tag)
        end
    this::RemoteTypes.Parts
    tag::String
end
struct Parts_WithModule <: Request{:SpaceCenter, :Parts_WithModule, begin
                Array{RemoteTypes.Part, 1}
            end}
    Parts_WithModule(this::RemoteTypes.Parts, moduleName::String) = begin
            new(this, moduleName)
        end
    this::RemoteTypes.Parts
    moduleName::String
end
struct Parts_InStage <: Request{:SpaceCenter, :Parts_InStage, begin
                Array{RemoteTypes.Part, 1}
            end}
    Parts_InStage(this::RemoteTypes.Parts, stage::Int32) = begin
            new(this, stage)
        end
    this::RemoteTypes.Parts
    stage::Int32
end
struct Parts_InDecoupleStage <: Request{:SpaceCenter, :Parts_InDecoupleStage, begin
                Array{RemoteTypes.Part, 1}
            end}
    Parts_InDecoupleStage(this::RemoteTypes.Parts, stage::Int32) = begin
            new(this, stage)
        end
    this::RemoteTypes.Parts
    stage::Int32
end
struct Parts_ModulesWithName <: Request{:SpaceCenter, :Parts_ModulesWithName, begin
                Array{RemoteTypes.Module, 1}
            end}
    Parts_ModulesWithName(this::RemoteTypes.Parts, moduleName::String) = begin
            new(this, moduleName)
        end
    this::RemoteTypes.Parts
    moduleName::String
end
struct Parts_get_All <: Request{:SpaceCenter, :Parts_get_All, begin
                Array{RemoteTypes.Part, 1}
            end}
    Parts_get_All(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Root <: Request{:SpaceCenter, :Parts_get_Root, RemoteTypes.Part}
    Parts_get_Root(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Controlling <: Request{:SpaceCenter, :Parts_get_Controlling, RemoteTypes.Part}
    Parts_get_Controlling(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_set_Controlling <: Request{:SpaceCenter, :Parts_set_Controlling, Nothing}
    Parts_set_Controlling(this::RemoteTypes.Parts, value::RemoteTypes.Part) = begin
            new(this, value)
        end
    this::RemoteTypes.Parts
    value::RemoteTypes.Part
end
struct Parts_get_Antennas <: Request{:SpaceCenter, :Parts_get_Antennas, begin
                Array{RemoteTypes.Antenna, 1}
            end}
    Parts_get_Antennas(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_ControlSurfaces <: Request{:SpaceCenter, :Parts_get_ControlSurfaces, begin
                Array{RemoteTypes.ControlSurface, 1}
            end}
    Parts_get_ControlSurfaces(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_CargoBays <: Request{:SpaceCenter, :Parts_get_CargoBays, begin
                Array{RemoteTypes.CargoBay, 1}
            end}
    Parts_get_CargoBays(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Decouplers <: Request{:SpaceCenter, :Parts_get_Decouplers, begin
                Array{RemoteTypes.Decoupler, 1}
            end}
    Parts_get_Decouplers(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_DockingPorts <: Request{:SpaceCenter, :Parts_get_DockingPorts, begin
                Array{RemoteTypes.DockingPort, 1}
            end}
    Parts_get_DockingPorts(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Engines <: Request{:SpaceCenter, :Parts_get_Engines, begin
                Array{RemoteTypes.Engine, 1}
            end}
    Parts_get_Engines(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Experiments <: Request{:SpaceCenter, :Parts_get_Experiments, begin
                Array{RemoteTypes.Experiment, 1}
            end}
    Parts_get_Experiments(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Fairings <: Request{:SpaceCenter, :Parts_get_Fairings, begin
                Array{RemoteTypes.Fairing, 1}
            end}
    Parts_get_Fairings(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Intakes <: Request{:SpaceCenter, :Parts_get_Intakes, begin
                Array{RemoteTypes.Intake, 1}
            end}
    Parts_get_Intakes(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Legs <: Request{:SpaceCenter, :Parts_get_Legs, begin
                Array{RemoteTypes.Leg, 1}
            end}
    Parts_get_Legs(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_LaunchClamps <: Request{:SpaceCenter, :Parts_get_LaunchClamps, begin
                Array{RemoteTypes.LaunchClamp, 1}
            end}
    Parts_get_LaunchClamps(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Lights <: Request{:SpaceCenter, :Parts_get_Lights, begin
                Array{RemoteTypes.Light, 1}
            end}
    Parts_get_Lights(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Parachutes <: Request{:SpaceCenter, :Parts_get_Parachutes, begin
                Array{RemoteTypes.Parachute, 1}
            end}
    Parts_get_Parachutes(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Radiators <: Request{:SpaceCenter, :Parts_get_Radiators, begin
                Array{RemoteTypes.Radiator, 1}
            end}
    Parts_get_Radiators(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_RCS <: Request{:SpaceCenter, :Parts_get_RCS, begin
                Array{RemoteTypes.RCS, 1}
            end}
    Parts_get_RCS(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_ReactionWheels <: Request{:SpaceCenter, :Parts_get_ReactionWheels, begin
                Array{RemoteTypes.ReactionWheel, 1}
            end}
    Parts_get_ReactionWheels(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_ResourceConverters <: Request{:SpaceCenter, :Parts_get_ResourceConverters, begin
                Array{RemoteTypes.ResourceConverter, 1}
            end}
    Parts_get_ResourceConverters(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_ResourceHarvesters <: Request{:SpaceCenter, :Parts_get_ResourceHarvesters, begin
                Array{RemoteTypes.ResourceHarvester, 1}
            end}
    Parts_get_ResourceHarvesters(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Sensors <: Request{:SpaceCenter, :Parts_get_Sensors, begin
                Array{RemoteTypes.Sensor, 1}
            end}
    Parts_get_Sensors(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_SolarPanels <: Request{:SpaceCenter, :Parts_get_SolarPanels, begin
                Array{RemoteTypes.SolarPanel, 1}
            end}
    Parts_get_SolarPanels(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_Wheels <: Request{:SpaceCenter, :Parts_get_Wheels, begin
                Array{RemoteTypes.Wheel, 1}
            end}
    Parts_get_Wheels(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_RoboticHinges <: Request{:SpaceCenter, :Parts_get_RoboticHinges, begin
                Array{RemoteTypes.RoboticHinge, 1}
            end}
    Parts_get_RoboticHinges(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_RoboticPistons <: Request{:SpaceCenter, :Parts_get_RoboticPistons, begin
                Array{RemoteTypes.RoboticPiston, 1}
            end}
    Parts_get_RoboticPistons(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_RoboticRotations <: Request{:SpaceCenter, :Parts_get_RoboticRotations, begin
                Array{RemoteTypes.RoboticRotation, 1}
            end}
    Parts_get_RoboticRotations(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_RoboticRotors <: Request{:SpaceCenter, :Parts_get_RoboticRotors, begin
                Array{RemoteTypes.RoboticRotor, 1}
            end}
    Parts_get_RoboticRotors(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Parts_get_ResourceDrains <: Request{:SpaceCenter, :Parts_get_ResourceDrains, begin
                Array{RemoteTypes.ResourceDrain, 1}
            end}
    Parts_get_ResourceDrains(this::RemoteTypes.Parts) = begin
            new(this)
        end
    this::RemoteTypes.Parts
end
struct Propellant_get_Name <: Request{:SpaceCenter, :Propellant_get_Name, String}
    Propellant_get_Name(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct Propellant_get_CurrentAmount <: Request{:SpaceCenter, :Propellant_get_CurrentAmount, Float64}
    Propellant_get_CurrentAmount(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct Propellant_get_CurrentRequirement <: Request{:SpaceCenter, :Propellant_get_CurrentRequirement, Float64}
    Propellant_get_CurrentRequirement(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct Propellant_get_TotalResourceAvailable <: Request{:SpaceCenter, :Propellant_get_TotalResourceAvailable, Float64}
    Propellant_get_TotalResourceAvailable(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct Propellant_get_TotalResourceCapacity <: Request{:SpaceCenter, :Propellant_get_TotalResourceCapacity, Float64}
    Propellant_get_TotalResourceCapacity(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct Propellant_get_IgnoreForIsp <: Request{:SpaceCenter, :Propellant_get_IgnoreForIsp, Bool}
    Propellant_get_IgnoreForIsp(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct Propellant_get_IgnoreForThrustCurve <: Request{:SpaceCenter, :Propellant_get_IgnoreForThrustCurve, Bool}
    Propellant_get_IgnoreForThrustCurve(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct Propellant_get_DrawStackGauge <: Request{:SpaceCenter, :Propellant_get_DrawStackGauge, Bool}
    Propellant_get_DrawStackGauge(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct Propellant_get_IsDeprived <: Request{:SpaceCenter, :Propellant_get_IsDeprived, Bool}
    Propellant_get_IsDeprived(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct Propellant_get_Ratio <: Request{:SpaceCenter, :Propellant_get_Ratio, Float32}
    Propellant_get_Ratio(this::RemoteTypes.Propellant) = begin
            new(this)
        end
    this::RemoteTypes.Propellant
end
struct RCS_get_Part <: Request{:SpaceCenter, :RCS_get_Part, RemoteTypes.Part}
    RCS_get_Part(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_Active <: Request{:SpaceCenter, :RCS_get_Active, Bool}
    RCS_get_Active(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_Enabled <: Request{:SpaceCenter, :RCS_get_Enabled, Bool}
    RCS_get_Enabled(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_set_Enabled <: Request{:SpaceCenter, :RCS_set_Enabled, Nothing}
    RCS_set_Enabled(this::RemoteTypes.RCS, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RCS
    value::Bool
end
struct RCS_get_PitchEnabled <: Request{:SpaceCenter, :RCS_get_PitchEnabled, Bool}
    RCS_get_PitchEnabled(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_set_PitchEnabled <: Request{:SpaceCenter, :RCS_set_PitchEnabled, Nothing}
    RCS_set_PitchEnabled(this::RemoteTypes.RCS, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RCS
    value::Bool
end
struct RCS_get_YawEnabled <: Request{:SpaceCenter, :RCS_get_YawEnabled, Bool}
    RCS_get_YawEnabled(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_set_YawEnabled <: Request{:SpaceCenter, :RCS_set_YawEnabled, Nothing}
    RCS_set_YawEnabled(this::RemoteTypes.RCS, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RCS
    value::Bool
end
struct RCS_get_RollEnabled <: Request{:SpaceCenter, :RCS_get_RollEnabled, Bool}
    RCS_get_RollEnabled(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_set_RollEnabled <: Request{:SpaceCenter, :RCS_set_RollEnabled, Nothing}
    RCS_set_RollEnabled(this::RemoteTypes.RCS, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RCS
    value::Bool
end
struct RCS_get_ForwardEnabled <: Request{:SpaceCenter, :RCS_get_ForwardEnabled, Bool}
    RCS_get_ForwardEnabled(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_set_ForwardEnabled <: Request{:SpaceCenter, :RCS_set_ForwardEnabled, Nothing}
    RCS_set_ForwardEnabled(this::RemoteTypes.RCS, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RCS
    value::Bool
end
struct RCS_get_UpEnabled <: Request{:SpaceCenter, :RCS_get_UpEnabled, Bool}
    RCS_get_UpEnabled(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_set_UpEnabled <: Request{:SpaceCenter, :RCS_set_UpEnabled, Nothing}
    RCS_set_UpEnabled(this::RemoteTypes.RCS, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RCS
    value::Bool
end
struct RCS_get_RightEnabled <: Request{:SpaceCenter, :RCS_get_RightEnabled, Bool}
    RCS_get_RightEnabled(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_set_RightEnabled <: Request{:SpaceCenter, :RCS_set_RightEnabled, Nothing}
    RCS_set_RightEnabled(this::RemoteTypes.RCS, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RCS
    value::Bool
end
struct RCS_get_AvailableTorque <: Request{:SpaceCenter, :RCS_get_AvailableTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    RCS_get_AvailableTorque(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_AvailableThrust <: Request{:SpaceCenter, :RCS_get_AvailableThrust, Float32}
    RCS_get_AvailableThrust(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_MaxThrust <: Request{:SpaceCenter, :RCS_get_MaxThrust, Float32}
    RCS_get_MaxThrust(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_MaxVacuumThrust <: Request{:SpaceCenter, :RCS_get_MaxVacuumThrust, Float32}
    RCS_get_MaxVacuumThrust(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_ThrustLimit <: Request{:SpaceCenter, :RCS_get_ThrustLimit, Float32}
    RCS_get_ThrustLimit(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_set_ThrustLimit <: Request{:SpaceCenter, :RCS_set_ThrustLimit, Nothing}
    RCS_set_ThrustLimit(this::RemoteTypes.RCS, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RCS
    value::Float32
end
struct RCS_get_Thrusters <: Request{:SpaceCenter, :RCS_get_Thrusters, begin
                Array{RemoteTypes.Thruster, 1}
            end}
    RCS_get_Thrusters(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_SpecificImpulse <: Request{:SpaceCenter, :RCS_get_SpecificImpulse, Float32}
    RCS_get_SpecificImpulse(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_VacuumSpecificImpulse <: Request{:SpaceCenter, :RCS_get_VacuumSpecificImpulse, Float32}
    RCS_get_VacuumSpecificImpulse(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_KerbinSeaLevelSpecificImpulse <: Request{:SpaceCenter, :RCS_get_KerbinSeaLevelSpecificImpulse, Float32}
    RCS_get_KerbinSeaLevelSpecificImpulse(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_Propellants <: Request{:SpaceCenter, :RCS_get_Propellants, begin
                Array{String, 1}
            end}
    RCS_get_Propellants(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_PropellantRatios <: Request{:SpaceCenter, :RCS_get_PropellantRatios, begin
                Dict{String, Float32}
            end}
    RCS_get_PropellantRatios(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct RCS_get_HasFuel <: Request{:SpaceCenter, :RCS_get_HasFuel, Bool}
    RCS_get_HasFuel(this::RemoteTypes.RCS) = begin
            new(this)
        end
    this::RemoteTypes.RCS
end
struct Radiator_get_Part <: Request{:SpaceCenter, :Radiator_get_Part, RemoteTypes.Part}
    Radiator_get_Part(this::RemoteTypes.Radiator) = begin
            new(this)
        end
    this::RemoteTypes.Radiator
end
struct Radiator_get_Deployable <: Request{:SpaceCenter, :Radiator_get_Deployable, Bool}
    Radiator_get_Deployable(this::RemoteTypes.Radiator) = begin
            new(this)
        end
    this::RemoteTypes.Radiator
end
struct Radiator_get_Deployed <: Request{:SpaceCenter, :Radiator_get_Deployed, Bool}
    Radiator_get_Deployed(this::RemoteTypes.Radiator) = begin
            new(this)
        end
    this::RemoteTypes.Radiator
end
struct Radiator_set_Deployed <: Request{:SpaceCenter, :Radiator_set_Deployed, Nothing}
    Radiator_set_Deployed(this::RemoteTypes.Radiator, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Radiator
    value::Bool
end
struct Radiator_get_State <: Request{:SpaceCenter, :Radiator_get_State, ERadiatorState}
    Radiator_get_State(this::RemoteTypes.Radiator) = begin
            new(this)
        end
    this::RemoteTypes.Radiator
end
struct ReactionWheel_get_Part <: Request{:SpaceCenter, :ReactionWheel_get_Part, RemoteTypes.Part}
    ReactionWheel_get_Part(this::RemoteTypes.ReactionWheel) = begin
            new(this)
        end
    this::RemoteTypes.ReactionWheel
end
struct ReactionWheel_get_Active <: Request{:SpaceCenter, :ReactionWheel_get_Active, Bool}
    ReactionWheel_get_Active(this::RemoteTypes.ReactionWheel) = begin
            new(this)
        end
    this::RemoteTypes.ReactionWheel
end
struct ReactionWheel_set_Active <: Request{:SpaceCenter, :ReactionWheel_set_Active, Nothing}
    ReactionWheel_set_Active(this::RemoteTypes.ReactionWheel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.ReactionWheel
    value::Bool
end
struct ReactionWheel_get_Broken <: Request{:SpaceCenter, :ReactionWheel_get_Broken, Bool}
    ReactionWheel_get_Broken(this::RemoteTypes.ReactionWheel) = begin
            new(this)
        end
    this::RemoteTypes.ReactionWheel
end
struct ReactionWheel_get_AvailableTorque <: Request{:SpaceCenter, :ReactionWheel_get_AvailableTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    ReactionWheel_get_AvailableTorque(this::RemoteTypes.ReactionWheel) = begin
            new(this)
        end
    this::RemoteTypes.ReactionWheel
end
struct ReactionWheel_get_MaxTorque <: Request{:SpaceCenter, :ReactionWheel_get_MaxTorque, begin
                Tuple{begin
                        Tuple{Float64, Float64, Float64}
                    end, begin
                        Tuple{Float64, Float64, Float64}
                    end}
            end}
    ReactionWheel_get_MaxTorque(this::RemoteTypes.ReactionWheel) = begin
            new(this)
        end
    this::RemoteTypes.ReactionWheel
end
struct ResourceConverter_Active <: Request{:SpaceCenter, :ResourceConverter_Active, Bool}
    ResourceConverter_Active(this::RemoteTypes.ResourceConverter, index::Int32) = begin
            new(this, index)
        end
    this::RemoteTypes.ResourceConverter
    index::Int32
end
struct ResourceConverter_Name <: Request{:SpaceCenter, :ResourceConverter_Name, String}
    ResourceConverter_Name(this::RemoteTypes.ResourceConverter, index::Int32) = begin
            new(this, index)
        end
    this::RemoteTypes.ResourceConverter
    index::Int32
end
struct ResourceConverter_Start <: Request{:SpaceCenter, :ResourceConverter_Start, Nothing}
    ResourceConverter_Start(this::RemoteTypes.ResourceConverter, index::Int32) = begin
            new(this, index)
        end
    this::RemoteTypes.ResourceConverter
    index::Int32
end
struct ResourceConverter_Stop <: Request{:SpaceCenter, :ResourceConverter_Stop, Nothing}
    ResourceConverter_Stop(this::RemoteTypes.ResourceConverter, index::Int32) = begin
            new(this, index)
        end
    this::RemoteTypes.ResourceConverter
    index::Int32
end
struct ResourceConverter_State <: Request{:SpaceCenter, :ResourceConverter_State, EResourceConverterState}
    ResourceConverter_State(this::RemoteTypes.ResourceConverter, index::Int32) = begin
            new(this, index)
        end
    this::RemoteTypes.ResourceConverter
    index::Int32
end
struct ResourceConverter_StatusInfo <: Request{:SpaceCenter, :ResourceConverter_StatusInfo, String}
    ResourceConverter_StatusInfo(this::RemoteTypes.ResourceConverter, index::Int32) = begin
            new(this, index)
        end
    this::RemoteTypes.ResourceConverter
    index::Int32
end
struct ResourceConverter_Inputs <: Request{:SpaceCenter, :ResourceConverter_Inputs, begin
                Array{String, 1}
            end}
    ResourceConverter_Inputs(this::RemoteTypes.ResourceConverter, index::Int32) = begin
            new(this, index)
        end
    this::RemoteTypes.ResourceConverter
    index::Int32
end
struct ResourceConverter_Outputs <: Request{:SpaceCenter, :ResourceConverter_Outputs, begin
                Array{String, 1}
            end}
    ResourceConverter_Outputs(this::RemoteTypes.ResourceConverter, index::Int32) = begin
            new(this, index)
        end
    this::RemoteTypes.ResourceConverter
    index::Int32
end
struct ResourceConverter_get_Part <: Request{:SpaceCenter, :ResourceConverter_get_Part, RemoteTypes.Part}
    ResourceConverter_get_Part(this::RemoteTypes.ResourceConverter) = begin
            new(this)
        end
    this::RemoteTypes.ResourceConverter
end
struct ResourceConverter_get_Count <: Request{:SpaceCenter, :ResourceConverter_get_Count, Int32}
    ResourceConverter_get_Count(this::RemoteTypes.ResourceConverter) = begin
            new(this)
        end
    this::RemoteTypes.ResourceConverter
end
struct ResourceConverter_get_ThermalEfficiency <: Request{:SpaceCenter, :ResourceConverter_get_ThermalEfficiency, Float32}
    ResourceConverter_get_ThermalEfficiency(this::RemoteTypes.ResourceConverter) = begin
            new(this)
        end
    this::RemoteTypes.ResourceConverter
end
struct ResourceConverter_get_CoreTemperature <: Request{:SpaceCenter, :ResourceConverter_get_CoreTemperature, Float32}
    ResourceConverter_get_CoreTemperature(this::RemoteTypes.ResourceConverter) = begin
            new(this)
        end
    this::RemoteTypes.ResourceConverter
end
struct ResourceConverter_get_OptimumCoreTemperature <: Request{:SpaceCenter, :ResourceConverter_get_OptimumCoreTemperature, Float32}
    ResourceConverter_get_OptimumCoreTemperature(this::RemoteTypes.ResourceConverter) = begin
            new(this)
        end
    this::RemoteTypes.ResourceConverter
end
struct ResourceDrain_SetResourceDrain <: Request{:SpaceCenter, :ResourceDrain_SetResourceDrain, Nothing}
    ResourceDrain_SetResourceDrain(this::RemoteTypes.ResourceDrain, R::RemoteTypes.Resource, b::Bool) = begin
            new(this, R, b)
        end
    this::RemoteTypes.ResourceDrain
    R::RemoteTypes.Resource
    b::Bool
end
struct ResourceDrain_CheckResourceDrain <: Request{:SpaceCenter, :ResourceDrain_CheckResourceDrain, Bool}
    ResourceDrain_CheckResourceDrain(this::RemoteTypes.ResourceDrain, R::RemoteTypes.Resource) = begin
            new(this, R)
        end
    this::RemoteTypes.ResourceDrain
    R::RemoteTypes.Resource
end
struct ResourceDrain_Start <: Request{:SpaceCenter, :ResourceDrain_Start, Nothing}
    ResourceDrain_Start(this::RemoteTypes.ResourceDrain) = begin
            new(this)
        end
    this::RemoteTypes.ResourceDrain
end
struct ResourceDrain_Stop <: Request{:SpaceCenter, :ResourceDrain_Stop, Nothing}
    ResourceDrain_Stop(this::RemoteTypes.ResourceDrain) = begin
            new(this)
        end
    this::RemoteTypes.ResourceDrain
end
struct ResourceDrain_get_Part <: Request{:SpaceCenter, :ResourceDrain_get_Part, RemoteTypes.Part}
    ResourceDrain_get_Part(this::RemoteTypes.ResourceDrain) = begin
            new(this)
        end
    this::RemoteTypes.ResourceDrain
end
struct ResourceDrain_get_AvailableResources <: Request{:SpaceCenter, :ResourceDrain_get_AvailableResources, begin
                Array{RemoteTypes.Resource, 1}
            end}
    ResourceDrain_get_AvailableResources(this::RemoteTypes.ResourceDrain) = begin
            new(this)
        end
    this::RemoteTypes.ResourceDrain
end
struct ResourceDrain_get_DrainMode <: Request{:SpaceCenter, :ResourceDrain_get_DrainMode, EDrainModes}
    ResourceDrain_get_DrainMode(this::RemoteTypes.ResourceDrain) = begin
            new(this)
        end
    this::RemoteTypes.ResourceDrain
end
struct ResourceDrain_set_DrainMode <: Request{:SpaceCenter, :ResourceDrain_set_DrainMode, Nothing}
    ResourceDrain_set_DrainMode(this::RemoteTypes.ResourceDrain, value::EDrainModes) = begin
            new(this, value)
        end
    this::RemoteTypes.ResourceDrain
    value::EDrainModes
end
struct ResourceDrain_get_MaxDrainRate <: Request{:SpaceCenter, :ResourceDrain_get_MaxDrainRate, Float32}
    ResourceDrain_get_MaxDrainRate(this::RemoteTypes.ResourceDrain) = begin
            new(this)
        end
    this::RemoteTypes.ResourceDrain
end
struct ResourceDrain_get_MinDrainRate <: Request{:SpaceCenter, :ResourceDrain_get_MinDrainRate, Float32}
    ResourceDrain_get_MinDrainRate(this::RemoteTypes.ResourceDrain) = begin
            new(this)
        end
    this::RemoteTypes.ResourceDrain
end
struct ResourceDrain_get_DrainRate <: Request{:SpaceCenter, :ResourceDrain_get_DrainRate, Float32}
    ResourceDrain_get_DrainRate(this::RemoteTypes.ResourceDrain) = begin
            new(this)
        end
    this::RemoteTypes.ResourceDrain
end
struct ResourceDrain_set_DrainRate <: Request{:SpaceCenter, :ResourceDrain_set_DrainRate, Nothing}
    ResourceDrain_set_DrainRate(this::RemoteTypes.ResourceDrain, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.ResourceDrain
    value::Float32
end
struct ResourceHarvester_get_Part <: Request{:SpaceCenter, :ResourceHarvester_get_Part, RemoteTypes.Part}
    ResourceHarvester_get_Part(this::RemoteTypes.ResourceHarvester) = begin
            new(this)
        end
    this::RemoteTypes.ResourceHarvester
end
struct ResourceHarvester_get_State <: Request{:SpaceCenter, :ResourceHarvester_get_State, EResourceHarvesterState}
    ResourceHarvester_get_State(this::RemoteTypes.ResourceHarvester) = begin
            new(this)
        end
    this::RemoteTypes.ResourceHarvester
end
struct ResourceHarvester_get_Deployed <: Request{:SpaceCenter, :ResourceHarvester_get_Deployed, Bool}
    ResourceHarvester_get_Deployed(this::RemoteTypes.ResourceHarvester) = begin
            new(this)
        end
    this::RemoteTypes.ResourceHarvester
end
struct ResourceHarvester_set_Deployed <: Request{:SpaceCenter, :ResourceHarvester_set_Deployed, Nothing}
    ResourceHarvester_set_Deployed(this::RemoteTypes.ResourceHarvester, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.ResourceHarvester
    value::Bool
end
struct ResourceHarvester_get_Active <: Request{:SpaceCenter, :ResourceHarvester_get_Active, Bool}
    ResourceHarvester_get_Active(this::RemoteTypes.ResourceHarvester) = begin
            new(this)
        end
    this::RemoteTypes.ResourceHarvester
end
struct ResourceHarvester_set_Active <: Request{:SpaceCenter, :ResourceHarvester_set_Active, Nothing}
    ResourceHarvester_set_Active(this::RemoteTypes.ResourceHarvester, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.ResourceHarvester
    value::Bool
end
struct ResourceHarvester_get_ExtractionRate <: Request{:SpaceCenter, :ResourceHarvester_get_ExtractionRate, Float32}
    ResourceHarvester_get_ExtractionRate(this::RemoteTypes.ResourceHarvester) = begin
            new(this)
        end
    this::RemoteTypes.ResourceHarvester
end
struct ResourceHarvester_get_ThermalEfficiency <: Request{:SpaceCenter, :ResourceHarvester_get_ThermalEfficiency, Float32}
    ResourceHarvester_get_ThermalEfficiency(this::RemoteTypes.ResourceHarvester) = begin
            new(this)
        end
    this::RemoteTypes.ResourceHarvester
end
struct ResourceHarvester_get_CoreTemperature <: Request{:SpaceCenter, :ResourceHarvester_get_CoreTemperature, Float32}
    ResourceHarvester_get_CoreTemperature(this::RemoteTypes.ResourceHarvester) = begin
            new(this)
        end
    this::RemoteTypes.ResourceHarvester
end
struct ResourceHarvester_get_OptimumCoreTemperature <: Request{:SpaceCenter, :ResourceHarvester_get_OptimumCoreTemperature, Float32}
    ResourceHarvester_get_OptimumCoreTemperature(this::RemoteTypes.ResourceHarvester) = begin
            new(this)
        end
    this::RemoteTypes.ResourceHarvester
end
struct RoboticHinge_Home <: Request{:SpaceCenter, :RoboticHinge_Home, Nothing}
    RoboticHinge_Home(this::RemoteTypes.RoboticHinge) = begin
            new(this)
        end
    this::RemoteTypes.RoboticHinge
end
struct RoboticHinge_get_Part <: Request{:SpaceCenter, :RoboticHinge_get_Part, RemoteTypes.Part}
    RoboticHinge_get_Part(this::RemoteTypes.RoboticHinge) = begin
            new(this)
        end
    this::RemoteTypes.RoboticHinge
end
struct RoboticHinge_get_TargetAngle <: Request{:SpaceCenter, :RoboticHinge_get_TargetAngle, Float32}
    RoboticHinge_get_TargetAngle(this::RemoteTypes.RoboticHinge) = begin
            new(this)
        end
    this::RemoteTypes.RoboticHinge
end
struct RoboticHinge_set_TargetAngle <: Request{:SpaceCenter, :RoboticHinge_set_TargetAngle, Nothing}
    RoboticHinge_set_TargetAngle(this::RemoteTypes.RoboticHinge, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticHinge
    value::Float32
end
struct RoboticHinge_get_CurrentAngle <: Request{:SpaceCenter, :RoboticHinge_get_CurrentAngle, Float32}
    RoboticHinge_get_CurrentAngle(this::RemoteTypes.RoboticHinge) = begin
            new(this)
        end
    this::RemoteTypes.RoboticHinge
end
struct RoboticHinge_get_Rate <: Request{:SpaceCenter, :RoboticHinge_get_Rate, Float32}
    RoboticHinge_get_Rate(this::RemoteTypes.RoboticHinge) = begin
            new(this)
        end
    this::RemoteTypes.RoboticHinge
end
struct RoboticHinge_set_Rate <: Request{:SpaceCenter, :RoboticHinge_set_Rate, Nothing}
    RoboticHinge_set_Rate(this::RemoteTypes.RoboticHinge, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticHinge
    value::Float32
end
struct RoboticHinge_get_Damping <: Request{:SpaceCenter, :RoboticHinge_get_Damping, Float32}
    RoboticHinge_get_Damping(this::RemoteTypes.RoboticHinge) = begin
            new(this)
        end
    this::RemoteTypes.RoboticHinge
end
struct RoboticHinge_set_Damping <: Request{:SpaceCenter, :RoboticHinge_set_Damping, Nothing}
    RoboticHinge_set_Damping(this::RemoteTypes.RoboticHinge, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticHinge
    value::Float32
end
struct RoboticHinge_get_HingeLocked <: Request{:SpaceCenter, :RoboticHinge_get_HingeLocked, Bool}
    RoboticHinge_get_HingeLocked(this::RemoteTypes.RoboticHinge) = begin
            new(this)
        end
    this::RemoteTypes.RoboticHinge
end
struct RoboticHinge_set_HingeLocked <: Request{:SpaceCenter, :RoboticHinge_set_HingeLocked, Nothing}
    RoboticHinge_set_HingeLocked(this::RemoteTypes.RoboticHinge, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticHinge
    value::Bool
end
struct RoboticHinge_get_MotorEngaged <: Request{:SpaceCenter, :RoboticHinge_get_MotorEngaged, Bool}
    RoboticHinge_get_MotorEngaged(this::RemoteTypes.RoboticHinge) = begin
            new(this)
        end
    this::RemoteTypes.RoboticHinge
end
struct RoboticHinge_set_MotorEngaged <: Request{:SpaceCenter, :RoboticHinge_set_MotorEngaged, Nothing}
    RoboticHinge_set_MotorEngaged(this::RemoteTypes.RoboticHinge, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticHinge
    value::Bool
end
struct RoboticPiston_Home <: Request{:SpaceCenter, :RoboticPiston_Home, Nothing}
    RoboticPiston_Home(this::RemoteTypes.RoboticPiston) = begin
            new(this)
        end
    this::RemoteTypes.RoboticPiston
end
struct RoboticPiston_get_Part <: Request{:SpaceCenter, :RoboticPiston_get_Part, RemoteTypes.Part}
    RoboticPiston_get_Part(this::RemoteTypes.RoboticPiston) = begin
            new(this)
        end
    this::RemoteTypes.RoboticPiston
end
struct RoboticPiston_get_TargetPosition <: Request{:SpaceCenter, :RoboticPiston_get_TargetPosition, Float32}
    RoboticPiston_get_TargetPosition(this::RemoteTypes.RoboticPiston) = begin
            new(this)
        end
    this::RemoteTypes.RoboticPiston
end
struct RoboticPiston_set_TargetPosition <: Request{:SpaceCenter, :RoboticPiston_set_TargetPosition, Nothing}
    RoboticPiston_set_TargetPosition(this::RemoteTypes.RoboticPiston, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticPiston
    value::Float32
end
struct RoboticPiston_get_CurrentPosition <: Request{:SpaceCenter, :RoboticPiston_get_CurrentPosition, Float32}
    RoboticPiston_get_CurrentPosition(this::RemoteTypes.RoboticPiston) = begin
            new(this)
        end
    this::RemoteTypes.RoboticPiston
end
struct RoboticPiston_get_Rate <: Request{:SpaceCenter, :RoboticPiston_get_Rate, Float32}
    RoboticPiston_get_Rate(this::RemoteTypes.RoboticPiston) = begin
            new(this)
        end
    this::RemoteTypes.RoboticPiston
end
struct RoboticPiston_set_Rate <: Request{:SpaceCenter, :RoboticPiston_set_Rate, Nothing}
    RoboticPiston_set_Rate(this::RemoteTypes.RoboticPiston, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticPiston
    value::Float32
end
struct RoboticPiston_get_Damping <: Request{:SpaceCenter, :RoboticPiston_get_Damping, Float32}
    RoboticPiston_get_Damping(this::RemoteTypes.RoboticPiston) = begin
            new(this)
        end
    this::RemoteTypes.RoboticPiston
end
struct RoboticPiston_set_Damping <: Request{:SpaceCenter, :RoboticPiston_set_Damping, Nothing}
    RoboticPiston_set_Damping(this::RemoteTypes.RoboticPiston, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticPiston
    value::Float32
end
struct RoboticPiston_get_PistonLocked <: Request{:SpaceCenter, :RoboticPiston_get_PistonLocked, Bool}
    RoboticPiston_get_PistonLocked(this::RemoteTypes.RoboticPiston) = begin
            new(this)
        end
    this::RemoteTypes.RoboticPiston
end
struct RoboticPiston_set_PistonLocked <: Request{:SpaceCenter, :RoboticPiston_set_PistonLocked, Nothing}
    RoboticPiston_set_PistonLocked(this::RemoteTypes.RoboticPiston, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticPiston
    value::Bool
end
struct RoboticPiston_get_MotorEngaged <: Request{:SpaceCenter, :RoboticPiston_get_MotorEngaged, Bool}
    RoboticPiston_get_MotorEngaged(this::RemoteTypes.RoboticPiston) = begin
            new(this)
        end
    this::RemoteTypes.RoboticPiston
end
struct RoboticPiston_set_MotorEngaged <: Request{:SpaceCenter, :RoboticPiston_set_MotorEngaged, Nothing}
    RoboticPiston_set_MotorEngaged(this::RemoteTypes.RoboticPiston, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticPiston
    value::Bool
end
struct RoboticRotation_Home <: Request{:SpaceCenter, :RoboticRotation_Home, Nothing}
    RoboticRotation_Home(this::RemoteTypes.RoboticRotation) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotation
end
struct RoboticRotation_get_Part <: Request{:SpaceCenter, :RoboticRotation_get_Part, RemoteTypes.Part}
    RoboticRotation_get_Part(this::RemoteTypes.RoboticRotation) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotation
end
struct RoboticRotation_get_TargetPosition <: Request{:SpaceCenter, :RoboticRotation_get_TargetPosition, Float32}
    RoboticRotation_get_TargetPosition(this::RemoteTypes.RoboticRotation) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotation
end
struct RoboticRotation_set_TargetPosition <: Request{:SpaceCenter, :RoboticRotation_set_TargetPosition, Nothing}
    RoboticRotation_set_TargetPosition(this::RemoteTypes.RoboticRotation, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotation
    value::Float32
end
struct RoboticRotation_get_CurrentPosition <: Request{:SpaceCenter, :RoboticRotation_get_CurrentPosition, Float32}
    RoboticRotation_get_CurrentPosition(this::RemoteTypes.RoboticRotation) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotation
end
struct RoboticRotation_get_Rate <: Request{:SpaceCenter, :RoboticRotation_get_Rate, Float32}
    RoboticRotation_get_Rate(this::RemoteTypes.RoboticRotation) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotation
end
struct RoboticRotation_set_Rate <: Request{:SpaceCenter, :RoboticRotation_set_Rate, Nothing}
    RoboticRotation_set_Rate(this::RemoteTypes.RoboticRotation, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotation
    value::Float32
end
struct RoboticRotation_get_Damping <: Request{:SpaceCenter, :RoboticRotation_get_Damping, Float32}
    RoboticRotation_get_Damping(this::RemoteTypes.RoboticRotation) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotation
end
struct RoboticRotation_set_Damping <: Request{:SpaceCenter, :RoboticRotation_set_Damping, Nothing}
    RoboticRotation_set_Damping(this::RemoteTypes.RoboticRotation, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotation
    value::Float32
end
struct RoboticRotation_get_RotationLocked <: Request{:SpaceCenter, :RoboticRotation_get_RotationLocked, Bool}
    RoboticRotation_get_RotationLocked(this::RemoteTypes.RoboticRotation) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotation
end
struct RoboticRotation_set_RotationLocked <: Request{:SpaceCenter, :RoboticRotation_set_RotationLocked, Nothing}
    RoboticRotation_set_RotationLocked(this::RemoteTypes.RoboticRotation, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotation
    value::Bool
end
struct RoboticRotation_get_MotorEngaged <: Request{:SpaceCenter, :RoboticRotation_get_MotorEngaged, Bool}
    RoboticRotation_get_MotorEngaged(this::RemoteTypes.RoboticRotation) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotation
end
struct RoboticRotation_set_MotorEngaged <: Request{:SpaceCenter, :RoboticRotation_set_MotorEngaged, Nothing}
    RoboticRotation_set_MotorEngaged(this::RemoteTypes.RoboticRotation, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotation
    value::Bool
end
struct RoboticRotor_get_Part <: Request{:SpaceCenter, :RoboticRotor_get_Part, RemoteTypes.Part}
    RoboticRotor_get_Part(this::RemoteTypes.RoboticRotor) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotor
end
struct RoboticRotor_get_TargetRPM <: Request{:SpaceCenter, :RoboticRotor_get_TargetRPM, Float32}
    RoboticRotor_get_TargetRPM(this::RemoteTypes.RoboticRotor) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotor
end
struct RoboticRotor_set_TargetRPM <: Request{:SpaceCenter, :RoboticRotor_set_TargetRPM, Nothing}
    RoboticRotor_set_TargetRPM(this::RemoteTypes.RoboticRotor, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotor
    value::Float32
end
struct RoboticRotor_get_CurrentRPM <: Request{:SpaceCenter, :RoboticRotor_get_CurrentRPM, Float32}
    RoboticRotor_get_CurrentRPM(this::RemoteTypes.RoboticRotor) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotor
end
struct RoboticRotor_get_Inverted <: Request{:SpaceCenter, :RoboticRotor_get_Inverted, Bool}
    RoboticRotor_get_Inverted(this::RemoteTypes.RoboticRotor) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotor
end
struct RoboticRotor_set_Inverted <: Request{:SpaceCenter, :RoboticRotor_set_Inverted, Nothing}
    RoboticRotor_set_Inverted(this::RemoteTypes.RoboticRotor, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotor
    value::Bool
end
struct RoboticRotor_get_RotationLocked <: Request{:SpaceCenter, :RoboticRotor_get_RotationLocked, Bool}
    RoboticRotor_get_RotationLocked(this::RemoteTypes.RoboticRotor) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotor
end
struct RoboticRotor_set_RotationLocked <: Request{:SpaceCenter, :RoboticRotor_set_RotationLocked, Nothing}
    RoboticRotor_set_RotationLocked(this::RemoteTypes.RoboticRotor, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotor
    value::Bool
end
struct RoboticRotor_get_MotorEngaged <: Request{:SpaceCenter, :RoboticRotor_get_MotorEngaged, Bool}
    RoboticRotor_get_MotorEngaged(this::RemoteTypes.RoboticRotor) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotor
end
struct RoboticRotor_set_MotorEngaged <: Request{:SpaceCenter, :RoboticRotor_set_MotorEngaged, Nothing}
    RoboticRotor_set_MotorEngaged(this::RemoteTypes.RoboticRotor, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotor
    value::Bool
end
struct RoboticRotor_get_TorqueLimit <: Request{:SpaceCenter, :RoboticRotor_get_TorqueLimit, Float32}
    RoboticRotor_get_TorqueLimit(this::RemoteTypes.RoboticRotor) = begin
            new(this)
        end
    this::RemoteTypes.RoboticRotor
end
struct RoboticRotor_set_TorqueLimit <: Request{:SpaceCenter, :RoboticRotor_set_TorqueLimit, Nothing}
    RoboticRotor_set_TorqueLimit(this::RemoteTypes.RoboticRotor, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.RoboticRotor
    value::Float32
end
struct ScienceData_get_DataAmount <: Request{:SpaceCenter, :ScienceData_get_DataAmount, Float32}
    ScienceData_get_DataAmount(this::RemoteTypes.ScienceData) = begin
            new(this)
        end
    this::RemoteTypes.ScienceData
end
struct ScienceData_get_ScienceValue <: Request{:SpaceCenter, :ScienceData_get_ScienceValue, Float32}
    ScienceData_get_ScienceValue(this::RemoteTypes.ScienceData) = begin
            new(this)
        end
    this::RemoteTypes.ScienceData
end
struct ScienceData_get_TransmitValue <: Request{:SpaceCenter, :ScienceData_get_TransmitValue, Float32}
    ScienceData_get_TransmitValue(this::RemoteTypes.ScienceData) = begin
            new(this)
        end
    this::RemoteTypes.ScienceData
end
struct ScienceSubject_get_Science <: Request{:SpaceCenter, :ScienceSubject_get_Science, Float32}
    ScienceSubject_get_Science(this::RemoteTypes.ScienceSubject) = begin
            new(this)
        end
    this::RemoteTypes.ScienceSubject
end
struct ScienceSubject_get_ScienceCap <: Request{:SpaceCenter, :ScienceSubject_get_ScienceCap, Float32}
    ScienceSubject_get_ScienceCap(this::RemoteTypes.ScienceSubject) = begin
            new(this)
        end
    this::RemoteTypes.ScienceSubject
end
struct ScienceSubject_get_IsComplete <: Request{:SpaceCenter, :ScienceSubject_get_IsComplete, Bool}
    ScienceSubject_get_IsComplete(this::RemoteTypes.ScienceSubject) = begin
            new(this)
        end
    this::RemoteTypes.ScienceSubject
end
struct ScienceSubject_get_DataScale <: Request{:SpaceCenter, :ScienceSubject_get_DataScale, Float32}
    ScienceSubject_get_DataScale(this::RemoteTypes.ScienceSubject) = begin
            new(this)
        end
    this::RemoteTypes.ScienceSubject
end
struct ScienceSubject_get_ScientificValue <: Request{:SpaceCenter, :ScienceSubject_get_ScientificValue, Float32}
    ScienceSubject_get_ScientificValue(this::RemoteTypes.ScienceSubject) = begin
            new(this)
        end
    this::RemoteTypes.ScienceSubject
end
struct ScienceSubject_get_SubjectValue <: Request{:SpaceCenter, :ScienceSubject_get_SubjectValue, Float32}
    ScienceSubject_get_SubjectValue(this::RemoteTypes.ScienceSubject) = begin
            new(this)
        end
    this::RemoteTypes.ScienceSubject
end
struct ScienceSubject_get_Title <: Request{:SpaceCenter, :ScienceSubject_get_Title, String}
    ScienceSubject_get_Title(this::RemoteTypes.ScienceSubject) = begin
            new(this)
        end
    this::RemoteTypes.ScienceSubject
end
struct Sensor_get_Part <: Request{:SpaceCenter, :Sensor_get_Part, RemoteTypes.Part}
    Sensor_get_Part(this::RemoteTypes.Sensor) = begin
            new(this)
        end
    this::RemoteTypes.Sensor
end
struct Sensor_get_Active <: Request{:SpaceCenter, :Sensor_get_Active, Bool}
    Sensor_get_Active(this::RemoteTypes.Sensor) = begin
            new(this)
        end
    this::RemoteTypes.Sensor
end
struct Sensor_set_Active <: Request{:SpaceCenter, :Sensor_set_Active, Nothing}
    Sensor_set_Active(this::RemoteTypes.Sensor, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Sensor
    value::Bool
end
struct Sensor_get_Value <: Request{:SpaceCenter, :Sensor_get_Value, String}
    Sensor_get_Value(this::RemoteTypes.Sensor) = begin
            new(this)
        end
    this::RemoteTypes.Sensor
end
struct SolarPanel_get_Part <: Request{:SpaceCenter, :SolarPanel_get_Part, RemoteTypes.Part}
    SolarPanel_get_Part(this::RemoteTypes.SolarPanel) = begin
            new(this)
        end
    this::RemoteTypes.SolarPanel
end
struct SolarPanel_get_Deployable <: Request{:SpaceCenter, :SolarPanel_get_Deployable, Bool}
    SolarPanel_get_Deployable(this::RemoteTypes.SolarPanel) = begin
            new(this)
        end
    this::RemoteTypes.SolarPanel
end
struct SolarPanel_get_Deployed <: Request{:SpaceCenter, :SolarPanel_get_Deployed, Bool}
    SolarPanel_get_Deployed(this::RemoteTypes.SolarPanel) = begin
            new(this)
        end
    this::RemoteTypes.SolarPanel
end
struct SolarPanel_set_Deployed <: Request{:SpaceCenter, :SolarPanel_set_Deployed, Nothing}
    SolarPanel_set_Deployed(this::RemoteTypes.SolarPanel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.SolarPanel
    value::Bool
end
struct SolarPanel_get_State <: Request{:SpaceCenter, :SolarPanel_get_State, ESolarPanelState}
    SolarPanel_get_State(this::RemoteTypes.SolarPanel) = begin
            new(this)
        end
    this::RemoteTypes.SolarPanel
end
struct SolarPanel_get_EnergyFlow <: Request{:SpaceCenter, :SolarPanel_get_EnergyFlow, Float32}
    SolarPanel_get_EnergyFlow(this::RemoteTypes.SolarPanel) = begin
            new(this)
        end
    this::RemoteTypes.SolarPanel
end
struct SolarPanel_get_SunExposure <: Request{:SpaceCenter, :SolarPanel_get_SunExposure, Float32}
    SolarPanel_get_SunExposure(this::RemoteTypes.SolarPanel) = begin
            new(this)
        end
    this::RemoteTypes.SolarPanel
end
struct Thruster_ThrustPosition <: Request{:SpaceCenter, :Thruster_ThrustPosition, begin
                Tuple{Float64, Float64, Float64}
            end}
    Thruster_ThrustPosition(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Thruster
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Thruster_ThrustDirection <: Request{:SpaceCenter, :Thruster_ThrustDirection, begin
                Tuple{Float64, Float64, Float64}
            end}
    Thruster_ThrustDirection(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Thruster
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Thruster_InitialThrustPosition <: Request{:SpaceCenter, :Thruster_InitialThrustPosition, begin
                Tuple{Float64, Float64, Float64}
            end}
    Thruster_InitialThrustPosition(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Thruster
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Thruster_InitialThrustDirection <: Request{:SpaceCenter, :Thruster_InitialThrustDirection, begin
                Tuple{Float64, Float64, Float64}
            end}
    Thruster_InitialThrustDirection(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Thruster
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Thruster_GimbalPosition <: Request{:SpaceCenter, :Thruster_GimbalPosition, begin
                Tuple{Float64, Float64, Float64}
            end}
    Thruster_GimbalPosition(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
            new(this, referenceFrame)
        end
    this::RemoteTypes.Thruster
    referenceFrame::RemoteTypes.ReferenceFrame
end
struct Thruster_get_Part <: Request{:SpaceCenter, :Thruster_get_Part, RemoteTypes.Part}
    Thruster_get_Part(this::RemoteTypes.Thruster) = begin
            new(this)
        end
    this::RemoteTypes.Thruster
end
struct Thruster_get_ThrustReferenceFrame <: Request{:SpaceCenter, :Thruster_get_ThrustReferenceFrame, RemoteTypes.ReferenceFrame}
    Thruster_get_ThrustReferenceFrame(this::RemoteTypes.Thruster) = begin
            new(this)
        end
    this::RemoteTypes.Thruster
end
struct Thruster_get_Gimballed <: Request{:SpaceCenter, :Thruster_get_Gimballed, Bool}
    Thruster_get_Gimballed(this::RemoteTypes.Thruster) = begin
            new(this)
        end
    this::RemoteTypes.Thruster
end
struct Thruster_get_GimbalAngle <: Request{:SpaceCenter, :Thruster_get_GimbalAngle, begin
                Tuple{Float64, Float64, Float64}
            end}
    Thruster_get_GimbalAngle(this::RemoteTypes.Thruster) = begin
            new(this)
        end
    this::RemoteTypes.Thruster
end
struct Wheel_get_Part <: Request{:SpaceCenter, :Wheel_get_Part, RemoteTypes.Part}
    Wheel_get_Part(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_State <: Request{:SpaceCenter, :Wheel_get_State, EWheelState}
    Wheel_get_State(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_Radius <: Request{:SpaceCenter, :Wheel_get_Radius, Float32}
    Wheel_get_Radius(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_Grounded <: Request{:SpaceCenter, :Wheel_get_Grounded, Bool}
    Wheel_get_Grounded(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_HasBrakes <: Request{:SpaceCenter, :Wheel_get_HasBrakes, Bool}
    Wheel_get_HasBrakes(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_Brakes <: Request{:SpaceCenter, :Wheel_get_Brakes, Float32}
    Wheel_get_Brakes(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_Brakes <: Request{:SpaceCenter, :Wheel_set_Brakes, Nothing}
    Wheel_set_Brakes(this::RemoteTypes.Wheel, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Float32
end
struct Wheel_get_AutoFrictionControl <: Request{:SpaceCenter, :Wheel_get_AutoFrictionControl, Bool}
    Wheel_get_AutoFrictionControl(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_AutoFrictionControl <: Request{:SpaceCenter, :Wheel_set_AutoFrictionControl, Nothing}
    Wheel_set_AutoFrictionControl(this::RemoteTypes.Wheel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Bool
end
struct Wheel_get_ManualFrictionControl <: Request{:SpaceCenter, :Wheel_get_ManualFrictionControl, Float32}
    Wheel_get_ManualFrictionControl(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_ManualFrictionControl <: Request{:SpaceCenter, :Wheel_set_ManualFrictionControl, Nothing}
    Wheel_set_ManualFrictionControl(this::RemoteTypes.Wheel, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Float32
end
struct Wheel_get_Deployable <: Request{:SpaceCenter, :Wheel_get_Deployable, Bool}
    Wheel_get_Deployable(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_Deployed <: Request{:SpaceCenter, :Wheel_get_Deployed, Bool}
    Wheel_get_Deployed(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_Deployed <: Request{:SpaceCenter, :Wheel_set_Deployed, Nothing}
    Wheel_set_Deployed(this::RemoteTypes.Wheel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Bool
end
struct Wheel_get_Powered <: Request{:SpaceCenter, :Wheel_get_Powered, Bool}
    Wheel_get_Powered(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_MotorEnabled <: Request{:SpaceCenter, :Wheel_get_MotorEnabled, Bool}
    Wheel_get_MotorEnabled(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_MotorEnabled <: Request{:SpaceCenter, :Wheel_set_MotorEnabled, Nothing}
    Wheel_set_MotorEnabled(this::RemoteTypes.Wheel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Bool
end
struct Wheel_get_MotorInverted <: Request{:SpaceCenter, :Wheel_get_MotorInverted, Bool}
    Wheel_get_MotorInverted(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_MotorInverted <: Request{:SpaceCenter, :Wheel_set_MotorInverted, Nothing}
    Wheel_set_MotorInverted(this::RemoteTypes.Wheel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Bool
end
struct Wheel_get_MotorState <: Request{:SpaceCenter, :Wheel_get_MotorState, EMotorState}
    Wheel_get_MotorState(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_MotorOutput <: Request{:SpaceCenter, :Wheel_get_MotorOutput, Float32}
    Wheel_get_MotorOutput(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_TractionControlEnabled <: Request{:SpaceCenter, :Wheel_get_TractionControlEnabled, Bool}
    Wheel_get_TractionControlEnabled(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_TractionControlEnabled <: Request{:SpaceCenter, :Wheel_set_TractionControlEnabled, Nothing}
    Wheel_set_TractionControlEnabled(this::RemoteTypes.Wheel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Bool
end
struct Wheel_get_TractionControl <: Request{:SpaceCenter, :Wheel_get_TractionControl, Float32}
    Wheel_get_TractionControl(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_TractionControl <: Request{:SpaceCenter, :Wheel_set_TractionControl, Nothing}
    Wheel_set_TractionControl(this::RemoteTypes.Wheel, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Float32
end
struct Wheel_get_DriveLimiter <: Request{:SpaceCenter, :Wheel_get_DriveLimiter, Float32}
    Wheel_get_DriveLimiter(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_DriveLimiter <: Request{:SpaceCenter, :Wheel_set_DriveLimiter, Nothing}
    Wheel_set_DriveLimiter(this::RemoteTypes.Wheel, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Float32
end
struct Wheel_get_Steerable <: Request{:SpaceCenter, :Wheel_get_Steerable, Bool}
    Wheel_get_Steerable(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_SteeringEnabled <: Request{:SpaceCenter, :Wheel_get_SteeringEnabled, Bool}
    Wheel_get_SteeringEnabled(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_SteeringEnabled <: Request{:SpaceCenter, :Wheel_set_SteeringEnabled, Nothing}
    Wheel_set_SteeringEnabled(this::RemoteTypes.Wheel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Bool
end
struct Wheel_get_SteeringInverted <: Request{:SpaceCenter, :Wheel_get_SteeringInverted, Bool}
    Wheel_get_SteeringInverted(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_SteeringInverted <: Request{:SpaceCenter, :Wheel_set_SteeringInverted, Nothing}
    Wheel_set_SteeringInverted(this::RemoteTypes.Wheel, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Bool
end
struct Wheel_get_SteeringAngleLimiter <: Request{:SpaceCenter, :Wheel_get_SteeringAngleLimiter, Float32}
    Wheel_get_SteeringAngleLimiter(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_SteeringAngleLimiter <: Request{:SpaceCenter, :Wheel_set_SteeringAngleLimiter, Nothing}
    Wheel_set_SteeringAngleLimiter(this::RemoteTypes.Wheel, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Float32
end
struct Wheel_get_SteeringAngleResponse <: Request{:SpaceCenter, :Wheel_get_SteeringAngleResponse, Float32}
    Wheel_get_SteeringAngleResponse(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_set_SteeringAngleResponse <: Request{:SpaceCenter, :Wheel_set_SteeringAngleResponse, Nothing}
    Wheel_set_SteeringAngleResponse(this::RemoteTypes.Wheel, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Wheel
    value::Float32
end
struct Wheel_get_HasSuspension <: Request{:SpaceCenter, :Wheel_get_HasSuspension, Bool}
    Wheel_get_HasSuspension(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_SuspensionSpringStrength <: Request{:SpaceCenter, :Wheel_get_SuspensionSpringStrength, Float32}
    Wheel_get_SuspensionSpringStrength(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_SuspensionDamperStrength <: Request{:SpaceCenter, :Wheel_get_SuspensionDamperStrength, Float32}
    Wheel_get_SuspensionDamperStrength(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_Broken <: Request{:SpaceCenter, :Wheel_get_Broken, Bool}
    Wheel_get_Broken(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_Repairable <: Request{:SpaceCenter, :Wheel_get_Repairable, Bool}
    Wheel_get_Repairable(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_Stress <: Request{:SpaceCenter, :Wheel_get_Stress, Float32}
    Wheel_get_Stress(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_StressTolerance <: Request{:SpaceCenter, :Wheel_get_StressTolerance, Float32}
    Wheel_get_StressTolerance(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_StressPercentage <: Request{:SpaceCenter, :Wheel_get_StressPercentage, Float32}
    Wheel_get_StressPercentage(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_Deflection <: Request{:SpaceCenter, :Wheel_get_Deflection, Float32}
    Wheel_get_Deflection(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
struct Wheel_get_Slip <: Request{:SpaceCenter, :Wheel_get_Slip, Float32}
    Wheel_get_Slip(this::RemoteTypes.Wheel) = begin
            new(this)
        end
    this::RemoteTypes.Wheel
end
export ClearTarget, LaunchableVessels, LaunchVessel, LaunchVesselFromVAB, LaunchVesselFromSPH, Save, Load, Quicksave, Quickload, CanRailsWarpAt, WarpTo, TransformPosition, TransformDirection, TransformRotation, TransformVelocity, RaycastDistance, RaycastPart, get_GameMode, get_Science, get_Funds, get_Reputation, get_ActiveVessel, set_ActiveVessel, get_Vessels, get_Bodies, get_TargetBody, set_TargetBody, get_TargetVessel, set_TargetVessel, get_TargetDockingPort, set_TargetDockingPort, get_WaypointManager, get_ContractManager, get_AlarmClock, get_Camera, get_UIVisible, set_UIVisible, get_Navball, set_Navball, get_UT, get_G, get_WarpMode, get_WarpRate, get_WarpFactor, get_RailsWarpFactor, set_RailsWarpFactor, get_PhysicsWarpFactor, set_PhysicsWarpFactor, get_MaximumRailsWarpFactor, get_FARAvailable, Alarm_get_Type, Alarm_get_Title, Alarm_get_Description, Alarm_get_UT, Alarm_get_TimeTill, Alarm_get_EventOffset, Alarm_get_Vessel, Alarm_get_ID, AlarmClock_MakeRawAlarm, AlarmClock_MakeRawAlarmVessel, AlarmClock_MakeApaAlarm, AlarmClock_MakePeaAlarm, AlarmClock_MakeManeuverAlarm, AlarmClock_MakeSOIAlarm, AlarmClock_GetAlarms, AutoPilot_Engage, AutoPilot_Disengage, AutoPilot_Wait, AutoPilot_TargetPitchAndHeading, AutoPilot_get_Error, AutoPilot_get_PitchError, AutoPilot_get_HeadingError, AutoPilot_get_RollError, AutoPilot_get_ReferenceFrame, AutoPilot_set_ReferenceFrame, AutoPilot_get_TargetPitch, AutoPilot_set_TargetPitch, AutoPilot_get_TargetHeading, AutoPilot_set_TargetHeading, AutoPilot_get_TargetRoll, AutoPilot_set_TargetRoll, AutoPilot_get_TargetDirection, AutoPilot_set_TargetDirection, AutoPilot_get_SAS, AutoPilot_set_SAS, AutoPilot_get_SASMode, AutoPilot_set_SASMode, AutoPilot_get_RollThreshold, AutoPilot_set_RollThreshold, AutoPilot_get_StoppingTime, AutoPilot_set_StoppingTime, AutoPilot_get_DecelerationTime, AutoPilot_set_DecelerationTime, AutoPilot_get_AttenuationAngle, AutoPilot_set_AttenuationAngle, AutoPilot_get_AutoTune, AutoPilot_set_AutoTune, AutoPilot_get_TimeToPeak, AutoPilot_set_TimeToPeak, AutoPilot_get_Overshoot, AutoPilot_set_Overshoot, AutoPilot_get_PitchPIDGains, AutoPilot_set_PitchPIDGains, AutoPilot_get_RollPIDGains, AutoPilot_set_RollPIDGains, AutoPilot_get_YawPIDGains, AutoPilot_set_YawPIDGains, Camera_get_Mode, Camera_set_Mode, Camera_get_Pitch, Camera_set_Pitch, Camera_get_Heading, Camera_set_Heading, Camera_get_Distance, Camera_set_Distance, Camera_get_MinPitch, Camera_get_MaxPitch, Camera_get_MinDistance, Camera_get_MaxDistance, Camera_get_DefaultDistance, Camera_get_FocussedBody, Camera_set_FocussedBody, Camera_get_FocussedVessel, Camera_set_FocussedVessel, Camera_get_FocussedNode, Camera_set_FocussedNode, CelestialBody_SurfaceHeight, CelestialBody_BedrockHeight, CelestialBody_MSLPosition, CelestialBody_SurfacePosition, CelestialBody_BedrockPosition, CelestialBody_PositionAtAltitude, CelestialBody_LatitudeAtPosition, CelestialBody_LongitudeAtPosition, CelestialBody_AltitudeAtPosition, CelestialBody_AtmosphericDensityAtPosition, CelestialBody_TemperatureAt, CelestialBody_DensityAt, CelestialBody_PressureAt, CelestialBody_BiomeAt, CelestialBody_Position, CelestialBody_Velocity, CelestialBody_Rotation, CelestialBody_Direction, CelestialBody_AngularVelocity, CelestialBody_get_Name, CelestialBody_get_Satellites, CelestialBody_get_Mass, CelestialBody_get_GravitationalParameter, CelestialBody_get_SurfaceGravity, CelestialBody_get_RotationalPeriod, CelestialBody_get_RotationalSpeed, CelestialBody_get_RotationAngle, CelestialBody_get_InitialRotation, CelestialBody_get_EquatorialRadius, CelestialBody_get_SphereOfInfluence, CelestialBody_get_Orbit, CelestialBody_get_HasAtmosphere, CelestialBody_get_AtmosphereDepth, CelestialBody_get_HasAtmosphericOxygen, CelestialBody_get_Biomes, CelestialBody_get_FlyingHighAltitudeThreshold, CelestialBody_get_SpaceHighAltitudeThreshold, CelestialBody_get_ReferenceFrame, CelestialBody_get_NonRotatingReferenceFrame, CelestialBody_get_OrbitalReferenceFrame, CommLink_get_Type, CommLink_get_SignalStrength, CommLink_get_Start, CommLink_get_End, CommNode_get_Name, CommNode_get_IsHome, CommNode_get_IsControlPoint, CommNode_get_IsVessel, CommNode_get_Vessel, Comms_get_CanCommunicate, Comms_get_CanTransmitScience, Comms_get_SignalStrength, Comms_get_SignalDelay, Comms_get_Power, Comms_get_ControlPath, Contract_Cancel, Contract_Accept, Contract_Decline, Contract_get_Type, Contract_get_Title, Contract_get_Description, Contract_get_Notes, Contract_get_Synopsis, Contract_get_Keywords, Contract_get_State, Contract_get_Active, Contract_get_Failed, Contract_get_Seen, Contract_get_Read, Contract_get_CanBeCanceled, Contract_get_CanBeDeclined, Contract_get_CanBeFailed, Contract_get_FundsAdvance, Contract_get_FundsCompletion, Contract_get_FundsFailure, Contract_get_ReputationCompletion, Contract_get_ReputationFailure, Contract_get_ScienceCompletion, Contract_get_Parameters, ContractManager_get_Types, ContractManager_get_AllContracts, ContractManager_get_ActiveContracts, ContractManager_get_OfferedContracts, ContractManager_get_CompletedContracts, ContractManager_get_FailedContracts, ContractParameter_get_Title, ContractParameter_get_Notes, ContractParameter_get_Children, ContractParameter_get_Completed, ContractParameter_get_Failed, ContractParameter_get_Optional, ContractParameter_get_FundsCompletion, ContractParameter_get_FundsFailure, ContractParameter_get_ReputationCompletion, ContractParameter_get_ReputationFailure, ContractParameter_get_ScienceCompletion, Control_ActivateNextStage, Control_GetActionGroup, Control_SetActionGroup, Control_ToggleActionGroup, Control_AddNode, Control_RemoveNodes, Control_get_State, Control_get_Source, Control_get_SAS, Control_set_SAS, Control_get_SASMode, Control_set_SASMode, Control_get_SpeedMode, Control_set_SpeedMode, Control_get_RCS, Control_set_RCS, Control_get_ReactionWheels, Control_set_ReactionWheels, Control_get_Gear, Control_set_Gear, Control_get_Legs, Control_set_Legs, Control_get_Wheels, Control_set_Wheels, Control_get_Lights, Control_set_Lights, Control_get_Brakes, Control_set_Brakes, Control_get_Antennas, Control_set_Antennas, Control_get_CargoBays, Control_set_CargoBays, Control_get_Intakes, Control_set_Intakes, Control_get_Parachutes, Control_set_Parachutes, Control_get_Radiators, Control_set_Radiators, Control_get_ResourceHarvesters, Control_set_ResourceHarvesters, Control_get_ResourceHarvestersActive, Control_set_ResourceHarvestersActive, Control_get_SolarPanels, Control_set_SolarPanels, Control_get_Abort, Control_set_Abort, Control_get_Throttle, Control_set_Throttle, Control_get_InputMode, Control_set_InputMode, Control_get_Pitch, Control_set_Pitch, Control_get_Yaw, Control_set_Yaw, Control_get_Roll, Control_set_Roll, Control_get_Forward, Control_set_Forward, Control_get_Up, Control_set_Up, Control_get_Right, Control_set_Right, Control_get_WheelThrottle, Control_set_WheelThrottle, Control_get_WheelSteering, Control_set_WheelSteering, Control_get_CurrentStage, Control_get_StageLock, Control_set_StageLock, Control_get_Nodes, CrewMember_get_Name, CrewMember_set_Name, CrewMember_get_Type, CrewMember_get_OnMission, CrewMember_get_Courage, CrewMember_set_Courage, CrewMember_get_Stupidity, CrewMember_set_Stupidity, CrewMember_get_Experience, CrewMember_set_Experience, CrewMember_get_Badass, CrewMember_set_Badass, CrewMember_get_Veteran, CrewMember_set_Veteran, Flight_SimulateAerodynamicForceAt, Flight_get_GForce, Flight_get_MeanAltitude, Flight_get_SurfaceAltitude, Flight_get_BedrockAltitude, Flight_get_Elevation, Flight_get_Latitude, Flight_get_Longitude, Flight_get_Velocity, Flight_get_Speed, Flight_get_HorizontalSpeed, Flight_get_VerticalSpeed, Flight_get_CenterOfMass, Flight_get_Rotation, Flight_get_Direction, Flight_get_Pitch, Flight_get_Heading, Flight_get_Roll, Flight_get_Prograde, Flight_get_Retrograde, Flight_get_Normal, Flight_get_AntiNormal, Flight_get_Radial, Flight_get_AntiRadial, Flight_get_AtmosphereDensity, Flight_get_DynamicPressure, Flight_get_StaticPressureAtMSL, Flight_get_StaticPressure, Flight_get_AerodynamicForce, Flight_get_Lift, Flight_get_Drag, Flight_get_SpeedOfSound, Flight_get_Mach, Flight_get_ReynoldsNumber, Flight_get_TrueAirSpeed, Flight_get_EquivalentAirSpeed, Flight_get_TerminalVelocity, Flight_get_AngleOfAttack, Flight_get_SideslipAngle, Flight_get_TotalAirTemperature, Flight_get_StaticAirTemperature, Flight_get_StallFraction, Flight_get_DragCoefficient, Flight_get_LiftCoefficient, Flight_get_BallisticCoefficient, Flight_get_ThrustSpecificFuelConsumption, Node_BurnVector, Node_RemainingBurnVector, Node_Remove, Node_Position, Node_Direction, Node_get_Prograde, Node_set_Prograde, Node_get_Normal, Node_set_Normal, Node_get_Radial, Node_set_Radial, Node_get_DeltaV, Node_set_DeltaV, Node_get_RemainingDeltaV, Node_get_UT, Node_set_UT, Node_get_TimeTo, Node_get_Orbit, Node_get_ReferenceFrame, Node_get_OrbitalReferenceFrame, Orbit_static_ReferencePlaneNormal, Orbit_static_ReferencePlaneDirection, Orbit_MeanAnomalyAtUT, Orbit_RadiusAtTrueAnomaly, Orbit_TrueAnomalyAtRadius, Orbit_TrueAnomalyAtUT, Orbit_UTAtTrueAnomaly, Orbit_EccentricAnomalyAtUT, Orbit_OrbitalSpeedAt, Orbit_RadiusAt, Orbit_PositionAt, Orbit_TimeOfClosestApproach, Orbit_DistanceAtClosestApproach, Orbit_ListClosestApproaches, Orbit_TrueAnomalyAtAN, Orbit_TrueAnomalyAtDN, Orbit_RelativeInclination, Orbit_get_Body, Orbit_get_Apoapsis, Orbit_get_Periapsis, Orbit_get_ApoapsisAltitude, Orbit_get_PeriapsisAltitude, Orbit_get_SemiMajorAxis, Orbit_get_SemiMinorAxis, Orbit_get_Radius, Orbit_get_Speed, Orbit_get_Period, Orbit_get_TimeToApoapsis, Orbit_get_TimeToPeriapsis, Orbit_get_Eccentricity, Orbit_get_Inclination, Orbit_get_LongitudeOfAscendingNode, Orbit_get_ArgumentOfPeriapsis, Orbit_get_MeanAnomalyAtEpoch, Orbit_get_Epoch, Orbit_get_MeanAnomaly, Orbit_get_EccentricAnomaly, Orbit_get_TrueAnomaly, Orbit_get_NextOrbit, Orbit_get_TimeToSOIChange, Orbit_get_OrbitalSpeed, ReferenceFrame_static_CreateRelative, ReferenceFrame_static_CreateHybrid, Resource_get_Name, Resource_get_Part, Resource_get_Max, Resource_get_Amount, Resource_get_Density, Resource_get_FlowMode, Resource_get_Enabled, Resource_set_Enabled, ResourceTransfer_static_Start, ResourceTransfer_get_Complete, ResourceTransfer_get_Amount, Resources_WithResource, Resources_HasResource, Resources_Max, Resources_Amount, Resources_static_Density, Resources_static_FlowMode, Resources_get_All, Resources_get_Names, Resources_get_Enabled, Resources_set_Enabled, Vessel_Recover, Vessel_Flight, Vessel_ResourcesInDecoupleStage, Vessel_Position, Vessel_BoundingBox, Vessel_Velocity, Vessel_Rotation, Vessel_Direction, Vessel_AngularVelocity, Vessel_get_Name, Vessel_set_Name, Vessel_get_Type, Vessel_set_Type, Vessel_get_Situation, Vessel_get_Recoverable, Vessel_get_MET, Vessel_get_Biome, Vessel_get_Orbit, Vessel_get_Control, Vessel_get_Comms, Vessel_get_AutoPilot, Vessel_get_CrewCapacity, Vessel_get_CrewCount, Vessel_get_Crew, Vessel_get_Resources, Vessel_get_Parts, Vessel_get_Mass, Vessel_get_DryMass, Vessel_get_Thrust, Vessel_get_AvailableThrust, Vessel_get_MaxThrust, Vessel_get_MaxVacuumThrust, Vessel_get_SpecificImpulse, Vessel_get_VacuumSpecificImpulse, Vessel_get_KerbinSeaLevelSpecificImpulse, Vessel_get_MomentOfInertia, Vessel_get_InertiaTensor, Vessel_get_AvailableTorque, Vessel_get_AvailableReactionWheelTorque, Vessel_get_AvailableRCSTorque, Vessel_get_AvailableEngineTorque, Vessel_get_AvailableControlSurfaceTorque, Vessel_get_AvailableOtherTorque, Vessel_get_ReferenceFrame, Vessel_get_OrbitalReferenceFrame, Vessel_get_SurfaceReferenceFrame, Vessel_get_SurfaceVelocityReferenceFrame, Waypoint_Remove, Waypoint_get_Body, Waypoint_set_Body, Waypoint_get_Name, Waypoint_set_Name, Waypoint_get_Color, Waypoint_set_Color, Waypoint_get_Icon, Waypoint_set_Icon, Waypoint_get_Latitude, Waypoint_set_Latitude, Waypoint_get_Longitude, Waypoint_set_Longitude, Waypoint_get_MeanAltitude, Waypoint_set_MeanAltitude, Waypoint_get_SurfaceAltitude, Waypoint_set_SurfaceAltitude, Waypoint_get_BedrockAltitude, Waypoint_set_BedrockAltitude, Waypoint_get_NearSurface, Waypoint_get_Grounded, Waypoint_get_Index, Waypoint_get_Clustered, Waypoint_get_HasContract, Waypoint_get_Contract, WaypointManager_AddWaypoint, WaypointManager_AddWaypointAtAltitude, WaypointManager_get_Waypoints, WaypointManager_get_Icons, WaypointManager_get_Colors, Antenna_Transmit, Antenna_Cancel, Antenna_get_Part, Antenna_get_State, Antenna_get_Deployable, Antenna_get_Deployed, Antenna_set_Deployed, Antenna_get_CanTransmit, Antenna_get_AllowPartial, Antenna_set_AllowPartial, Antenna_get_Power, Antenna_get_Combinable, Antenna_get_CombinableExponent, Antenna_get_PacketInterval, Antenna_get_PacketSize, Antenna_get_PacketResourceCost, CargoBay_get_Part, CargoBay_get_State, CargoBay_get_Open, CargoBay_set_Open, ControlSurface_get_Part, ControlSurface_get_PitchEnabled, ControlSurface_set_PitchEnabled, ControlSurface_get_YawEnabled, ControlSurface_set_YawEnabled, ControlSurface_get_RollEnabled, ControlSurface_set_RollEnabled, ControlSurface_get_AuthorityLimiter, ControlSurface_set_AuthorityLimiter, ControlSurface_get_Inverted, ControlSurface_set_Inverted, ControlSurface_get_Deployed, ControlSurface_set_Deployed, ControlSurface_get_SurfaceArea, ControlSurface_get_AvailableTorque, Decoupler_Decouple, Decoupler_get_Part, Decoupler_get_Decoupled, Decoupler_get_Staged, Decoupler_get_Impulse, DockingPort_Undock, DockingPort_Position, DockingPort_Direction, DockingPort_Rotation, DockingPort_get_Part, DockingPort_get_State, DockingPort_get_DockedPart, DockingPort_get_ReengageDistance, DockingPort_get_HasShield, DockingPort_get_Shielded, DockingPort_set_Shielded, DockingPort_get_CanRotate, DockingPort_get_MaximumRotation, DockingPort_get_MinimumRotation, DockingPort_get_RotationTarget, DockingPort_set_RotationTarget, DockingPort_get_RotationLocked, DockingPort_set_RotationLocked, DockingPort_get_ReferenceFrame, Engine_ToggleMode, Engine_get_Part, Engine_get_Active, Engine_set_Active, Engine_get_Thrust, Engine_get_AvailableThrust, Engine_get_MaxThrust, Engine_get_MaxVacuumThrust, Engine_get_ThrustLimit, Engine_set_ThrustLimit, Engine_get_Thrusters, Engine_get_SpecificImpulse, Engine_get_VacuumSpecificImpulse, Engine_get_KerbinSeaLevelSpecificImpulse, Engine_get_PropellantNames, Engine_get_Propellants, Engine_get_PropellantRatios, Engine_get_HasFuel, Engine_get_Throttle, Engine_get_ThrottleLocked, Engine_get_CanRestart, Engine_get_CanShutdown, Engine_get_HasModes, Engine_get_Mode, Engine_set_Mode, Engine_get_Modes, Engine_get_AutoModeSwitch, Engine_set_AutoModeSwitch, Engine_get_Gimballed, Engine_get_GimbalRange, Engine_get_GimbalLocked, Engine_set_GimbalLocked, Engine_get_GimbalLimit, Engine_set_GimbalLimit, Engine_get_AvailableTorque, Experiment_Run, Experiment_Transmit, Experiment_Dump, Experiment_Reset, Experiment_get_Part, Experiment_get_Name, Experiment_get_Title, Experiment_get_Inoperable, Experiment_get_Deployed, Experiment_get_Rerunnable, Experiment_get_HasData, Experiment_get_Data, Experiment_get_Available, Experiment_get_Biome, Experiment_get_ScienceSubject, Fairing_Jettison, Fairing_get_Part, Fairing_get_Jettisoned, Force_Remove, Force_get_Part, Force_get_ForceVector, Force_set_ForceVector, Force_get_Position, Force_set_Position, Force_get_ReferenceFrame, Force_set_ReferenceFrame, Intake_get_Part, Intake_get_Open, Intake_set_Open, Intake_get_Speed, Intake_get_Flow, Intake_get_Area, LaunchClamp_Release, LaunchClamp_get_Part, Leg_get_Part, Leg_get_State, Leg_get_Deployable, Leg_get_Deployed, Leg_set_Deployed, Leg_get_IsGrounded, Light_BlinkStart, Light_BlinkStop, Light_get_Part, Light_get_Active, Light_set_Active, Light_get_Color, Light_set_Color, Light_get_BlinkRate, Light_set_BlinkRate, Light_get_PowerUsage, Module_HasField, Module_GetField, Module_SetFieldInt, Module_SetFieldFloat, Module_SetFieldString, Module_ResetField, Module_HasEvent, Module_TriggerEvent, Module_HasAction, Module_SetAction, Module_get_Name, Module_get_Part, Module_get_Fields, Module_get_Events, Module_get_Actions, Parachute_Deploy, Parachute_Arm, Parachute_get_Part, Parachute_get_Deployed, Parachute_get_Armed, Parachute_get_State, Parachute_get_DeployAltitude, Parachute_set_DeployAltitude, Parachute_get_DeployMinPressure, Parachute_set_DeployMinPressure, Part_Position, Part_CenterOfMass, Part_BoundingBox, Part_Direction, Part_Velocity, Part_Rotation, Part_AddForce, Part_InstantaneousForce, Part_get_Name, Part_get_Title, Part_get_Tag, Part_set_Tag, Part_get_Highlighted, Part_set_Highlighted, Part_get_HighlightColor, Part_set_HighlightColor, Part_get_Cost, Part_get_Vessel, Part_get_Parent, Part_get_Children, Part_get_AxiallyAttached, Part_get_RadiallyAttached, Part_get_Stage, Part_get_DecoupleStage, Part_get_Massless, Part_get_Mass, Part_get_DryMass, Part_get_Shielded, Part_get_DynamicPressure, Part_get_ImpactTolerance, Part_get_Temperature, Part_get_SkinTemperature, Part_get_MaxTemperature, Part_get_MaxSkinTemperature, Part_get_ThermalMass, Part_get_ThermalSkinMass, Part_get_ThermalResourceMass, Part_get_ThermalInternalFlux, Part_get_ThermalConductionFlux, Part_get_ThermalConvectionFlux, Part_get_ThermalRadiationFlux, Part_get_ThermalSkinToInternalFlux, Part_get_Resources, Part_get_Crossfeed, Part_get_IsFuelLine, Part_get_FuelLinesFrom, Part_get_FuelLinesTo, Part_get_Modules, Part_get_Antenna, Part_get_CargoBay, Part_get_ControlSurface, Part_get_Decoupler, Part_get_DockingPort, Part_get_ResourceDrain, Part_get_Engine, Part_get_Experiment, Part_get_Experiments, Part_get_Fairing, Part_get_Intake, Part_get_Leg, Part_get_LaunchClamp, Part_get_Light, Part_get_Parachute, Part_get_Radiator, Part_get_RCS, Part_get_ReactionWheel, Part_get_ResourceConverter, Part_get_ResourceHarvester, Part_get_Sensor, Part_get_SolarPanel, Part_get_Wheel, Part_get_RoboticHinge, Part_get_RoboticPiston, Part_get_RoboticRotation, Part_get_RoboticRotor, Part_get_MomentOfInertia, Part_get_InertiaTensor, Part_get_ReferenceFrame, Part_get_CenterOfMassReferenceFrame, Part_get_AutoStrutMode, Part_set_AutoStrutMode, Parts_WithName, Parts_WithTitle, Parts_WithTag, Parts_WithModule, Parts_InStage, Parts_InDecoupleStage, Parts_ModulesWithName, Parts_get_All, Parts_get_Root, Parts_get_Controlling, Parts_set_Controlling, Parts_get_Antennas, Parts_get_ControlSurfaces, Parts_get_CargoBays, Parts_get_Decouplers, Parts_get_DockingPorts, Parts_get_Engines, Parts_get_Experiments, Parts_get_Fairings, Parts_get_Intakes, Parts_get_Legs, Parts_get_LaunchClamps, Parts_get_Lights, Parts_get_Parachutes, Parts_get_Radiators, Parts_get_RCS, Parts_get_ReactionWheels, Parts_get_ResourceConverters, Parts_get_ResourceHarvesters, Parts_get_Sensors, Parts_get_SolarPanels, Parts_get_Wheels, Parts_get_RoboticHinges, Parts_get_RoboticPistons, Parts_get_RoboticRotations, Parts_get_RoboticRotors, Parts_get_ResourceDrains, Propellant_get_Name, Propellant_get_CurrentAmount, Propellant_get_CurrentRequirement, Propellant_get_TotalResourceAvailable, Propellant_get_TotalResourceCapacity, Propellant_get_IgnoreForIsp, Propellant_get_IgnoreForThrustCurve, Propellant_get_DrawStackGauge, Propellant_get_IsDeprived, Propellant_get_Ratio, RCS_get_Part, RCS_get_Active, RCS_get_Enabled, RCS_set_Enabled, RCS_get_PitchEnabled, RCS_set_PitchEnabled, RCS_get_YawEnabled, RCS_set_YawEnabled, RCS_get_RollEnabled, RCS_set_RollEnabled, RCS_get_ForwardEnabled, RCS_set_ForwardEnabled, RCS_get_UpEnabled, RCS_set_UpEnabled, RCS_get_RightEnabled, RCS_set_RightEnabled, RCS_get_AvailableTorque, RCS_get_AvailableThrust, RCS_get_MaxThrust, RCS_get_MaxVacuumThrust, RCS_get_ThrustLimit, RCS_set_ThrustLimit, RCS_get_Thrusters, RCS_get_SpecificImpulse, RCS_get_VacuumSpecificImpulse, RCS_get_KerbinSeaLevelSpecificImpulse, RCS_get_Propellants, RCS_get_PropellantRatios, RCS_get_HasFuel, Radiator_get_Part, Radiator_get_Deployable, Radiator_get_Deployed, Radiator_set_Deployed, Radiator_get_State, ReactionWheel_get_Part, ReactionWheel_get_Active, ReactionWheel_set_Active, ReactionWheel_get_Broken, ReactionWheel_get_AvailableTorque, ReactionWheel_get_MaxTorque, ResourceConverter_Active, ResourceConverter_Name, ResourceConverter_Start, ResourceConverter_Stop, ResourceConverter_State, ResourceConverter_StatusInfo, ResourceConverter_Inputs, ResourceConverter_Outputs, ResourceConverter_get_Part, ResourceConverter_get_Count, ResourceConverter_get_ThermalEfficiency, ResourceConverter_get_CoreTemperature, ResourceConverter_get_OptimumCoreTemperature, ResourceDrain_SetResourceDrain, ResourceDrain_CheckResourceDrain, ResourceDrain_Start, ResourceDrain_Stop, ResourceDrain_get_Part, ResourceDrain_get_AvailableResources, ResourceDrain_get_DrainMode, ResourceDrain_set_DrainMode, ResourceDrain_get_MaxDrainRate, ResourceDrain_get_MinDrainRate, ResourceDrain_get_DrainRate, ResourceDrain_set_DrainRate, ResourceHarvester_get_Part, ResourceHarvester_get_State, ResourceHarvester_get_Deployed, ResourceHarvester_set_Deployed, ResourceHarvester_get_Active, ResourceHarvester_set_Active, ResourceHarvester_get_ExtractionRate, ResourceHarvester_get_ThermalEfficiency, ResourceHarvester_get_CoreTemperature, ResourceHarvester_get_OptimumCoreTemperature, RoboticHinge_Home, RoboticHinge_get_Part, RoboticHinge_get_TargetAngle, RoboticHinge_set_TargetAngle, RoboticHinge_get_CurrentAngle, RoboticHinge_get_Rate, RoboticHinge_set_Rate, RoboticHinge_get_Damping, RoboticHinge_set_Damping, RoboticHinge_get_HingeLocked, RoboticHinge_set_HingeLocked, RoboticHinge_get_MotorEngaged, RoboticHinge_set_MotorEngaged, RoboticPiston_Home, RoboticPiston_get_Part, RoboticPiston_get_TargetPosition, RoboticPiston_set_TargetPosition, RoboticPiston_get_CurrentPosition, RoboticPiston_get_Rate, RoboticPiston_set_Rate, RoboticPiston_get_Damping, RoboticPiston_set_Damping, RoboticPiston_get_PistonLocked, RoboticPiston_set_PistonLocked, RoboticPiston_get_MotorEngaged, RoboticPiston_set_MotorEngaged, RoboticRotation_Home, RoboticRotation_get_Part, RoboticRotation_get_TargetPosition, RoboticRotation_set_TargetPosition, RoboticRotation_get_CurrentPosition, RoboticRotation_get_Rate, RoboticRotation_set_Rate, RoboticRotation_get_Damping, RoboticRotation_set_Damping, RoboticRotation_get_RotationLocked, RoboticRotation_set_RotationLocked, RoboticRotation_get_MotorEngaged, RoboticRotation_set_MotorEngaged, RoboticRotor_get_Part, RoboticRotor_get_TargetRPM, RoboticRotor_set_TargetRPM, RoboticRotor_get_CurrentRPM, RoboticRotor_get_Inverted, RoboticRotor_set_Inverted, RoboticRotor_get_RotationLocked, RoboticRotor_set_RotationLocked, RoboticRotor_get_MotorEngaged, RoboticRotor_set_MotorEngaged, RoboticRotor_get_TorqueLimit, RoboticRotor_set_TorqueLimit, ScienceData_get_DataAmount, ScienceData_get_ScienceValue, ScienceData_get_TransmitValue, ScienceSubject_get_Science, ScienceSubject_get_ScienceCap, ScienceSubject_get_IsComplete, ScienceSubject_get_DataScale, ScienceSubject_get_ScientificValue, ScienceSubject_get_SubjectValue, ScienceSubject_get_Title, Sensor_get_Part, Sensor_get_Active, Sensor_set_Active, Sensor_get_Value, SolarPanel_get_Part, SolarPanel_get_Deployable, SolarPanel_get_Deployed, SolarPanel_set_Deployed, SolarPanel_get_State, SolarPanel_get_EnergyFlow, SolarPanel_get_SunExposure, Thruster_ThrustPosition, Thruster_ThrustDirection, Thruster_InitialThrustPosition, Thruster_InitialThrustDirection, Thruster_GimbalPosition, Thruster_get_Part, Thruster_get_ThrustReferenceFrame, Thruster_get_Gimballed, Thruster_get_GimbalAngle, Wheel_get_Part, Wheel_get_State, Wheel_get_Radius, Wheel_get_Grounded, Wheel_get_HasBrakes, Wheel_get_Brakes, Wheel_set_Brakes, Wheel_get_AutoFrictionControl, Wheel_set_AutoFrictionControl, Wheel_get_ManualFrictionControl, Wheel_set_ManualFrictionControl, Wheel_get_Deployable, Wheel_get_Deployed, Wheel_set_Deployed, Wheel_get_Powered, Wheel_get_MotorEnabled, Wheel_set_MotorEnabled, Wheel_get_MotorInverted, Wheel_set_MotorInverted, Wheel_get_MotorState, Wheel_get_MotorOutput, Wheel_get_TractionControlEnabled, Wheel_set_TractionControlEnabled, Wheel_get_TractionControl, Wheel_set_TractionControl, Wheel_get_DriveLimiter, Wheel_set_DriveLimiter, Wheel_get_Steerable, Wheel_get_SteeringEnabled, Wheel_set_SteeringEnabled, Wheel_get_SteeringInverted, Wheel_set_SteeringInverted, Wheel_get_SteeringAngleLimiter, Wheel_set_SteeringAngleLimiter, Wheel_get_SteeringAngleResponse, Wheel_set_SteeringAngleResponse, Wheel_get_HasSuspension, Wheel_get_SuspensionSpringStrength, Wheel_get_SuspensionDamperStrength, Wheel_get_Broken, Wheel_get_Repairable, Wheel_get_Stress, Wheel_get_StressTolerance, Wheel_get_StressPercentage, Wheel_get_Deflection, Wheel_get_Slip
module Helpers
import ....kerbal
import ....KRPCConnection
import ....Request
import ..RemoteTypes
import ...SpaceCenter.EWheelState
import ...SpaceCenter.ESolarPanelState
import ...SpaceCenter.EControlState
import ...SpaceCenter.EAutostrutState
import ...SpaceCenter.EResourceHarvesterState
import ...SpaceCenter.ESASMode
import ...SpaceCenter.EDrainModes
import ...SpaceCenter.EVesselType
import ...SpaceCenter.EMotorState
import ...SpaceCenter.ECargoBayState
import ...SpaceCenter.ELegState
import ...SpaceCenter.ESpeedMode
import ...SpaceCenter.EAntennaState
import ...SpaceCenter.ECrewMemberType
import ...SpaceCenter.ECameraMode
import ...SpaceCenter.EContractState
import ...SpaceCenter.EWarpMode
import ...SpaceCenter.EControlInputMode
import ...SpaceCenter.EDockingPortState
import ...SpaceCenter.EControlSource
import ...SpaceCenter.EVesselSituation
import ...SpaceCenter.EGameMode
import ...SpaceCenter.ERadiatorState
import ...SpaceCenter.ECommLinkType
import ...SpaceCenter.EParachuteState
import ...SpaceCenter.EResourceFlowMode
import ...SpaceCenter.EResourceConverterState
import ..ClearTarget as var"##562"
ClearTarget(conn::KRPCConnection) = begin
        kerbal(conn, var"##562"())
    end
@doc "    ClearTarget()\n\nClears the current target.\n\n" ClearTarget
export ClearTarget
import ..LaunchableVessels as var"##563"
LaunchableVessels(conn::KRPCConnection, craftDirectory::String) = begin
        kerbal(conn, var"##563"(craftDirectory))
    end
@doc "    LaunchableVessels(craftDirectory::String)\n\nReturns a list of vessels from the given \nthat can be launched.\n\n# Arguments\n- `craftDirectory::String`: Name of the directory in the current saves \"Ships\" directory. For example \"VAB\" or \"SPH\".\n" LaunchableVessels
export LaunchableVessels
import ..LaunchVessel as var"##564"
LaunchVessel(conn::KRPCConnection, craftDirectory::String, name::String, launchSite::String, recover::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(conn, var"##564"(craftDirectory, name, launchSite, recover))
    end
@doc "    LaunchVessel(craftDirectory::String, name::String, launchSite::String, recover::Bool)\n\nLaunch a vessel.\n\n# Arguments\n- `craftDirectory::String`: Name of the directory in the current saves \"Ships\" directory, that contains the craft file. For example \"VAB\" or \"SPH\".\n- `name::String`: Name of the vessel to launch. This is the name of the \".craft\" file in the save directory, without the \".craft\" file extension.\n- `launchSite::String`: Name of the launch site. For example \"LaunchPad\" or \"Runway\".\n- `recover::Bool`: If true and there is a vessel on the launch site, recover it before launching.\n# Remarks\n Throws an exception if any of the games pre-flight checks fail. \n" LaunchVessel
export LaunchVessel
import ..LaunchVesselFromVAB as var"##565"
LaunchVesselFromVAB(conn::KRPCConnection, name::String, recover::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(conn, var"##565"(name, recover))
    end
@doc "    LaunchVesselFromVAB(name::String, recover::Bool)\n\nLaunch a new vessel from the VAB onto the launchpad.\n\n# Arguments\n- `name::String`: Name of the vessel to launch.\n- `recover::Bool`: If true and there is a vessel on the launch pad, recover it before launching.\n# Remarks\n This is equivalent to calling  with the craft directory set to \"VAB\" and the launch site set to \"LaunchPad\". Throws an exception if any of the games pre-flight checks fail. \n" LaunchVesselFromVAB
export LaunchVesselFromVAB
import ..LaunchVesselFromSPH as var"##566"
LaunchVesselFromSPH(conn::KRPCConnection, name::String, recover::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(conn, var"##566"(name, recover))
    end
@doc "    LaunchVesselFromSPH(name::String, recover::Bool)\n\nLaunch a new vessel from the SPH onto the runway.\n\n# Arguments\n- `name::String`: Name of the vessel to launch.\n- `recover::Bool`: If true and there is a vessel on the runway, recover it before launching.\n# Remarks\n This is equivalent to calling  with the craft directory set to \"SPH\" and the launch site set to \"Runway\". Throws an exception if any of the games pre-flight checks fail. \n" LaunchVesselFromSPH
export LaunchVesselFromSPH
import ..Save as var"##567"
Save(conn::KRPCConnection, name::String) = begin
        kerbal(conn, var"##567"(name))
    end
@doc "    Save(name::String)\n\nSave the game with a given name.\nThis will create a save file called name.sfs in the folder of the\ncurrent save game.\n\n" Save
export Save
import ..Load as var"##568"
Load(conn::KRPCConnection, name::String) = begin
        kerbal(conn, var"##568"(name))
    end
@doc "    Load(name::String)\n\nLoad the game with the given name.\nThis will create a load a save file called name.sfs from the folder of the\ncurrent save game.\n\n" Load
export Load
import ..Quicksave as var"##569"
Quicksave(conn::KRPCConnection) = begin
        kerbal(conn, var"##569"())
    end
@doc "    Quicksave()\n\nSave a quicksave.\n\n# Remarks\n This is the same as calling  with the name \"quicksave\". \n" Quicksave
export Quicksave
import ..Quickload as var"##570"
Quickload(conn::KRPCConnection) = begin
        kerbal(conn, var"##570"())
    end
@doc "    Quickload()\n\nLoad a quicksave.\n\n# Remarks\n This is the same as calling  with the name \"quicksave\". \n" Quickload
export Quickload
import ..CanRailsWarpAt as var"##571"
CanRailsWarpAt(conn::KRPCConnection, factor::Int32 = getJuliaValue(this.conn, UInt8[0x02], Int32)) = begin
        kerbal(conn, var"##571"(factor))
    end
@doc "    CanRailsWarpAt(factor::Int32)\n\nReturns true if regular \"on-rails\" time warp can be used, at the specified warp\n. The maximum time warp rate is limited by various things,\nincluding how close the active vessel is to a planet. See\nthe KSP wiki\nfor details.\n\n# Arguments\n- `factor::Int32`: The warp factor to check.\n" CanRailsWarpAt
export CanRailsWarpAt
import ..WarpTo as var"##572"
WarpTo(conn::KRPCConnection, ut::Float64, maxRailsRate::Float32 = getJuliaValue(this.conn, UInt8[0x00, 0x50, 0xc3, 0x47], Float32), maxPhysicsRate::Float32 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x00, 0x40], Float32)) = begin
        kerbal(conn, var"##572"(ut, maxRailsRate, maxPhysicsRate))
    end
@doc "    WarpTo(ut::Float64, maxRailsRate::Float32, maxPhysicsRate::Float32)\n\nUses time acceleration to warp forward to a time in the future, specified\nby universal time . This call blocks until the desired\ntime is reached. Uses regular \"on-rails\" or physical time warp as appropriate.\nFor example, physical time warp is used when the active vessel is traveling\nthrough an atmosphere. When using regular \"on-rails\" time warp, the warp\nrate is limited by , and when using physical\ntime warp, the warp rate is limited by .\n\n# Arguments\n- `ut::Float64`: The universal time to warp to, in seconds.\n- `maxRailsRate::Float32`: The maximum warp rate in regular \"on-rails\" time warp. \n- `maxPhysicsRate::Float32`: The maximum warp rate in physical time warp.\n# Returns\nWhen the time warp is complete.\n" WarpTo
export WarpTo
import ..TransformPosition as var"##573"
TransformPosition(conn::KRPCConnection, position::begin
                Tuple{Float64, Float64, Float64}
            end, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame) = begin
        kerbal(conn, var"##573"(position, from, to))
    end
@doc "    TransformPosition(position::begin\n    Tuple{Float64, Float64, Float64}\nend, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame)\n\nConverts a position from one reference frame to another.\n\n# Arguments\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position, as a vector, in reference frame .\n- `from::RemoteTypes.ReferenceFrame`: The reference frame that the position is in.\n- `to::RemoteTypes.ReferenceFrame`: The reference frame to covert the position to.\n# Returns\nThe corresponding position, as a vector, in reference frame .\n" TransformPosition
export TransformPosition
import ..TransformDirection as var"##574"
TransformDirection(conn::KRPCConnection, direction::begin
                Tuple{Float64, Float64, Float64}
            end, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame) = begin
        kerbal(conn, var"##574"(direction, from, to))
    end
@doc "    TransformDirection(direction::begin\n    Tuple{Float64, Float64, Float64}\nend, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame)\n\nConverts a direction from one reference frame to another.\n\n# Arguments\n- `direction::begin\n    Tuple{Float64, Float64, Float64}\nend`: Direction, as a vector, in reference frame . \n- `from::RemoteTypes.ReferenceFrame`: The reference frame that the direction is in.\n- `to::RemoteTypes.ReferenceFrame`: The reference frame to covert the direction to.\n# Returns\nThe corresponding direction, as a vector, in reference frame .\n" TransformDirection
export TransformDirection
import ..TransformRotation as var"##575"
TransformRotation(conn::KRPCConnection, rotation::begin
                Tuple{Float64, Float64, Float64, Float64}
            end, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame) = begin
        kerbal(conn, var"##575"(rotation, from, to))
    end
@doc "    TransformRotation(rotation::begin\n    Tuple{Float64, Float64, Float64, Float64}\nend, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame)\n\nConverts a rotation from one reference frame to another.\n\n# Arguments\n- `rotation::begin\n    Tuple{Float64, Float64, Float64, Float64}\nend`: Rotation, as a quaternion of the form (x, y, z, w), in reference frame .\n- `from::RemoteTypes.ReferenceFrame`: The reference frame that the rotation is in.\n- `to::RemoteTypes.ReferenceFrame`: The reference frame to covert the rotation to.\n# Returns\nThe corresponding rotation, as a quaternion of the form (x, y, z, w), in reference frame .\n" TransformRotation
export TransformRotation
import ..TransformVelocity as var"##576"
TransformVelocity(conn::KRPCConnection, position::begin
                Tuple{Float64, Float64, Float64}
            end, velocity::begin
                Tuple{Float64, Float64, Float64}
            end, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame) = begin
        kerbal(conn, var"##576"(position, velocity, from, to))
    end
@doc "    TransformVelocity(position::begin\n    Tuple{Float64, Float64, Float64}\nend, velocity::begin\n    Tuple{Float64, Float64, Float64}\nend, from::RemoteTypes.ReferenceFrame, to::RemoteTypes.ReferenceFrame)\n\nConverts a velocity (acting at the specified position) from one reference frame\nto another. The position is required to take the relative angular velocity of the\nreference frames into account.\n\n# Arguments\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position, as a vector, in reference frame .\n- `velocity::begin\n    Tuple{Float64, Float64, Float64}\nend`: Velocity, as a vector that points in the direction of travel and whose magnitude is the speed in meters per second, in reference frame .\n- `from::RemoteTypes.ReferenceFrame`: The reference frame that the position and velocity are in.\n- `to::RemoteTypes.ReferenceFrame`: The reference frame to covert the velocity to.\n# Returns\nThe corresponding velocity, as a vector, in reference frame .\n" TransformVelocity
export TransformVelocity
import ..RaycastDistance as var"##577"
RaycastDistance(conn::KRPCConnection, position::begin
                Tuple{Float64, Float64, Float64}
            end, direction::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(conn, var"##577"(position, direction, referenceFrame))
    end
@doc "    RaycastDistance(position::begin\n    Tuple{Float64, Float64, Float64}\nend, direction::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::RemoteTypes.ReferenceFrame)\n\nCast a ray from a given position in a given direction, and return the distance to the hit point.\nIf no hit occurs, returns infinity.\n\n# Arguments\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position, as a vector, of the origin of the ray.\n- `direction::begin\n    Tuple{Float64, Float64, Float64}\nend`: Direction of the ray, as a unit vector.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the position and direction are in.\n# Returns\nThe distance to the hit, in meters, or infinity if there was no hit.\n" RaycastDistance
export RaycastDistance
import ..RaycastPart as var"##578"
RaycastPart(conn::KRPCConnection, position::begin
                Tuple{Float64, Float64, Float64}
            end, direction::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(conn, var"##578"(position, direction, referenceFrame))
    end
@doc "    RaycastPart(position::begin\n    Tuple{Float64, Float64, Float64}\nend, direction::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::RemoteTypes.ReferenceFrame)\n\nCast a ray from a given position in a given direction, and return the part that it hits.\nIf no hit occurs, returns null.\n\n# Arguments\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position, as a vector, of the origin of the ray.\n- `direction::begin\n    Tuple{Float64, Float64, Float64}\nend`: Direction of the ray, as a unit vector.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the position and direction are in.\n# Returns\nThe part that was hit or null if there was no hit.\n" RaycastPart
export RaycastPart
import ..get_GameMode as var"##579"
GameMode(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##579"())
    end
@doc "    GameMode()\n\nThe current mode the game is in.\n\n" GameMode
export GameMode
import ..get_Science as var"##580"
Science(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##580"())
    end
@doc "    Science()\n\nThe current amount of science.\n\n" Science
export Science
import ..get_Funds as var"##581"
Funds(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##581"())
    end
@doc "    Funds()\n\nThe current amount of funds.\n\n" Funds
export Funds
import ..get_Reputation as var"##582"
Reputation(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##582"())
    end
@doc "    Reputation()\n\nThe current amount of reputation.\n\n" Reputation
export Reputation
import ..get_ActiveVessel as var"##583"
ActiveVessel(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##583"())
    end
@doc "    ActiveVessel()\n\nThe currently active vessel.\n\n" ActiveVessel
export ActiveVessel
import ..set_ActiveVessel as var"##584"
ActiveVessel!(this::RemoteTypes.SpaceCenter, value::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##584"(value))
    end
@doc "    ActiveVessel!(value::RemoteTypes.Vessel)\n\nThe currently active vessel.\n\n" ActiveVessel!
export ActiveVessel!
import ..get_Vessels as var"##585"
Vessels(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##585"())
    end
@doc "    Vessels()\n\nA list of all the vessels in the game.\n\n" Vessels
export Vessels
import ..get_Bodies as var"##586"
Bodies(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##586"())
    end
@doc "    Bodies()\n\nA dictionary of all celestial bodies (planets, moons, etc.) in the game,\nkeyed by the name of the body.\n\n" Bodies
export Bodies
import ..get_TargetBody as var"##587"
TargetBody(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##587"())
    end
@doc "    TargetBody()\n\nThe currently targeted celestial body.\n\n" TargetBody
export TargetBody
import ..set_TargetBody as var"##588"
TargetBody!(this::RemoteTypes.SpaceCenter, value::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##588"(value))
    end
@doc "    TargetBody!(value::RemoteTypes.CelestialBody)\n\nThe currently targeted celestial body.\n\n" TargetBody!
export TargetBody!
import ..get_TargetVessel as var"##589"
TargetVessel(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##589"())
    end
@doc "    TargetVessel()\n\nThe currently targeted vessel.\n\n" TargetVessel
export TargetVessel
import ..set_TargetVessel as var"##590"
TargetVessel!(this::RemoteTypes.SpaceCenter, value::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##590"(value))
    end
@doc "    TargetVessel!(value::RemoteTypes.Vessel)\n\nThe currently targeted vessel.\n\n" TargetVessel!
export TargetVessel!
import ..get_TargetDockingPort as var"##591"
TargetDockingPort(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##591"())
    end
@doc "    TargetDockingPort()\n\nThe currently targeted docking port.\n\n" TargetDockingPort
export TargetDockingPort
import ..set_TargetDockingPort as var"##592"
TargetDockingPort!(this::RemoteTypes.SpaceCenter, value::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##592"(value))
    end
@doc "    TargetDockingPort!(value::RemoteTypes.DockingPort)\n\nThe currently targeted docking port.\n\n" TargetDockingPort!
export TargetDockingPort!
import ..get_WaypointManager as var"##593"
WaypointManager(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##593"())
    end
@doc "    WaypointManager()\n\nThe waypoint manager.\n\n" WaypointManager
export WaypointManager
import ..get_ContractManager as var"##594"
ContractManager(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##594"())
    end
@doc "    ContractManager()\n\nThe contract manager.\n\n" ContractManager
export ContractManager
import ..get_AlarmClock as var"##595"
AlarmClock(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##595"())
    end
@doc "    AlarmClock()\n\nThe Alarm Clock Module.\n\n" AlarmClock
export AlarmClock
import ..get_Camera as var"##596"
Camera(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##596"())
    end
@doc "    Camera()\n\nAn object that can be used to control the camera.\n\n" Camera
export Camera
import ..get_UIVisible as var"##597"
UIVisible(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##597"())
    end
@doc "    UIVisible()\n\nWhether the UI is visible.\n\n" UIVisible
export UIVisible
import ..set_UIVisible as var"##598"
UIVisible!(this::RemoteTypes.SpaceCenter, value::Bool) = begin
        kerbal(this.conn, var"##598"(value))
    end
@doc "    UIVisible!(value::Bool)\n\nWhether the UI is visible.\n\n" UIVisible!
export UIVisible!
import ..get_Navball as var"##599"
Navball(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##599"())
    end
@doc "    Navball()\n\nWhether the navball is visible.\n\n" Navball
export Navball
import ..set_Navball as var"##600"
Navball!(this::RemoteTypes.SpaceCenter, value::Bool) = begin
        kerbal(this.conn, var"##600"(value))
    end
@doc "    Navball!(value::Bool)\n\nWhether the navball is visible.\n\n" Navball!
export Navball!
import ..get_UT as var"##601"
UT(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##601"())
    end
@doc "    UT()\n\nThe current universal time in seconds.\n\n" UT
export UT
import ..get_G as var"##602"
G(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##602"())
    end
@doc "    G()\n\nThe value of the \ngravitational constant G in N(m/kg)^2.\n\n" G
export G
import ..get_WarpMode as var"##603"
WarpMode(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##603"())
    end
@doc "    WarpMode()\n\nThe current time warp mode. Returns  if time\nwarp is not active,  if regular \"on-rails\" time warp\nis active, or  if physical time warp is active.\n\n" WarpMode
export WarpMode
import ..get_WarpRate as var"##604"
WarpRate(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##604"())
    end
@doc "    WarpRate()\n\nThe current warp rate. This is the rate at which time is passing for\neither on-rails or physical time warp. For example, a value of 10 means\ntime is passing 10x faster than normal. Returns 1 if time warp is not\nactive.\n\n" WarpRate
export WarpRate
import ..get_WarpFactor as var"##605"
WarpFactor(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##605"())
    end
@doc "    WarpFactor()\n\nThe current warp factor. This is the index of the rate at which time\nis passing for either regular \"on-rails\" or physical time warp. Returns 0\nif time warp is not active. When in on-rails time warp, this is equal to\n, and in physics time warp, this is equal to\n.\n\n" WarpFactor
export WarpFactor
import ..get_RailsWarpFactor as var"##606"
RailsWarpFactor(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##606"())
    end
@doc "    RailsWarpFactor()\n\nThe time warp rate, using regular \"on-rails\" time warp. A value between\n0 and 7 inclusive. 0 means no time warp. Returns 0 if physical time warp\nis active.\n\nIf requested time warp factor cannot be set, it will be set to the next\nlowest possible value. For example, if the vessel is too close to a\nplanet. See \nthe KSP wiki for details.\n\n" RailsWarpFactor
export RailsWarpFactor
import ..set_RailsWarpFactor as var"##607"
RailsWarpFactor!(this::RemoteTypes.SpaceCenter, value::Int32) = begin
        kerbal(this.conn, var"##607"(value))
    end
@doc "    RailsWarpFactor!(value::Int32)\n\nThe time warp rate, using regular \"on-rails\" time warp. A value between\n0 and 7 inclusive. 0 means no time warp. Returns 0 if physical time warp\nis active.\n\nIf requested time warp factor cannot be set, it will be set to the next\nlowest possible value. For example, if the vessel is too close to a\nplanet. See \nthe KSP wiki for details.\n\n" RailsWarpFactor!
export RailsWarpFactor!
import ..get_PhysicsWarpFactor as var"##608"
PhysicsWarpFactor(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##608"())
    end
@doc "    PhysicsWarpFactor()\n\nThe physical time warp rate. A value between 0 and 3 inclusive. 0 means\nno time warp. Returns 0 if regular \"on-rails\" time warp is active.\n\n" PhysicsWarpFactor
export PhysicsWarpFactor
import ..set_PhysicsWarpFactor as var"##609"
PhysicsWarpFactor!(this::RemoteTypes.SpaceCenter, value::Int32) = begin
        kerbal(this.conn, var"##609"(value))
    end
@doc "    PhysicsWarpFactor!(value::Int32)\n\nThe physical time warp rate. A value between 0 and 3 inclusive. 0 means\nno time warp. Returns 0 if regular \"on-rails\" time warp is active.\n\n" PhysicsWarpFactor!
export PhysicsWarpFactor!
import ..get_MaximumRailsWarpFactor as var"##610"
MaximumRailsWarpFactor(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##610"())
    end
@doc "    MaximumRailsWarpFactor()\n\nThe current maximum regular \"on-rails\" warp factor that can be set.\nA value between 0 and 7 inclusive. See\nthe KSP wiki\nfor details.\n\n" MaximumRailsWarpFactor
export MaximumRailsWarpFactor
import ..get_FARAvailable as var"##611"
FARAvailable(this::RemoteTypes.SpaceCenter) = begin
        kerbal(this.conn, var"##611"())
    end
@doc "    FARAvailable()\n\nWhether Ferram Aerospace Research is installed.\n\n" FARAvailable
export FARAvailable
import ..Alarm_get_Type as var"##612"
Type(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##612"(this))
    end
@doc "    Type(this::RemoteTypes.Alarm)\n\nType of Alarm\n\n" Type
export Type
import ..Alarm_get_Title as var"##613"
Title(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##613"(this))
    end
@doc "    Title(this::RemoteTypes.Alarm)\n\nTitle of the Alarm\n\n" Title
export Title
import ..Alarm_get_Description as var"##614"
Description(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##614"(this))
    end
@doc "    Description(this::RemoteTypes.Alarm)\n\nDescription of the contract.\n\n" Description
export Description
import ..Alarm_get_UT as var"##615"
UT(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##615"(this))
    end
@doc "    UT(this::RemoteTypes.Alarm)\n\nTime the Alarm will trigger\n\n" UT
export UT
import ..Alarm_get_TimeTill as var"##616"
TimeTill(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##616"(this))
    end
@doc "    TimeTill(this::RemoteTypes.Alarm)\n\n" TimeTill
export TimeTill
import ..Alarm_get_EventOffset as var"##617"
EventOffset(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##617"(this))
    end
@doc "    EventOffset(this::RemoteTypes.Alarm)\n\n" EventOffset
export EventOffset
import ..Alarm_get_Vessel as var"##618"
Vessel(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##618"(this))
    end
@doc "    Vessel(this::RemoteTypes.Alarm)\n\n" Vessel
export Vessel
import ..Alarm_get_ID as var"##619"
ID(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##619"(this))
    end
@doc "    ID(this::RemoteTypes.Alarm)\n\n" ID
export ID
import ..AlarmClock_MakeRawAlarm as var"##620"
MakeRawAlarm(this::RemoteTypes.AlarmClock, time::Float64, title::String = getJuliaValue(this.conn, UInt8[0x09, 0x52, 0x61, 0x77, 0x20, 0x41, 0x6c, 0x61, 0x72, 0x6d], String), description::String = getJuliaValue(this.conn, UInt8[0x00], String)) = begin
        kerbal(this.conn, var"##620"(this, time, title, description))
    end
@doc "    MakeRawAlarm(this::RemoteTypes.AlarmClock, time::Float64, title::String, description::String)\n\nMake a Simple Alarm\nParameter 'time' is the number of seconds from now that the alarm should trigger.\n\n" MakeRawAlarm
export MakeRawAlarm
import ..AlarmClock_MakeRawAlarmVessel as var"##621"
MakeRawAlarmVessel(this::RemoteTypes.AlarmClock, time::Float64, V::RemoteTypes.Vessel, title::String = getJuliaValue(this.conn, UInt8[0x09, 0x52, 0x61, 0x77, 0x20, 0x41, 0x6c, 0x61, 0x72, 0x6d], String), description::String = getJuliaValue(this.conn, UInt8[0x00], String)) = begin
        kerbal(this.conn, var"##621"(this, time, V, title, description))
    end
@doc "    MakeRawAlarmVessel(this::RemoteTypes.AlarmClock, time::Float64, V::RemoteTypes.Vessel, title::String, description::String)\n\nMake a Simple Alarm linked to a Vessel\nParameter 'time' is the number of seconds from now that the alarm should trigger.\n\n" MakeRawAlarmVessel
export MakeRawAlarmVessel
import ..AlarmClock_MakeApaAlarm as var"##622"
MakeApaAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, offset::Float64 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4e, 0x40], Float64), title::String = getJuliaValue(this.conn, UInt8[0x09, 0x41, 0x50, 0x41, 0x20, 0x41, 0x6c, 0x61, 0x72, 0x6d], String), description::String = getJuliaValue(this.conn, UInt8[0x00], String)) = begin
        kerbal(this.conn, var"##622"(this, V, offset, title, description))
    end
@doc "" MakeApaAlarm
export MakeApaAlarm
import ..AlarmClock_MakePeaAlarm as var"##623"
MakePeaAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, offset::Float64 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4e, 0x40], Float64), title::String = getJuliaValue(this.conn, UInt8[0x09, 0x50, 0x45, 0x41, 0x20, 0x41, 0x6c, 0x61, 0x72, 0x6d], String), description::String = getJuliaValue(this.conn, UInt8[0x00], String)) = begin
        kerbal(this.conn, var"##623"(this, V, offset, title, description))
    end
@doc "    MakePeaAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, offset::Float64, title::String, description::String)\n\nCreate an alarm for the given vessel's next Periapsis\n\n" MakePeaAlarm
export MakePeaAlarm
import ..AlarmClock_MakeManeuverAlarm as var"##624"
MakeManeuverAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, Man::RemoteTypes.Node, offset::Float64 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4e, 0x40], Float64), AddBurnTime::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool), title::String = getJuliaValue(this.conn, UInt8[0x0e, 0x4d, 0x61, 0x6e, 0x65, 0x75, 0x76, 0x65, 0x72, 0x20, 0x41, 0x6c, 0x61, 0x72, 0x6d], String), description::String = getJuliaValue(this.conn, UInt8[0x00], String)) = begin
        kerbal(this.conn, var"##624"(this, V, Man, offset, AddBurnTime, title, description))
    end
@doc "    MakeManeuverAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, Man::RemoteTypes.Node, offset::Float64, AddBurnTime::Bool, title::String, description::String)\n\nCreate an alarm for the given vessel and maneuver node\n\n" MakeManeuverAlarm
export MakeManeuverAlarm
import ..AlarmClock_MakeSOIAlarm as var"##625"
MakeSOIAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, offset::Float64 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4e, 0x40], Float64), title::String = getJuliaValue(this.conn, UInt8[0x0a, 0x53, 0x4f, 0x49, 0x20, 0x43, 0x68, 0x61, 0x6e, 0x67, 0x65], String), description::String = getJuliaValue(this.conn, UInt8[0x00], String)) = begin
        kerbal(this.conn, var"##625"(this, V, offset, title, description))
    end
@doc "    MakeSOIAlarm(this::RemoteTypes.AlarmClock, V::RemoteTypes.Vessel, offset::Float64, title::String, description::String)\n\nCreate an alarm for the given vessel's next SOI change\n\n" MakeSOIAlarm
export MakeSOIAlarm
import ..AlarmClock_GetAlarms as var"##626"
GetAlarms(this::RemoteTypes.AlarmClock) = begin
        kerbal(this.conn, var"##626"(this))
    end
@doc "    GetAlarms(this::RemoteTypes.AlarmClock)\n\nReturns a list of all alarms\n\n" GetAlarms
export GetAlarms
import ..AutoPilot_Engage as var"##627"
Engage(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##627"(this))
    end
@doc "    Engage(this::RemoteTypes.AutoPilot)\n\nEngage the auto-pilot.\n\n" Engage
export Engage
import ..AutoPilot_Disengage as var"##628"
Disengage(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##628"(this))
    end
@doc "    Disengage(this::RemoteTypes.AutoPilot)\n\nDisengage the auto-pilot.\n\n" Disengage
export Disengage
import ..AutoPilot_Wait as var"##629"
Wait(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##629"(this))
    end
@doc "    Wait(this::RemoteTypes.AutoPilot)\n\nBlocks until the vessel is pointing in the target direction and has\nthe target roll (if set). Throws an exception if the auto-pilot has not been engaged.\n\n" Wait
export Wait
import ..AutoPilot_TargetPitchAndHeading as var"##630"
TargetPitchAndHeading(this::RemoteTypes.AutoPilot, pitch::Float32, heading::Float32) = begin
        kerbal(this.conn, var"##630"(this, pitch, heading))
    end
@doc "    TargetPitchAndHeading(this::RemoteTypes.AutoPilot, pitch::Float32, heading::Float32)\n\nSet target pitch and heading angles.\n\n# Arguments\n- `pitch::Float32`: Target pitch angle, in degrees between -90° and +90°.\n- `heading::Float32`: Target heading angle, in degrees between 0° and 360°.\n" TargetPitchAndHeading
export TargetPitchAndHeading
import ..AutoPilot_get_Error as var"##631"
Error(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##631"(this))
    end
@doc "    Error(this::RemoteTypes.AutoPilot)\n\nThe error, in degrees, between the direction the ship has been asked\nto point in and the direction it is pointing in. Throws an exception if the auto-pilot\nhas not been engaged and SAS is not enabled or is in stability assist mode.\n\n" Error
export Error
import ..AutoPilot_get_PitchError as var"##632"
PitchError(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##632"(this))
    end
@doc "    PitchError(this::RemoteTypes.AutoPilot)\n\nThe error, in degrees, between the vessels current and target pitch.\nThrows an exception if the auto-pilot has not been engaged.\n\n" PitchError
export PitchError
import ..AutoPilot_get_HeadingError as var"##633"
HeadingError(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##633"(this))
    end
@doc "    HeadingError(this::RemoteTypes.AutoPilot)\n\nThe error, in degrees, between the vessels current and target heading.\nThrows an exception if the auto-pilot has not been engaged.\n\n" HeadingError
export HeadingError
import ..AutoPilot_get_RollError as var"##634"
RollError(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##634"(this))
    end
@doc "    RollError(this::RemoteTypes.AutoPilot)\n\nThe error, in degrees, between the vessels current and target roll.\nThrows an exception if the auto-pilot has not been engaged or no target roll is set.\n\n" RollError
export RollError
import ..AutoPilot_get_ReferenceFrame as var"##635"
ReferenceFrame(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##635"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.AutoPilot)\n\nThe reference frame for the target direction ().\n\n# Remarks\n An error will be thrown if this property is set to a reference frame that rotates with the vessel being controlled, as it is impossible to rotate the vessel in such a reference frame. \n" ReferenceFrame
export ReferenceFrame
import ..AutoPilot_set_ReferenceFrame as var"##636"
ReferenceFrame!(this::RemoteTypes.AutoPilot, value::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##636"(this, value))
    end
@doc "    ReferenceFrame!(this::RemoteTypes.AutoPilot, value::RemoteTypes.ReferenceFrame)\n\nThe reference frame for the target direction ().\n\n# Remarks\n An error will be thrown if this property is set to a reference frame that rotates with the vessel being controlled, as it is impossible to rotate the vessel in such a reference frame. \n" ReferenceFrame!
export ReferenceFrame!
import ..AutoPilot_get_TargetPitch as var"##637"
TargetPitch(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##637"(this))
    end
@doc "    TargetPitch(this::RemoteTypes.AutoPilot)\n\nThe target pitch, in degrees, between -90° and +90°.\n\n" TargetPitch
export TargetPitch
import ..AutoPilot_set_TargetPitch as var"##638"
TargetPitch!(this::RemoteTypes.AutoPilot, value::Float32) = begin
        kerbal(this.conn, var"##638"(this, value))
    end
@doc "    TargetPitch!(this::RemoteTypes.AutoPilot, value::Float32)\n\nThe target pitch, in degrees, between -90° and +90°.\n\n" TargetPitch!
export TargetPitch!
import ..AutoPilot_get_TargetHeading as var"##639"
TargetHeading(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##639"(this))
    end
@doc "    TargetHeading(this::RemoteTypes.AutoPilot)\n\nThe target heading, in degrees, between 0° and 360°.\n\n" TargetHeading
export TargetHeading
import ..AutoPilot_set_TargetHeading as var"##640"
TargetHeading!(this::RemoteTypes.AutoPilot, value::Float32) = begin
        kerbal(this.conn, var"##640"(this, value))
    end
@doc "    TargetHeading!(this::RemoteTypes.AutoPilot, value::Float32)\n\nThe target heading, in degrees, between 0° and 360°.\n\n" TargetHeading!
export TargetHeading!
import ..AutoPilot_get_TargetRoll as var"##641"
TargetRoll(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##641"(this))
    end
@doc "    TargetRoll(this::RemoteTypes.AutoPilot)\n\nThe target roll, in degrees. NaN if no target roll is set.\n\n" TargetRoll
export TargetRoll
import ..AutoPilot_set_TargetRoll as var"##642"
TargetRoll!(this::RemoteTypes.AutoPilot, value::Float32) = begin
        kerbal(this.conn, var"##642"(this, value))
    end
@doc "    TargetRoll!(this::RemoteTypes.AutoPilot, value::Float32)\n\nThe target roll, in degrees. NaN if no target roll is set.\n\n" TargetRoll!
export TargetRoll!
import ..AutoPilot_get_TargetDirection as var"##643"
TargetDirection(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##643"(this))
    end
@doc "    TargetDirection(this::RemoteTypes.AutoPilot)\n\nDirection vector corresponding to the target pitch and heading.\nThis is in the reference frame specified by .\n\n" TargetDirection
export TargetDirection
import ..AutoPilot_set_TargetDirection as var"##644"
TargetDirection!(this::RemoteTypes.AutoPilot, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##644"(this, value))
    end
@doc "    TargetDirection!(this::RemoteTypes.AutoPilot, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nDirection vector corresponding to the target pitch and heading.\nThis is in the reference frame specified by .\n\n" TargetDirection!
export TargetDirection!
import ..AutoPilot_get_SAS as var"##645"
SAS(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##645"(this))
    end
@doc "    SAS(this::RemoteTypes.AutoPilot)\n\nThe state of SAS.\n\n# Remarks\nEquivalent to \n" SAS
export SAS
import ..AutoPilot_set_SAS as var"##646"
SAS!(this::RemoteTypes.AutoPilot, value::Bool) = begin
        kerbal(this.conn, var"##646"(this, value))
    end
@doc "    SAS!(this::RemoteTypes.AutoPilot, value::Bool)\n\nThe state of SAS.\n\n# Remarks\nEquivalent to \n" SAS!
export SAS!
import ..AutoPilot_get_SASMode as var"##647"
SASMode(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##647"(this))
    end
@doc "    SASMode(this::RemoteTypes.AutoPilot)\n\nThe current .\nThese modes are equivalent to the mode buttons to the left of the navball that appear\nwhen SAS is enabled.\n\n# Remarks\nEquivalent to \n" SASMode
export SASMode
import ..AutoPilot_set_SASMode as var"##648"
SASMode!(this::RemoteTypes.AutoPilot, value::ESASMode) = begin
        kerbal(this.conn, var"##648"(this, value))
    end
@doc "    SASMode!(this::RemoteTypes.AutoPilot, value::ESASMode)\n\nThe current .\nThese modes are equivalent to the mode buttons to the left of the navball that appear\nwhen SAS is enabled.\n\n# Remarks\nEquivalent to \n" SASMode!
export SASMode!
import ..AutoPilot_get_RollThreshold as var"##649"
RollThreshold(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##649"(this))
    end
@doc "    RollThreshold(this::RemoteTypes.AutoPilot)\n\nThe threshold at which the autopilot will try to match the target roll angle, if any.\nDefaults to 5 degrees.\n\n" RollThreshold
export RollThreshold
import ..AutoPilot_set_RollThreshold as var"##650"
RollThreshold!(this::RemoteTypes.AutoPilot, value::Float64) = begin
        kerbal(this.conn, var"##650"(this, value))
    end
@doc "    RollThreshold!(this::RemoteTypes.AutoPilot, value::Float64)\n\nThe threshold at which the autopilot will try to match the target roll angle, if any.\nDefaults to 5 degrees.\n\n" RollThreshold!
export RollThreshold!
import ..AutoPilot_get_StoppingTime as var"##651"
StoppingTime(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##651"(this))
    end
@doc "    StoppingTime(this::RemoteTypes.AutoPilot)\n\nThe maximum amount of time that the vessel should need to come to a complete stop.\nThis determines the maximum angular velocity of the vessel.\nA vector of three stopping times, in seconds, one for each of the pitch, roll\nand yaw axes. Defaults to 0.5 seconds for each axis.\n\n" StoppingTime
export StoppingTime
import ..AutoPilot_set_StoppingTime as var"##652"
StoppingTime!(this::RemoteTypes.AutoPilot, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##652"(this, value))
    end
@doc "    StoppingTime!(this::RemoteTypes.AutoPilot, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nThe maximum amount of time that the vessel should need to come to a complete stop.\nThis determines the maximum angular velocity of the vessel.\nA vector of three stopping times, in seconds, one for each of the pitch, roll\nand yaw axes. Defaults to 0.5 seconds for each axis.\n\n" StoppingTime!
export StoppingTime!
import ..AutoPilot_get_DecelerationTime as var"##653"
DecelerationTime(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##653"(this))
    end
@doc "    DecelerationTime(this::RemoteTypes.AutoPilot)\n\nThe time the vessel should take to come to a stop pointing in the target direction.\nThis determines the angular acceleration used to decelerate the vessel.\nA vector of three times, in seconds, one for each of the pitch, roll and yaw axes.\nDefaults to 5 seconds for each axis.\n\n" DecelerationTime
export DecelerationTime
import ..AutoPilot_set_DecelerationTime as var"##654"
DecelerationTime!(this::RemoteTypes.AutoPilot, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##654"(this, value))
    end
@doc "    DecelerationTime!(this::RemoteTypes.AutoPilot, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nThe time the vessel should take to come to a stop pointing in the target direction.\nThis determines the angular acceleration used to decelerate the vessel.\nA vector of three times, in seconds, one for each of the pitch, roll and yaw axes.\nDefaults to 5 seconds for each axis.\n\n" DecelerationTime!
export DecelerationTime!
import ..AutoPilot_get_AttenuationAngle as var"##655"
AttenuationAngle(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##655"(this))
    end
@doc "    AttenuationAngle(this::RemoteTypes.AutoPilot)\n\nThe angle at which the autopilot considers the vessel to be pointing\nclose to the target.\nThis determines the midpoint of the target velocity attenuation function.\nA vector of three angles, in degrees, one for each of the pitch, roll and yaw axes.\nDefaults to 1° for each axis.\n\n" AttenuationAngle
export AttenuationAngle
import ..AutoPilot_set_AttenuationAngle as var"##656"
AttenuationAngle!(this::RemoteTypes.AutoPilot, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##656"(this, value))
    end
@doc "    AttenuationAngle!(this::RemoteTypes.AutoPilot, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nThe angle at which the autopilot considers the vessel to be pointing\nclose to the target.\nThis determines the midpoint of the target velocity attenuation function.\nA vector of three angles, in degrees, one for each of the pitch, roll and yaw axes.\nDefaults to 1° for each axis.\n\n" AttenuationAngle!
export AttenuationAngle!
import ..AutoPilot_get_AutoTune as var"##657"
AutoTune(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##657"(this))
    end
@doc "    AutoTune(this::RemoteTypes.AutoPilot)\n\nWhether the rotation rate controllers PID parameters should be automatically tuned\nusing the vessels moment of inertia and available torque. Defaults to true.\nSee  and .\n\n" AutoTune
export AutoTune
import ..AutoPilot_set_AutoTune as var"##658"
AutoTune!(this::RemoteTypes.AutoPilot, value::Bool) = begin
        kerbal(this.conn, var"##658"(this, value))
    end
@doc "    AutoTune!(this::RemoteTypes.AutoPilot, value::Bool)\n\nWhether the rotation rate controllers PID parameters should be automatically tuned\nusing the vessels moment of inertia and available torque. Defaults to true.\nSee  and .\n\n" AutoTune!
export AutoTune!
import ..AutoPilot_get_TimeToPeak as var"##659"
TimeToPeak(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##659"(this))
    end
@doc "    TimeToPeak(this::RemoteTypes.AutoPilot)\n\nThe target time to peak used to autotune the PID controllers.\nA vector of three times, in seconds, for each of the pitch, roll and yaw axes.\nDefaults to 3 seconds for each axis.\n\n" TimeToPeak
export TimeToPeak
import ..AutoPilot_set_TimeToPeak as var"##660"
TimeToPeak!(this::RemoteTypes.AutoPilot, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##660"(this, value))
    end
@doc "    TimeToPeak!(this::RemoteTypes.AutoPilot, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nThe target time to peak used to autotune the PID controllers.\nA vector of three times, in seconds, for each of the pitch, roll and yaw axes.\nDefaults to 3 seconds for each axis.\n\n" TimeToPeak!
export TimeToPeak!
import ..AutoPilot_get_Overshoot as var"##661"
Overshoot(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##661"(this))
    end
@doc "    Overshoot(this::RemoteTypes.AutoPilot)\n\nThe target overshoot percentage used to autotune the PID controllers.\nA vector of three values, between 0 and 1, for each of the pitch, roll and yaw axes.\nDefaults to 0.01 for each axis.\n\n" Overshoot
export Overshoot
import ..AutoPilot_set_Overshoot as var"##662"
Overshoot!(this::RemoteTypes.AutoPilot, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##662"(this, value))
    end
@doc "    Overshoot!(this::RemoteTypes.AutoPilot, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nThe target overshoot percentage used to autotune the PID controllers.\nA vector of three values, between 0 and 1, for each of the pitch, roll and yaw axes.\nDefaults to 0.01 for each axis.\n\n" Overshoot!
export Overshoot!
import ..AutoPilot_get_PitchPIDGains as var"##663"
PitchPIDGains(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##663"(this))
    end
@doc "    PitchPIDGains(this::RemoteTypes.AutoPilot)\n\nGains for the pitch PID controller.\n\n# Remarks\n When  is true, these values are updated automatically, which will overwrite any manual changes. \n" PitchPIDGains
export PitchPIDGains
import ..AutoPilot_set_PitchPIDGains as var"##664"
PitchPIDGains!(this::RemoteTypes.AutoPilot, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##664"(this, value))
    end
@doc "    PitchPIDGains!(this::RemoteTypes.AutoPilot, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nGains for the pitch PID controller.\n\n# Remarks\n When  is true, these values are updated automatically, which will overwrite any manual changes. \n" PitchPIDGains!
export PitchPIDGains!
import ..AutoPilot_get_RollPIDGains as var"##665"
RollPIDGains(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##665"(this))
    end
@doc "    RollPIDGains(this::RemoteTypes.AutoPilot)\n\nGains for the roll PID controller.\n\n# Remarks\n When  is true, these values are updated automatically, which will overwrite any manual changes. \n" RollPIDGains
export RollPIDGains
import ..AutoPilot_set_RollPIDGains as var"##666"
RollPIDGains!(this::RemoteTypes.AutoPilot, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##666"(this, value))
    end
@doc "    RollPIDGains!(this::RemoteTypes.AutoPilot, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nGains for the roll PID controller.\n\n# Remarks\n When  is true, these values are updated automatically, which will overwrite any manual changes. \n" RollPIDGains!
export RollPIDGains!
import ..AutoPilot_get_YawPIDGains as var"##667"
YawPIDGains(this::RemoteTypes.AutoPilot) = begin
        kerbal(this.conn, var"##667"(this))
    end
@doc "    YawPIDGains(this::RemoteTypes.AutoPilot)\n\nGains for the yaw PID controller.\n\n# Remarks\n When  is true, these values are updated automatically, which will overwrite any manual changes. \n" YawPIDGains
export YawPIDGains
import ..AutoPilot_set_YawPIDGains as var"##668"
YawPIDGains!(this::RemoteTypes.AutoPilot, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##668"(this, value))
    end
@doc "    YawPIDGains!(this::RemoteTypes.AutoPilot, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nGains for the yaw PID controller.\n\n# Remarks\n When  is true, these values are updated automatically, which will overwrite any manual changes. \n" YawPIDGains!
export YawPIDGains!
import ..Camera_get_Mode as var"##669"
Mode(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##669"(this))
    end
@doc "    Mode(this::RemoteTypes.Camera)\n\nThe current mode of the camera.\n\n" Mode
export Mode
import ..Camera_set_Mode as var"##670"
Mode!(this::RemoteTypes.Camera, value::ECameraMode) = begin
        kerbal(this.conn, var"##670"(this, value))
    end
@doc "    Mode!(this::RemoteTypes.Camera, value::ECameraMode)\n\nThe current mode of the camera.\n\n" Mode!
export Mode!
import ..Camera_get_Pitch as var"##671"
Pitch(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##671"(this))
    end
@doc "    Pitch(this::RemoteTypes.Camera)\n\nThe pitch of the camera, in degrees.\nA value between  and \n" Pitch
export Pitch
import ..Camera_set_Pitch as var"##672"
Pitch!(this::RemoteTypes.Camera, value::Float32) = begin
        kerbal(this.conn, var"##672"(this, value))
    end
@doc "    Pitch!(this::RemoteTypes.Camera, value::Float32)\n\nThe pitch of the camera, in degrees.\nA value between  and \n" Pitch!
export Pitch!
import ..Camera_get_Heading as var"##673"
Heading(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##673"(this))
    end
@doc "    Heading(this::RemoteTypes.Camera)\n\nThe heading of the camera, in degrees.\n\n" Heading
export Heading
import ..Camera_set_Heading as var"##674"
Heading!(this::RemoteTypes.Camera, value::Float32) = begin
        kerbal(this.conn, var"##674"(this, value))
    end
@doc "    Heading!(this::RemoteTypes.Camera, value::Float32)\n\nThe heading of the camera, in degrees.\n\n" Heading!
export Heading!
import ..Camera_get_Distance as var"##675"
Distance(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##675"(this))
    end
@doc "    Distance(this::RemoteTypes.Camera)\n\nThe distance from the camera to the subject, in meters.\nA value between  and .\n\n" Distance
export Distance
import ..Camera_set_Distance as var"##676"
Distance!(this::RemoteTypes.Camera, value::Float32) = begin
        kerbal(this.conn, var"##676"(this, value))
    end
@doc "    Distance!(this::RemoteTypes.Camera, value::Float32)\n\nThe distance from the camera to the subject, in meters.\nA value between  and .\n\n" Distance!
export Distance!
import ..Camera_get_MinPitch as var"##677"
MinPitch(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##677"(this))
    end
@doc "    MinPitch(this::RemoteTypes.Camera)\n\nThe minimum pitch of the camera.\n\n" MinPitch
export MinPitch
import ..Camera_get_MaxPitch as var"##678"
MaxPitch(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##678"(this))
    end
@doc "    MaxPitch(this::RemoteTypes.Camera)\n\nThe maximum pitch of the camera.\n\n" MaxPitch
export MaxPitch
import ..Camera_get_MinDistance as var"##679"
MinDistance(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##679"(this))
    end
@doc "    MinDistance(this::RemoteTypes.Camera)\n\nMinimum distance from the camera to the subject, in meters.\n\n" MinDistance
export MinDistance
import ..Camera_get_MaxDistance as var"##680"
MaxDistance(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##680"(this))
    end
@doc "    MaxDistance(this::RemoteTypes.Camera)\n\nMaximum distance from the camera to the subject, in meters.\n\n" MaxDistance
export MaxDistance
import ..Camera_get_DefaultDistance as var"##681"
DefaultDistance(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##681"(this))
    end
@doc "    DefaultDistance(this::RemoteTypes.Camera)\n\nDefault distance from the camera to the subject, in meters.\n\n" DefaultDistance
export DefaultDistance
import ..Camera_get_FocussedBody as var"##682"
FocussedBody(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##682"(this))
    end
@doc "    FocussedBody(this::RemoteTypes.Camera)\n\nIn map mode, the celestial body that the camera is focussed on.\nReturns null if the camera is not focussed on a celestial body.\nReturns an error is the camera is not in map mode.\n\n" FocussedBody
export FocussedBody
import ..Camera_set_FocussedBody as var"##683"
FocussedBody!(this::RemoteTypes.Camera, value::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##683"(this, value))
    end
@doc "    FocussedBody!(this::RemoteTypes.Camera, value::RemoteTypes.CelestialBody)\n\nIn map mode, the celestial body that the camera is focussed on.\nReturns null if the camera is not focussed on a celestial body.\nReturns an error is the camera is not in map mode.\n\n" FocussedBody!
export FocussedBody!
import ..Camera_get_FocussedVessel as var"##684"
FocussedVessel(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##684"(this))
    end
@doc "    FocussedVessel(this::RemoteTypes.Camera)\n\nIn map mode, the vessel that the camera is focussed on.\nReturns null if the camera is not focussed on a vessel.\nReturns an error is the camera is not in map mode.\n\n" FocussedVessel
export FocussedVessel
import ..Camera_set_FocussedVessel as var"##685"
FocussedVessel!(this::RemoteTypes.Camera, value::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##685"(this, value))
    end
@doc "    FocussedVessel!(this::RemoteTypes.Camera, value::RemoteTypes.Vessel)\n\nIn map mode, the vessel that the camera is focussed on.\nReturns null if the camera is not focussed on a vessel.\nReturns an error is the camera is not in map mode.\n\n" FocussedVessel!
export FocussedVessel!
import ..Camera_get_FocussedNode as var"##686"
FocussedNode(this::RemoteTypes.Camera) = begin
        kerbal(this.conn, var"##686"(this))
    end
@doc "    FocussedNode(this::RemoteTypes.Camera)\n\nIn map mode, the maneuver node that the camera is focussed on.\nReturns null if the camera is not focussed on a maneuver node.\nReturns an error is the camera is not in map mode.\n\n" FocussedNode
export FocussedNode
import ..Camera_set_FocussedNode as var"##687"
FocussedNode!(this::RemoteTypes.Camera, value::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##687"(this, value))
    end
@doc "    FocussedNode!(this::RemoteTypes.Camera, value::RemoteTypes.Node)\n\nIn map mode, the maneuver node that the camera is focussed on.\nReturns null if the camera is not focussed on a maneuver node.\nReturns an error is the camera is not in map mode.\n\n" FocussedNode!
export FocussedNode!
import ..CelestialBody_SurfaceHeight as var"##688"
SurfaceHeight(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64) = begin
        kerbal(this.conn, var"##688"(this, latitude, longitude))
    end
@doc "    SurfaceHeight(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64)\n\nThe height of the surface relative to mean sea level, in meters,\nat the given position. When over water this is equal to 0.\n\n# Arguments\n- `latitude::Float64`: Latitude in degrees.\n- `longitude::Float64`: Longitude in degrees.\n" SurfaceHeight
export SurfaceHeight
import ..CelestialBody_BedrockHeight as var"##689"
BedrockHeight(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64) = begin
        kerbal(this.conn, var"##689"(this, latitude, longitude))
    end
@doc "    BedrockHeight(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64)\n\nThe height of the surface relative to mean sea level, in meters,\nat the given position. When over water, this is the height\nof the sea-bed and is therefore  negative value.\n\n# Arguments\n- `latitude::Float64`: Latitude in degrees.\n- `longitude::Float64`: Longitude in degrees.\n" BedrockHeight
export BedrockHeight
import ..CelestialBody_MSLPosition as var"##690"
MSLPosition(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##690"(this, latitude, longitude, referenceFrame))
    end
@doc "    MSLPosition(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position at mean sea level at the given latitude and longitude,\nin the given reference frame.\n\n# Arguments\n- `latitude::Float64`: Latitude in degrees.\n- `longitude::Float64`: Longitude in degrees.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: Reference frame for the returned position vector.\n# Returns\nPosition as a vector.\n" MSLPosition
export MSLPosition
import ..CelestialBody_SurfacePosition as var"##691"
SurfacePosition(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##691"(this, latitude, longitude, referenceFrame))
    end
@doc "    SurfacePosition(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position of the surface at the given latitude and longitude, in the given\nreference frame. When over water, this is the position of the surface of the water.\n\n# Arguments\n- `latitude::Float64`: Latitude in degrees.\n- `longitude::Float64`: Longitude in degrees.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: Reference frame for the returned position vector.\n# Returns\nPosition as a vector.\n" SurfacePosition
export SurfacePosition
import ..CelestialBody_BedrockPosition as var"##692"
BedrockPosition(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##692"(this, latitude, longitude, referenceFrame))
    end
@doc "    BedrockPosition(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position of the surface at the given latitude and longitude, in the given\nreference frame. When over water, this is the position at the bottom of the sea-bed.\n\n# Arguments\n- `latitude::Float64`: Latitude in degrees.\n- `longitude::Float64`: Longitude in degrees.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: Reference frame for the returned position vector.\n# Returns\nPosition as a vector.\n" BedrockPosition
export BedrockPosition
import ..CelestialBody_PositionAtAltitude as var"##693"
PositionAtAltitude(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, altitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##693"(this, latitude, longitude, altitude, referenceFrame))
    end
@doc "    PositionAtAltitude(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64, altitude::Float64, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position at the given latitude, longitude and altitude, in the given reference frame.\n\n# Arguments\n- `latitude::Float64`: Latitude in degrees.\n- `longitude::Float64`: Longitude in degrees.\n- `altitude::Float64`: Altitude in meters above sea level.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: Reference frame for the returned position vector.\n# Returns\nPosition as a vector.\n" PositionAtAltitude
export PositionAtAltitude
import ..CelestialBody_LatitudeAtPosition as var"##694"
LatitudeAtPosition(this::RemoteTypes.CelestialBody, position::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##694"(this, position, referenceFrame))
    end
@doc "    LatitudeAtPosition(this::RemoteTypes.CelestialBody, position::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe latitude of the given position, in the given reference frame.\n\n# Arguments\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position as a vector.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: Reference frame for the position vector.\n" LatitudeAtPosition
export LatitudeAtPosition
import ..CelestialBody_LongitudeAtPosition as var"##695"
LongitudeAtPosition(this::RemoteTypes.CelestialBody, position::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##695"(this, position, referenceFrame))
    end
@doc "    LongitudeAtPosition(this::RemoteTypes.CelestialBody, position::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe longitude of the given position, in the given reference frame.\n\n# Arguments\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position as a vector.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: Reference frame for the position vector.\n" LongitudeAtPosition
export LongitudeAtPosition
import ..CelestialBody_AltitudeAtPosition as var"##696"
AltitudeAtPosition(this::RemoteTypes.CelestialBody, position::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##696"(this, position, referenceFrame))
    end
@doc "    AltitudeAtPosition(this::RemoteTypes.CelestialBody, position::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe altitude, in meters, of the given position in the given reference frame.\n\n# Arguments\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position as a vector.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: Reference frame for the position vector.\n" AltitudeAtPosition
export AltitudeAtPosition
import ..CelestialBody_AtmosphericDensityAtPosition as var"##697"
AtmosphericDensityAtPosition(this::RemoteTypes.CelestialBody, position::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##697"(this, position, referenceFrame))
    end
@doc "    AtmosphericDensityAtPosition(this::RemoteTypes.CelestialBody, position::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe atmospheric density at the given position, in kg/m^3,\nin the given reference frame.\n\n# Arguments\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: The position vector at which to measure the density.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: Reference frame that the position vector is in.\n" AtmosphericDensityAtPosition
export AtmosphericDensityAtPosition
import ..CelestialBody_TemperatureAt as var"##698"
TemperatureAt(this::RemoteTypes.CelestialBody, position::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##698"(this, position, referenceFrame))
    end
@doc "    TemperatureAt(this::RemoteTypes.CelestialBody, position::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe temperature on the body at the given position, in the given reference frame.\n\n# Arguments\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position as a vector.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the position is in.\n# Remarks\n This calculation is performed using the bodies current position, which means that the value could be wrong if you want to know the temperature in the far future. \n" TemperatureAt
export TemperatureAt
import ..CelestialBody_DensityAt as var"##699"
DensityAt(this::RemoteTypes.CelestialBody, altitude::Float64) = begin
        kerbal(this.conn, var"##699"(this, altitude))
    end
@doc "    DensityAt(this::RemoteTypes.CelestialBody, altitude::Float64)\n\nGets the air density, in kg/m^3, for the specified\naltitude above sea level, in meters.\n\n# Remarks\n This is an approximation, because actual calculations, taking sun exposure into account to compute air temperature, require us to know the exact point on the body where the density is to be computed (knowing the altitude is not enough). However, the difference is small for high altitudes, so it makes very little difference for trajectory prediction. \n" DensityAt
export DensityAt
import ..CelestialBody_PressureAt as var"##700"
PressureAt(this::RemoteTypes.CelestialBody, altitude::Float64) = begin
        kerbal(this.conn, var"##700"(this, altitude))
    end
@doc "    PressureAt(this::RemoteTypes.CelestialBody, altitude::Float64)\n\nGets the air pressure, in Pascals, for the specified\naltitude above sea level, in meters.\n\n" PressureAt
export PressureAt
import ..CelestialBody_BiomeAt as var"##701"
BiomeAt(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64) = begin
        kerbal(this.conn, var"##701"(this, latitude, longitude))
    end
@doc "    BiomeAt(this::RemoteTypes.CelestialBody, latitude::Float64, longitude::Float64)\n\nThe biome at the given latitude and longitude, in degrees.\n\n" BiomeAt
export BiomeAt
import ..CelestialBody_Position as var"##702"
Position(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##702"(this, referenceFrame))
    end
@doc "    Position(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position of the center of the body, in the specified reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n" Position
export Position
import ..CelestialBody_Velocity as var"##703"
Velocity(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##703"(this, referenceFrame))
    end
@doc "    Velocity(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe linear velocity of the body, in the specified reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned velocity vector is in.\n# Returns\nThe velocity as a vector. The vector points in the direction of travel, and its magnitude is the speed of the body in meters per second.\n" Velocity
export Velocity
import ..CelestialBody_Rotation as var"##704"
Rotation(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##704"(this, referenceFrame))
    end
@doc "    Rotation(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe rotation of the body, in the specified reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned rotation is in.\n# Returns\nThe rotation as a quaternion of the form (x, y, z, w).\n" Rotation
export Rotation
import ..CelestialBody_Direction as var"##705"
Direction(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##705"(this, referenceFrame))
    end
@doc "    Direction(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe direction in which the north pole of the celestial body is pointing,\nin the specified reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned direction is in.\n# Returns\nThe direction as a unit vector.\n" Direction
export Direction
import ..CelestialBody_AngularVelocity as var"##706"
AngularVelocity(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##706"(this, referenceFrame))
    end
@doc "    AngularVelocity(this::RemoteTypes.CelestialBody, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe angular velocity of the body in the specified reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame the returned angular velocity is in.\n# Returns\nThe angular velocity as a vector. The magnitude of the vector is the rotational speed of the body, in radians per second. The direction of the vector indicates the axis of rotation, using the right-hand rule.\n" AngularVelocity
export AngularVelocity
import ..CelestialBody_get_Name as var"##707"
Name(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##707"(this))
    end
@doc "    Name(this::RemoteTypes.CelestialBody)\n\nThe name of the body.\n\n" Name
export Name
import ..CelestialBody_get_Satellites as var"##708"
Satellites(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##708"(this))
    end
@doc "    Satellites(this::RemoteTypes.CelestialBody)\n\nA list of celestial bodies that are in orbit around this celestial body.\n\n" Satellites
export Satellites
import ..CelestialBody_get_Mass as var"##709"
Mass(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##709"(this))
    end
@doc "    Mass(this::RemoteTypes.CelestialBody)\n\nThe mass of the body, in kilograms.\n\n" Mass
export Mass
import ..CelestialBody_get_GravitationalParameter as var"##710"
GravitationalParameter(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##710"(this))
    end
@doc "    GravitationalParameter(this::RemoteTypes.CelestialBody)\n\nThe standard\ngravitational parameter of the body in m^3s^{-2}.\n\n" GravitationalParameter
export GravitationalParameter
import ..CelestialBody_get_SurfaceGravity as var"##711"
SurfaceGravity(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##711"(this))
    end
@doc "    SurfaceGravity(this::RemoteTypes.CelestialBody)\n\nThe acceleration due to gravity at sea level (mean altitude) on the body,\nin m/s^2.\n\n" SurfaceGravity
export SurfaceGravity
import ..CelestialBody_get_RotationalPeriod as var"##712"
RotationalPeriod(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##712"(this))
    end
@doc "    RotationalPeriod(this::RemoteTypes.CelestialBody)\n\nThe sidereal rotational period of the body, in seconds.\n\n" RotationalPeriod
export RotationalPeriod
import ..CelestialBody_get_RotationalSpeed as var"##713"
RotationalSpeed(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##713"(this))
    end
@doc "    RotationalSpeed(this::RemoteTypes.CelestialBody)\n\nThe rotational speed of the body, in radians per second.\n\n" RotationalSpeed
export RotationalSpeed
import ..CelestialBody_get_RotationAngle as var"##714"
RotationAngle(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##714"(this))
    end
@doc "    RotationAngle(this::RemoteTypes.CelestialBody)\n\nThe current rotation angle of the body, in radians.\nA value between 0 and 2\\pi\n" RotationAngle
export RotationAngle
import ..CelestialBody_get_InitialRotation as var"##715"
InitialRotation(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##715"(this))
    end
@doc "    InitialRotation(this::RemoteTypes.CelestialBody)\n\nThe initial rotation angle of the body (at UT 0), in radians.\nA value between 0 and 2\\pi\n" InitialRotation
export InitialRotation
import ..CelestialBody_get_EquatorialRadius as var"##716"
EquatorialRadius(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##716"(this))
    end
@doc "    EquatorialRadius(this::RemoteTypes.CelestialBody)\n\nThe equatorial radius of the body, in meters.\n\n" EquatorialRadius
export EquatorialRadius
import ..CelestialBody_get_SphereOfInfluence as var"##717"
SphereOfInfluence(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##717"(this))
    end
@doc "    SphereOfInfluence(this::RemoteTypes.CelestialBody)\n\nThe radius of the sphere of influence of the body, in meters.\n\n" SphereOfInfluence
export SphereOfInfluence
import ..CelestialBody_get_Orbit as var"##718"
Orbit(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##718"(this))
    end
@doc "    Orbit(this::RemoteTypes.CelestialBody)\n\nThe orbit of the body.\n\n" Orbit
export Orbit
import ..CelestialBody_get_HasAtmosphere as var"##719"
HasAtmosphere(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##719"(this))
    end
@doc "    HasAtmosphere(this::RemoteTypes.CelestialBody)\ntrue if the body has an atmosphere.\n\n" HasAtmosphere
export HasAtmosphere
import ..CelestialBody_get_AtmosphereDepth as var"##720"
AtmosphereDepth(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##720"(this))
    end
@doc "    AtmosphereDepth(this::RemoteTypes.CelestialBody)\n\nThe depth of the atmosphere, in meters.\n\n" AtmosphereDepth
export AtmosphereDepth
import ..CelestialBody_get_HasAtmosphericOxygen as var"##721"
HasAtmosphericOxygen(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##721"(this))
    end
@doc "    HasAtmosphericOxygen(this::RemoteTypes.CelestialBody)\ntrue if there is oxygen in the atmosphere, required for air-breathing engines.\n\n" HasAtmosphericOxygen
export HasAtmosphericOxygen
import ..CelestialBody_get_Biomes as var"##722"
Biomes(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##722"(this))
    end
@doc "    Biomes(this::RemoteTypes.CelestialBody)\n\nThe biomes present on this body.\n\n" Biomes
export Biomes
import ..CelestialBody_get_FlyingHighAltitudeThreshold as var"##723"
FlyingHighAltitudeThreshold(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##723"(this))
    end
@doc "    FlyingHighAltitudeThreshold(this::RemoteTypes.CelestialBody)\n\nThe altitude, in meters, above which a vessel is considered to be\nflying \"high\" when doing science.\n\n" FlyingHighAltitudeThreshold
export FlyingHighAltitudeThreshold
import ..CelestialBody_get_SpaceHighAltitudeThreshold as var"##724"
SpaceHighAltitudeThreshold(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##724"(this))
    end
@doc "    SpaceHighAltitudeThreshold(this::RemoteTypes.CelestialBody)\n\nThe altitude, in meters, above which a vessel is considered to be\nin \"high\" space when doing science.\n\n" SpaceHighAltitudeThreshold
export SpaceHighAltitudeThreshold
import ..CelestialBody_get_ReferenceFrame as var"##725"
ReferenceFrame(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##725"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.CelestialBody)\n\nThe reference frame that is fixed relative to the celestial body.\nThe origin is at the center of the body.\nThe axes rotate with the body.The x-axis points from the center of the body\ntowards the intersection of the prime meridian and equator (the\nposition at 0° longitude, 0° latitude).The y-axis points from the center of the body\ntowards the north pole.The z-axis points from the center of the body\ntowards the equator at 90°E longitude.\n" ReferenceFrame
export ReferenceFrame
import ..CelestialBody_get_NonRotatingReferenceFrame as var"##726"
NonRotatingReferenceFrame(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##726"(this))
    end
@doc "    NonRotatingReferenceFrame(this::RemoteTypes.CelestialBody)\n\nThe reference frame that is fixed relative to this celestial body, and\norientated in a fixed direction (it does not rotate with the body).\nThe origin is at the center of the body.The axes do not rotate.The x-axis points in an arbitrary direction through the\nequator.The y-axis points from the center of the body towards\nthe north pole.The z-axis points in an arbitrary direction through the\nequator.\n" NonRotatingReferenceFrame
export NonRotatingReferenceFrame
import ..CelestialBody_get_OrbitalReferenceFrame as var"##727"
OrbitalReferenceFrame(this::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##727"(this))
    end
@doc "    OrbitalReferenceFrame(this::RemoteTypes.CelestialBody)\n\nThe reference frame that is fixed relative to this celestial body, but\norientated with the body's orbital prograde/normal/radial directions.\nThe origin is at the center of the body.\nThe axes rotate with the orbital prograde/normal/radial\ndirections.The x-axis points in the orbital anti-radial direction.\nThe y-axis points in the orbital prograde direction.\nThe z-axis points in the orbital normal direction.\n\n" OrbitalReferenceFrame
export OrbitalReferenceFrame
import ..CommLink_get_Type as var"##728"
Type(this::RemoteTypes.CommLink) = begin
        kerbal(this.conn, var"##728"(this))
    end
@doc "    Type(this::RemoteTypes.CommLink)\n\nThe type of link.\n\n" Type
export Type
import ..CommLink_get_SignalStrength as var"##729"
SignalStrength(this::RemoteTypes.CommLink) = begin
        kerbal(this.conn, var"##729"(this))
    end
@doc "    SignalStrength(this::RemoteTypes.CommLink)\n\nSignal strength of the link.\n\n" SignalStrength
export SignalStrength
import ..CommLink_get_Start as var"##730"
Start(this::RemoteTypes.CommLink) = begin
        kerbal(this.conn, var"##730"(this))
    end
@doc "    Start(this::RemoteTypes.CommLink)\n\nStart point of the link.\n\n" Start
export Start
import ..CommLink_get_End as var"##731"
End(this::RemoteTypes.CommLink) = begin
        kerbal(this.conn, var"##731"(this))
    end
@doc "    End(this::RemoteTypes.CommLink)\n\nStart point of the link.\n\n" End
export End
import ..CommNode_get_Name as var"##732"
Name(this::RemoteTypes.CommNode) = begin
        kerbal(this.conn, var"##732"(this))
    end
@doc "    Name(this::RemoteTypes.CommNode)\n\nName of the communication node.\n\n" Name
export Name
import ..CommNode_get_IsHome as var"##733"
IsHome(this::RemoteTypes.CommNode) = begin
        kerbal(this.conn, var"##733"(this))
    end
@doc "    IsHome(this::RemoteTypes.CommNode)\n\nWhether the communication node is on Kerbin.\n\n" IsHome
export IsHome
import ..CommNode_get_IsControlPoint as var"##734"
IsControlPoint(this::RemoteTypes.CommNode) = begin
        kerbal(this.conn, var"##734"(this))
    end
@doc "    IsControlPoint(this::RemoteTypes.CommNode)\n\nWhether the communication node is a control point, for example a manned vessel.\n\n" IsControlPoint
export IsControlPoint
import ..CommNode_get_IsVessel as var"##735"
IsVessel(this::RemoteTypes.CommNode) = begin
        kerbal(this.conn, var"##735"(this))
    end
@doc "    IsVessel(this::RemoteTypes.CommNode)\n\nWhether the communication node is a vessel.\n\n" IsVessel
export IsVessel
import ..CommNode_get_Vessel as var"##736"
Vessel(this::RemoteTypes.CommNode) = begin
        kerbal(this.conn, var"##736"(this))
    end
@doc "    Vessel(this::RemoteTypes.CommNode)\n\nThe vessel for this communication node.\n\n" Vessel
export Vessel
import ..Comms_get_CanCommunicate as var"##737"
CanCommunicate(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##737"(this))
    end
@doc "    CanCommunicate(this::RemoteTypes.Comms)\n\nWhether the vessel can communicate with KSC.\n\n" CanCommunicate
export CanCommunicate
import ..Comms_get_CanTransmitScience as var"##738"
CanTransmitScience(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##738"(this))
    end
@doc "    CanTransmitScience(this::RemoteTypes.Comms)\n\nWhether the vessel can transmit science data to KSC.\n\n" CanTransmitScience
export CanTransmitScience
import ..Comms_get_SignalStrength as var"##739"
SignalStrength(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##739"(this))
    end
@doc "    SignalStrength(this::RemoteTypes.Comms)\n\nSignal strength to KSC.\n\n" SignalStrength
export SignalStrength
import ..Comms_get_SignalDelay as var"##740"
SignalDelay(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##740"(this))
    end
@doc "    SignalDelay(this::RemoteTypes.Comms)\n\nSignal delay to KSC in seconds.\n\n" SignalDelay
export SignalDelay
import ..Comms_get_Power as var"##741"
Power(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##741"(this))
    end
@doc "    Power(this::RemoteTypes.Comms)\n\nThe combined power of all active antennae on the vessel.\n\n" Power
export Power
import ..Comms_get_ControlPath as var"##742"
ControlPath(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##742"(this))
    end
@doc "    ControlPath(this::RemoteTypes.Comms)\n\nThe communication path used to control the vessel.\n\n" ControlPath
export ControlPath
import ..Contract_Cancel as var"##743"
Cancel(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##743"(this))
    end
@doc "    Cancel(this::RemoteTypes.Contract)\n\nCancel an active contract.\n\n" Cancel
export Cancel
import ..Contract_Accept as var"##744"
Accept(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##744"(this))
    end
@doc "    Accept(this::RemoteTypes.Contract)\n\nAccept an offered contract.\n\n" Accept
export Accept
import ..Contract_Decline as var"##745"
Decline(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##745"(this))
    end
@doc "    Decline(this::RemoteTypes.Contract)\n\nDecline an offered contract.\n\n" Decline
export Decline
import ..Contract_get_Type as var"##746"
Type(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##746"(this))
    end
@doc "    Type(this::RemoteTypes.Contract)\n\nType of the contract.\n\n" Type
export Type
import ..Contract_get_Title as var"##747"
Title(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##747"(this))
    end
@doc "    Title(this::RemoteTypes.Contract)\n\nTitle of the contract.\n\n" Title
export Title
import ..Contract_get_Description as var"##748"
Description(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##748"(this))
    end
@doc "    Description(this::RemoteTypes.Contract)\n\nDescription of the contract.\n\n" Description
export Description
import ..Contract_get_Notes as var"##749"
Notes(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##749"(this))
    end
@doc "    Notes(this::RemoteTypes.Contract)\n\nNotes for the contract.\n\n" Notes
export Notes
import ..Contract_get_Synopsis as var"##750"
Synopsis(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##750"(this))
    end
@doc "    Synopsis(this::RemoteTypes.Contract)\n\nSynopsis for the contract.\n\n" Synopsis
export Synopsis
import ..Contract_get_Keywords as var"##751"
Keywords(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##751"(this))
    end
@doc "    Keywords(this::RemoteTypes.Contract)\n\nKeywords for the contract.\n\n" Keywords
export Keywords
import ..Contract_get_State as var"##752"
State(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##752"(this))
    end
@doc "    State(this::RemoteTypes.Contract)\n\nState of the contract.\n\n" State
export State
import ..Contract_get_Active as var"##753"
Active(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##753"(this))
    end
@doc "    Active(this::RemoteTypes.Contract)\n\nWhether the contract is active.\n\n" Active
export Active
import ..Contract_get_Failed as var"##754"
Failed(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##754"(this))
    end
@doc "    Failed(this::RemoteTypes.Contract)\n\nWhether the contract has been failed.\n\n" Failed
export Failed
import ..Contract_get_Seen as var"##755"
Seen(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##755"(this))
    end
@doc "    Seen(this::RemoteTypes.Contract)\n\nWhether the contract has been seen.\n\n" Seen
export Seen
import ..Contract_get_Read as var"##756"
Read(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##756"(this))
    end
@doc "    Read(this::RemoteTypes.Contract)\n\nWhether the contract has been read.\n\n" Read
export Read
import ..Contract_get_CanBeCanceled as var"##757"
CanBeCanceled(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##757"(this))
    end
@doc "    CanBeCanceled(this::RemoteTypes.Contract)\n\nWhether the contract can be canceled.\n\n" CanBeCanceled
export CanBeCanceled
import ..Contract_get_CanBeDeclined as var"##758"
CanBeDeclined(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##758"(this))
    end
@doc "    CanBeDeclined(this::RemoteTypes.Contract)\n\nWhether the contract can be declined.\n\n" CanBeDeclined
export CanBeDeclined
import ..Contract_get_CanBeFailed as var"##759"
CanBeFailed(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##759"(this))
    end
@doc "    CanBeFailed(this::RemoteTypes.Contract)\n\nWhether the contract can be failed.\n\n" CanBeFailed
export CanBeFailed
import ..Contract_get_FundsAdvance as var"##760"
FundsAdvance(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##760"(this))
    end
@doc "    FundsAdvance(this::RemoteTypes.Contract)\n\nFunds received when accepting the contract.\n\n" FundsAdvance
export FundsAdvance
import ..Contract_get_FundsCompletion as var"##761"
FundsCompletion(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##761"(this))
    end
@doc "    FundsCompletion(this::RemoteTypes.Contract)\n\nFunds received on completion of the contract.\n\n" FundsCompletion
export FundsCompletion
import ..Contract_get_FundsFailure as var"##762"
FundsFailure(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##762"(this))
    end
@doc "    FundsFailure(this::RemoteTypes.Contract)\n\nFunds lost if the contract is failed.\n\n" FundsFailure
export FundsFailure
import ..Contract_get_ReputationCompletion as var"##763"
ReputationCompletion(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##763"(this))
    end
@doc "    ReputationCompletion(this::RemoteTypes.Contract)\n\nReputation gained on completion of the contract.\n\n" ReputationCompletion
export ReputationCompletion
import ..Contract_get_ReputationFailure as var"##764"
ReputationFailure(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##764"(this))
    end
@doc "    ReputationFailure(this::RemoteTypes.Contract)\n\nReputation lost if the contract is failed.\n\n" ReputationFailure
export ReputationFailure
import ..Contract_get_ScienceCompletion as var"##765"
ScienceCompletion(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##765"(this))
    end
@doc "    ScienceCompletion(this::RemoteTypes.Contract)\n\nScience gained on completion of the contract.\n\n" ScienceCompletion
export ScienceCompletion
import ..Contract_get_Parameters as var"##766"
Parameters(this::RemoteTypes.Contract) = begin
        kerbal(this.conn, var"##766"(this))
    end
@doc "    Parameters(this::RemoteTypes.Contract)\n\nParameters for the contract.\n\n" Parameters
export Parameters
import ..ContractManager_get_Types as var"##767"
Types(this::RemoteTypes.ContractManager) = begin
        kerbal(this.conn, var"##767"(this))
    end
@doc "    Types(this::RemoteTypes.ContractManager)\n\nA list of all contract types.\n\n" Types
export Types
import ..ContractManager_get_AllContracts as var"##768"
AllContracts(this::RemoteTypes.ContractManager) = begin
        kerbal(this.conn, var"##768"(this))
    end
@doc "    AllContracts(this::RemoteTypes.ContractManager)\n\nA list of all contracts.\n\n" AllContracts
export AllContracts
import ..ContractManager_get_ActiveContracts as var"##769"
ActiveContracts(this::RemoteTypes.ContractManager) = begin
        kerbal(this.conn, var"##769"(this))
    end
@doc "    ActiveContracts(this::RemoteTypes.ContractManager)\n\nA list of all active contracts.\n\n" ActiveContracts
export ActiveContracts
import ..ContractManager_get_OfferedContracts as var"##770"
OfferedContracts(this::RemoteTypes.ContractManager) = begin
        kerbal(this.conn, var"##770"(this))
    end
@doc "    OfferedContracts(this::RemoteTypes.ContractManager)\n\nA list of all offered, but unaccepted, contracts.\n\n" OfferedContracts
export OfferedContracts
import ..ContractManager_get_CompletedContracts as var"##771"
CompletedContracts(this::RemoteTypes.ContractManager) = begin
        kerbal(this.conn, var"##771"(this))
    end
@doc "    CompletedContracts(this::RemoteTypes.ContractManager)\n\nA list of all completed contracts.\n\n" CompletedContracts
export CompletedContracts
import ..ContractManager_get_FailedContracts as var"##772"
FailedContracts(this::RemoteTypes.ContractManager) = begin
        kerbal(this.conn, var"##772"(this))
    end
@doc "    FailedContracts(this::RemoteTypes.ContractManager)\n\nA list of all failed contracts.\n\n" FailedContracts
export FailedContracts
import ..ContractParameter_get_Title as var"##773"
Title(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##773"(this))
    end
@doc "    Title(this::RemoteTypes.ContractParameter)\n\nTitle of the parameter.\n\n" Title
export Title
import ..ContractParameter_get_Notes as var"##774"
Notes(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##774"(this))
    end
@doc "    Notes(this::RemoteTypes.ContractParameter)\n\nNotes for the parameter.\n\n" Notes
export Notes
import ..ContractParameter_get_Children as var"##775"
Children(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##775"(this))
    end
@doc "    Children(this::RemoteTypes.ContractParameter)\n\nChild contract parameters.\n\n" Children
export Children
import ..ContractParameter_get_Completed as var"##776"
Completed(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##776"(this))
    end
@doc "    Completed(this::RemoteTypes.ContractParameter)\n\nWhether the parameter has been completed.\n\n" Completed
export Completed
import ..ContractParameter_get_Failed as var"##777"
Failed(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##777"(this))
    end
@doc "    Failed(this::RemoteTypes.ContractParameter)\n\nWhether the parameter has been failed.\n\n" Failed
export Failed
import ..ContractParameter_get_Optional as var"##778"
Optional(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##778"(this))
    end
@doc "    Optional(this::RemoteTypes.ContractParameter)\n\nWhether the contract parameter is optional.\n\n" Optional
export Optional
import ..ContractParameter_get_FundsCompletion as var"##779"
FundsCompletion(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##779"(this))
    end
@doc "    FundsCompletion(this::RemoteTypes.ContractParameter)\n\nFunds received on completion of the contract parameter.\n\n" FundsCompletion
export FundsCompletion
import ..ContractParameter_get_FundsFailure as var"##780"
FundsFailure(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##780"(this))
    end
@doc "    FundsFailure(this::RemoteTypes.ContractParameter)\n\nFunds lost if the contract parameter is failed.\n\n" FundsFailure
export FundsFailure
import ..ContractParameter_get_ReputationCompletion as var"##781"
ReputationCompletion(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##781"(this))
    end
@doc "    ReputationCompletion(this::RemoteTypes.ContractParameter)\n\nReputation gained on completion of the contract parameter.\n\n" ReputationCompletion
export ReputationCompletion
import ..ContractParameter_get_ReputationFailure as var"##782"
ReputationFailure(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##782"(this))
    end
@doc "    ReputationFailure(this::RemoteTypes.ContractParameter)\n\nReputation lost if the contract parameter is failed.\n\n" ReputationFailure
export ReputationFailure
import ..ContractParameter_get_ScienceCompletion as var"##783"
ScienceCompletion(this::RemoteTypes.ContractParameter) = begin
        kerbal(this.conn, var"##783"(this))
    end
@doc "    ScienceCompletion(this::RemoteTypes.ContractParameter)\n\nScience gained on completion of the contract parameter.\n\n" ScienceCompletion
export ScienceCompletion
import ..Control_ActivateNextStage as var"##784"
ActivateNextStage(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##784"(this))
    end
@doc "    ActivateNextStage(this::RemoteTypes.Control)\n\nActivates the next stage. Equivalent to pressing the space bar in-game.\n\n# Returns\nA list of vessel objects that are jettisoned from the active vessel.\n# Remarks\n When called, the active vessel may change. It is therefore possible that, after calling this function, the object(s) returned by previous call(s) to  no longer refer to the active vessel. Throws an exception if staging is locked. \n" ActivateNextStage
export ActivateNextStage
import ..Control_GetActionGroup as var"##785"
GetActionGroup(this::RemoteTypes.Control, group::UInt32) = begin
        kerbal(this.conn, var"##785"(this, group))
    end
@doc "    GetActionGroup(this::RemoteTypes.Control, group::UInt32)\n\nReturns true if the given action group is enabled.\n\n# Arguments\n- `group::UInt32`:  A number between 0 and 9 inclusive, or between 0 and 250 inclusive when the Extended Action Groups mod is installed. \n" GetActionGroup
export GetActionGroup
import ..Control_SetActionGroup as var"##786"
SetActionGroup(this::RemoteTypes.Control, group::UInt32, state::Bool) = begin
        kerbal(this.conn, var"##786"(this, group, state))
    end
@doc "    SetActionGroup(this::RemoteTypes.Control, group::UInt32, state::Bool)\n\nSets the state of the given action group.\n\n# Arguments\n- `group::UInt32`:  A number between 0 and 9 inclusive, or between 0 and 250 inclusive when the Extended Action Groups mod is installed. \n- `state::Bool`: \n" SetActionGroup
export SetActionGroup
import ..Control_ToggleActionGroup as var"##787"
ToggleActionGroup(this::RemoteTypes.Control, group::UInt32) = begin
        kerbal(this.conn, var"##787"(this, group))
    end
@doc "    ToggleActionGroup(this::RemoteTypes.Control, group::UInt32)\n\nToggles the state of the given action group.\n\n# Arguments\n- `group::UInt32`:  A number between 0 and 9 inclusive, or between 0 and 250 inclusive when the Extended Action Groups mod is installed. \n" ToggleActionGroup
export ToggleActionGroup
import ..Control_AddNode as var"##788"
AddNode(this::RemoteTypes.Control, ut::Float64, prograde::Float32 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x00, 0x00], Float32), normal::Float32 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x00, 0x00], Float32), radial::Float32 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x00, 0x00], Float32)) = begin
        kerbal(this.conn, var"##788"(this, ut, prograde, normal, radial))
    end
@doc "    AddNode(this::RemoteTypes.Control, ut::Float64, prograde::Float32, normal::Float32, radial::Float32)\n\nCreates a maneuver node at the given universal time, and returns a\n object that can be used to modify it.\nOptionally sets the magnitude of the delta-v for the maneuver node\nin the prograde, normal and radial directions.\n\n# Arguments\n- `ut::Float64`: Universal time of the maneuver node.\n- `prograde::Float32`: Delta-v in the prograde direction.\n- `normal::Float32`: Delta-v in the normal direction.\n- `radial::Float32`: Delta-v in the radial direction.\n" AddNode
export AddNode
import ..Control_RemoveNodes as var"##789"
RemoveNodes(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##789"(this))
    end
@doc "    RemoveNodes(this::RemoteTypes.Control)\n\nRemove all maneuver nodes.\n\n" RemoveNodes
export RemoveNodes
import ..Control_get_State as var"##790"
State(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##790"(this))
    end
@doc "    State(this::RemoteTypes.Control)\n\nThe control state of the vessel.\n\n" State
export State
import ..Control_get_Source as var"##791"
Source(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##791"(this))
    end
@doc "    Source(this::RemoteTypes.Control)\n\nThe source of the vessels control, for example by a kerbal or a probe core.\n\n" Source
export Source
import ..Control_get_SAS as var"##792"
SAS(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##792"(this))
    end
@doc "    SAS(this::RemoteTypes.Control)\n\nThe state of SAS.\n\n# Remarks\nEquivalent to \n" SAS
export SAS
import ..Control_set_SAS as var"##793"
SAS!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##793"(this, value))
    end
@doc "    SAS!(this::RemoteTypes.Control, value::Bool)\n\nThe state of SAS.\n\n# Remarks\nEquivalent to \n" SAS!
export SAS!
import ..Control_get_SASMode as var"##794"
SASMode(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##794"(this))
    end
@doc "    SASMode(this::RemoteTypes.Control)\n\nThe current .\nThese modes are equivalent to the mode buttons to\nthe left of the navball that appear when SAS is enabled.\n\n# Remarks\nEquivalent to \n" SASMode
export SASMode
import ..Control_set_SASMode as var"##795"
SASMode!(this::RemoteTypes.Control, value::ESASMode) = begin
        kerbal(this.conn, var"##795"(this, value))
    end
@doc "    SASMode!(this::RemoteTypes.Control, value::ESASMode)\n\nThe current .\nThese modes are equivalent to the mode buttons to\nthe left of the navball that appear when SAS is enabled.\n\n# Remarks\nEquivalent to \n" SASMode!
export SASMode!
import ..Control_get_SpeedMode as var"##796"
SpeedMode(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##796"(this))
    end
@doc "    SpeedMode(this::RemoteTypes.Control)\n\nThe current  of the navball.\nThis is the mode displayed next to the speed at the top of the navball.\n\n" SpeedMode
export SpeedMode
import ..Control_set_SpeedMode as var"##797"
SpeedMode!(this::RemoteTypes.Control, value::ESpeedMode) = begin
        kerbal(this.conn, var"##797"(this, value))
    end
@doc "    SpeedMode!(this::RemoteTypes.Control, value::ESpeedMode)\n\nThe current  of the navball.\nThis is the mode displayed next to the speed at the top of the navball.\n\n" SpeedMode!
export SpeedMode!
import ..Control_get_RCS as var"##798"
RCS(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##798"(this))
    end
@doc "    RCS(this::RemoteTypes.Control)\n\nThe state of RCS.\n\n" RCS
export RCS
import ..Control_set_RCS as var"##799"
RCS!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##799"(this, value))
    end
@doc "    RCS!(this::RemoteTypes.Control, value::Bool)\n\nThe state of RCS.\n\n" RCS!
export RCS!
import ..Control_get_ReactionWheels as var"##800"
ReactionWheels(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##800"(this))
    end
@doc "    ReactionWheels(this::RemoteTypes.Control)\n\nReturns whether all reactive wheels on the vessel are active,\nand sets the active state of all reaction wheels.\nSee .\n\n" ReactionWheels
export ReactionWheels
import ..Control_set_ReactionWheels as var"##801"
ReactionWheels!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##801"(this, value))
    end
@doc "    ReactionWheels!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether all reactive wheels on the vessel are active,\nand sets the active state of all reaction wheels.\nSee .\n\n" ReactionWheels!
export ReactionWheels!
import ..Control_get_Gear as var"##802"
Gear(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##802"(this))
    end
@doc "    Gear(this::RemoteTypes.Control)\n\nThe state of the landing gear/legs.\n\n" Gear
export Gear
import ..Control_set_Gear as var"##803"
Gear!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##803"(this, value))
    end
@doc "    Gear!(this::RemoteTypes.Control, value::Bool)\n\nThe state of the landing gear/legs.\n\n" Gear!
export Gear!
import ..Control_get_Legs as var"##804"
Legs(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##804"(this))
    end
@doc "    Legs(this::RemoteTypes.Control)\n\nReturns whether all landing legs on the vessel are deployed,\nand sets the deployment state of all landing legs.\nDoes not include wheels (for example landing gear).\nSee .\n\n" Legs
export Legs
import ..Control_set_Legs as var"##805"
Legs!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##805"(this, value))
    end
@doc "    Legs!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether all landing legs on the vessel are deployed,\nand sets the deployment state of all landing legs.\nDoes not include wheels (for example landing gear).\nSee .\n\n" Legs!
export Legs!
import ..Control_get_Wheels as var"##806"
Wheels(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##806"(this))
    end
@doc "    Wheels(this::RemoteTypes.Control)\n\nReturns whether all wheels on the vessel are deployed,\nand sets the deployment state of all wheels.\nDoes not include landing legs.\nSee .\n\n" Wheels
export Wheels
import ..Control_set_Wheels as var"##807"
Wheels!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##807"(this, value))
    end
@doc "    Wheels!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether all wheels on the vessel are deployed,\nand sets the deployment state of all wheels.\nDoes not include landing legs.\nSee .\n\n" Wheels!
export Wheels!
import ..Control_get_Lights as var"##808"
Lights(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##808"(this))
    end
@doc "    Lights(this::RemoteTypes.Control)\n\nThe state of the lights.\n\n" Lights
export Lights
import ..Control_set_Lights as var"##809"
Lights!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##809"(this, value))
    end
@doc "    Lights!(this::RemoteTypes.Control, value::Bool)\n\nThe state of the lights.\n\n" Lights!
export Lights!
import ..Control_get_Brakes as var"##810"
Brakes(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##810"(this))
    end
@doc "    Brakes(this::RemoteTypes.Control)\n\nThe state of the wheel brakes.\n\n" Brakes
export Brakes
import ..Control_set_Brakes as var"##811"
Brakes!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##811"(this, value))
    end
@doc "    Brakes!(this::RemoteTypes.Control, value::Bool)\n\nThe state of the wheel brakes.\n\n" Brakes!
export Brakes!
import ..Control_get_Antennas as var"##812"
Antennas(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##812"(this))
    end
@doc "    Antennas(this::RemoteTypes.Control)\n\nReturns whether all antennas on the vessel are deployed,\nand sets the deployment state of all antennas.\nSee .\n\n" Antennas
export Antennas
import ..Control_set_Antennas as var"##813"
Antennas!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##813"(this, value))
    end
@doc "    Antennas!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether all antennas on the vessel are deployed,\nand sets the deployment state of all antennas.\nSee .\n\n" Antennas!
export Antennas!
import ..Control_get_CargoBays as var"##814"
CargoBays(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##814"(this))
    end
@doc "    CargoBays(this::RemoteTypes.Control)\n\nReturns whether any of the cargo bays on the vessel are open,\nand sets the open state of all cargo bays.\nSee .\n\n" CargoBays
export CargoBays
import ..Control_set_CargoBays as var"##815"
CargoBays!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##815"(this, value))
    end
@doc "    CargoBays!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether any of the cargo bays on the vessel are open,\nand sets the open state of all cargo bays.\nSee .\n\n" CargoBays!
export CargoBays!
import ..Control_get_Intakes as var"##816"
Intakes(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##816"(this))
    end
@doc "    Intakes(this::RemoteTypes.Control)\n\nReturns whether all of the air intakes on the vessel are open,\nand sets the open state of all air intakes.\nSee .\n\n" Intakes
export Intakes
import ..Control_set_Intakes as var"##817"
Intakes!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##817"(this, value))
    end
@doc "    Intakes!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether all of the air intakes on the vessel are open,\nand sets the open state of all air intakes.\nSee .\n\n" Intakes!
export Intakes!
import ..Control_get_Parachutes as var"##818"
Parachutes(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##818"(this))
    end
@doc "    Parachutes(this::RemoteTypes.Control)\n\nReturns whether all parachutes on the vessel are deployed,\nand sets the deployment state of all parachutes.\nCannot be set to false.\nSee .\n\n" Parachutes
export Parachutes
import ..Control_set_Parachutes as var"##819"
Parachutes!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##819"(this, value))
    end
@doc "    Parachutes!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether all parachutes on the vessel are deployed,\nand sets the deployment state of all parachutes.\nCannot be set to false.\nSee .\n\n" Parachutes!
export Parachutes!
import ..Control_get_Radiators as var"##820"
Radiators(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##820"(this))
    end
@doc "    Radiators(this::RemoteTypes.Control)\n\nReturns whether all radiators on the vessel are deployed,\nand sets the deployment state of all radiators.\nSee .\n\n" Radiators
export Radiators
import ..Control_set_Radiators as var"##821"
Radiators!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##821"(this, value))
    end
@doc "    Radiators!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether all radiators on the vessel are deployed,\nand sets the deployment state of all radiators.\nSee .\n\n" Radiators!
export Radiators!
import ..Control_get_ResourceHarvesters as var"##822"
ResourceHarvesters(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##822"(this))
    end
@doc "    ResourceHarvesters(this::RemoteTypes.Control)\n\nReturns whether all of the resource harvesters on the vessel are deployed,\nand sets the deployment state of all resource harvesters.\nSee .\n\n" ResourceHarvesters
export ResourceHarvesters
import ..Control_set_ResourceHarvesters as var"##823"
ResourceHarvesters!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##823"(this, value))
    end
@doc "    ResourceHarvesters!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether all of the resource harvesters on the vessel are deployed,\nand sets the deployment state of all resource harvesters.\nSee .\n\n" ResourceHarvesters!
export ResourceHarvesters!
import ..Control_get_ResourceHarvestersActive as var"##824"
ResourceHarvestersActive(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##824"(this))
    end
@doc "    ResourceHarvestersActive(this::RemoteTypes.Control)\n\nReturns whether any of the resource harvesters on the vessel are active,\nand sets the active state of all resource harvesters.\nSee .\n\n" ResourceHarvestersActive
export ResourceHarvestersActive
import ..Control_set_ResourceHarvestersActive as var"##825"
ResourceHarvestersActive!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##825"(this, value))
    end
@doc "    ResourceHarvestersActive!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether any of the resource harvesters on the vessel are active,\nand sets the active state of all resource harvesters.\nSee .\n\n" ResourceHarvestersActive!
export ResourceHarvestersActive!
import ..Control_get_SolarPanels as var"##826"
SolarPanels(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##826"(this))
    end
@doc "    SolarPanels(this::RemoteTypes.Control)\n\nReturns whether all solar panels on the vessel are deployed,\nand sets the deployment state of all solar panels.\nSee .\n\n" SolarPanels
export SolarPanels
import ..Control_set_SolarPanels as var"##827"
SolarPanels!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##827"(this, value))
    end
@doc "    SolarPanels!(this::RemoteTypes.Control, value::Bool)\n\nReturns whether all solar panels on the vessel are deployed,\nand sets the deployment state of all solar panels.\nSee .\n\n" SolarPanels!
export SolarPanels!
import ..Control_get_Abort as var"##828"
Abort(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##828"(this))
    end
@doc "    Abort(this::RemoteTypes.Control)\n\nThe state of the abort action group.\n\n" Abort
export Abort
import ..Control_set_Abort as var"##829"
Abort!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##829"(this, value))
    end
@doc "    Abort!(this::RemoteTypes.Control, value::Bool)\n\nThe state of the abort action group.\n\n" Abort!
export Abort!
import ..Control_get_Throttle as var"##830"
Throttle(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##830"(this))
    end
@doc "    Throttle(this::RemoteTypes.Control)\n\nThe state of the throttle. A value between 0 and 1.\n\n" Throttle
export Throttle
import ..Control_set_Throttle as var"##831"
Throttle!(this::RemoteTypes.Control, value::Float32) = begin
        kerbal(this.conn, var"##831"(this, value))
    end
@doc "    Throttle!(this::RemoteTypes.Control, value::Float32)\n\nThe state of the throttle. A value between 0 and 1.\n\n" Throttle!
export Throttle!
import ..Control_get_InputMode as var"##832"
InputMode(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##832"(this))
    end
@doc "    InputMode(this::RemoteTypes.Control)\n\nSets the behavior of the pitch, yaw, roll and translation control inputs.\nWhen set to additive, these inputs are added to the vessels current inputs.\nThis mode is the default.\nWhen set to override, these inputs (if non-zero) override the vessels inputs.\nThis mode prevents keyboard control, or SAS, from interfering with the controls when\nthey are set.\n\n" InputMode
export InputMode
import ..Control_set_InputMode as var"##833"
InputMode!(this::RemoteTypes.Control, value::EControlInputMode) = begin
        kerbal(this.conn, var"##833"(this, value))
    end
@doc "    InputMode!(this::RemoteTypes.Control, value::EControlInputMode)\n\nSets the behavior of the pitch, yaw, roll and translation control inputs.\nWhen set to additive, these inputs are added to the vessels current inputs.\nThis mode is the default.\nWhen set to override, these inputs (if non-zero) override the vessels inputs.\nThis mode prevents keyboard control, or SAS, from interfering with the controls when\nthey are set.\n\n" InputMode!
export InputMode!
import ..Control_get_Pitch as var"##834"
Pitch(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##834"(this))
    end
@doc "    Pitch(this::RemoteTypes.Control)\n\nThe state of the pitch control.\nA value between -1 and 1.\nEquivalent to the w and s keys.\n\n" Pitch
export Pitch
import ..Control_set_Pitch as var"##835"
Pitch!(this::RemoteTypes.Control, value::Float32) = begin
        kerbal(this.conn, var"##835"(this, value))
    end
@doc "    Pitch!(this::RemoteTypes.Control, value::Float32)\n\nThe state of the pitch control.\nA value between -1 and 1.\nEquivalent to the w and s keys.\n\n" Pitch!
export Pitch!
import ..Control_get_Yaw as var"##836"
Yaw(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##836"(this))
    end
@doc "    Yaw(this::RemoteTypes.Control)\n\nThe state of the yaw control.\nA value between -1 and 1.\nEquivalent to the a and d keys.\n\n" Yaw
export Yaw
import ..Control_set_Yaw as var"##837"
Yaw!(this::RemoteTypes.Control, value::Float32) = begin
        kerbal(this.conn, var"##837"(this, value))
    end
@doc "    Yaw!(this::RemoteTypes.Control, value::Float32)\n\nThe state of the yaw control.\nA value between -1 and 1.\nEquivalent to the a and d keys.\n\n" Yaw!
export Yaw!
import ..Control_get_Roll as var"##838"
Roll(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##838"(this))
    end
@doc "    Roll(this::RemoteTypes.Control)\n\nThe state of the roll control.\nA value between -1 and 1.\nEquivalent to the q and e keys.\n\n" Roll
export Roll
import ..Control_set_Roll as var"##839"
Roll!(this::RemoteTypes.Control, value::Float32) = begin
        kerbal(this.conn, var"##839"(this, value))
    end
@doc "    Roll!(this::RemoteTypes.Control, value::Float32)\n\nThe state of the roll control.\nA value between -1 and 1.\nEquivalent to the q and e keys.\n\n" Roll!
export Roll!
import ..Control_get_Forward as var"##840"
Forward(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##840"(this))
    end
@doc "    Forward(this::RemoteTypes.Control)\n\nThe state of the forward translational control.\nA value between -1 and 1.\nEquivalent to the h and n keys.\n\n" Forward
export Forward
import ..Control_set_Forward as var"##841"
Forward!(this::RemoteTypes.Control, value::Float32) = begin
        kerbal(this.conn, var"##841"(this, value))
    end
@doc "    Forward!(this::RemoteTypes.Control, value::Float32)\n\nThe state of the forward translational control.\nA value between -1 and 1.\nEquivalent to the h and n keys.\n\n" Forward!
export Forward!
import ..Control_get_Up as var"##842"
Up(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##842"(this))
    end
@doc "    Up(this::RemoteTypes.Control)\n\nThe state of the up translational control.\nA value between -1 and 1.\nEquivalent to the i and k keys.\n\n" Up
export Up
import ..Control_set_Up as var"##843"
Up!(this::RemoteTypes.Control, value::Float32) = begin
        kerbal(this.conn, var"##843"(this, value))
    end
@doc "    Up!(this::RemoteTypes.Control, value::Float32)\n\nThe state of the up translational control.\nA value between -1 and 1.\nEquivalent to the i and k keys.\n\n" Up!
export Up!
import ..Control_get_Right as var"##844"
Right(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##844"(this))
    end
@doc "    Right(this::RemoteTypes.Control)\n\nThe state of the right translational control.\nA value between -1 and 1.\nEquivalent to the j and l keys.\n\n" Right
export Right
import ..Control_set_Right as var"##845"
Right!(this::RemoteTypes.Control, value::Float32) = begin
        kerbal(this.conn, var"##845"(this, value))
    end
@doc "    Right!(this::RemoteTypes.Control, value::Float32)\n\nThe state of the right translational control.\nA value between -1 and 1.\nEquivalent to the j and l keys.\n\n" Right!
export Right!
import ..Control_get_WheelThrottle as var"##846"
WheelThrottle(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##846"(this))
    end
@doc "    WheelThrottle(this::RemoteTypes.Control)\n\nThe state of the wheel throttle.\nA value between -1 and 1.\nA value of 1 rotates the wheels forwards, a value of -1 rotates\nthe wheels backwards.\n\n" WheelThrottle
export WheelThrottle
import ..Control_set_WheelThrottle as var"##847"
WheelThrottle!(this::RemoteTypes.Control, value::Float32) = begin
        kerbal(this.conn, var"##847"(this, value))
    end
@doc "    WheelThrottle!(this::RemoteTypes.Control, value::Float32)\n\nThe state of the wheel throttle.\nA value between -1 and 1.\nA value of 1 rotates the wheels forwards, a value of -1 rotates\nthe wheels backwards.\n\n" WheelThrottle!
export WheelThrottle!
import ..Control_get_WheelSteering as var"##848"
WheelSteering(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##848"(this))
    end
@doc "    WheelSteering(this::RemoteTypes.Control)\n\nThe state of the wheel steering.\nA value between -1 and 1.\nA value of 1 steers to the left, and a value of -1 steers to the right.\n\n" WheelSteering
export WheelSteering
import ..Control_set_WheelSteering as var"##849"
WheelSteering!(this::RemoteTypes.Control, value::Float32) = begin
        kerbal(this.conn, var"##849"(this, value))
    end
@doc "    WheelSteering!(this::RemoteTypes.Control, value::Float32)\n\nThe state of the wheel steering.\nA value between -1 and 1.\nA value of 1 steers to the left, and a value of -1 steers to the right.\n\n" WheelSteering!
export WheelSteering!
import ..Control_get_CurrentStage as var"##850"
CurrentStage(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##850"(this))
    end
@doc "    CurrentStage(this::RemoteTypes.Control)\n\nThe current stage of the vessel. Corresponds to the stage number in\nthe in-game UI.\n\n" CurrentStage
export CurrentStage
import ..Control_get_StageLock as var"##851"
StageLock(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##851"(this))
    end
@doc "    StageLock(this::RemoteTypes.Control)\n\nWhether staging is locked on the vessel.\n\n# Remarks\n This is equivalent to locking the staging using Alt+L \n" StageLock
export StageLock
import ..Control_set_StageLock as var"##852"
StageLock!(this::RemoteTypes.Control, value::Bool) = begin
        kerbal(this.conn, var"##852"(this, value))
    end
@doc "    StageLock!(this::RemoteTypes.Control, value::Bool)\n\nWhether staging is locked on the vessel.\n\n# Remarks\n This is equivalent to locking the staging using Alt+L \n" StageLock!
export StageLock!
import ..Control_get_Nodes as var"##853"
Nodes(this::RemoteTypes.Control) = begin
        kerbal(this.conn, var"##853"(this))
    end
@doc "    Nodes(this::RemoteTypes.Control)\n\nReturns a list of all existing maneuver nodes, ordered by time from first to last.\n\n" Nodes
export Nodes
import ..CrewMember_get_Name as var"##854"
Name(this::RemoteTypes.CrewMember) = begin
        kerbal(this.conn, var"##854"(this))
    end
@doc "    Name(this::RemoteTypes.CrewMember)\n\nThe crew members name.\n\n" Name
export Name
import ..CrewMember_set_Name as var"##855"
Name!(this::RemoteTypes.CrewMember, value::String) = begin
        kerbal(this.conn, var"##855"(this, value))
    end
@doc "    Name!(this::RemoteTypes.CrewMember, value::String)\n\nThe crew members name.\n\n" Name!
export Name!
import ..CrewMember_get_Type as var"##856"
Type(this::RemoteTypes.CrewMember) = begin
        kerbal(this.conn, var"##856"(this))
    end
@doc "    Type(this::RemoteTypes.CrewMember)\n\nThe type of crew member.\n\n" Type
export Type
import ..CrewMember_get_OnMission as var"##857"
OnMission(this::RemoteTypes.CrewMember) = begin
        kerbal(this.conn, var"##857"(this))
    end
@doc "    OnMission(this::RemoteTypes.CrewMember)\n\nWhether the crew member is on a mission.\n\n" OnMission
export OnMission
import ..CrewMember_get_Courage as var"##858"
Courage(this::RemoteTypes.CrewMember) = begin
        kerbal(this.conn, var"##858"(this))
    end
@doc "    Courage(this::RemoteTypes.CrewMember)\n\nThe crew members courage.\n\n" Courage
export Courage
import ..CrewMember_set_Courage as var"##859"
Courage!(this::RemoteTypes.CrewMember, value::Float32) = begin
        kerbal(this.conn, var"##859"(this, value))
    end
@doc "    Courage!(this::RemoteTypes.CrewMember, value::Float32)\n\nThe crew members courage.\n\n" Courage!
export Courage!
import ..CrewMember_get_Stupidity as var"##860"
Stupidity(this::RemoteTypes.CrewMember) = begin
        kerbal(this.conn, var"##860"(this))
    end
@doc "    Stupidity(this::RemoteTypes.CrewMember)\n\nThe crew members stupidity.\n\n" Stupidity
export Stupidity
import ..CrewMember_set_Stupidity as var"##861"
Stupidity!(this::RemoteTypes.CrewMember, value::Float32) = begin
        kerbal(this.conn, var"##861"(this, value))
    end
@doc "    Stupidity!(this::RemoteTypes.CrewMember, value::Float32)\n\nThe crew members stupidity.\n\n" Stupidity!
export Stupidity!
import ..CrewMember_get_Experience as var"##862"
Experience(this::RemoteTypes.CrewMember) = begin
        kerbal(this.conn, var"##862"(this))
    end
@doc "    Experience(this::RemoteTypes.CrewMember)\n\nThe crew members experience.\n\n" Experience
export Experience
import ..CrewMember_set_Experience as var"##863"
Experience!(this::RemoteTypes.CrewMember, value::Float32) = begin
        kerbal(this.conn, var"##863"(this, value))
    end
@doc "    Experience!(this::RemoteTypes.CrewMember, value::Float32)\n\nThe crew members experience.\n\n" Experience!
export Experience!
import ..CrewMember_get_Badass as var"##864"
Badass(this::RemoteTypes.CrewMember) = begin
        kerbal(this.conn, var"##864"(this))
    end
@doc "    Badass(this::RemoteTypes.CrewMember)\n\nWhether the crew member is a badass.\n\n" Badass
export Badass
import ..CrewMember_set_Badass as var"##865"
Badass!(this::RemoteTypes.CrewMember, value::Bool) = begin
        kerbal(this.conn, var"##865"(this, value))
    end
@doc "    Badass!(this::RemoteTypes.CrewMember, value::Bool)\n\nWhether the crew member is a badass.\n\n" Badass!
export Badass!
import ..CrewMember_get_Veteran as var"##866"
Veteran(this::RemoteTypes.CrewMember) = begin
        kerbal(this.conn, var"##866"(this))
    end
@doc "    Veteran(this::RemoteTypes.CrewMember)\n\nWhether the crew member is a veteran.\n\n" Veteran
export Veteran
import ..CrewMember_set_Veteran as var"##867"
Veteran!(this::RemoteTypes.CrewMember, value::Bool) = begin
        kerbal(this.conn, var"##867"(this, value))
    end
@doc "    Veteran!(this::RemoteTypes.CrewMember, value::Bool)\n\nWhether the crew member is a veteran.\n\n" Veteran!
export Veteran!
import ..Flight_SimulateAerodynamicForceAt as var"##868"
SimulateAerodynamicForceAt(this::RemoteTypes.Flight, body::RemoteTypes.CelestialBody, position::begin
                Tuple{Float64, Float64, Float64}
            end, velocity::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##868"(this, body, position, velocity))
    end
@doc "    SimulateAerodynamicForceAt(this::RemoteTypes.Flight, body::RemoteTypes.CelestialBody, position::begin\n    Tuple{Float64, Float64, Float64}\nend, velocity::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nSimulate and return the total aerodynamic forces acting on the vessel,\nif it where to be traveling with the given velocity at the given position in the\natmosphere of the given celestial body.\n\n# Returns\nA vector pointing in the direction that the force acts, with its magnitude equal to the strength of the force in Newtons.\n" SimulateAerodynamicForceAt
export SimulateAerodynamicForceAt
import ..Flight_get_GForce as var"##869"
GForce(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##869"(this))
    end
@doc "    GForce(this::RemoteTypes.Flight)\n\nThe current G force acting on the vessel in g.\n\n" GForce
export GForce
import ..Flight_get_MeanAltitude as var"##870"
MeanAltitude(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##870"(this))
    end
@doc "    MeanAltitude(this::RemoteTypes.Flight)\n\nThe altitude above sea level, in meters.\nMeasured from the center of mass of the vessel.\n\n" MeanAltitude
export MeanAltitude
import ..Flight_get_SurfaceAltitude as var"##871"
SurfaceAltitude(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##871"(this))
    end
@doc "    SurfaceAltitude(this::RemoteTypes.Flight)\n\nThe altitude above the surface of the body or sea level, whichever is closer, in meters.\nMeasured from the center of mass of the vessel.\n\n" SurfaceAltitude
export SurfaceAltitude
import ..Flight_get_BedrockAltitude as var"##872"
BedrockAltitude(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##872"(this))
    end
@doc "    BedrockAltitude(this::RemoteTypes.Flight)\n\nThe altitude above the surface of the body, in meters. When over water, this is the altitude above the sea floor.\nMeasured from the center of mass of the vessel.\n\n" BedrockAltitude
export BedrockAltitude
import ..Flight_get_Elevation as var"##873"
Elevation(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##873"(this))
    end
@doc "    Elevation(this::RemoteTypes.Flight)\n\nThe elevation of the terrain under the vessel, in meters. This is the height of the terrain above sea level,\nand is negative when the vessel is over the sea.\n\n" Elevation
export Elevation
import ..Flight_get_Latitude as var"##874"
Latitude(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##874"(this))
    end
@doc "    Latitude(this::RemoteTypes.Flight)\n\nThe latitude of the vessel for the body being orbited, in degrees.\n\n" Latitude
export Latitude
import ..Flight_get_Longitude as var"##875"
Longitude(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##875"(this))
    end
@doc "    Longitude(this::RemoteTypes.Flight)\n\nThe longitude of the vessel for the body being orbited, in degrees.\n\n" Longitude
export Longitude
import ..Flight_get_Velocity as var"##876"
Velocity(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##876"(this))
    end
@doc "    Velocity(this::RemoteTypes.Flight)\n\nThe velocity of the vessel, in the reference frame .\n\n# Returns\nThe velocity as a vector. The vector points in the direction of travel, and its magnitude is the speed of the vessel in meters per second.\n" Velocity
export Velocity
import ..Flight_get_Speed as var"##877"
Speed(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##877"(this))
    end
@doc "    Speed(this::RemoteTypes.Flight)\n\nThe speed of the vessel in meters per second,\nin the reference frame .\n\n" Speed
export Speed
import ..Flight_get_HorizontalSpeed as var"##878"
HorizontalSpeed(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##878"(this))
    end
@doc "    HorizontalSpeed(this::RemoteTypes.Flight)\n\nThe horizontal speed of the vessel in meters per second,\nin the reference frame .\n\n" HorizontalSpeed
export HorizontalSpeed
import ..Flight_get_VerticalSpeed as var"##879"
VerticalSpeed(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##879"(this))
    end
@doc "    VerticalSpeed(this::RemoteTypes.Flight)\n\nThe vertical speed of the vessel in meters per second,\nin the reference frame .\n\n" VerticalSpeed
export VerticalSpeed
import ..Flight_get_CenterOfMass as var"##880"
CenterOfMass(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##880"(this))
    end
@doc "    CenterOfMass(this::RemoteTypes.Flight)\n\nThe position of the center of mass of the vessel,\nin the reference frame \n# Returns\nThe position as a vector.\n" CenterOfMass
export CenterOfMass
import ..Flight_get_Rotation as var"##881"
Rotation(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##881"(this))
    end
@doc "    Rotation(this::RemoteTypes.Flight)\n\nThe rotation of the vessel, in the reference frame \n# Returns\nThe rotation as a quaternion of the form (x, y, z, w).\n" Rotation
export Rotation
import ..Flight_get_Direction as var"##882"
Direction(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##882"(this))
    end
@doc "    Direction(this::RemoteTypes.Flight)\n\nThe direction that the vessel is pointing in,\nin the reference frame .\n\n# Returns\nThe direction as a unit vector.\n" Direction
export Direction
import ..Flight_get_Pitch as var"##883"
Pitch(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##883"(this))
    end
@doc "    Pitch(this::RemoteTypes.Flight)\n\nThe pitch of the vessel relative to the horizon, in degrees.\nA value between -90° and +90°.\n\n" Pitch
export Pitch
import ..Flight_get_Heading as var"##884"
Heading(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##884"(this))
    end
@doc "    Heading(this::RemoteTypes.Flight)\n\nThe heading of the vessel (its angle relative to north), in degrees.\nA value between 0° and 360°.\n\n" Heading
export Heading
import ..Flight_get_Roll as var"##885"
Roll(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##885"(this))
    end
@doc "    Roll(this::RemoteTypes.Flight)\n\nThe roll of the vessel relative to the horizon, in degrees.\nA value between -180° and +180°.\n\n" Roll
export Roll
import ..Flight_get_Prograde as var"##886"
Prograde(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##886"(this))
    end
@doc "    Prograde(this::RemoteTypes.Flight)\n\nThe prograde direction of the vessels orbit,\nin the reference frame .\n\n# Returns\nThe direction as a unit vector.\n" Prograde
export Prograde
import ..Flight_get_Retrograde as var"##887"
Retrograde(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##887"(this))
    end
@doc "    Retrograde(this::RemoteTypes.Flight)\n\nThe retrograde direction of the vessels orbit,\nin the reference frame .\n\n# Returns\nThe direction as a unit vector.\n" Retrograde
export Retrograde
import ..Flight_get_Normal as var"##888"
Normal(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##888"(this))
    end
@doc "    Normal(this::RemoteTypes.Flight)\n\nThe direction normal to the vessels orbit,\nin the reference frame .\n\n# Returns\nThe direction as a unit vector.\n" Normal
export Normal
import ..Flight_get_AntiNormal as var"##889"
AntiNormal(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##889"(this))
    end
@doc "    AntiNormal(this::RemoteTypes.Flight)\n\nThe direction opposite to the normal of the vessels orbit,\nin the reference frame .\n\n# Returns\nThe direction as a unit vector.\n" AntiNormal
export AntiNormal
import ..Flight_get_Radial as var"##890"
Radial(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##890"(this))
    end
@doc "    Radial(this::RemoteTypes.Flight)\n\nThe radial direction of the vessels orbit,\nin the reference frame .\n\n# Returns\nThe direction as a unit vector.\n" Radial
export Radial
import ..Flight_get_AntiRadial as var"##891"
AntiRadial(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##891"(this))
    end
@doc "    AntiRadial(this::RemoteTypes.Flight)\n\nThe direction opposite to the radial direction of the vessels orbit,\nin the reference frame .\n\n# Returns\nThe direction as a unit vector.\n" AntiRadial
export AntiRadial
import ..Flight_get_AtmosphereDensity as var"##892"
AtmosphereDensity(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##892"(this))
    end
@doc "    AtmosphereDensity(this::RemoteTypes.Flight)\n\nThe current density of the atmosphere around the vessel, in kg/m^3.\n\n" AtmosphereDensity
export AtmosphereDensity
import ..Flight_get_DynamicPressure as var"##893"
DynamicPressure(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##893"(this))
    end
@doc "    DynamicPressure(this::RemoteTypes.Flight)\n\nThe dynamic pressure acting on the vessel, in Pascals. This is a measure of the\nstrength of the aerodynamic forces. It is equal to\n\\frac{1}{2} . \\mbox{air density} . \\mbox{velocity}^2.\nIt is commonly denoted Q.\n\n" DynamicPressure
export DynamicPressure
import ..Flight_get_StaticPressureAtMSL as var"##894"
StaticPressureAtMSL(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##894"(this))
    end
@doc "    StaticPressureAtMSL(this::RemoteTypes.Flight)\n\nThe static atmospheric pressure at mean sea level, in Pascals.\n\n" StaticPressureAtMSL
export StaticPressureAtMSL
import ..Flight_get_StaticPressure as var"##895"
StaticPressure(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##895"(this))
    end
@doc "    StaticPressure(this::RemoteTypes.Flight)\n\nThe static atmospheric pressure acting on the vessel, in Pascals.\n\n" StaticPressure
export StaticPressure
import ..Flight_get_AerodynamicForce as var"##896"
AerodynamicForce(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##896"(this))
    end
@doc "    AerodynamicForce(this::RemoteTypes.Flight)\n\nThe total aerodynamic forces acting on the vessel,\nin reference frame .\n\n# Returns\nA vector pointing in the direction that the force acts, with its magnitude equal to the strength of the force in Newtons.\n" AerodynamicForce
export AerodynamicForce
import ..Flight_get_Lift as var"##897"
Lift(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##897"(this))
    end
@doc "    Lift(this::RemoteTypes.Flight)\n\nThe aerodynamic lift\ncurrently acting on the vessel.\n\n# Returns\nA vector pointing in the direction that the force acts, with its magnitude equal to the strength of the force in Newtons.\n" Lift
export Lift
import ..Flight_get_Drag as var"##898"
Drag(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##898"(this))
    end
@doc "    Drag(this::RemoteTypes.Flight)\n\nThe aerodynamic drag currently acting on the vessel.\n\n# Returns\nA vector pointing in the direction of the force, with its magnitude equal to the strength of the force in Newtons.\n" Drag
export Drag
import ..Flight_get_SpeedOfSound as var"##899"
SpeedOfSound(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##899"(this))
    end
@doc "    SpeedOfSound(this::RemoteTypes.Flight)\n\nThe speed of sound, in the atmosphere around the vessel, in m/s.\n\n" SpeedOfSound
export SpeedOfSound
import ..Flight_get_Mach as var"##900"
Mach(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##900"(this))
    end
@doc "    Mach(this::RemoteTypes.Flight)\n\nThe speed of the vessel, in multiples of the speed of sound.\n\n" Mach
export Mach
import ..Flight_get_ReynoldsNumber as var"##901"
ReynoldsNumber(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##901"(this))
    end
@doc "    ReynoldsNumber(this::RemoteTypes.Flight)\n\nThe vessels Reynolds number.\n\n# Remarks\n Requires Ferram Aerospace Research. \n" ReynoldsNumber
export ReynoldsNumber
import ..Flight_get_TrueAirSpeed as var"##902"
TrueAirSpeed(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##902"(this))
    end
@doc "    TrueAirSpeed(this::RemoteTypes.Flight)\n\nThe true air speed\nof the vessel, in meters per second.\n\n" TrueAirSpeed
export TrueAirSpeed
import ..Flight_get_EquivalentAirSpeed as var"##903"
EquivalentAirSpeed(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##903"(this))
    end
@doc "    EquivalentAirSpeed(this::RemoteTypes.Flight)\n\nThe equivalent air speed\nof the vessel, in meters per second.\n\n" EquivalentAirSpeed
export EquivalentAirSpeed
import ..Flight_get_TerminalVelocity as var"##904"
TerminalVelocity(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##904"(this))
    end
@doc "    TerminalVelocity(this::RemoteTypes.Flight)\n\nAn estimate of the current terminal velocity of the vessel, in meters per second.\nThis is the speed at which the drag forces cancel out the force of gravity.\n\n" TerminalVelocity
export TerminalVelocity
import ..Flight_get_AngleOfAttack as var"##905"
AngleOfAttack(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##905"(this))
    end
@doc "    AngleOfAttack(this::RemoteTypes.Flight)\n\nThe pitch angle between the orientation of the vessel and its velocity vector,\nin degrees.\n\n" AngleOfAttack
export AngleOfAttack
import ..Flight_get_SideslipAngle as var"##906"
SideslipAngle(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##906"(this))
    end
@doc "    SideslipAngle(this::RemoteTypes.Flight)\n\nThe yaw angle between the orientation of the vessel and its velocity vector, in degrees.\n\n" SideslipAngle
export SideslipAngle
import ..Flight_get_TotalAirTemperature as var"##907"
TotalAirTemperature(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##907"(this))
    end
@doc "    TotalAirTemperature(this::RemoteTypes.Flight)\n\nThe total air temperature\nof the atmosphere around the vessel, in Kelvin.\nThis includes the  and the vessel's kinetic energy.\n\n" TotalAirTemperature
export TotalAirTemperature
import ..Flight_get_StaticAirTemperature as var"##908"
StaticAirTemperature(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##908"(this))
    end
@doc "    StaticAirTemperature(this::RemoteTypes.Flight)\n\nThe static (ambient)\ntemperature of the atmosphere around the vessel, in Kelvin.\n\n" StaticAirTemperature
export StaticAirTemperature
import ..Flight_get_StallFraction as var"##909"
StallFraction(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##909"(this))
    end
@doc "    StallFraction(this::RemoteTypes.Flight)\n\nThe current amount of stall, between 0 and 1. A value greater than 0.005 indicates\na minor stall and a value greater than 0.5 indicates a large-scale stall.\n\n# Remarks\n Requires Ferram Aerospace Research. \n" StallFraction
export StallFraction
import ..Flight_get_DragCoefficient as var"##910"
DragCoefficient(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##910"(this))
    end
@doc "    DragCoefficient(this::RemoteTypes.Flight)\n\nThe coefficient of drag. This is the amount of drag produced by the vessel.\nIt depends on air speed, air density and wing area.\n\n# Remarks\n Requires Ferram Aerospace Research. \n" DragCoefficient
export DragCoefficient
import ..Flight_get_LiftCoefficient as var"##911"
LiftCoefficient(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##911"(this))
    end
@doc "    LiftCoefficient(this::RemoteTypes.Flight)\n\nThe coefficient of lift. This is the amount of lift produced by the vessel, and\ndepends on air speed, air density and wing area.\n\n# Remarks\n Requires Ferram Aerospace Research. \n" LiftCoefficient
export LiftCoefficient
import ..Flight_get_BallisticCoefficient as var"##912"
BallisticCoefficient(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##912"(this))
    end
@doc "    BallisticCoefficient(this::RemoteTypes.Flight)\n\nThe ballistic coefficient.\n\n# Remarks\n Requires Ferram Aerospace Research. \n" BallisticCoefficient
export BallisticCoefficient
import ..Flight_get_ThrustSpecificFuelConsumption as var"##913"
ThrustSpecificFuelConsumption(this::RemoteTypes.Flight) = begin
        kerbal(this.conn, var"##913"(this))
    end
@doc "    ThrustSpecificFuelConsumption(this::RemoteTypes.Flight)\n\nThe thrust specific fuel consumption for the jet engines on the vessel. This is a\nmeasure of the efficiency of the engines, with a lower value indicating a more\nefficient vessel. This value is the number of Newtons of fuel that are burned,\nper hour, to produce one newton of thrust.\n\n# Remarks\n Requires Ferram Aerospace Research. \n" ThrustSpecificFuelConsumption
export ThrustSpecificFuelConsumption
import ..Node_BurnVector as var"##914"
BurnVector(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame = getJuliaValue(this.conn, UInt8[0x00], RemoteTypes.ReferenceFrame)) = begin
        kerbal(this.conn, var"##914"(this, referenceFrame))
    end
@doc "    BurnVector(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame)\n\nReturns the burn vector for the maneuver node.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned vector is in. Defaults to .\n# Returns\nA vector whose direction is the direction of the maneuver node burn, and magnitude is the delta-v of the burn in meters per second. \n# Remarks\n Does not change when executing the maneuver node. See . \n" BurnVector
export BurnVector
import ..Node_RemainingBurnVector as var"##915"
RemainingBurnVector(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame = getJuliaValue(this.conn, UInt8[0x00], RemoteTypes.ReferenceFrame)) = begin
        kerbal(this.conn, var"##915"(this, referenceFrame))
    end
@doc "    RemainingBurnVector(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame)\n\nReturns the remaining burn vector for the maneuver node.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned vector is in. Defaults to .\n# Returns\nA vector whose direction is the direction of the maneuver node burn, and magnitude is the delta-v of the burn in meters per second. \n# Remarks\n Changes as the maneuver node is executed. See . \n" RemainingBurnVector
export RemainingBurnVector
import ..Node_Remove as var"##916"
Remove(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##916"(this))
    end
@doc "    Remove(this::RemoteTypes.Node)\n\nRemoves the maneuver node.\n\n" Remove
export Remove
import ..Node_Position as var"##917"
Position(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##917"(this, referenceFrame))
    end
@doc "    Position(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position vector of the maneuver node in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n" Position
export Position
import ..Node_Direction as var"##918"
Direction(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##918"(this, referenceFrame))
    end
@doc "    Direction(this::RemoteTypes.Node, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe direction of the maneuver nodes burn.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned direction is in.\n# Returns\nThe direction as a unit vector.\n" Direction
export Direction
import ..Node_get_Prograde as var"##919"
Prograde(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##919"(this))
    end
@doc "    Prograde(this::RemoteTypes.Node)\n\nThe magnitude of the maneuver nodes delta-v in the prograde direction,\nin meters per second.\n\n" Prograde
export Prograde
import ..Node_set_Prograde as var"##920"
Prograde!(this::RemoteTypes.Node, value::Float64) = begin
        kerbal(this.conn, var"##920"(this, value))
    end
@doc "    Prograde!(this::RemoteTypes.Node, value::Float64)\n\nThe magnitude of the maneuver nodes delta-v in the prograde direction,\nin meters per second.\n\n" Prograde!
export Prograde!
import ..Node_get_Normal as var"##921"
Normal(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##921"(this))
    end
@doc "    Normal(this::RemoteTypes.Node)\n\nThe magnitude of the maneuver nodes delta-v in the normal direction,\nin meters per second.\n\n" Normal
export Normal
import ..Node_set_Normal as var"##922"
Normal!(this::RemoteTypes.Node, value::Float64) = begin
        kerbal(this.conn, var"##922"(this, value))
    end
@doc "    Normal!(this::RemoteTypes.Node, value::Float64)\n\nThe magnitude of the maneuver nodes delta-v in the normal direction,\nin meters per second.\n\n" Normal!
export Normal!
import ..Node_get_Radial as var"##923"
Radial(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##923"(this))
    end
@doc "    Radial(this::RemoteTypes.Node)\n\nThe magnitude of the maneuver nodes delta-v in the radial direction,\nin meters per second.\n\n" Radial
export Radial
import ..Node_set_Radial as var"##924"
Radial!(this::RemoteTypes.Node, value::Float64) = begin
        kerbal(this.conn, var"##924"(this, value))
    end
@doc "    Radial!(this::RemoteTypes.Node, value::Float64)\n\nThe magnitude of the maneuver nodes delta-v in the radial direction,\nin meters per second.\n\n" Radial!
export Radial!
import ..Node_get_DeltaV as var"##925"
DeltaV(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##925"(this))
    end
@doc "    DeltaV(this::RemoteTypes.Node)\n\nThe delta-v of the maneuver node, in meters per second.\n\n# Remarks\n Does not change when executing the maneuver node. See . \n" DeltaV
export DeltaV
import ..Node_set_DeltaV as var"##926"
DeltaV!(this::RemoteTypes.Node, value::Float64) = begin
        kerbal(this.conn, var"##926"(this, value))
    end
@doc "    DeltaV!(this::RemoteTypes.Node, value::Float64)\n\nThe delta-v of the maneuver node, in meters per second.\n\n# Remarks\n Does not change when executing the maneuver node. See . \n" DeltaV!
export DeltaV!
import ..Node_get_RemainingDeltaV as var"##927"
RemainingDeltaV(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##927"(this))
    end
@doc "    RemainingDeltaV(this::RemoteTypes.Node)\n\nGets the remaining delta-v of the maneuver node, in meters per second. Changes as the\nnode is executed. This is equivalent to the delta-v reported in-game.\n\n" RemainingDeltaV
export RemainingDeltaV
import ..Node_get_UT as var"##928"
UT(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##928"(this))
    end
@doc "    UT(this::RemoteTypes.Node)\n\nThe universal time at which the maneuver will occur, in seconds.\n\n" UT
export UT
import ..Node_set_UT as var"##929"
UT!(this::RemoteTypes.Node, value::Float64) = begin
        kerbal(this.conn, var"##929"(this, value))
    end
@doc "    UT!(this::RemoteTypes.Node, value::Float64)\n\nThe universal time at which the maneuver will occur, in seconds.\n\n" UT!
export UT!
import ..Node_get_TimeTo as var"##930"
TimeTo(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##930"(this))
    end
@doc "    TimeTo(this::RemoteTypes.Node)\n\nThe time until the maneuver node will be encountered, in seconds.\n\n" TimeTo
export TimeTo
import ..Node_get_Orbit as var"##931"
Orbit(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##931"(this))
    end
@doc "    Orbit(this::RemoteTypes.Node)\n\nThe orbit that results from executing the maneuver node.\n\n" Orbit
export Orbit
import ..Node_get_ReferenceFrame as var"##932"
ReferenceFrame(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##932"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.Node)\n\nThe reference frame that is fixed relative to the maneuver node's burn.\nThe origin is at the position of the maneuver node.The y-axis points in the direction of the burn.The x-axis and z-axis point in arbitrary but fixed directions.\n" ReferenceFrame
export ReferenceFrame
import ..Node_get_OrbitalReferenceFrame as var"##933"
OrbitalReferenceFrame(this::RemoteTypes.Node) = begin
        kerbal(this.conn, var"##933"(this))
    end
@doc "    OrbitalReferenceFrame(this::RemoteTypes.Node)\n\nThe reference frame that is fixed relative to the maneuver node, and\norientated with the orbital prograde/normal/radial directions of the\noriginal orbit at the maneuver node's position.\nThe origin is at the position of the maneuver node.The x-axis points in the orbital anti-radial direction of the original\norbit, at the position of the maneuver node.The y-axis points in the orbital prograde direction of the original\norbit, at the position of the maneuver node.The z-axis points in the orbital normal direction of the original orbit,\nat the position of the maneuver node.\n" OrbitalReferenceFrame
export OrbitalReferenceFrame
import ..Orbit_static_ReferencePlaneNormal as var"##934"
ReferencePlaneNormal(conn::KRPCConnection, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(conn, var"##934"(referenceFrame))
    end
@doc "    ReferencePlaneNormal(referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe direction that is normal to the orbits reference plane,\nin the given reference frame.\nThe reference plane is the plane from which the orbits inclination is measured.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned direction is in.\n# Returns\nThe direction as a unit vector.\n" ReferencePlaneNormal
export ReferencePlaneNormal
import ..Orbit_static_ReferencePlaneDirection as var"##935"
ReferencePlaneDirection(conn::KRPCConnection, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(conn, var"##935"(referenceFrame))
    end
@doc "    ReferencePlaneDirection(referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe direction from which the orbits longitude of ascending node is measured,\nin the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned direction is in.\n# Returns\nThe direction as a unit vector.\n" ReferencePlaneDirection
export ReferencePlaneDirection
import ..Orbit_MeanAnomalyAtUT as var"##936"
MeanAnomalyAtUT(this::RemoteTypes.Orbit, ut::Float64) = begin
        kerbal(this.conn, var"##936"(this, ut))
    end
@doc "    MeanAnomalyAtUT(this::RemoteTypes.Orbit, ut::Float64)\n\nThe mean anomaly at the given time.\n\n# Arguments\n- `ut::Float64`: The universal time in seconds.\n" MeanAnomalyAtUT
export MeanAnomalyAtUT
import ..Orbit_RadiusAtTrueAnomaly as var"##937"
RadiusAtTrueAnomaly(this::RemoteTypes.Orbit, trueAnomaly::Float64) = begin
        kerbal(this.conn, var"##937"(this, trueAnomaly))
    end
@doc "    RadiusAtTrueAnomaly(this::RemoteTypes.Orbit, trueAnomaly::Float64)\n\nThe orbital radius at the point in the orbit given by the true anomaly.\n\n# Arguments\n- `trueAnomaly::Float64`: The true anomaly.\n" RadiusAtTrueAnomaly
export RadiusAtTrueAnomaly
import ..Orbit_TrueAnomalyAtRadius as var"##938"
TrueAnomalyAtRadius(this::RemoteTypes.Orbit, radius::Float64) = begin
        kerbal(this.conn, var"##938"(this, radius))
    end
@doc "    TrueAnomalyAtRadius(this::RemoteTypes.Orbit, radius::Float64)\n\nThe true anomaly at the given orbital radius.\n\n# Arguments\n- `radius::Float64`: The orbital radius in meters.\n" TrueAnomalyAtRadius
export TrueAnomalyAtRadius
import ..Orbit_TrueAnomalyAtUT as var"##939"
TrueAnomalyAtUT(this::RemoteTypes.Orbit, ut::Float64) = begin
        kerbal(this.conn, var"##939"(this, ut))
    end
@doc "    TrueAnomalyAtUT(this::RemoteTypes.Orbit, ut::Float64)\n\nThe true anomaly at the given time.\n\n# Arguments\n- `ut::Float64`: The universal time in seconds.\n" TrueAnomalyAtUT
export TrueAnomalyAtUT
import ..Orbit_UTAtTrueAnomaly as var"##940"
UTAtTrueAnomaly(this::RemoteTypes.Orbit, trueAnomaly::Float64) = begin
        kerbal(this.conn, var"##940"(this, trueAnomaly))
    end
@doc "    UTAtTrueAnomaly(this::RemoteTypes.Orbit, trueAnomaly::Float64)\n\nThe universal time, in seconds, corresponding to the given true anomaly.\n\n# Arguments\n- `trueAnomaly::Float64`: True anomaly.\n" UTAtTrueAnomaly
export UTAtTrueAnomaly
import ..Orbit_EccentricAnomalyAtUT as var"##941"
EccentricAnomalyAtUT(this::RemoteTypes.Orbit, ut::Float64) = begin
        kerbal(this.conn, var"##941"(this, ut))
    end
@doc "    EccentricAnomalyAtUT(this::RemoteTypes.Orbit, ut::Float64)\n\nThe eccentric anomaly at the given universal time.\n\n# Arguments\n- `ut::Float64`: The universal time, in seconds.\n" EccentricAnomalyAtUT
export EccentricAnomalyAtUT
import ..Orbit_OrbitalSpeedAt as var"##942"
OrbitalSpeedAt(this::RemoteTypes.Orbit, time::Float64) = begin
        kerbal(this.conn, var"##942"(this, time))
    end
@doc "    OrbitalSpeedAt(this::RemoteTypes.Orbit, time::Float64)\n\nThe orbital speed at the given time, in meters per second.\n\n# Arguments\n- `time::Float64`: Time from now, in seconds.\n" OrbitalSpeedAt
export OrbitalSpeedAt
import ..Orbit_RadiusAt as var"##943"
RadiusAt(this::RemoteTypes.Orbit, ut::Float64) = begin
        kerbal(this.conn, var"##943"(this, ut))
    end
@doc "    RadiusAt(this::RemoteTypes.Orbit, ut::Float64)\n\nThe orbital radius at the given time, in meters.\n\n# Arguments\n- `ut::Float64`: The universal time to measure the radius at.\n" RadiusAt
export RadiusAt
import ..Orbit_PositionAt as var"##944"
PositionAt(this::RemoteTypes.Orbit, ut::Float64, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##944"(this, ut, referenceFrame))
    end
@doc "    PositionAt(this::RemoteTypes.Orbit, ut::Float64, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position at a given time, in the specified reference frame.\n\n# Arguments\n- `ut::Float64`: The universal time to measure the position at.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n" PositionAt
export PositionAt
import ..Orbit_TimeOfClosestApproach as var"##945"
TimeOfClosestApproach(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##945"(this, target))
    end
@doc "    TimeOfClosestApproach(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit)\n\nEstimates and returns the time at closest approach to a target orbit.\n\n# Arguments\n- `target::RemoteTypes.Orbit`: Target orbit.\n# Returns\nThe universal time at closest approach, in seconds.\n" TimeOfClosestApproach
export TimeOfClosestApproach
import ..Orbit_DistanceAtClosestApproach as var"##946"
DistanceAtClosestApproach(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##946"(this, target))
    end
@doc "    DistanceAtClosestApproach(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit)\n\nEstimates and returns the distance at closest approach to a target orbit, in meters.\n\n# Arguments\n- `target::RemoteTypes.Orbit`: Target orbit.\n" DistanceAtClosestApproach
export DistanceAtClosestApproach
import ..Orbit_ListClosestApproaches as var"##947"
ListClosestApproaches(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit, orbits::Int32) = begin
        kerbal(this.conn, var"##947"(this, target, orbits))
    end
@doc "    ListClosestApproaches(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit, orbits::Int32)\n\nReturns the times at closest approach and corresponding distances, to a target orbit.\n\n# Arguments\n- `target::RemoteTypes.Orbit`: Target orbit.\n- `orbits::Int32`: The number of future orbits to search.\n# Returns\n A list of two lists. The first is a list of times at closest approach, as universal times in seconds. The second is a list of corresponding distances at closest approach, in meters. \n" ListClosestApproaches
export ListClosestApproaches
import ..Orbit_TrueAnomalyAtAN as var"##948"
TrueAnomalyAtAN(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##948"(this, target))
    end
@doc "    TrueAnomalyAtAN(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit)\n\nThe true anomaly of the ascending node with the given target orbit.\n\n# Arguments\n- `target::RemoteTypes.Orbit`: Target orbit.\n" TrueAnomalyAtAN
export TrueAnomalyAtAN
import ..Orbit_TrueAnomalyAtDN as var"##949"
TrueAnomalyAtDN(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##949"(this, target))
    end
@doc "    TrueAnomalyAtDN(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit)\n\nThe true anomaly of the descending node with the given target orbit.\n\n# Arguments\n- `target::RemoteTypes.Orbit`: Target orbit.\n" TrueAnomalyAtDN
export TrueAnomalyAtDN
import ..Orbit_RelativeInclination as var"##950"
RelativeInclination(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##950"(this, target))
    end
@doc "    RelativeInclination(this::RemoteTypes.Orbit, target::RemoteTypes.Orbit)\n\nRelative inclination of this orbit and the target orbit, in radians.\n\n# Arguments\n- `target::RemoteTypes.Orbit`: Target orbit.\n" RelativeInclination
export RelativeInclination
import ..Orbit_get_Body as var"##951"
Body(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##951"(this))
    end
@doc "    Body(this::RemoteTypes.Orbit)\n\nThe celestial body (e.g. planet or moon) around which the object is orbiting.\n\n" Body
export Body
import ..Orbit_get_Apoapsis as var"##952"
Apoapsis(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##952"(this))
    end
@doc "    Apoapsis(this::RemoteTypes.Orbit)\n\nGets the apoapsis of the orbit, in meters, from the center of mass\nof the body being orbited.\n\n# Remarks\n For the apoapsis altitude reported on the in-game map view, use . \n" Apoapsis
export Apoapsis
import ..Orbit_get_Periapsis as var"##953"
Periapsis(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##953"(this))
    end
@doc "    Periapsis(this::RemoteTypes.Orbit)\n\nThe periapsis of the orbit, in meters, from the center of mass\nof the body being orbited.\n\n# Remarks\n For the periapsis altitude reported on the in-game map view, use . \n" Periapsis
export Periapsis
import ..Orbit_get_ApoapsisAltitude as var"##954"
ApoapsisAltitude(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##954"(this))
    end
@doc "    ApoapsisAltitude(this::RemoteTypes.Orbit)\n\nThe apoapsis of the orbit, in meters, above the sea level of the body being orbited.\n\n# Remarks\n This is equal to  minus the equatorial radius of the body. \n" ApoapsisAltitude
export ApoapsisAltitude
import ..Orbit_get_PeriapsisAltitude as var"##955"
PeriapsisAltitude(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##955"(this))
    end
@doc "    PeriapsisAltitude(this::RemoteTypes.Orbit)\n\nThe periapsis of the orbit, in meters, above the sea level of the body being orbited.\n\n# Remarks\n This is equal to  minus the equatorial radius of the body. \n" PeriapsisAltitude
export PeriapsisAltitude
import ..Orbit_get_SemiMajorAxis as var"##956"
SemiMajorAxis(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##956"(this))
    end
@doc "    SemiMajorAxis(this::RemoteTypes.Orbit)\n\nThe semi-major axis of the orbit, in meters.\n\n" SemiMajorAxis
export SemiMajorAxis
import ..Orbit_get_SemiMinorAxis as var"##957"
SemiMinorAxis(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##957"(this))
    end
@doc "    SemiMinorAxis(this::RemoteTypes.Orbit)\n\nThe semi-minor axis of the orbit, in meters.\n\n" SemiMinorAxis
export SemiMinorAxis
import ..Orbit_get_Radius as var"##958"
Radius(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##958"(this))
    end
@doc "    Radius(this::RemoteTypes.Orbit)\n\nThe current radius of the orbit, in meters. This is the distance between the center\nof mass of the object in orbit, and the center of mass of the body around which it\nis orbiting.\n\n# Remarks\n This value will change over time if the orbit is elliptical. \n" Radius
export Radius
import ..Orbit_get_Speed as var"##959"
Speed(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##959"(this))
    end
@doc "    Speed(this::RemoteTypes.Orbit)\n\nThe current orbital speed of the object in meters per second.\n\n# Remarks\n This value will change over time if the orbit is elliptical. \n" Speed
export Speed
import ..Orbit_get_Period as var"##960"
Period(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##960"(this))
    end
@doc "    Period(this::RemoteTypes.Orbit)\n\nThe orbital period, in seconds.\n\n" Period
export Period
import ..Orbit_get_TimeToApoapsis as var"##961"
TimeToApoapsis(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##961"(this))
    end
@doc "    TimeToApoapsis(this::RemoteTypes.Orbit)\n\nThe time until the object reaches apoapsis, in seconds.\n\n" TimeToApoapsis
export TimeToApoapsis
import ..Orbit_get_TimeToPeriapsis as var"##962"
TimeToPeriapsis(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##962"(this))
    end
@doc "    TimeToPeriapsis(this::RemoteTypes.Orbit)\n\nThe time until the object reaches periapsis, in seconds.\n\n" TimeToPeriapsis
export TimeToPeriapsis
import ..Orbit_get_Eccentricity as var"##963"
Eccentricity(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##963"(this))
    end
@doc "    Eccentricity(this::RemoteTypes.Orbit)\n\nThe eccentricity\nof the orbit.\n\n" Eccentricity
export Eccentricity
import ..Orbit_get_Inclination as var"##964"
Inclination(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##964"(this))
    end
@doc "    Inclination(this::RemoteTypes.Orbit)\n\nThe inclination\nof the orbit,\nin radians.\n\n" Inclination
export Inclination
import ..Orbit_get_LongitudeOfAscendingNode as var"##965"
LongitudeOfAscendingNode(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##965"(this))
    end
@doc "    LongitudeOfAscendingNode(this::RemoteTypes.Orbit)\n\nThe longitude of\nthe ascending node, in radians.\n\n" LongitudeOfAscendingNode
export LongitudeOfAscendingNode
import ..Orbit_get_ArgumentOfPeriapsis as var"##966"
ArgumentOfPeriapsis(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##966"(this))
    end
@doc "    ArgumentOfPeriapsis(this::RemoteTypes.Orbit)\n\nThe argument of\nperiapsis, in radians.\n\n" ArgumentOfPeriapsis
export ArgumentOfPeriapsis
import ..Orbit_get_MeanAnomalyAtEpoch as var"##967"
MeanAnomalyAtEpoch(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##967"(this))
    end
@doc "    MeanAnomalyAtEpoch(this::RemoteTypes.Orbit)\n\nThe mean anomaly at epoch.\n\n" MeanAnomalyAtEpoch
export MeanAnomalyAtEpoch
import ..Orbit_get_Epoch as var"##968"
Epoch(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##968"(this))
    end
@doc "    Epoch(this::RemoteTypes.Orbit)\n\nThe time since the epoch (the point at which the\nmean anomaly at epoch\nwas measured, in seconds.\n\n" Epoch
export Epoch
import ..Orbit_get_MeanAnomaly as var"##969"
MeanAnomaly(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##969"(this))
    end
@doc "    MeanAnomaly(this::RemoteTypes.Orbit)\n\nThe mean anomaly.\n\n" MeanAnomaly
export MeanAnomaly
import ..Orbit_get_EccentricAnomaly as var"##970"
EccentricAnomaly(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##970"(this))
    end
@doc "    EccentricAnomaly(this::RemoteTypes.Orbit)\n\nThe eccentric anomaly.\n\n" EccentricAnomaly
export EccentricAnomaly
import ..Orbit_get_TrueAnomaly as var"##971"
TrueAnomaly(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##971"(this))
    end
@doc "    TrueAnomaly(this::RemoteTypes.Orbit)\n\nThe true anomaly.\n\n" TrueAnomaly
export TrueAnomaly
import ..Orbit_get_NextOrbit as var"##972"
NextOrbit(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##972"(this))
    end
@doc "    NextOrbit(this::RemoteTypes.Orbit)\n\nIf the object is going to change sphere of influence in the future, returns the new\norbit after the change. Otherwise returns null.\n\n" NextOrbit
export NextOrbit
import ..Orbit_get_TimeToSOIChange as var"##973"
TimeToSOIChange(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##973"(this))
    end
@doc "    TimeToSOIChange(this::RemoteTypes.Orbit)\n\nThe time until the object changes sphere of influence, in seconds. Returns NaN\nif the object is not going to change sphere of influence.\n\n" TimeToSOIChange
export TimeToSOIChange
import ..Orbit_get_OrbitalSpeed as var"##974"
OrbitalSpeed(this::RemoteTypes.Orbit) = begin
        kerbal(this.conn, var"##974"(this))
    end
@doc "    OrbitalSpeed(this::RemoteTypes.Orbit)\n\nThe current orbital speed in meters per second.\n\n" OrbitalSpeed
export OrbitalSpeed
import ..ReferenceFrame_static_CreateRelative as var"##975"
CreateRelative(conn::KRPCConnection, referenceFrame::RemoteTypes.ReferenceFrame, position::begin
                    Tuple{Float64, Float64, Float64}
                end = getJuliaValue(this.conn, UInt8[0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00], begin
                    Tuple{Float64, Float64, Float64}
                end), rotation::begin
                    Tuple{Float64, Float64, Float64, Float64}
                end = getJuliaValue(this.conn, UInt8[0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x3f], begin
                    Tuple{Float64, Float64, Float64, Float64}
                end), velocity::begin
                    Tuple{Float64, Float64, Float64}
                end = getJuliaValue(this.conn, UInt8[0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00], begin
                    Tuple{Float64, Float64, Float64}
                end), angularVelocity::begin
                    Tuple{Float64, Float64, Float64}
                end = getJuliaValue(this.conn, UInt8[0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00], begin
                    Tuple{Float64, Float64, Float64}
                end)) = begin
        kerbal(conn, var"##975"(referenceFrame, position, rotation, velocity, angularVelocity))
    end
@doc "    CreateRelative(referenceFrame::RemoteTypes.ReferenceFrame, position::begin\n    Tuple{Float64, Float64, Float64}\nend, rotation::begin\n    Tuple{Float64, Float64, Float64, Float64}\nend, velocity::begin\n    Tuple{Float64, Float64, Float64}\nend, angularVelocity::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nCreate a relative reference frame. This is a custom reference frame\nwhose components offset the components of a parent reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The parent reference frame on which to base this reference frame.\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: The offset of the position of the origin, as a position vector. Defaults to (0, 0, 0)\n- `rotation::begin\n    Tuple{Float64, Float64, Float64, Float64}\nend`: The rotation to apply to the parent frames rotation, as a quaternion of the form (x, y, z, w). Defaults to (0, 0, 0, 1) (i.e. no rotation)\n- `velocity::begin\n    Tuple{Float64, Float64, Float64}\nend`: The linear velocity to offset the parent frame by, as a vector pointing in the direction of travel, whose magnitude is the speed in meters per second. Defaults to (0, 0, 0).\n- `angularVelocity::begin\n    Tuple{Float64, Float64, Float64}\nend`: The angular velocity to offset the parent frame by, as a vector. This vector points in the direction of the axis of rotation, and its magnitude is the speed of the rotation in radians per second. Defaults to (0, 0, 0).\n" CreateRelative
export CreateRelative
import ..ReferenceFrame_static_CreateHybrid as var"##976"
CreateHybrid(conn::KRPCConnection, position::RemoteTypes.ReferenceFrame, rotation::RemoteTypes.ReferenceFrame = getJuliaValue(this.conn, UInt8[0x00], RemoteTypes.ReferenceFrame), velocity::RemoteTypes.ReferenceFrame = getJuliaValue(this.conn, UInt8[0x00], RemoteTypes.ReferenceFrame), angularVelocity::RemoteTypes.ReferenceFrame = getJuliaValue(this.conn, UInt8[0x00], RemoteTypes.ReferenceFrame)) = begin
        kerbal(conn, var"##976"(position, rotation, velocity, angularVelocity))
    end
@doc "    CreateHybrid(position::RemoteTypes.ReferenceFrame, rotation::RemoteTypes.ReferenceFrame, velocity::RemoteTypes.ReferenceFrame, angularVelocity::RemoteTypes.ReferenceFrame)\n\nCreate a hybrid reference frame. This is a custom reference frame\nwhose components inherited from other reference frames.\n\n# Arguments\n- `position::RemoteTypes.ReferenceFrame`: The reference frame providing the position of the origin.\n- `rotation::RemoteTypes.ReferenceFrame`: The reference frame providing the rotation of the frame.\n- `velocity::RemoteTypes.ReferenceFrame`: The reference frame providing the linear velocity of the frame. \n- `angularVelocity::RemoteTypes.ReferenceFrame`: The reference frame providing the angular velocity of the frame.\n# Remarks\n The  reference frame is required but all other reference frames are optional. If omitted, they are set to the  reference frame. \n" CreateHybrid
export CreateHybrid
import ..Resource_get_Name as var"##977"
Name(this::RemoteTypes.Resource) = begin
        kerbal(this.conn, var"##977"(this))
    end
@doc "    Name(this::RemoteTypes.Resource)\n\nThe name of the resource.\n\n" Name
export Name
import ..Resource_get_Part as var"##978"
Part(this::RemoteTypes.Resource) = begin
        kerbal(this.conn, var"##978"(this))
    end
@doc "    Part(this::RemoteTypes.Resource)\n\nThe part containing the resource.\n\n" Part
export Part
import ..Resource_get_Max as var"##979"
Max(this::RemoteTypes.Resource) = begin
        kerbal(this.conn, var"##979"(this))
    end
@doc "    Max(this::RemoteTypes.Resource)\n\nThe total amount of the resource that can be stored in the part.\n\n" Max
export Max
import ..Resource_get_Amount as var"##980"
Amount(this::RemoteTypes.Resource) = begin
        kerbal(this.conn, var"##980"(this))
    end
@doc "    Amount(this::RemoteTypes.Resource)\n\nThe amount of the resource that is currently stored in the part.\n\n" Amount
export Amount
import ..Resource_get_Density as var"##981"
Density(this::RemoteTypes.Resource) = begin
        kerbal(this.conn, var"##981"(this))
    end
@doc "    Density(this::RemoteTypes.Resource)\n\nThe density of the resource, in kg/l.\n\n" Density
export Density
import ..Resource_get_FlowMode as var"##982"
FlowMode(this::RemoteTypes.Resource) = begin
        kerbal(this.conn, var"##982"(this))
    end
@doc "    FlowMode(this::RemoteTypes.Resource)\n\nThe flow mode of the resource.\n\n" FlowMode
export FlowMode
import ..Resource_get_Enabled as var"##983"
Enabled(this::RemoteTypes.Resource) = begin
        kerbal(this.conn, var"##983"(this))
    end
@doc "    Enabled(this::RemoteTypes.Resource)\n\nWhether use of this resource is enabled.\n\n" Enabled
export Enabled
import ..Resource_set_Enabled as var"##984"
Enabled!(this::RemoteTypes.Resource, value::Bool) = begin
        kerbal(this.conn, var"##984"(this, value))
    end
@doc "    Enabled!(this::RemoteTypes.Resource, value::Bool)\n\nWhether use of this resource is enabled.\n\n" Enabled!
export Enabled!
import ..ResourceTransfer_static_Start as var"##985"
Start(conn::KRPCConnection, fromPart::RemoteTypes.Part, toPart::RemoteTypes.Part, resource::String, maxAmount::Float32) = begin
        kerbal(conn, var"##985"(fromPart, toPart, resource, maxAmount))
    end
@doc "    Start(fromPart::RemoteTypes.Part, toPart::RemoteTypes.Part, resource::String, maxAmount::Float32)\n\nStart transferring a resource transfer between a pair of parts. The transfer will move\nat most  units of the resource, depending on how much of\nthe resource is available in the source part and how much storage is available in the\ndestination part.\nUse  to check if the transfer is complete.\nUse  to see how much of the resource has been transferred.\n\n# Arguments\n- `fromPart::RemoteTypes.Part`: The part to transfer to.\n- `toPart::RemoteTypes.Part`: The part to transfer from.\n- `resource::String`: The name of the resource to transfer.\n- `maxAmount::Float32`: The maximum amount of resource to transfer.\n" Start
export Start
import ..ResourceTransfer_get_Complete as var"##986"
Complete(this::RemoteTypes.ResourceTransfer) = begin
        kerbal(this.conn, var"##986"(this))
    end
@doc "    Complete(this::RemoteTypes.ResourceTransfer)\n\nWhether the transfer has completed.\n\n" Complete
export Complete
import ..ResourceTransfer_get_Amount as var"##987"
Amount(this::RemoteTypes.ResourceTransfer) = begin
        kerbal(this.conn, var"##987"(this))
    end
@doc "    Amount(this::RemoteTypes.ResourceTransfer)\n\nThe amount of the resource that has been transferred.\n\n" Amount
export Amount
import ..Resources_WithResource as var"##988"
WithResource(this::RemoteTypes.Resources, name::String) = begin
        kerbal(this.conn, var"##988"(this, name))
    end
@doc "    WithResource(this::RemoteTypes.Resources, name::String)\n\nAll the individual resources with the given name that can be stored.\n\n" WithResource
export WithResource
import ..Resources_HasResource as var"##989"
HasResource(this::RemoteTypes.Resources, name::String) = begin
        kerbal(this.conn, var"##989"(this, name))
    end
@doc "    HasResource(this::RemoteTypes.Resources, name::String)\n\nCheck whether the named resource can be stored.\n\n# Arguments\n- `name::String`: The name of the resource.\n" HasResource
export HasResource
import ..Resources_Max as var"##990"
Max(this::RemoteTypes.Resources, name::String) = begin
        kerbal(this.conn, var"##990"(this, name))
    end
@doc "    Max(this::RemoteTypes.Resources, name::String)\n\nReturns the amount of a resource that can be stored.\n\n# Arguments\n- `name::String`: The name of the resource.\n" Max
export Max
import ..Resources_Amount as var"##991"
Amount(this::RemoteTypes.Resources, name::String) = begin
        kerbal(this.conn, var"##991"(this, name))
    end
@doc "    Amount(this::RemoteTypes.Resources, name::String)\n\nReturns the amount of a resource that is currently stored.\n\n# Arguments\n- `name::String`: The name of the resource.\n" Amount
export Amount
import ..Resources_static_Density as var"##992"
Density(conn::KRPCConnection, name::String) = begin
        kerbal(conn, var"##992"(name))
    end
@doc "    Density(name::String)\n\nReturns the density of a resource, in kg/l.\n\n# Arguments\n- `name::String`: The name of the resource.\n" Density
export Density
import ..Resources_static_FlowMode as var"##993"
FlowMode(conn::KRPCConnection, name::String) = begin
        kerbal(conn, var"##993"(name))
    end
@doc "    FlowMode(name::String)\n\nReturns the flow mode of a resource.\n\n# Arguments\n- `name::String`: The name of the resource.\n" FlowMode
export FlowMode
import ..Resources_get_All as var"##994"
All(this::RemoteTypes.Resources) = begin
        kerbal(this.conn, var"##994"(this))
    end
@doc "    All(this::RemoteTypes.Resources)\n\nAll the individual resources that can be stored.\n\n" All
export All
import ..Resources_get_Names as var"##995"
Names(this::RemoteTypes.Resources) = begin
        kerbal(this.conn, var"##995"(this))
    end
@doc "    Names(this::RemoteTypes.Resources)\n\nA list of resource names that can be stored.\n\n" Names
export Names
import ..Resources_get_Enabled as var"##996"
Enabled(this::RemoteTypes.Resources) = begin
        kerbal(this.conn, var"##996"(this))
    end
@doc "    Enabled(this::RemoteTypes.Resources)\n\nWhether use of all the resources are enabled.\n\n# Remarks\n This is true if all of the resources are enabled. If any of the resources are not enabled, this is false. \n" Enabled
export Enabled
import ..Resources_set_Enabled as var"##997"
Enabled!(this::RemoteTypes.Resources, value::Bool) = begin
        kerbal(this.conn, var"##997"(this, value))
    end
@doc "    Enabled!(this::RemoteTypes.Resources, value::Bool)\n\nWhether use of all the resources are enabled.\n\n# Remarks\n This is true if all of the resources are enabled. If any of the resources are not enabled, this is false. \n" Enabled!
export Enabled!
import ..Vessel_Recover as var"##998"
Recover(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##998"(this))
    end
@doc "    Recover(this::RemoteTypes.Vessel)\n\nRecover the vessel.\n\n" Recover
export Recover
import ..Vessel_Flight as var"##999"
Flight(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame = getJuliaValue(this.conn, UInt8[0x00], RemoteTypes.ReferenceFrame)) = begin
        kerbal(this.conn, var"##999"(this, referenceFrame))
    end
@doc "    Flight(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame)\n\nReturns a  object that can be used to get flight\ntelemetry for the vessel, in the specified reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`:  Reference frame. Defaults to the vessel's surface reference frame (). \n" Flight
export Flight
import ..Vessel_ResourcesInDecoupleStage as var"##1000"
ResourcesInDecoupleStage(this::RemoteTypes.Vessel, stage::Int32, cumulative::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1000"(this, stage, cumulative))
    end
@doc "    ResourcesInDecoupleStage(this::RemoteTypes.Vessel, stage::Int32, cumulative::Bool)\n\nReturns a  object, that can used to get\ninformation about resources stored in a given .\n\n# Arguments\n- `stage::Int32`: Get resources for parts that are decoupled in this stage.\n- `cumulative::Bool`: When false, returns the resources for parts decoupled in just the given stage. When true returns the resources decoupled in the given stage and all subsequent stages combined.\n" ResourcesInDecoupleStage
export ResourcesInDecoupleStage
import ..Vessel_Position as var"##1001"
Position(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1001"(this, referenceFrame))
    end
@doc "    Position(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position of the center of mass of the vessel, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n" Position
export Position
import ..Vessel_BoundingBox as var"##1002"
BoundingBox(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1002"(this, referenceFrame))
    end
@doc "    BoundingBox(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe axis-aligned bounding box of the vessel in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vectors are in.\n# Returns\nThe positions of the minimum and maximum vertices of the box, as position vectors.\n" BoundingBox
export BoundingBox
import ..Vessel_Velocity as var"##1003"
Velocity(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1003"(this, referenceFrame))
    end
@doc "    Velocity(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe velocity of the center of mass of the vessel, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned velocity vector is in.\n# Returns\nThe velocity as a vector. The vector points in the direction of travel, and its magnitude is the speed of the body in meters per second.\n" Velocity
export Velocity
import ..Vessel_Rotation as var"##1004"
Rotation(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1004"(this, referenceFrame))
    end
@doc "    Rotation(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe rotation of the vessel, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned rotation is in.\n# Returns\nThe rotation as a quaternion of the form (x, y, z, w).\n" Rotation
export Rotation
import ..Vessel_Direction as var"##1005"
Direction(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1005"(this, referenceFrame))
    end
@doc "    Direction(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe direction in which the vessel is pointing, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned direction is in.\n# Returns\nThe direction as a unit vector.\n" Direction
export Direction
import ..Vessel_AngularVelocity as var"##1006"
AngularVelocity(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1006"(this, referenceFrame))
    end
@doc "    AngularVelocity(this::RemoteTypes.Vessel, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe angular velocity of the vessel, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame the returned angular velocity is in.\n# Returns\nThe angular velocity as a vector. The magnitude of the vector is the rotational speed of the vessel, in radians per second. The direction of the vector indicates the axis of rotation, using the right-hand rule.\n" AngularVelocity
export AngularVelocity
import ..Vessel_get_Name as var"##1007"
Name(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1007"(this))
    end
@doc "    Name(this::RemoteTypes.Vessel)\n\nThe name of the vessel.\n\n" Name
export Name
import ..Vessel_set_Name as var"##1008"
Name!(this::RemoteTypes.Vessel, value::String) = begin
        kerbal(this.conn, var"##1008"(this, value))
    end
@doc "    Name!(this::RemoteTypes.Vessel, value::String)\n\nThe name of the vessel.\n\n" Name!
export Name!
import ..Vessel_get_Type as var"##1009"
Type(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1009"(this))
    end
@doc "    Type(this::RemoteTypes.Vessel)\n\nThe type of the vessel.\n\n" Type
export Type
import ..Vessel_set_Type as var"##1010"
Type!(this::RemoteTypes.Vessel, value::EVesselType) = begin
        kerbal(this.conn, var"##1010"(this, value))
    end
@doc "    Type!(this::RemoteTypes.Vessel, value::EVesselType)\n\nThe type of the vessel.\n\n" Type!
export Type!
import ..Vessel_get_Situation as var"##1011"
Situation(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1011"(this))
    end
@doc "    Situation(this::RemoteTypes.Vessel)\n\nThe situation the vessel is in.\n\n" Situation
export Situation
import ..Vessel_get_Recoverable as var"##1012"
Recoverable(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1012"(this))
    end
@doc "    Recoverable(this::RemoteTypes.Vessel)\n\nWhether the vessel is recoverable.\n\n" Recoverable
export Recoverable
import ..Vessel_get_MET as var"##1013"
MET(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1013"(this))
    end
@doc "    MET(this::RemoteTypes.Vessel)\n\nThe mission elapsed time in seconds.\n\n" MET
export MET
import ..Vessel_get_Biome as var"##1014"
Biome(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1014"(this))
    end
@doc "    Biome(this::RemoteTypes.Vessel)\n\nThe name of the biome the vessel is currently in.\n\n" Biome
export Biome
import ..Vessel_get_Orbit as var"##1015"
Orbit(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1015"(this))
    end
@doc "    Orbit(this::RemoteTypes.Vessel)\n\nThe current orbit of the vessel.\n\n" Orbit
export Orbit
import ..Vessel_get_Control as var"##1016"
Control(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1016"(this))
    end
@doc "    Control(this::RemoteTypes.Vessel)\n\nReturns a  object that can be used to manipulate\nthe vessel's control inputs. For example, its pitch/yaw/roll controls,\nRCS and thrust.\n\n" Control
export Control
import ..Vessel_get_Comms as var"##1017"
Comms(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1017"(this))
    end
@doc "    Comms(this::RemoteTypes.Vessel)\n\nReturns a  object that can be used to interact\nwith CommNet for this vessel.\n\n" Comms
export Comms
import ..Vessel_get_AutoPilot as var"##1018"
AutoPilot(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1018"(this))
    end
@doc "    AutoPilot(this::RemoteTypes.Vessel)\n\nAn  object, that can be used to perform\nsimple auto-piloting of the vessel.\n\n" AutoPilot
export AutoPilot
import ..Vessel_get_CrewCapacity as var"##1019"
CrewCapacity(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1019"(this))
    end
@doc "    CrewCapacity(this::RemoteTypes.Vessel)\n\nThe number of crew that can occupy the vessel.\n\n" CrewCapacity
export CrewCapacity
import ..Vessel_get_CrewCount as var"##1020"
CrewCount(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1020"(this))
    end
@doc "    CrewCount(this::RemoteTypes.Vessel)\n\nThe number of crew that are occupying the vessel.\n\n" CrewCount
export CrewCount
import ..Vessel_get_Crew as var"##1021"
Crew(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1021"(this))
    end
@doc "    Crew(this::RemoteTypes.Vessel)\n\nThe crew in the vessel.\n\n" Crew
export Crew
import ..Vessel_get_Resources as var"##1022"
Resources(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1022"(this))
    end
@doc "    Resources(this::RemoteTypes.Vessel)\n\nA  object, that can used to get information\nabout resources stored in the vessel.\n\n" Resources
export Resources
import ..Vessel_get_Parts as var"##1023"
Parts(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1023"(this))
    end
@doc "    Parts(this::RemoteTypes.Vessel)\n\nA  object, that can used to interact with the parts that make up this vessel.\n\n" Parts
export Parts
import ..Vessel_get_Mass as var"##1024"
Mass(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1024"(this))
    end
@doc "    Mass(this::RemoteTypes.Vessel)\n\nThe total mass of the vessel, including resources, in kg.\n\n" Mass
export Mass
import ..Vessel_get_DryMass as var"##1025"
DryMass(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1025"(this))
    end
@doc "    DryMass(this::RemoteTypes.Vessel)\n\nThe total mass of the vessel, excluding resources, in kg.\n\n" DryMass
export DryMass
import ..Vessel_get_Thrust as var"##1026"
Thrust(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1026"(this))
    end
@doc "    Thrust(this::RemoteTypes.Vessel)\n\nThe total thrust currently being produced by the vessel's engines, in\nNewtons. This is computed by summing  for\nevery engine in the vessel.\n\n" Thrust
export Thrust
import ..Vessel_get_AvailableThrust as var"##1027"
AvailableThrust(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1027"(this))
    end
@doc "    AvailableThrust(this::RemoteTypes.Vessel)\n\nGets the total available thrust that can be produced by the vessel's\nactive engines, in Newtons. This is computed by summing\n for every active engine in the vessel.\n\n" AvailableThrust
export AvailableThrust
import ..Vessel_get_MaxThrust as var"##1028"
MaxThrust(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1028"(this))
    end
@doc "    MaxThrust(this::RemoteTypes.Vessel)\n\nThe total maximum thrust that can be produced by the vessel's active\nengines, in Newtons. This is computed by summing\n for every active engine.\n\n" MaxThrust
export MaxThrust
import ..Vessel_get_MaxVacuumThrust as var"##1029"
MaxVacuumThrust(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1029"(this))
    end
@doc "    MaxVacuumThrust(this::RemoteTypes.Vessel)\n\nThe total maximum thrust that can be produced by the vessel's active\nengines when the vessel is in a vacuum, in Newtons. This is computed by\nsumming  for every active engine.\n\n" MaxVacuumThrust
export MaxVacuumThrust
import ..Vessel_get_SpecificImpulse as var"##1030"
SpecificImpulse(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1030"(this))
    end
@doc "    SpecificImpulse(this::RemoteTypes.Vessel)\n\nThe combined specific impulse of all active engines, in seconds. This is computed using the formula\ndescribed here.\n\n" SpecificImpulse
export SpecificImpulse
import ..Vessel_get_VacuumSpecificImpulse as var"##1031"
VacuumSpecificImpulse(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1031"(this))
    end
@doc "    VacuumSpecificImpulse(this::RemoteTypes.Vessel)\n\nThe combined vacuum specific impulse of all active engines, in seconds. This is computed using the formula\ndescribed here.\n\n" VacuumSpecificImpulse
export VacuumSpecificImpulse
import ..Vessel_get_KerbinSeaLevelSpecificImpulse as var"##1032"
KerbinSeaLevelSpecificImpulse(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1032"(this))
    end
@doc "    KerbinSeaLevelSpecificImpulse(this::RemoteTypes.Vessel)\n\nThe combined specific impulse of all active engines at sea level on Kerbin, in seconds.\nThis is computed using the formula\ndescribed here.\n\n" KerbinSeaLevelSpecificImpulse
export KerbinSeaLevelSpecificImpulse
import ..Vessel_get_MomentOfInertia as var"##1033"
MomentOfInertia(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1033"(this))
    end
@doc "    MomentOfInertia(this::RemoteTypes.Vessel)\n\nThe moment of inertia of the vessel around its center of mass in kg.m^2.\nThe inertia values in the returned 3-tuple are around the\npitch, roll and yaw directions respectively.\nThis corresponds to the vessels reference frame ().\n\n" MomentOfInertia
export MomentOfInertia
import ..Vessel_get_InertiaTensor as var"##1034"
InertiaTensor(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1034"(this))
    end
@doc "    InertiaTensor(this::RemoteTypes.Vessel)\n\nThe inertia tensor of the vessel around its center of mass,\nin the vessels reference frame ().\nReturns the 3x3 matrix as a list of elements, in row-major order.\n\n" InertiaTensor
export InertiaTensor
import ..Vessel_get_AvailableTorque as var"##1035"
AvailableTorque(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1035"(this))
    end
@doc "    AvailableTorque(this::RemoteTypes.Vessel)\n\nThe maximum torque that the vessel generates. Includes contributions from\nreaction wheels, RCS, gimballed engines and aerodynamic control surfaces.\nReturns the torques in N.m around each of the coordinate axes of the\nvessels reference frame ().\nThese axes are equivalent to the pitch, roll and yaw axes of the vessel.\n\n" AvailableTorque
export AvailableTorque
import ..Vessel_get_AvailableReactionWheelTorque as var"##1036"
AvailableReactionWheelTorque(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1036"(this))
    end
@doc "    AvailableReactionWheelTorque(this::RemoteTypes.Vessel)\n\nThe maximum torque that the currently active and powered reaction wheels can generate.\nReturns the torques in N.m around each of the coordinate axes of the\nvessels reference frame ().\nThese axes are equivalent to the pitch, roll and yaw axes of the vessel.\n\n" AvailableReactionWheelTorque
export AvailableReactionWheelTorque
import ..Vessel_get_AvailableRCSTorque as var"##1037"
AvailableRCSTorque(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1037"(this))
    end
@doc "    AvailableRCSTorque(this::RemoteTypes.Vessel)\n\nThe maximum torque that the currently active RCS thrusters can generate.\nReturns the torques in N.m around each of the coordinate axes of the\nvessels reference frame ().\nThese axes are equivalent to the pitch, roll and yaw axes of the vessel.\n\n" AvailableRCSTorque
export AvailableRCSTorque
import ..Vessel_get_AvailableEngineTorque as var"##1038"
AvailableEngineTorque(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1038"(this))
    end
@doc "    AvailableEngineTorque(this::RemoteTypes.Vessel)\n\nThe maximum torque that the currently active and gimballed engines can generate.\nReturns the torques in N.m around each of the coordinate axes of the\nvessels reference frame ().\nThese axes are equivalent to the pitch, roll and yaw axes of the vessel.\n\n" AvailableEngineTorque
export AvailableEngineTorque
import ..Vessel_get_AvailableControlSurfaceTorque as var"##1039"
AvailableControlSurfaceTorque(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1039"(this))
    end
@doc "    AvailableControlSurfaceTorque(this::RemoteTypes.Vessel)\n\nThe maximum torque that the aerodynamic control surfaces can generate.\nReturns the torques in N.m around each of the coordinate axes of the\nvessels reference frame ().\nThese axes are equivalent to the pitch, roll and yaw axes of the vessel.\n\n" AvailableControlSurfaceTorque
export AvailableControlSurfaceTorque
import ..Vessel_get_AvailableOtherTorque as var"##1040"
AvailableOtherTorque(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1040"(this))
    end
@doc "    AvailableOtherTorque(this::RemoteTypes.Vessel)\n\nThe maximum torque that parts (excluding reaction wheels, gimballed engines,\nRCS and control surfaces) can generate.\nReturns the torques in N.m around each of the coordinate axes of the\nvessels reference frame ().\nThese axes are equivalent to the pitch, roll and yaw axes of the vessel.\n\n" AvailableOtherTorque
export AvailableOtherTorque
import ..Vessel_get_ReferenceFrame as var"##1041"
ReferenceFrame(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1041"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.Vessel)\n\nThe reference frame that is fixed relative to the vessel,\nand orientated with the vessel.\nThe origin is at the center of mass of the vessel.The axes rotate with the vessel.The x-axis points out to the right of the vessel.The y-axis points in the forward direction of the vessel.The z-axis points out of the bottom off the vessel.\n" ReferenceFrame
export ReferenceFrame
import ..Vessel_get_OrbitalReferenceFrame as var"##1042"
OrbitalReferenceFrame(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1042"(this))
    end
@doc "    OrbitalReferenceFrame(this::RemoteTypes.Vessel)\n\nThe reference frame that is fixed relative to the vessel,\nand orientated with the vessels orbital prograde/normal/radial directions.\nThe origin is at the center of mass of the vessel.The axes rotate with the orbital prograde/normal/radial directions.The x-axis points in the orbital anti-radial direction.The y-axis points in the orbital prograde direction.The z-axis points in the orbital normal direction.\n# Remarks\n Be careful not to confuse this with 'orbit' mode on the navball. \n" OrbitalReferenceFrame
export OrbitalReferenceFrame
import ..Vessel_get_SurfaceReferenceFrame as var"##1043"
SurfaceReferenceFrame(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1043"(this))
    end
@doc "    SurfaceReferenceFrame(this::RemoteTypes.Vessel)\n\nThe reference frame that is fixed relative to the vessel,\nand orientated with the surface of the body being orbited.\nThe origin is at the center of mass of the vessel.The axes rotate with the north and up directions on the surface of the body.The x-axis points in the zenith\ndirection (upwards, normal to the body being orbited, from the center of the body towards the center of\nmass of the vessel).The y-axis points northwards towards the\nastronomical horizon (north, and tangential to the\nsurface of the body -- the direction in which a compass would point when on the surface).The z-axis points eastwards towards the\nastronomical horizon (east, and tangential to the\nsurface of the body -- east on a compass when on the surface).\n# Remarks\n Be careful not to confuse this with 'surface' mode on the navball. \n" SurfaceReferenceFrame
export SurfaceReferenceFrame
import ..Vessel_get_SurfaceVelocityReferenceFrame as var"##1044"
SurfaceVelocityReferenceFrame(this::RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##1044"(this))
    end
@doc "    SurfaceVelocityReferenceFrame(this::RemoteTypes.Vessel)\n\nThe reference frame that is fixed relative to the vessel,\nand orientated with the velocity vector of the vessel relative\nto the surface of the body being orbited.\nThe origin is at the center of mass of the vessel.The axes rotate with the vessel's velocity vector.The y-axis points in the direction of the vessel's velocity vector,\nrelative to the surface of the body being orbited.The z-axis is in the plane of the\nastronomical horizon.The x-axis is orthogonal to the other two axes.\n" SurfaceVelocityReferenceFrame
export SurfaceVelocityReferenceFrame
import ..Waypoint_Remove as var"##1045"
Remove(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1045"(this))
    end
@doc "    Remove(this::RemoteTypes.Waypoint)\n\nRemoves the waypoint.\n\n" Remove
export Remove
import ..Waypoint_get_Body as var"##1046"
Body(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1046"(this))
    end
@doc "    Body(this::RemoteTypes.Waypoint)\n\nThe celestial body the waypoint is attached to.\n\n" Body
export Body
import ..Waypoint_set_Body as var"##1047"
Body!(this::RemoteTypes.Waypoint, value::RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##1047"(this, value))
    end
@doc "    Body!(this::RemoteTypes.Waypoint, value::RemoteTypes.CelestialBody)\n\nThe celestial body the waypoint is attached to.\n\n" Body!
export Body!
import ..Waypoint_get_Name as var"##1048"
Name(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1048"(this))
    end
@doc "    Name(this::RemoteTypes.Waypoint)\n\nThe name of the waypoint as it appears on the map and the contract.\n\n" Name
export Name
import ..Waypoint_set_Name as var"##1049"
Name!(this::RemoteTypes.Waypoint, value::String) = begin
        kerbal(this.conn, var"##1049"(this, value))
    end
@doc "    Name!(this::RemoteTypes.Waypoint, value::String)\n\nThe name of the waypoint as it appears on the map and the contract.\n\n" Name!
export Name!
import ..Waypoint_get_Color as var"##1050"
Color(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1050"(this))
    end
@doc "    Color(this::RemoteTypes.Waypoint)\n\nThe seed of the icon color. See  for example colors.\n\n" Color
export Color
import ..Waypoint_set_Color as var"##1051"
Color!(this::RemoteTypes.Waypoint, value::Int32) = begin
        kerbal(this.conn, var"##1051"(this, value))
    end
@doc "    Color!(this::RemoteTypes.Waypoint, value::Int32)\n\nThe seed of the icon color. See  for example colors.\n\n" Color!
export Color!
import ..Waypoint_get_Icon as var"##1052"
Icon(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1052"(this))
    end
@doc "    Icon(this::RemoteTypes.Waypoint)\n\nThe icon of the waypoint.\n\n" Icon
export Icon
import ..Waypoint_set_Icon as var"##1053"
Icon!(this::RemoteTypes.Waypoint, value::String) = begin
        kerbal(this.conn, var"##1053"(this, value))
    end
@doc "    Icon!(this::RemoteTypes.Waypoint, value::String)\n\nThe icon of the waypoint.\n\n" Icon!
export Icon!
import ..Waypoint_get_Latitude as var"##1054"
Latitude(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1054"(this))
    end
@doc "    Latitude(this::RemoteTypes.Waypoint)\n\nThe latitude of the waypoint.\n\n" Latitude
export Latitude
import ..Waypoint_set_Latitude as var"##1055"
Latitude!(this::RemoteTypes.Waypoint, value::Float64) = begin
        kerbal(this.conn, var"##1055"(this, value))
    end
@doc "    Latitude!(this::RemoteTypes.Waypoint, value::Float64)\n\nThe latitude of the waypoint.\n\n" Latitude!
export Latitude!
import ..Waypoint_get_Longitude as var"##1056"
Longitude(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1056"(this))
    end
@doc "    Longitude(this::RemoteTypes.Waypoint)\n\nThe longitude of the waypoint.\n\n" Longitude
export Longitude
import ..Waypoint_set_Longitude as var"##1057"
Longitude!(this::RemoteTypes.Waypoint, value::Float64) = begin
        kerbal(this.conn, var"##1057"(this, value))
    end
@doc "    Longitude!(this::RemoteTypes.Waypoint, value::Float64)\n\nThe longitude of the waypoint.\n\n" Longitude!
export Longitude!
import ..Waypoint_get_MeanAltitude as var"##1058"
MeanAltitude(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1058"(this))
    end
@doc "    MeanAltitude(this::RemoteTypes.Waypoint)\n\nThe altitude of the waypoint above sea level, in meters.\n\n" MeanAltitude
export MeanAltitude
import ..Waypoint_set_MeanAltitude as var"##1059"
MeanAltitude!(this::RemoteTypes.Waypoint, value::Float64) = begin
        kerbal(this.conn, var"##1059"(this, value))
    end
@doc "    MeanAltitude!(this::RemoteTypes.Waypoint, value::Float64)\n\nThe altitude of the waypoint above sea level, in meters.\n\n" MeanAltitude!
export MeanAltitude!
import ..Waypoint_get_SurfaceAltitude as var"##1060"
SurfaceAltitude(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1060"(this))
    end
@doc "    SurfaceAltitude(this::RemoteTypes.Waypoint)\n\nThe altitude of the waypoint above the surface of the body or sea level,\nwhichever is closer, in meters.\n\n" SurfaceAltitude
export SurfaceAltitude
import ..Waypoint_set_SurfaceAltitude as var"##1061"
SurfaceAltitude!(this::RemoteTypes.Waypoint, value::Float64) = begin
        kerbal(this.conn, var"##1061"(this, value))
    end
@doc "    SurfaceAltitude!(this::RemoteTypes.Waypoint, value::Float64)\n\nThe altitude of the waypoint above the surface of the body or sea level,\nwhichever is closer, in meters.\n\n" SurfaceAltitude!
export SurfaceAltitude!
import ..Waypoint_get_BedrockAltitude as var"##1062"
BedrockAltitude(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1062"(this))
    end
@doc "    BedrockAltitude(this::RemoteTypes.Waypoint)\n\nThe altitude of the waypoint above the surface of the body, in meters.\nWhen over water, this is the altitude above the sea floor.\n\n" BedrockAltitude
export BedrockAltitude
import ..Waypoint_set_BedrockAltitude as var"##1063"
BedrockAltitude!(this::RemoteTypes.Waypoint, value::Float64) = begin
        kerbal(this.conn, var"##1063"(this, value))
    end
@doc "    BedrockAltitude!(this::RemoteTypes.Waypoint, value::Float64)\n\nThe altitude of the waypoint above the surface of the body, in meters.\nWhen over water, this is the altitude above the sea floor.\n\n" BedrockAltitude!
export BedrockAltitude!
import ..Waypoint_get_NearSurface as var"##1064"
NearSurface(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1064"(this))
    end
@doc "    NearSurface(this::RemoteTypes.Waypoint)\ntrue if the waypoint is near to the surface of a body.\n\n" NearSurface
export NearSurface
import ..Waypoint_get_Grounded as var"##1065"
Grounded(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1065"(this))
    end
@doc "    Grounded(this::RemoteTypes.Waypoint)\ntrue if the waypoint is attached to the ground.\n\n" Grounded
export Grounded
import ..Waypoint_get_Index as var"##1066"
Index(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1066"(this))
    end
@doc "    Index(this::RemoteTypes.Waypoint)\n\nThe integer index of this waypoint within its cluster of sibling waypoints.\nIn other words, when you have a cluster of waypoints called \"Somewhere Alpha\",\n\"Somewhere Beta\" and \"Somewhere Gamma\", the alpha site has index 0, the beta\nsite has index 1 and the gamma site has index 2.\nWhen  is false, this is zero.\n\n" Index
export Index
import ..Waypoint_get_Clustered as var"##1067"
Clustered(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1067"(this))
    end
@doc "    Clustered(this::RemoteTypes.Waypoint)\ntrue if this waypoint is part of a set of clustered waypoints with greek letter\nnames appended (Alpha, Beta, Gamma, etc).\nIf true, there is a one-to-one correspondence with the greek letter name and\nthe .\n\n" Clustered
export Clustered
import ..Waypoint_get_HasContract as var"##1068"
HasContract(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1068"(this))
    end
@doc "    HasContract(this::RemoteTypes.Waypoint)\n\nWhether the waypoint belongs to a contract.\n\n" HasContract
export HasContract
import ..Waypoint_get_Contract as var"##1069"
Contract(this::RemoteTypes.Waypoint) = begin
        kerbal(this.conn, var"##1069"(this))
    end
@doc "    Contract(this::RemoteTypes.Waypoint)\n\nThe associated contract.\n\n" Contract
export Contract
import ..WaypointManager_AddWaypoint as var"##1070"
AddWaypoint(this::RemoteTypes.WaypointManager, latitude::Float64, longitude::Float64, body::RemoteTypes.CelestialBody, name::String) = begin
        kerbal(this.conn, var"##1070"(this, latitude, longitude, body, name))
    end
@doc "    AddWaypoint(this::RemoteTypes.WaypointManager, latitude::Float64, longitude::Float64, body::RemoteTypes.CelestialBody, name::String)\n\nCreates a waypoint at the given position at ground level, and returns a\n object that can be used to modify it.\n\n# Arguments\n- `latitude::Float64`: Latitude of the waypoint.\n- `longitude::Float64`: Longitude of the waypoint.\n- `body::RemoteTypes.CelestialBody`: Celestial body the waypoint is attached to.\n- `name::String`: Name of the waypoint.\n# Returns\n\n" AddWaypoint
export AddWaypoint
import ..WaypointManager_AddWaypointAtAltitude as var"##1071"
AddWaypointAtAltitude(this::RemoteTypes.WaypointManager, latitude::Float64, longitude::Float64, altitude::Float64, body::RemoteTypes.CelestialBody, name::String) = begin
        kerbal(this.conn, var"##1071"(this, latitude, longitude, altitude, body, name))
    end
@doc "    AddWaypointAtAltitude(this::RemoteTypes.WaypointManager, latitude::Float64, longitude::Float64, altitude::Float64, body::RemoteTypes.CelestialBody, name::String)\n\nCreates a waypoint at the given position and altitude, and returns a\n object that can be used to modify it.\n\n# Arguments\n- `latitude::Float64`: Latitude of the waypoint.\n- `longitude::Float64`: Longitude of the waypoint.\n- `altitude::Float64`: Altitude (above sea level) of the waypoint.\n- `body::RemoteTypes.CelestialBody`: Celestial body the waypoint is attached to.\n- `name::String`: Name of the waypoint.\n# Returns\n\n" AddWaypointAtAltitude
export AddWaypointAtAltitude
import ..WaypointManager_get_Waypoints as var"##1072"
Waypoints(this::RemoteTypes.WaypointManager) = begin
        kerbal(this.conn, var"##1072"(this))
    end
@doc "    Waypoints(this::RemoteTypes.WaypointManager)\n\nA list of all existing waypoints.\n\n" Waypoints
export Waypoints
import ..WaypointManager_get_Icons as var"##1073"
Icons(this::RemoteTypes.WaypointManager) = begin
        kerbal(this.conn, var"##1073"(this))
    end
@doc "    Icons(this::RemoteTypes.WaypointManager)\n\nReturns all available icons (from \"GameData/Squad/Contracts/Icons/\").\n\n" Icons
export Icons
import ..WaypointManager_get_Colors as var"##1074"
Colors(this::RemoteTypes.WaypointManager) = begin
        kerbal(this.conn, var"##1074"(this))
    end
@doc "    Colors(this::RemoteTypes.WaypointManager)\n\nAn example map of known color - seed pairs.\nAny other integers may be used as seed.\n\n" Colors
export Colors
import ..Antenna_Transmit as var"##1075"
Transmit(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1075"(this))
    end
@doc "    Transmit(this::RemoteTypes.Antenna)\n\nTransmit data.\n\n" Transmit
export Transmit
import ..Antenna_Cancel as var"##1076"
Cancel(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1076"(this))
    end
@doc "    Cancel(this::RemoteTypes.Antenna)\n\nCancel current transmission of data.\n\n" Cancel
export Cancel
import ..Antenna_get_Part as var"##1077"
Part(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1077"(this))
    end
@doc "    Part(this::RemoteTypes.Antenna)\n\nThe part object for this antenna.\n\n" Part
export Part
import ..Antenna_get_State as var"##1078"
State(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1078"(this))
    end
@doc "    State(this::RemoteTypes.Antenna)\n\nThe current state of the antenna.\n\n" State
export State
import ..Antenna_get_Deployable as var"##1079"
Deployable(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1079"(this))
    end
@doc "    Deployable(this::RemoteTypes.Antenna)\n\nWhether the antenna is deployable.\n\n" Deployable
export Deployable
import ..Antenna_get_Deployed as var"##1080"
Deployed(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1080"(this))
    end
@doc "    Deployed(this::RemoteTypes.Antenna)\n\nWhether the antenna is deployed.\n\n# Remarks\n Fixed antennas are always deployed. Returns an error if you try to deploy a fixed antenna. \n" Deployed
export Deployed
import ..Antenna_set_Deployed as var"##1081"
Deployed!(this::RemoteTypes.Antenna, value::Bool) = begin
        kerbal(this.conn, var"##1081"(this, value))
    end
@doc "    Deployed!(this::RemoteTypes.Antenna, value::Bool)\n\nWhether the antenna is deployed.\n\n# Remarks\n Fixed antennas are always deployed. Returns an error if you try to deploy a fixed antenna. \n" Deployed!
export Deployed!
import ..Antenna_get_CanTransmit as var"##1082"
CanTransmit(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1082"(this))
    end
@doc "    CanTransmit(this::RemoteTypes.Antenna)\n\nWhether data can be transmitted by this antenna.\n\n" CanTransmit
export CanTransmit
import ..Antenna_get_AllowPartial as var"##1083"
AllowPartial(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1083"(this))
    end
@doc "    AllowPartial(this::RemoteTypes.Antenna)\n\nWhether partial data transmission is permitted.\n\n" AllowPartial
export AllowPartial
import ..Antenna_set_AllowPartial as var"##1084"
AllowPartial!(this::RemoteTypes.Antenna, value::Bool) = begin
        kerbal(this.conn, var"##1084"(this, value))
    end
@doc "    AllowPartial!(this::RemoteTypes.Antenna, value::Bool)\n\nWhether partial data transmission is permitted.\n\n" AllowPartial!
export AllowPartial!
import ..Antenna_get_Power as var"##1085"
Power(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1085"(this))
    end
@doc "    Power(this::RemoteTypes.Antenna)\n\nThe power of the antenna.\n\n" Power
export Power
import ..Antenna_get_Combinable as var"##1086"
Combinable(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1086"(this))
    end
@doc "    Combinable(this::RemoteTypes.Antenna)\n\nWhether the antenna can be combined with other antennae on the vessel\nto boost the power.\n\n" Combinable
export Combinable
import ..Antenna_get_CombinableExponent as var"##1087"
CombinableExponent(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1087"(this))
    end
@doc "    CombinableExponent(this::RemoteTypes.Antenna)\n\nExponent used to calculate the combined power of multiple antennae on a vessel.\n\n" CombinableExponent
export CombinableExponent
import ..Antenna_get_PacketInterval as var"##1088"
PacketInterval(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1088"(this))
    end
@doc "    PacketInterval(this::RemoteTypes.Antenna)\n\nInterval between sending packets in seconds.\n\n" PacketInterval
export PacketInterval
import ..Antenna_get_PacketSize as var"##1089"
PacketSize(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1089"(this))
    end
@doc "    PacketSize(this::RemoteTypes.Antenna)\n\nAmount of data sent per packet in Mits.\n\n" PacketSize
export PacketSize
import ..Antenna_get_PacketResourceCost as var"##1090"
PacketResourceCost(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##1090"(this))
    end
@doc "    PacketResourceCost(this::RemoteTypes.Antenna)\n\nUnits of electric charge consumed per packet sent.\n\n" PacketResourceCost
export PacketResourceCost
import ..CargoBay_get_Part as var"##1091"
Part(this::RemoteTypes.CargoBay) = begin
        kerbal(this.conn, var"##1091"(this))
    end
@doc "    Part(this::RemoteTypes.CargoBay)\n\nThe part object for this cargo bay.\n\n" Part
export Part
import ..CargoBay_get_State as var"##1092"
State(this::RemoteTypes.CargoBay) = begin
        kerbal(this.conn, var"##1092"(this))
    end
@doc "    State(this::RemoteTypes.CargoBay)\n\nThe state of the cargo bay.\n\n" State
export State
import ..CargoBay_get_Open as var"##1093"
Open(this::RemoteTypes.CargoBay) = begin
        kerbal(this.conn, var"##1093"(this))
    end
@doc "    Open(this::RemoteTypes.CargoBay)\n\nWhether the cargo bay is open.\n\n" Open
export Open
import ..CargoBay_set_Open as var"##1094"
Open!(this::RemoteTypes.CargoBay, value::Bool) = begin
        kerbal(this.conn, var"##1094"(this, value))
    end
@doc "    Open!(this::RemoteTypes.CargoBay, value::Bool)\n\nWhether the cargo bay is open.\n\n" Open!
export Open!
import ..ControlSurface_get_Part as var"##1095"
Part(this::RemoteTypes.ControlSurface) = begin
        kerbal(this.conn, var"##1095"(this))
    end
@doc "    Part(this::RemoteTypes.ControlSurface)\n\nThe part object for this control surface.\n\n" Part
export Part
import ..ControlSurface_get_PitchEnabled as var"##1096"
PitchEnabled(this::RemoteTypes.ControlSurface) = begin
        kerbal(this.conn, var"##1096"(this))
    end
@doc "    PitchEnabled(this::RemoteTypes.ControlSurface)\n\nWhether the control surface has pitch control enabled.\n\n" PitchEnabled
export PitchEnabled
import ..ControlSurface_set_PitchEnabled as var"##1097"
PitchEnabled!(this::RemoteTypes.ControlSurface, value::Bool) = begin
        kerbal(this.conn, var"##1097"(this, value))
    end
@doc "    PitchEnabled!(this::RemoteTypes.ControlSurface, value::Bool)\n\nWhether the control surface has pitch control enabled.\n\n" PitchEnabled!
export PitchEnabled!
import ..ControlSurface_get_YawEnabled as var"##1098"
YawEnabled(this::RemoteTypes.ControlSurface) = begin
        kerbal(this.conn, var"##1098"(this))
    end
@doc "    YawEnabled(this::RemoteTypes.ControlSurface)\n\nWhether the control surface has yaw control enabled.\n\n" YawEnabled
export YawEnabled
import ..ControlSurface_set_YawEnabled as var"##1099"
YawEnabled!(this::RemoteTypes.ControlSurface, value::Bool) = begin
        kerbal(this.conn, var"##1099"(this, value))
    end
@doc "    YawEnabled!(this::RemoteTypes.ControlSurface, value::Bool)\n\nWhether the control surface has yaw control enabled.\n\n" YawEnabled!
export YawEnabled!
import ..ControlSurface_get_RollEnabled as var"##1100"
RollEnabled(this::RemoteTypes.ControlSurface) = begin
        kerbal(this.conn, var"##1100"(this))
    end
@doc "    RollEnabled(this::RemoteTypes.ControlSurface)\n\nWhether the control surface has roll control enabled.\n\n" RollEnabled
export RollEnabled
import ..ControlSurface_set_RollEnabled as var"##1101"
RollEnabled!(this::RemoteTypes.ControlSurface, value::Bool) = begin
        kerbal(this.conn, var"##1101"(this, value))
    end
@doc "    RollEnabled!(this::RemoteTypes.ControlSurface, value::Bool)\n\nWhether the control surface has roll control enabled.\n\n" RollEnabled!
export RollEnabled!
import ..ControlSurface_get_AuthorityLimiter as var"##1102"
AuthorityLimiter(this::RemoteTypes.ControlSurface) = begin
        kerbal(this.conn, var"##1102"(this))
    end
@doc "    AuthorityLimiter(this::RemoteTypes.ControlSurface)\n\nThe authority limiter for the control surface, which controls how far the\ncontrol surface will move.\n\n" AuthorityLimiter
export AuthorityLimiter
import ..ControlSurface_set_AuthorityLimiter as var"##1103"
AuthorityLimiter!(this::RemoteTypes.ControlSurface, value::Float32) = begin
        kerbal(this.conn, var"##1103"(this, value))
    end
@doc "    AuthorityLimiter!(this::RemoteTypes.ControlSurface, value::Float32)\n\nThe authority limiter for the control surface, which controls how far the\ncontrol surface will move.\n\n" AuthorityLimiter!
export AuthorityLimiter!
import ..ControlSurface_get_Inverted as var"##1104"
Inverted(this::RemoteTypes.ControlSurface) = begin
        kerbal(this.conn, var"##1104"(this))
    end
@doc "    Inverted(this::RemoteTypes.ControlSurface)\n\nWhether the control surface movement is inverted.\n\n" Inverted
export Inverted
import ..ControlSurface_set_Inverted as var"##1105"
Inverted!(this::RemoteTypes.ControlSurface, value::Bool) = begin
        kerbal(this.conn, var"##1105"(this, value))
    end
@doc "    Inverted!(this::RemoteTypes.ControlSurface, value::Bool)\n\nWhether the control surface movement is inverted.\n\n" Inverted!
export Inverted!
import ..ControlSurface_get_Deployed as var"##1106"
Deployed(this::RemoteTypes.ControlSurface) = begin
        kerbal(this.conn, var"##1106"(this))
    end
@doc "    Deployed(this::RemoteTypes.ControlSurface)\n\nWhether the control surface has been fully deployed.\n\n" Deployed
export Deployed
import ..ControlSurface_set_Deployed as var"##1107"
Deployed!(this::RemoteTypes.ControlSurface, value::Bool) = begin
        kerbal(this.conn, var"##1107"(this, value))
    end
@doc "    Deployed!(this::RemoteTypes.ControlSurface, value::Bool)\n\nWhether the control surface has been fully deployed.\n\n" Deployed!
export Deployed!
import ..ControlSurface_get_SurfaceArea as var"##1108"
SurfaceArea(this::RemoteTypes.ControlSurface) = begin
        kerbal(this.conn, var"##1108"(this))
    end
@doc "    SurfaceArea(this::RemoteTypes.ControlSurface)\n\nSurface area of the control surface in m^2.\n\n" SurfaceArea
export SurfaceArea
import ..ControlSurface_get_AvailableTorque as var"##1109"
AvailableTorque(this::RemoteTypes.ControlSurface) = begin
        kerbal(this.conn, var"##1109"(this))
    end
@doc "    AvailableTorque(this::RemoteTypes.ControlSurface)\n\nThe available torque, in Newton meters, that can be produced by this control surface,\nin the positive and negative pitch, roll and yaw axes of the vessel. These axes\ncorrespond to the coordinate axes of the .\n\n" AvailableTorque
export AvailableTorque
import ..Decoupler_Decouple as var"##1110"
Decouple(this::RemoteTypes.Decoupler) = begin
        kerbal(this.conn, var"##1110"(this))
    end
@doc "    Decouple(this::RemoteTypes.Decoupler)\n\nFires the decoupler. Returns the new vessel created when the decoupler fires.\nThrows an exception if the decoupler has already fired.\n\n# Remarks\n When called, the active vessel may change. It is therefore possible that, after calling this function, the object(s) returned by previous call(s) to  no longer refer to the active vessel. \n" Decouple
export Decouple
import ..Decoupler_get_Part as var"##1111"
Part(this::RemoteTypes.Decoupler) = begin
        kerbal(this.conn, var"##1111"(this))
    end
@doc "    Part(this::RemoteTypes.Decoupler)\n\nThe part object for this decoupler.\n\n" Part
export Part
import ..Decoupler_get_Decoupled as var"##1112"
Decoupled(this::RemoteTypes.Decoupler) = begin
        kerbal(this.conn, var"##1112"(this))
    end
@doc "    Decoupled(this::RemoteTypes.Decoupler)\n\nWhether the decoupler has fired.\n\n" Decoupled
export Decoupled
import ..Decoupler_get_Staged as var"##1113"
Staged(this::RemoteTypes.Decoupler) = begin
        kerbal(this.conn, var"##1113"(this))
    end
@doc "    Staged(this::RemoteTypes.Decoupler)\n\nWhether the decoupler is enabled in the staging sequence.\n\n" Staged
export Staged
import ..Decoupler_get_Impulse as var"##1114"
Impulse(this::RemoteTypes.Decoupler) = begin
        kerbal(this.conn, var"##1114"(this))
    end
@doc "    Impulse(this::RemoteTypes.Decoupler)\n\nThe impulse that the decoupler imparts when it is fired, in Newton seconds.\n\n" Impulse
export Impulse
import ..DockingPort_Undock as var"##1115"
Undock(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1115"(this))
    end
@doc "    Undock(this::RemoteTypes.DockingPort)\n\nUndocks the docking port and returns the new  that is created.\nThis method can be called for either docking port in a docked pair.\nThrows an exception if the docking port is not docked to anything.\n\n# Remarks\n When called, the active vessel may change. It is therefore possible that, after calling this function, the object(s) returned by previous call(s) to  no longer refer to the active vessel. \n" Undock
export Undock
import ..DockingPort_Position as var"##1116"
Position(this::RemoteTypes.DockingPort, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1116"(this, referenceFrame))
    end
@doc "    Position(this::RemoteTypes.DockingPort, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position of the docking port, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n" Position
export Position
import ..DockingPort_Direction as var"##1117"
Direction(this::RemoteTypes.DockingPort, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1117"(this, referenceFrame))
    end
@doc "    Direction(this::RemoteTypes.DockingPort, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe direction that docking port points in, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned direction is in.\n# Returns\nThe direction as a unit vector.\n" Direction
export Direction
import ..DockingPort_Rotation as var"##1118"
Rotation(this::RemoteTypes.DockingPort, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1118"(this, referenceFrame))
    end
@doc "    Rotation(this::RemoteTypes.DockingPort, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe rotation of the docking port, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned rotation is in.\n# Returns\nThe rotation as a quaternion of the form (x, y, z, w).\n" Rotation
export Rotation
import ..DockingPort_get_Part as var"##1119"
Part(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1119"(this))
    end
@doc "    Part(this::RemoteTypes.DockingPort)\n\nThe part object for this docking port.\n\n" Part
export Part
import ..DockingPort_get_State as var"##1120"
State(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1120"(this))
    end
@doc "    State(this::RemoteTypes.DockingPort)\n\nThe current state of the docking port.\n\n" State
export State
import ..DockingPort_get_DockedPart as var"##1121"
DockedPart(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1121"(this))
    end
@doc "    DockedPart(this::RemoteTypes.DockingPort)\n\nThe part that this docking port is docked to. Returns null if this\ndocking port is not docked to anything.\n\n" DockedPart
export DockedPart
import ..DockingPort_get_ReengageDistance as var"##1122"
ReengageDistance(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1122"(this))
    end
@doc "    ReengageDistance(this::RemoteTypes.DockingPort)\n\nThe distance a docking port must move away when it undocks before it\nbecomes ready to dock with another port, in meters.\n\n" ReengageDistance
export ReengageDistance
import ..DockingPort_get_HasShield as var"##1123"
HasShield(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1123"(this))
    end
@doc "    HasShield(this::RemoteTypes.DockingPort)\n\nWhether the docking port has a shield.\n\n" HasShield
export HasShield
import ..DockingPort_get_Shielded as var"##1124"
Shielded(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1124"(this))
    end
@doc "    Shielded(this::RemoteTypes.DockingPort)\n\nThe state of the docking ports shield, if it has one.\n\nReturns true if the docking port has a shield, and the shield is\nclosed. Otherwise returns false. When set to true, the shield is\nclosed, and when set to false the shield is opened. If the docking\nport does not have a shield, setting this attribute has no effect.\n\n" Shielded
export Shielded
import ..DockingPort_set_Shielded as var"##1125"
Shielded!(this::RemoteTypes.DockingPort, value::Bool) = begin
        kerbal(this.conn, var"##1125"(this, value))
    end
@doc "    Shielded!(this::RemoteTypes.DockingPort, value::Bool)\n\nThe state of the docking ports shield, if it has one.\n\nReturns true if the docking port has a shield, and the shield is\nclosed. Otherwise returns false. When set to true, the shield is\nclosed, and when set to false the shield is opened. If the docking\nport does not have a shield, setting this attribute has no effect.\n\n" Shielded!
export Shielded!
import ..DockingPort_get_CanRotate as var"##1126"
CanRotate(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1126"(this))
    end
@doc "    CanRotate(this::RemoteTypes.DockingPort)\n\nCan the docking port use the 1.12 version rotation feature\n\nReturns true if the docking port can be commanded to rotate while docked.\n Otherwise returns false. \n\n" CanRotate
export CanRotate
import ..DockingPort_get_MaximumRotation as var"##1127"
MaximumRotation(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1127"(this))
    end
@doc "    MaximumRotation(this::RemoteTypes.DockingPort)\n\nMaximum Rotation Angle\n\n" MaximumRotation
export MaximumRotation
import ..DockingPort_get_MinimumRotation as var"##1128"
MinimumRotation(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1128"(this))
    end
@doc "    MinimumRotation(this::RemoteTypes.DockingPort)\n\nMinimum Rotation Angle\n\n" MinimumRotation
export MinimumRotation
import ..DockingPort_get_RotationTarget as var"##1129"
RotationTarget(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1129"(this))
    end
@doc "    RotationTarget(this::RemoteTypes.DockingPort)\n\nSet the rotation target angle\n\n" RotationTarget
export RotationTarget
import ..DockingPort_set_RotationTarget as var"##1130"
RotationTarget!(this::RemoteTypes.DockingPort, value::Float32) = begin
        kerbal(this.conn, var"##1130"(this, value))
    end
@doc "    RotationTarget!(this::RemoteTypes.DockingPort, value::Float32)\n\nSet the rotation target angle\n\n" RotationTarget!
export RotationTarget!
import ..DockingPort_get_RotationLocked as var"##1131"
RotationLocked(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1131"(this))
    end
@doc "    RotationLocked(this::RemoteTypes.DockingPort)\n\nSet the Docking Port Rotation as Locked to allow Autostrut to function across joint\n\n" RotationLocked
export RotationLocked
import ..DockingPort_set_RotationLocked as var"##1132"
RotationLocked!(this::RemoteTypes.DockingPort, value::Bool) = begin
        kerbal(this.conn, var"##1132"(this, value))
    end
@doc "    RotationLocked!(this::RemoteTypes.DockingPort, value::Bool)\n\nSet the Docking Port Rotation as Locked to allow Autostrut to function across joint\n\n" RotationLocked!
export RotationLocked!
import ..DockingPort_get_ReferenceFrame as var"##1133"
ReferenceFrame(this::RemoteTypes.DockingPort) = begin
        kerbal(this.conn, var"##1133"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.DockingPort)\n\nThe reference frame that is fixed relative to this docking port, and\noriented with the port.\nThe origin is at the position of the docking port.\nThe axes rotate with the docking port.The x-axis points out to the right side of the docking port.\nThe y-axis points in the direction the docking port is facing.\nThe z-axis points out of the bottom off the docking port.\n\n# Remarks\n This reference frame is not necessarily equivalent to the reference frame for the part, returned by . \n" ReferenceFrame
export ReferenceFrame
import ..Engine_ToggleMode as var"##1134"
ToggleMode(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1134"(this))
    end
@doc "    ToggleMode(this::RemoteTypes.Engine)\n\nToggle the current engine mode.\n\n" ToggleMode
export ToggleMode
import ..Engine_get_Part as var"##1135"
Part(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1135"(this))
    end
@doc "    Part(this::RemoteTypes.Engine)\n\nThe part object for this engine.\n\n" Part
export Part
import ..Engine_get_Active as var"##1136"
Active(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1136"(this))
    end
@doc "    Active(this::RemoteTypes.Engine)\n\nWhether the engine is active. Setting this attribute may have no effect,\ndepending on  and .\n\n" Active
export Active
import ..Engine_set_Active as var"##1137"
Active!(this::RemoteTypes.Engine, value::Bool) = begin
        kerbal(this.conn, var"##1137"(this, value))
    end
@doc "    Active!(this::RemoteTypes.Engine, value::Bool)\n\nWhether the engine is active. Setting this attribute may have no effect,\ndepending on  and .\n\n" Active!
export Active!
import ..Engine_get_Thrust as var"##1138"
Thrust(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1138"(this))
    end
@doc "    Thrust(this::RemoteTypes.Engine)\n\nThe current amount of thrust being produced by the engine, in Newtons.\n\n" Thrust
export Thrust
import ..Engine_get_AvailableThrust as var"##1139"
AvailableThrust(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1139"(this))
    end
@doc "    AvailableThrust(this::RemoteTypes.Engine)\n\nThe amount of thrust, in Newtons, that would be produced by the engine\nwhen activated and with its throttle set to 100%.\nReturns zero if the engine does not have any fuel.\nTakes the engine's current  and atmospheric conditions\ninto account.\n\n" AvailableThrust
export AvailableThrust
import ..Engine_get_MaxThrust as var"##1140"
MaxThrust(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1140"(this))
    end
@doc "    MaxThrust(this::RemoteTypes.Engine)\n\nThe amount of thrust, in Newtons, that would be produced by the engine\nwhen activated and fueled, with its throttle and throttle limiter set to 100%.\n\n" MaxThrust
export MaxThrust
import ..Engine_get_MaxVacuumThrust as var"##1141"
MaxVacuumThrust(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1141"(this))
    end
@doc "    MaxVacuumThrust(this::RemoteTypes.Engine)\n\nThe maximum amount of thrust that can be produced by the engine in a\nvacuum, in Newtons. This is the amount of thrust produced by the engine\nwhen activated,  is set to 100%, the main\nvessel's throttle is set to 100% and the engine is in a vacuum.\n\n" MaxVacuumThrust
export MaxVacuumThrust
import ..Engine_get_ThrustLimit as var"##1142"
ThrustLimit(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1142"(this))
    end
@doc "    ThrustLimit(this::RemoteTypes.Engine)\n\nThe thrust limiter of the engine. A value between 0 and 1. Setting this\nattribute may have no effect, for example the thrust limit for a solid\nrocket booster cannot be changed in flight.\n\n" ThrustLimit
export ThrustLimit
import ..Engine_set_ThrustLimit as var"##1143"
ThrustLimit!(this::RemoteTypes.Engine, value::Float32) = begin
        kerbal(this.conn, var"##1143"(this, value))
    end
@doc "    ThrustLimit!(this::RemoteTypes.Engine, value::Float32)\n\nThe thrust limiter of the engine. A value between 0 and 1. Setting this\nattribute may have no effect, for example the thrust limit for a solid\nrocket booster cannot be changed in flight.\n\n" ThrustLimit!
export ThrustLimit!
import ..Engine_get_Thrusters as var"##1144"
Thrusters(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1144"(this))
    end
@doc "    Thrusters(this::RemoteTypes.Engine)\n\nThe components of the engine that generate thrust.\n\n# Remarks\n For example, this corresponds to the rocket nozzel on a solid rocket booster, or the individual nozzels on a RAPIER engine. The overall thrust produced by the engine, as reported by ,  and others, is the sum of the thrust generated by each thruster. \n" Thrusters
export Thrusters
import ..Engine_get_SpecificImpulse as var"##1145"
SpecificImpulse(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1145"(this))
    end
@doc "    SpecificImpulse(this::RemoteTypes.Engine)\n\nThe current specific impulse of the engine, in seconds. Returns zero\nif the engine is not active.\n\n" SpecificImpulse
export SpecificImpulse
import ..Engine_get_VacuumSpecificImpulse as var"##1146"
VacuumSpecificImpulse(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1146"(this))
    end
@doc "    VacuumSpecificImpulse(this::RemoteTypes.Engine)\n\nThe vacuum specific impulse of the engine, in seconds.\n\n" VacuumSpecificImpulse
export VacuumSpecificImpulse
import ..Engine_get_KerbinSeaLevelSpecificImpulse as var"##1147"
KerbinSeaLevelSpecificImpulse(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1147"(this))
    end
@doc "    KerbinSeaLevelSpecificImpulse(this::RemoteTypes.Engine)\n\nThe specific impulse of the engine at sea level on Kerbin, in seconds.\n\n" KerbinSeaLevelSpecificImpulse
export KerbinSeaLevelSpecificImpulse
import ..Engine_get_PropellantNames as var"##1148"
PropellantNames(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1148"(this))
    end
@doc "    PropellantNames(this::RemoteTypes.Engine)\n\nThe names of the propellants that the engine consumes.\n\n" PropellantNames
export PropellantNames
import ..Engine_get_Propellants as var"##1149"
Propellants(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1149"(this))
    end
@doc "    Propellants(this::RemoteTypes.Engine)\n\nThe propellants that the engine consumes.\n\n" Propellants
export Propellants
import ..Engine_get_PropellantRatios as var"##1150"
PropellantRatios(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1150"(this))
    end
@doc "    PropellantRatios(this::RemoteTypes.Engine)\n\nThe ratio of resources that the engine consumes. A dictionary mapping resource names\nto the ratio at which they are consumed by the engine.\n\n# Remarks\n For example, if the ratios are 0.6 for LiquidFuel and 0.4 for Oxidizer, then for every 0.6 units of LiquidFuel that the engine burns, it will burn 0.4 units of Oxidizer. \n" PropellantRatios
export PropellantRatios
import ..Engine_get_HasFuel as var"##1151"
HasFuel(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1151"(this))
    end
@doc "    HasFuel(this::RemoteTypes.Engine)\n\nWhether the engine has any fuel available.\n\n" HasFuel
export HasFuel
import ..Engine_get_Throttle as var"##1152"
Throttle(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1152"(this))
    end
@doc "    Throttle(this::RemoteTypes.Engine)\n\nThe current throttle setting for the engine. A value between 0 and 1.\nThis is not necessarily the same as the vessel's main throttle\nsetting, as some engines take time to adjust their throttle\n(such as jet engines).\n\n" Throttle
export Throttle
import ..Engine_get_ThrottleLocked as var"##1153"
ThrottleLocked(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1153"(this))
    end
@doc "    ThrottleLocked(this::RemoteTypes.Engine)\n\nWhether the  affects the engine. For example,\nthis is true for liquid fueled rockets, and false for solid rocket\nboosters.\n\n" ThrottleLocked
export ThrottleLocked
import ..Engine_get_CanRestart as var"##1154"
CanRestart(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1154"(this))
    end
@doc "    CanRestart(this::RemoteTypes.Engine)\n\nWhether the engine can be restarted once shutdown. If the engine cannot be shutdown,\nreturns false. For example, this is true for liquid fueled rockets\nand false for solid rocket boosters.\n\n" CanRestart
export CanRestart
import ..Engine_get_CanShutdown as var"##1155"
CanShutdown(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1155"(this))
    end
@doc "    CanShutdown(this::RemoteTypes.Engine)\n\nWhether the engine can be shutdown once activated. For example, this is\ntrue for liquid fueled rockets and false for solid rocket boosters.\n\n" CanShutdown
export CanShutdown
import ..Engine_get_HasModes as var"##1156"
HasModes(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1156"(this))
    end
@doc "    HasModes(this::RemoteTypes.Engine)\n\nWhether the engine has multiple modes of operation.\n\n" HasModes
export HasModes
import ..Engine_get_Mode as var"##1157"
Mode(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1157"(this))
    end
@doc "    Mode(this::RemoteTypes.Engine)\n\nThe name of the current engine mode.\n\n" Mode
export Mode
import ..Engine_set_Mode as var"##1158"
Mode!(this::RemoteTypes.Engine, value::String) = begin
        kerbal(this.conn, var"##1158"(this, value))
    end
@doc "    Mode!(this::RemoteTypes.Engine, value::String)\n\nThe name of the current engine mode.\n\n" Mode!
export Mode!
import ..Engine_get_Modes as var"##1159"
Modes(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1159"(this))
    end
@doc "    Modes(this::RemoteTypes.Engine)\n\nThe available modes for the engine.\nA dictionary mapping mode names to  objects.\n\n" Modes
export Modes
import ..Engine_get_AutoModeSwitch as var"##1160"
AutoModeSwitch(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1160"(this))
    end
@doc "    AutoModeSwitch(this::RemoteTypes.Engine)\n\nWhether the engine will automatically switch modes.\n\n" AutoModeSwitch
export AutoModeSwitch
import ..Engine_set_AutoModeSwitch as var"##1161"
AutoModeSwitch!(this::RemoteTypes.Engine, value::Bool) = begin
        kerbal(this.conn, var"##1161"(this, value))
    end
@doc "    AutoModeSwitch!(this::RemoteTypes.Engine, value::Bool)\n\nWhether the engine will automatically switch modes.\n\n" AutoModeSwitch!
export AutoModeSwitch!
import ..Engine_get_Gimballed as var"##1162"
Gimballed(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1162"(this))
    end
@doc "    Gimballed(this::RemoteTypes.Engine)\n\nWhether the engine is gimballed.\n\n" Gimballed
export Gimballed
import ..Engine_get_GimbalRange as var"##1163"
GimbalRange(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1163"(this))
    end
@doc "    GimbalRange(this::RemoteTypes.Engine)\n\nThe range over which the gimbal can move, in degrees.\nReturns 0 if the engine is not gimballed.\n\n" GimbalRange
export GimbalRange
import ..Engine_get_GimbalLocked as var"##1164"
GimbalLocked(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1164"(this))
    end
@doc "    GimbalLocked(this::RemoteTypes.Engine)\n\nWhether the engines gimbal is locked in place. Setting this attribute has\nno effect if the engine is not gimballed.\n\n" GimbalLocked
export GimbalLocked
import ..Engine_set_GimbalLocked as var"##1165"
GimbalLocked!(this::RemoteTypes.Engine, value::Bool) = begin
        kerbal(this.conn, var"##1165"(this, value))
    end
@doc "    GimbalLocked!(this::RemoteTypes.Engine, value::Bool)\n\nWhether the engines gimbal is locked in place. Setting this attribute has\nno effect if the engine is not gimballed.\n\n" GimbalLocked!
export GimbalLocked!
import ..Engine_get_GimbalLimit as var"##1166"
GimbalLimit(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1166"(this))
    end
@doc "    GimbalLimit(this::RemoteTypes.Engine)\n\nThe gimbal limiter of the engine. A value between 0 and 1.\nReturns 0 if the gimbal is locked.\n\n" GimbalLimit
export GimbalLimit
import ..Engine_set_GimbalLimit as var"##1167"
GimbalLimit!(this::RemoteTypes.Engine, value::Float32) = begin
        kerbal(this.conn, var"##1167"(this, value))
    end
@doc "    GimbalLimit!(this::RemoteTypes.Engine, value::Float32)\n\nThe gimbal limiter of the engine. A value between 0 and 1.\nReturns 0 if the gimbal is locked.\n\n" GimbalLimit!
export GimbalLimit!
import ..Engine_get_AvailableTorque as var"##1168"
AvailableTorque(this::RemoteTypes.Engine) = begin
        kerbal(this.conn, var"##1168"(this))
    end
@doc "    AvailableTorque(this::RemoteTypes.Engine)\n\nThe available torque, in Newton meters, that can be produced by this engine,\nin the positive and negative pitch, roll and yaw axes of the vessel. These axes\ncorrespond to the coordinate axes of the .\nReturns zero if the engine is inactive, or not gimballed.\n\n" AvailableTorque
export AvailableTorque
import ..Experiment_Run as var"##1169"
Run(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1169"(this))
    end
@doc "    Run(this::RemoteTypes.Experiment)\n\nRun the experiment.\n\n" Run
export Run
import ..Experiment_Transmit as var"##1170"
Transmit(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1170"(this))
    end
@doc "    Transmit(this::RemoteTypes.Experiment)\n\nTransmit all experimental data contained by this part.\n\n" Transmit
export Transmit
import ..Experiment_Dump as var"##1171"
Dump(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1171"(this))
    end
@doc "    Dump(this::RemoteTypes.Experiment)\n\nDump the experimental data contained by the experiment.\n\n" Dump
export Dump
import ..Experiment_Reset as var"##1172"
Reset(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1172"(this))
    end
@doc "    Reset(this::RemoteTypes.Experiment)\n\nReset the experiment.\n\n" Reset
export Reset
import ..Experiment_get_Part as var"##1173"
Part(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1173"(this))
    end
@doc "    Part(this::RemoteTypes.Experiment)\n\nThe part object for this experiment.\n\n" Part
export Part
import ..Experiment_get_Name as var"##1174"
Name(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1174"(this))
    end
@doc "    Name(this::RemoteTypes.Experiment)\n\nInternal name of the experiment, as used in\npart cfg files.\n\n" Name
export Name
import ..Experiment_get_Title as var"##1175"
Title(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1175"(this))
    end
@doc "    Title(this::RemoteTypes.Experiment)\n\nTitle of the experiment, as shown on the in-game UI.\n\n" Title
export Title
import ..Experiment_get_Inoperable as var"##1176"
Inoperable(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1176"(this))
    end
@doc "    Inoperable(this::RemoteTypes.Experiment)\n\nWhether the experiment is inoperable.\n\n" Inoperable
export Inoperable
import ..Experiment_get_Deployed as var"##1177"
Deployed(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1177"(this))
    end
@doc "    Deployed(this::RemoteTypes.Experiment)\n\nWhether the experiment has been deployed.\n\n" Deployed
export Deployed
import ..Experiment_get_Rerunnable as var"##1178"
Rerunnable(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1178"(this))
    end
@doc "    Rerunnable(this::RemoteTypes.Experiment)\n\nWhether the experiment can be re-run.\n\n" Rerunnable
export Rerunnable
import ..Experiment_get_HasData as var"##1179"
HasData(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1179"(this))
    end
@doc "    HasData(this::RemoteTypes.Experiment)\n\nWhether the experiment contains data.\n\n" HasData
export HasData
import ..Experiment_get_Data as var"##1180"
Data(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1180"(this))
    end
@doc "    Data(this::RemoteTypes.Experiment)\n\nThe data contained in this experiment.\n\n" Data
export Data
import ..Experiment_get_Available as var"##1181"
Available(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1181"(this))
    end
@doc "    Available(this::RemoteTypes.Experiment)\n\nDetermines if the experiment is available given the current conditions.\n\n" Available
export Available
import ..Experiment_get_Biome as var"##1182"
Biome(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1182"(this))
    end
@doc "    Biome(this::RemoteTypes.Experiment)\n\nThe name of the biome the experiment is currently in.\n\n" Biome
export Biome
import ..Experiment_get_ScienceSubject as var"##1183"
ScienceSubject(this::RemoteTypes.Experiment) = begin
        kerbal(this.conn, var"##1183"(this))
    end
@doc "    ScienceSubject(this::RemoteTypes.Experiment)\n\nContaining information on the corresponding specific science result for the current\nconditions. Returns null if the experiment is unavailable.\n\n" ScienceSubject
export ScienceSubject
import ..Fairing_Jettison as var"##1184"
Jettison(this::RemoteTypes.Fairing) = begin
        kerbal(this.conn, var"##1184"(this))
    end
@doc "    Jettison(this::RemoteTypes.Fairing)\n\nJettison the fairing. Has no effect if it has already been jettisoned.\n\n" Jettison
export Jettison
import ..Fairing_get_Part as var"##1185"
Part(this::RemoteTypes.Fairing) = begin
        kerbal(this.conn, var"##1185"(this))
    end
@doc "    Part(this::RemoteTypes.Fairing)\n\nThe part object for this fairing.\n\n" Part
export Part
import ..Fairing_get_Jettisoned as var"##1186"
Jettisoned(this::RemoteTypes.Fairing) = begin
        kerbal(this.conn, var"##1186"(this))
    end
@doc "    Jettisoned(this::RemoteTypes.Fairing)\n\nWhether the fairing has been jettisoned.\n\n" Jettisoned
export Jettisoned
import ..Force_Remove as var"##1187"
Remove(this::RemoteTypes.Force) = begin
        kerbal(this.conn, var"##1187"(this))
    end
@doc "    Remove(this::RemoteTypes.Force)\n\nRemove the force.\n\n" Remove
export Remove
import ..Force_get_Part as var"##1188"
Part(this::RemoteTypes.Force) = begin
        kerbal(this.conn, var"##1188"(this))
    end
@doc "    Part(this::RemoteTypes.Force)\n\nThe part that this force is applied to.\n\n" Part
export Part
import ..Force_get_ForceVector as var"##1189"
ForceVector(this::RemoteTypes.Force) = begin
        kerbal(this.conn, var"##1189"(this))
    end
@doc "    ForceVector(this::RemoteTypes.Force)\n\nThe force vector, in Newtons.\n\n# Returns\nA vector pointing in the direction that the force acts, with its magnitude equal to the strength of the force in Newtons.\n" ForceVector
export ForceVector
import ..Force_set_ForceVector as var"##1190"
ForceVector!(this::RemoteTypes.Force, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1190"(this, value))
    end
@doc "    ForceVector!(this::RemoteTypes.Force, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nThe force vector, in Newtons.\n\n# Returns\nA vector pointing in the direction that the force acts, with its magnitude equal to the strength of the force in Newtons.\n" ForceVector!
export ForceVector!
import ..Force_get_Position as var"##1191"
Position(this::RemoteTypes.Force) = begin
        kerbal(this.conn, var"##1191"(this))
    end
@doc "    Position(this::RemoteTypes.Force)\n\nThe position at which the force acts, in reference frame .\n\n# Returns\nThe position as a vector.\n" Position
export Position
import ..Force_set_Position as var"##1192"
Position!(this::RemoteTypes.Force, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1192"(this, value))
    end
@doc "    Position!(this::RemoteTypes.Force, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nThe position at which the force acts, in reference frame .\n\n# Returns\nThe position as a vector.\n" Position!
export Position!
import ..Force_get_ReferenceFrame as var"##1193"
ReferenceFrame(this::RemoteTypes.Force) = begin
        kerbal(this.conn, var"##1193"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.Force)\n\nThe reference frame of the force vector and position.\n\n" ReferenceFrame
export ReferenceFrame
import ..Force_set_ReferenceFrame as var"##1194"
ReferenceFrame!(this::RemoteTypes.Force, value::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1194"(this, value))
    end
@doc "    ReferenceFrame!(this::RemoteTypes.Force, value::RemoteTypes.ReferenceFrame)\n\nThe reference frame of the force vector and position.\n\n" ReferenceFrame!
export ReferenceFrame!
import ..Intake_get_Part as var"##1195"
Part(this::RemoteTypes.Intake) = begin
        kerbal(this.conn, var"##1195"(this))
    end
@doc "    Part(this::RemoteTypes.Intake)\n\nThe part object for this intake.\n\n" Part
export Part
import ..Intake_get_Open as var"##1196"
Open(this::RemoteTypes.Intake) = begin
        kerbal(this.conn, var"##1196"(this))
    end
@doc "    Open(this::RemoteTypes.Intake)\n\nWhether the intake is open.\n\n" Open
export Open
import ..Intake_set_Open as var"##1197"
Open!(this::RemoteTypes.Intake, value::Bool) = begin
        kerbal(this.conn, var"##1197"(this, value))
    end
@doc "    Open!(this::RemoteTypes.Intake, value::Bool)\n\nWhether the intake is open.\n\n" Open!
export Open!
import ..Intake_get_Speed as var"##1198"
Speed(this::RemoteTypes.Intake) = begin
        kerbal(this.conn, var"##1198"(this))
    end
@doc "    Speed(this::RemoteTypes.Intake)\n\nSpeed of the flow into the intake, in m/s.\n\n" Speed
export Speed
import ..Intake_get_Flow as var"##1199"
Flow(this::RemoteTypes.Intake) = begin
        kerbal(this.conn, var"##1199"(this))
    end
@doc "    Flow(this::RemoteTypes.Intake)\n\nThe rate of flow into the intake, in units of resource per second.\n\n" Flow
export Flow
import ..Intake_get_Area as var"##1200"
Area(this::RemoteTypes.Intake) = begin
        kerbal(this.conn, var"##1200"(this))
    end
@doc "    Area(this::RemoteTypes.Intake)\n\nThe area of the intake's opening, in square meters.\n\n" Area
export Area
import ..LaunchClamp_Release as var"##1201"
Release(this::RemoteTypes.LaunchClamp) = begin
        kerbal(this.conn, var"##1201"(this))
    end
@doc "    Release(this::RemoteTypes.LaunchClamp)\n\nReleases the docking clamp. Has no effect if the clamp has already been released.\n\n" Release
export Release
import ..LaunchClamp_get_Part as var"##1202"
Part(this::RemoteTypes.LaunchClamp) = begin
        kerbal(this.conn, var"##1202"(this))
    end
@doc "    Part(this::RemoteTypes.LaunchClamp)\n\nThe part object for this launch clamp.\n\n" Part
export Part
import ..Leg_get_Part as var"##1203"
Part(this::RemoteTypes.Leg) = begin
        kerbal(this.conn, var"##1203"(this))
    end
@doc "    Part(this::RemoteTypes.Leg)\n\nThe part object for this landing leg.\n\n" Part
export Part
import ..Leg_get_State as var"##1204"
State(this::RemoteTypes.Leg) = begin
        kerbal(this.conn, var"##1204"(this))
    end
@doc "    State(this::RemoteTypes.Leg)\n\nThe current state of the landing leg.\n\n" State
export State
import ..Leg_get_Deployable as var"##1205"
Deployable(this::RemoteTypes.Leg) = begin
        kerbal(this.conn, var"##1205"(this))
    end
@doc "    Deployable(this::RemoteTypes.Leg)\n\nWhether the leg is deployable.\n\n" Deployable
export Deployable
import ..Leg_get_Deployed as var"##1206"
Deployed(this::RemoteTypes.Leg) = begin
        kerbal(this.conn, var"##1206"(this))
    end
@doc "    Deployed(this::RemoteTypes.Leg)\n\nWhether the landing leg is deployed.\n\n# Remarks\n Fixed landing legs are always deployed. Returns an error if you try to deploy fixed landing gear. \n" Deployed
export Deployed
import ..Leg_set_Deployed as var"##1207"
Deployed!(this::RemoteTypes.Leg, value::Bool) = begin
        kerbal(this.conn, var"##1207"(this, value))
    end
@doc "    Deployed!(this::RemoteTypes.Leg, value::Bool)\n\nWhether the landing leg is deployed.\n\n# Remarks\n Fixed landing legs are always deployed. Returns an error if you try to deploy fixed landing gear. \n" Deployed!
export Deployed!
import ..Leg_get_IsGrounded as var"##1208"
IsGrounded(this::RemoteTypes.Leg) = begin
        kerbal(this.conn, var"##1208"(this))
    end
@doc "    IsGrounded(this::RemoteTypes.Leg)\n\nReturns whether the leg is touching the ground.\n\n" IsGrounded
export IsGrounded
import ..Light_BlinkStart as var"##1209"
BlinkStart(this::RemoteTypes.Light) = begin
        kerbal(this.conn, var"##1209"(this))
    end
@doc "    BlinkStart(this::RemoteTypes.Light)\n\nEnables blinking\n\n" BlinkStart
export BlinkStart
import ..Light_BlinkStop as var"##1210"
BlinkStop(this::RemoteTypes.Light) = begin
        kerbal(this.conn, var"##1210"(this))
    end
@doc "    BlinkStop(this::RemoteTypes.Light)\n\nDisables Blinking blinking\n\n" BlinkStop
export BlinkStop
import ..Light_get_Part as var"##1211"
Part(this::RemoteTypes.Light) = begin
        kerbal(this.conn, var"##1211"(this))
    end
@doc "    Part(this::RemoteTypes.Light)\n\nThe part object for this light.\n\n" Part
export Part
import ..Light_get_Active as var"##1212"
Active(this::RemoteTypes.Light) = begin
        kerbal(this.conn, var"##1212"(this))
    end
@doc "    Active(this::RemoteTypes.Light)\n\nWhether the light is switched on.\n\n" Active
export Active
import ..Light_set_Active as var"##1213"
Active!(this::RemoteTypes.Light, value::Bool) = begin
        kerbal(this.conn, var"##1213"(this, value))
    end
@doc "    Active!(this::RemoteTypes.Light, value::Bool)\n\nWhether the light is switched on.\n\n" Active!
export Active!
import ..Light_get_Color as var"##1214"
Color(this::RemoteTypes.Light) = begin
        kerbal(this.conn, var"##1214"(this))
    end
@doc "    Color(this::RemoteTypes.Light)\n\nThe color of the light, as an RGB triple.\n\n" Color
export Color
import ..Light_set_Color as var"##1215"
Color!(this::RemoteTypes.Light, value::begin
                Tuple{Float32, Float32, Float32}
            end) = begin
        kerbal(this.conn, var"##1215"(this, value))
    end
@doc "    Color!(this::RemoteTypes.Light, value::begin\n    Tuple{Float32, Float32, Float32}\nend)\n\nThe color of the light, as an RGB triple.\n\n" Color!
export Color!
import ..Light_get_BlinkRate as var"##1216"
BlinkRate(this::RemoteTypes.Light) = begin
        kerbal(this.conn, var"##1216"(this))
    end
@doc "    BlinkRate(this::RemoteTypes.Light)\n\nThe color of the light, as an RGB triple.\n\n" BlinkRate
export BlinkRate
import ..Light_set_BlinkRate as var"##1217"
BlinkRate!(this::RemoteTypes.Light, value::Float32) = begin
        kerbal(this.conn, var"##1217"(this, value))
    end
@doc "    BlinkRate!(this::RemoteTypes.Light, value::Float32)\n\nThe color of the light, as an RGB triple.\n\n" BlinkRate!
export BlinkRate!
import ..Light_get_PowerUsage as var"##1218"
PowerUsage(this::RemoteTypes.Light) = begin
        kerbal(this.conn, var"##1218"(this))
    end
@doc "    PowerUsage(this::RemoteTypes.Light)\n\nThe current power usage, in units of charge per second.\n\n" PowerUsage
export PowerUsage
import ..Module_HasField as var"##1219"
HasField(this::RemoteTypes.Module, name::String) = begin
        kerbal(this.conn, var"##1219"(this, name))
    end
@doc "    HasField(this::RemoteTypes.Module, name::String)\n\nReturns true if the module has a field with the given name.\n\n# Arguments\n- `name::String`: Name of the field.\n" HasField
export HasField
import ..Module_GetField as var"##1220"
GetField(this::RemoteTypes.Module, name::String) = begin
        kerbal(this.conn, var"##1220"(this, name))
    end
@doc "    GetField(this::RemoteTypes.Module, name::String)\n\nReturns the value of a field.\n\n# Arguments\n- `name::String`: Name of the field.\n" GetField
export GetField
import ..Module_SetFieldInt as var"##1221"
SetFieldInt(this::RemoteTypes.Module, name::String, value::Int32) = begin
        kerbal(this.conn, var"##1221"(this, name, value))
    end
@doc "    SetFieldInt(this::RemoteTypes.Module, name::String, value::Int32)\n\nSet the value of a field to the given integer number.\n\n# Arguments\n- `name::String`: Name of the field.\n- `value::Int32`: Value to set.\n" SetFieldInt
export SetFieldInt
import ..Module_SetFieldFloat as var"##1222"
SetFieldFloat(this::RemoteTypes.Module, name::String, value::Float32) = begin
        kerbal(this.conn, var"##1222"(this, name, value))
    end
@doc "    SetFieldFloat(this::RemoteTypes.Module, name::String, value::Float32)\n\nSet the value of a field to the given floating point number.\n\n# Arguments\n- `name::String`: Name of the field.\n- `value::Float32`: Value to set.\n" SetFieldFloat
export SetFieldFloat
import ..Module_SetFieldString as var"##1223"
SetFieldString(this::RemoteTypes.Module, name::String, value::String) = begin
        kerbal(this.conn, var"##1223"(this, name, value))
    end
@doc "    SetFieldString(this::RemoteTypes.Module, name::String, value::String)\n\nSet the value of a field to the given string.\n\n# Arguments\n- `name::String`: Name of the field.\n- `value::String`: Value to set.\n" SetFieldString
export SetFieldString
import ..Module_ResetField as var"##1224"
ResetField(this::RemoteTypes.Module, name::String) = begin
        kerbal(this.conn, var"##1224"(this, name))
    end
@doc "    ResetField(this::RemoteTypes.Module, name::String)\n\nSet the value of a field to its original value.\n\n# Arguments\n- `name::String`: Name of the field.\n" ResetField
export ResetField
import ..Module_HasEvent as var"##1225"
HasEvent(this::RemoteTypes.Module, name::String) = begin
        kerbal(this.conn, var"##1225"(this, name))
    end
@doc "    HasEvent(this::RemoteTypes.Module, name::String)\ntrue if the module has an event with the given name.\n\n# Arguments\n- `name::String`: \n" HasEvent
export HasEvent
import ..Module_TriggerEvent as var"##1226"
TriggerEvent(this::RemoteTypes.Module, name::String) = begin
        kerbal(this.conn, var"##1226"(this, name))
    end
@doc "    TriggerEvent(this::RemoteTypes.Module, name::String)\n\nTrigger the named event. Equivalent to clicking the button in the right-click menu\nof the part.\n\n# Arguments\n- `name::String`: \n" TriggerEvent
export TriggerEvent
import ..Module_HasAction as var"##1227"
HasAction(this::RemoteTypes.Module, name::String) = begin
        kerbal(this.conn, var"##1227"(this, name))
    end
@doc "    HasAction(this::RemoteTypes.Module, name::String)\ntrue if the part has an action with the given name.\n\n# Arguments\n- `name::String`: \n" HasAction
export HasAction
import ..Module_SetAction as var"##1228"
SetAction(this::RemoteTypes.Module, name::String, value::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(this.conn, var"##1228"(this, name, value))
    end
@doc "    SetAction(this::RemoteTypes.Module, name::String, value::Bool)\n\nSet the value of an action with the given name.\n\n# Arguments\n- `name::String`: \n- `value::Bool`: \n" SetAction
export SetAction
import ..Module_get_Name as var"##1229"
Name(this::RemoteTypes.Module) = begin
        kerbal(this.conn, var"##1229"(this))
    end
@doc "    Name(this::RemoteTypes.Module)\n\nName of the PartModule. For example, \"ModuleEngines\".\n\n" Name
export Name
import ..Module_get_Part as var"##1230"
Part(this::RemoteTypes.Module) = begin
        kerbal(this.conn, var"##1230"(this))
    end
@doc "    Part(this::RemoteTypes.Module)\n\nThe part that contains this module.\n\n" Part
export Part
import ..Module_get_Fields as var"##1231"
Fields(this::RemoteTypes.Module) = begin
        kerbal(this.conn, var"##1231"(this))
    end
@doc "    Fields(this::RemoteTypes.Module)\n\nThe modules field names and their associated values, as a dictionary.\nThese are the values visible in the right-click menu of the part.\n\n" Fields
export Fields
import ..Module_get_Events as var"##1232"
Events(this::RemoteTypes.Module) = begin
        kerbal(this.conn, var"##1232"(this))
    end
@doc "    Events(this::RemoteTypes.Module)\n\nA list of the names of all of the modules events. Events are the clickable buttons\nvisible in the right-click menu of the part.\n\n" Events
export Events
import ..Module_get_Actions as var"##1233"
Actions(this::RemoteTypes.Module) = begin
        kerbal(this.conn, var"##1233"(this))
    end
@doc "    Actions(this::RemoteTypes.Module)\n\nA list of all the names of the modules actions. These are the parts actions that can\nbe assigned to action groups in the in-game editor.\n\n" Actions
export Actions
import ..Parachute_Deploy as var"##1234"
Deploy(this::RemoteTypes.Parachute) = begin
        kerbal(this.conn, var"##1234"(this))
    end
@doc "    Deploy(this::RemoteTypes.Parachute)\n\nDeploys the parachute. This has no effect if the parachute has already\nbeen deployed.\n\n" Deploy
export Deploy
import ..Parachute_Arm as var"##1235"
Arm(this::RemoteTypes.Parachute) = begin
        kerbal(this.conn, var"##1235"(this))
    end
@doc "    Arm(this::RemoteTypes.Parachute)\n\nDeploys the parachute. This has no effect if the parachute has already\nbeen armed or deployed. Only applicable to RealChutes parachutes.\n\n" Arm
export Arm
import ..Parachute_get_Part as var"##1236"
Part(this::RemoteTypes.Parachute) = begin
        kerbal(this.conn, var"##1236"(this))
    end
@doc "    Part(this::RemoteTypes.Parachute)\n\nThe part object for this parachute.\n\n" Part
export Part
import ..Parachute_get_Deployed as var"##1237"
Deployed(this::RemoteTypes.Parachute) = begin
        kerbal(this.conn, var"##1237"(this))
    end
@doc "    Deployed(this::RemoteTypes.Parachute)\n\nWhether the parachute has been deployed.\n\n" Deployed
export Deployed
import ..Parachute_get_Armed as var"##1238"
Armed(this::RemoteTypes.Parachute) = begin
        kerbal(this.conn, var"##1238"(this))
    end
@doc "    Armed(this::RemoteTypes.Parachute)\n\nWhether the parachute has been armed or deployed. Only applicable to\nRealChutes parachutes.\n\n" Armed
export Armed
import ..Parachute_get_State as var"##1239"
State(this::RemoteTypes.Parachute) = begin
        kerbal(this.conn, var"##1239"(this))
    end
@doc "    State(this::RemoteTypes.Parachute)\n\nThe current state of the parachute.\n\n" State
export State
import ..Parachute_get_DeployAltitude as var"##1240"
DeployAltitude(this::RemoteTypes.Parachute) = begin
        kerbal(this.conn, var"##1240"(this))
    end
@doc "    DeployAltitude(this::RemoteTypes.Parachute)\n\nThe altitude at which the parachute will full deploy, in meters.\nOnly applicable to stock parachutes.\n\n" DeployAltitude
export DeployAltitude
import ..Parachute_set_DeployAltitude as var"##1241"
DeployAltitude!(this::RemoteTypes.Parachute, value::Float32) = begin
        kerbal(this.conn, var"##1241"(this, value))
    end
@doc "    DeployAltitude!(this::RemoteTypes.Parachute, value::Float32)\n\nThe altitude at which the parachute will full deploy, in meters.\nOnly applicable to stock parachutes.\n\n" DeployAltitude!
export DeployAltitude!
import ..Parachute_get_DeployMinPressure as var"##1242"
DeployMinPressure(this::RemoteTypes.Parachute) = begin
        kerbal(this.conn, var"##1242"(this))
    end
@doc "    DeployMinPressure(this::RemoteTypes.Parachute)\n\nThe minimum pressure at which the parachute will semi-deploy, in atmospheres.\nOnly applicable to stock parachutes.\n\n" DeployMinPressure
export DeployMinPressure
import ..Parachute_set_DeployMinPressure as var"##1243"
DeployMinPressure!(this::RemoteTypes.Parachute, value::Float32) = begin
        kerbal(this.conn, var"##1243"(this, value))
    end
@doc "    DeployMinPressure!(this::RemoteTypes.Parachute, value::Float32)\n\nThe minimum pressure at which the parachute will semi-deploy, in atmospheres.\nOnly applicable to stock parachutes.\n\n" DeployMinPressure!
export DeployMinPressure!
import ..Part_Position as var"##1244"
Position(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1244"(this, referenceFrame))
    end
@doc "    Position(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position of the part in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n# Remarks\n This is a fixed position in the part, defined by the parts model. It s not necessarily the same as the parts center of mass. Use  to get the parts center of mass. \n" Position
export Position
import ..Part_CenterOfMass as var"##1245"
CenterOfMass(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1245"(this, referenceFrame))
    end
@doc "    CenterOfMass(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position of the parts center of mass in the given reference frame.\nIf the part is physicsless, this is equivalent to .\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n" CenterOfMass
export CenterOfMass
import ..Part_BoundingBox as var"##1246"
BoundingBox(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1246"(this, referenceFrame))
    end
@doc "    BoundingBox(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe axis-aligned bounding box of the part in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vectors are in.\n# Returns\nThe positions of the minimum and maximum vertices of the box, as position vectors.\n# Remarks\n This is computed from the collision mesh of the part. If the part is not collidable, the box has zero volume and is centered on the  of the part. \n" BoundingBox
export BoundingBox
import ..Part_Direction as var"##1247"
Direction(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1247"(this, referenceFrame))
    end
@doc "    Direction(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe direction the part points in, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned direction is in.\n# Returns\nThe direction as a unit vector.\n" Direction
export Direction
import ..Part_Velocity as var"##1248"
Velocity(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1248"(this, referenceFrame))
    end
@doc "    Velocity(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe linear velocity of the part in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned velocity vector is in.\n# Returns\nThe velocity as a vector. The vector points in the direction of travel, and its magnitude is the speed of the body in meters per second.\n" Velocity
export Velocity
import ..Part_Rotation as var"##1249"
Rotation(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1249"(this, referenceFrame))
    end
@doc "    Rotation(this::RemoteTypes.Part, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe rotation of the part, in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned rotation is in.\n# Returns\nThe rotation as a quaternion of the form (x, y, z, w).\n" Rotation
export Rotation
import ..Part_AddForce as var"##1250"
AddForce(this::RemoteTypes.Part, force::begin
                Tuple{Float64, Float64, Float64}
            end, position::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1250"(this, force, position, referenceFrame))
    end
@doc "    AddForce(this::RemoteTypes.Part, force::begin\n    Tuple{Float64, Float64, Float64}\nend, position::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::RemoteTypes.ReferenceFrame)\n\nExert a constant force on the part, acting at the given position.\n\n# Arguments\n- `force::begin\n    Tuple{Float64, Float64, Float64}\nend`: A vector pointing in the direction that the force acts, with its magnitude equal to the strength of the force in Newtons.\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: The position at which the force acts, as a vector.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the force and position are in.\n# Returns\nAn object that can be used to remove or modify the force.\n" AddForce
export AddForce
import ..Part_InstantaneousForce as var"##1251"
InstantaneousForce(this::RemoteTypes.Part, force::begin
                Tuple{Float64, Float64, Float64}
            end, position::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1251"(this, force, position, referenceFrame))
    end
@doc "    InstantaneousForce(this::RemoteTypes.Part, force::begin\n    Tuple{Float64, Float64, Float64}\nend, position::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::RemoteTypes.ReferenceFrame)\n\nExert an instantaneous force on the part, acting at the given position.\n\n# Arguments\n- `force::begin\n    Tuple{Float64, Float64, Float64}\nend`: A vector pointing in the direction that the force acts, with its magnitude equal to the strength of the force in Newtons.\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: The position at which the force acts, as a vector.\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the force and position are in.\n# Remarks\nThe force is applied instantaneously in a single physics update.\n" InstantaneousForce
export InstantaneousForce
import ..Part_get_Name as var"##1252"
Name(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1252"(this))
    end
@doc "    Name(this::RemoteTypes.Part)\n\nInternal name of the part, as used in\npart cfg files.\nFor example \"Mark1-2Pod\".\n\n" Name
export Name
import ..Part_get_Title as var"##1253"
Title(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1253"(this))
    end
@doc "    Title(this::RemoteTypes.Part)\n\nTitle of the part, as shown when the part is right clicked in-game. For example \"Mk1-2 Command Pod\".\n\n" Title
export Title
import ..Part_get_Tag as var"##1254"
Tag(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1254"(this))
    end
@doc "    Tag(this::RemoteTypes.Part)\n\nThe name tag for the part. Can be set to a custom string using the\nin-game user interface.\n\n# Remarks\n This string is shared with kOS if it is installed. \n" Tag
export Tag
import ..Part_set_Tag as var"##1255"
Tag!(this::RemoteTypes.Part, value::String) = begin
        kerbal(this.conn, var"##1255"(this, value))
    end
@doc "    Tag!(this::RemoteTypes.Part, value::String)\n\nThe name tag for the part. Can be set to a custom string using the\nin-game user interface.\n\n# Remarks\n This string is shared with kOS if it is installed. \n" Tag!
export Tag!
import ..Part_get_Highlighted as var"##1256"
Highlighted(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1256"(this))
    end
@doc "    Highlighted(this::RemoteTypes.Part)\n\nWhether the part is highlighted.\n\n" Highlighted
export Highlighted
import ..Part_set_Highlighted as var"##1257"
Highlighted!(this::RemoteTypes.Part, value::Bool) = begin
        kerbal(this.conn, var"##1257"(this, value))
    end
@doc "    Highlighted!(this::RemoteTypes.Part, value::Bool)\n\nWhether the part is highlighted.\n\n" Highlighted!
export Highlighted!
import ..Part_get_HighlightColor as var"##1258"
HighlightColor(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1258"(this))
    end
@doc "    HighlightColor(this::RemoteTypes.Part)\n\nThe color used to highlight the part, as an RGB triple.\n\n" HighlightColor
export HighlightColor
import ..Part_set_HighlightColor as var"##1259"
HighlightColor!(this::RemoteTypes.Part, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##1259"(this, value))
    end
@doc "    HighlightColor!(this::RemoteTypes.Part, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nThe color used to highlight the part, as an RGB triple.\n\n" HighlightColor!
export HighlightColor!
import ..Part_get_Cost as var"##1260"
Cost(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1260"(this))
    end
@doc "    Cost(this::RemoteTypes.Part)\n\nThe cost of the part, in units of funds.\n\n" Cost
export Cost
import ..Part_get_Vessel as var"##1261"
Vessel(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1261"(this))
    end
@doc "    Vessel(this::RemoteTypes.Part)\n\nThe vessel that contains this part.\n\n" Vessel
export Vessel
import ..Part_get_Parent as var"##1262"
Parent(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1262"(this))
    end
@doc "    Parent(this::RemoteTypes.Part)\n\nThe parts parent. Returns null if the part does not have a parent.\nThis, in combination with , can be used to traverse the vessels\nparts tree.\n\n" Parent
export Parent
import ..Part_get_Children as var"##1263"
Children(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1263"(this))
    end
@doc "    Children(this::RemoteTypes.Part)\n\nThe parts children. Returns an empty list if the part has no children.\nThis, in combination with , can be used to traverse the vessels\nparts tree.\n\n" Children
export Children
import ..Part_get_AxiallyAttached as var"##1264"
AxiallyAttached(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1264"(this))
    end
@doc "    AxiallyAttached(this::RemoteTypes.Part)\n\nWhether the part is axially attached to its parent, i.e. on the top\nor bottom of its parent. If the part has no parent, returns false.\n\n" AxiallyAttached
export AxiallyAttached
import ..Part_get_RadiallyAttached as var"##1265"
RadiallyAttached(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1265"(this))
    end
@doc "    RadiallyAttached(this::RemoteTypes.Part)\n\nWhether the part is radially attached to its parent, i.e. on the side of its parent.\nIf the part has no parent, returns false.\n\n" RadiallyAttached
export RadiallyAttached
import ..Part_get_Stage as var"##1266"
Stage(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1266"(this))
    end
@doc "    Stage(this::RemoteTypes.Part)\n\nThe stage in which this part will be activated. Returns -1 if the part is not\nactivated by staging.\n\n" Stage
export Stage
import ..Part_get_DecoupleStage as var"##1267"
DecoupleStage(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1267"(this))
    end
@doc "    DecoupleStage(this::RemoteTypes.Part)\n\nThe stage in which this part will be decoupled. Returns -1 if the part is never\ndecoupled from the vessel.\n\n" DecoupleStage
export DecoupleStage
import ..Part_get_Massless as var"##1268"
Massless(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1268"(this))
    end
@doc "    Massless(this::RemoteTypes.Part)\n\nWhether the part is\nmassless.\n\n" Massless
export Massless
import ..Part_get_Mass as var"##1269"
Mass(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1269"(this))
    end
@doc "    Mass(this::RemoteTypes.Part)\n\nThe current mass of the part, including resources it contains, in kilograms.\nReturns zero if the part is massless.\n\n" Mass
export Mass
import ..Part_get_DryMass as var"##1270"
DryMass(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1270"(this))
    end
@doc "    DryMass(this::RemoteTypes.Part)\n\nThe mass of the part, not including any resources it contains, in kilograms.\nReturns zero if the part is massless.\n\n" DryMass
export DryMass
import ..Part_get_Shielded as var"##1271"
Shielded(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1271"(this))
    end
@doc "    Shielded(this::RemoteTypes.Part)\n\nWhether the part is shielded from the exterior of the vessel, for example by a fairing.\n\n" Shielded
export Shielded
import ..Part_get_DynamicPressure as var"##1272"
DynamicPressure(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1272"(this))
    end
@doc "    DynamicPressure(this::RemoteTypes.Part)\n\nThe dynamic pressure acting on the part, in Pascals.\n\n" DynamicPressure
export DynamicPressure
import ..Part_get_ImpactTolerance as var"##1273"
ImpactTolerance(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1273"(this))
    end
@doc "    ImpactTolerance(this::RemoteTypes.Part)\n\nThe impact tolerance of the part, in meters per second.\n\n" ImpactTolerance
export ImpactTolerance
import ..Part_get_Temperature as var"##1274"
Temperature(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1274"(this))
    end
@doc "    Temperature(this::RemoteTypes.Part)\n\nTemperature of the part, in Kelvin.\n\n" Temperature
export Temperature
import ..Part_get_SkinTemperature as var"##1275"
SkinTemperature(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1275"(this))
    end
@doc "    SkinTemperature(this::RemoteTypes.Part)\n\nTemperature of the skin of the part, in Kelvin.\n\n" SkinTemperature
export SkinTemperature
import ..Part_get_MaxTemperature as var"##1276"
MaxTemperature(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1276"(this))
    end
@doc "    MaxTemperature(this::RemoteTypes.Part)\n\nMaximum temperature that the part can survive, in Kelvin.\n\n" MaxTemperature
export MaxTemperature
import ..Part_get_MaxSkinTemperature as var"##1277"
MaxSkinTemperature(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1277"(this))
    end
@doc "    MaxSkinTemperature(this::RemoteTypes.Part)\n\nMaximum temperature that the skin of the part can survive, in Kelvin.\n\n" MaxSkinTemperature
export MaxSkinTemperature
import ..Part_get_ThermalMass as var"##1278"
ThermalMass(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1278"(this))
    end
@doc "    ThermalMass(this::RemoteTypes.Part)\n\nA measure of how much energy it takes to increase the internal temperature of the part,\nin Joules per Kelvin.\n\n" ThermalMass
export ThermalMass
import ..Part_get_ThermalSkinMass as var"##1279"
ThermalSkinMass(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1279"(this))
    end
@doc "    ThermalSkinMass(this::RemoteTypes.Part)\n\nA measure of how much energy it takes to increase the skin temperature of the part,\nin Joules per Kelvin.\n\n" ThermalSkinMass
export ThermalSkinMass
import ..Part_get_ThermalResourceMass as var"##1280"
ThermalResourceMass(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1280"(this))
    end
@doc "    ThermalResourceMass(this::RemoteTypes.Part)\n\nA measure of how much energy it takes to increase the temperature of the resources\ncontained in the part, in Joules per Kelvin.\n\n" ThermalResourceMass
export ThermalResourceMass
import ..Part_get_ThermalInternalFlux as var"##1281"
ThermalInternalFlux(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1281"(this))
    end
@doc "    ThermalInternalFlux(this::RemoteTypes.Part)\n\nThe rate at which heat energy is begin generated by the part.\nFor example, some engines generate heat by combusting fuel.\nMeasured in energy per unit time, or power, in Watts.\nA positive value means the part is gaining heat energy, and negative means it is losing\nheat energy.\n\n" ThermalInternalFlux
export ThermalInternalFlux
import ..Part_get_ThermalConductionFlux as var"##1282"
ThermalConductionFlux(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1282"(this))
    end
@doc "    ThermalConductionFlux(this::RemoteTypes.Part)\n\nThe rate at which heat energy is conducting into or out of the part via contact with\nother parts. Measured in energy per unit time, or power, in Watts.\nA positive value means the part is gaining heat energy, and negative means it is\nlosing heat energy.\n\n" ThermalConductionFlux
export ThermalConductionFlux
import ..Part_get_ThermalConvectionFlux as var"##1283"
ThermalConvectionFlux(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1283"(this))
    end
@doc "    ThermalConvectionFlux(this::RemoteTypes.Part)\n\nThe rate at which heat energy is convecting into or out of the part from the\nsurrounding atmosphere. Measured in energy per unit time, or power, in Watts.\nA positive value means the part is gaining heat energy, and negative means it is\nlosing heat energy.\n\n" ThermalConvectionFlux
export ThermalConvectionFlux
import ..Part_get_ThermalRadiationFlux as var"##1284"
ThermalRadiationFlux(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1284"(this))
    end
@doc "    ThermalRadiationFlux(this::RemoteTypes.Part)\n\nThe rate at which heat energy is radiating into or out of the part from the surrounding\nenvironment. Measured in energy per unit time, or power, in Watts.\nA positive value means the part is gaining heat energy, and negative means it is\nlosing heat energy.\n\n" ThermalRadiationFlux
export ThermalRadiationFlux
import ..Part_get_ThermalSkinToInternalFlux as var"##1285"
ThermalSkinToInternalFlux(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1285"(this))
    end
@doc "    ThermalSkinToInternalFlux(this::RemoteTypes.Part)\n\nThe rate at which heat energy is transferring between the part's skin and its internals.\nMeasured in energy per unit time, or power, in Watts.\nA positive value means the part's internals are gaining heat energy,\nand negative means its skin is gaining heat energy.\n\n" ThermalSkinToInternalFlux
export ThermalSkinToInternalFlux
import ..Part_get_Resources as var"##1286"
Resources(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1286"(this))
    end
@doc "    Resources(this::RemoteTypes.Part)\n\nA  object for the part.\n\n" Resources
export Resources
import ..Part_get_Crossfeed as var"##1287"
Crossfeed(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1287"(this))
    end
@doc "    Crossfeed(this::RemoteTypes.Part)\n\nWhether this part is crossfeed capable.\n\n" Crossfeed
export Crossfeed
import ..Part_get_IsFuelLine as var"##1288"
IsFuelLine(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1288"(this))
    end
@doc "    IsFuelLine(this::RemoteTypes.Part)\n\nWhether this part is a fuel line.\n\n" IsFuelLine
export IsFuelLine
import ..Part_get_FuelLinesFrom as var"##1289"
FuelLinesFrom(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1289"(this))
    end
@doc "    FuelLinesFrom(this::RemoteTypes.Part)\n\nThe parts that are connected to this part via fuel lines, where the direction of the\nfuel line is into this part.\n\n" FuelLinesFrom
export FuelLinesFrom
import ..Part_get_FuelLinesTo as var"##1290"
FuelLinesTo(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1290"(this))
    end
@doc "    FuelLinesTo(this::RemoteTypes.Part)\n\nThe parts that are connected to this part via fuel lines, where the direction of the\nfuel line is out of this part.\n\n" FuelLinesTo
export FuelLinesTo
import ..Part_get_Modules as var"##1291"
Modules(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1291"(this))
    end
@doc "    Modules(this::RemoteTypes.Part)\n\nThe modules for this part.\n\n" Modules
export Modules
import ..Part_get_Antenna as var"##1292"
Antenna(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1292"(this))
    end
@doc "    Antenna(this::RemoteTypes.Part)\n\nA  if the part is an antenna, otherwise null.\n\n" Antenna
export Antenna
import ..Part_get_CargoBay as var"##1293"
CargoBay(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1293"(this))
    end
@doc "    CargoBay(this::RemoteTypes.Part)\n\nA  if the part is a cargo bay, otherwise null.\n\n" CargoBay
export CargoBay
import ..Part_get_ControlSurface as var"##1294"
ControlSurface(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1294"(this))
    end
@doc "    ControlSurface(this::RemoteTypes.Part)\n\nA  if the part is an aerodynamic control surface,\notherwise null.\n\n" ControlSurface
export ControlSurface
import ..Part_get_Decoupler as var"##1295"
Decoupler(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1295"(this))
    end
@doc "    Decoupler(this::RemoteTypes.Part)\n\nA  if the part is a decoupler, otherwise null.\n\n" Decoupler
export Decoupler
import ..Part_get_DockingPort as var"##1296"
DockingPort(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1296"(this))
    end
@doc "    DockingPort(this::RemoteTypes.Part)\n\nA  if the part is a docking port, otherwise null.\n\n" DockingPort
export DockingPort
import ..Part_get_ResourceDrain as var"##1297"
ResourceDrain(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1297"(this))
    end
@doc "    ResourceDrain(this::RemoteTypes.Part)\n        /// A  if the part is a resource drain, otherwise null.\n\n" ResourceDrain
export ResourceDrain
import ..Part_get_Engine as var"##1298"
Engine(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1298"(this))
    end
@doc "    Engine(this::RemoteTypes.Part)\n\nAn  if the part is an engine, otherwise null.\n\n" Engine
export Engine
import ..Part_get_Experiment as var"##1299"
Experiment(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1299"(this))
    end
@doc "    Experiment(this::RemoteTypes.Part)\n\nAn  if the part contains a\nsingle science experiment, otherwise null.\n\n# Remarks\n Throws an exception if the part contains more than one experiment. In that case, use  to get the list of experiments in the part. \n" Experiment
export Experiment
import ..Part_get_Experiments as var"##1300"
Experiments(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1300"(this))
    end
@doc "    Experiments(this::RemoteTypes.Part)\n\nA list of  objects that the part contains.\n\n" Experiments
export Experiments
import ..Part_get_Fairing as var"##1301"
Fairing(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1301"(this))
    end
@doc "    Fairing(this::RemoteTypes.Part)\n\nA  if the part is a fairing, otherwise null.\n\n" Fairing
export Fairing
import ..Part_get_Intake as var"##1302"
Intake(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1302"(this))
    end
@doc "    Intake(this::RemoteTypes.Part)\n\nAn  if the part is an intake, otherwise null.\n\n# Remarks\n This includes any part that generates thrust. This covers many different types of engine, including liquid fuel rockets, solid rocket boosters and jet engines. For RCS thrusters see . \n" Intake
export Intake
import ..Part_get_Leg as var"##1303"
Leg(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1303"(this))
    end
@doc "    Leg(this::RemoteTypes.Part)\n\nA  if the part is a landing leg, otherwise null.\n\n" Leg
export Leg
import ..Part_get_LaunchClamp as var"##1304"
LaunchClamp(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1304"(this))
    end
@doc "    LaunchClamp(this::RemoteTypes.Part)\n\nA  if the part is a launch clamp, otherwise null.\n\n" LaunchClamp
export LaunchClamp
import ..Part_get_Light as var"##1305"
Light(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1305"(this))
    end
@doc "    Light(this::RemoteTypes.Part)\n\nA  if the part is a light, otherwise null.\n\n" Light
export Light
import ..Part_get_Parachute as var"##1306"
Parachute(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1306"(this))
    end
@doc "    Parachute(this::RemoteTypes.Part)\n\nA  if the part is a parachute, otherwise null.\n\n" Parachute
export Parachute
import ..Part_get_Radiator as var"##1307"
Radiator(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1307"(this))
    end
@doc "    Radiator(this::RemoteTypes.Part)\n\nA  if the part is a radiator, otherwise null.\n\n" Radiator
export Radiator
import ..Part_get_RCS as var"##1308"
RCS(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1308"(this))
    end
@doc "    RCS(this::RemoteTypes.Part)\n\nA  if the part is an RCS block/thruster, otherwise null.\n\n" RCS
export RCS
import ..Part_get_ReactionWheel as var"##1309"
ReactionWheel(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1309"(this))
    end
@doc "    ReactionWheel(this::RemoteTypes.Part)\n\nA  if the part is a reaction wheel, otherwise null.\n\n" ReactionWheel
export ReactionWheel
import ..Part_get_ResourceConverter as var"##1310"
ResourceConverter(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1310"(this))
    end
@doc "    ResourceConverter(this::RemoteTypes.Part)\n\nA  if the part is a resource converter,\notherwise null.\n\n" ResourceConverter
export ResourceConverter
import ..Part_get_ResourceHarvester as var"##1311"
ResourceHarvester(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1311"(this))
    end
@doc "    ResourceHarvester(this::RemoteTypes.Part)\n\nA  if the part is a resource harvester,\notherwise null.\n\n" ResourceHarvester
export ResourceHarvester
import ..Part_get_Sensor as var"##1312"
Sensor(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1312"(this))
    end
@doc "    Sensor(this::RemoteTypes.Part)\n\nA  if the part is a sensor, otherwise null.\n\n" Sensor
export Sensor
import ..Part_get_SolarPanel as var"##1313"
SolarPanel(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1313"(this))
    end
@doc "    SolarPanel(this::RemoteTypes.Part)\n\nA  if the part is a solar panel, otherwise null.\n\n" SolarPanel
export SolarPanel
import ..Part_get_Wheel as var"##1314"
Wheel(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1314"(this))
    end
@doc "    Wheel(this::RemoteTypes.Part)\n\nA  if the part is a wheel, otherwise null.\n\n" Wheel
export Wheel
import ..Part_get_RoboticHinge as var"##1315"
RoboticHinge(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1315"(this))
    end
@doc "    RoboticHinge(this::RemoteTypes.Part)\n\nA  if the part is a robotic hinge, otherwise null.\n\n" RoboticHinge
export RoboticHinge
import ..Part_get_RoboticPiston as var"##1316"
RoboticPiston(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1316"(this))
    end
@doc "    RoboticPiston(this::RemoteTypes.Part)\n\nA  if the part is a robotic hinge, otherwise null.\n\n" RoboticPiston
export RoboticPiston
import ..Part_get_RoboticRotation as var"##1317"
RoboticRotation(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1317"(this))
    end
@doc "    RoboticRotation(this::RemoteTypes.Part)\n\nA  if the part is a robotic rotation servo, otherwise null.\n\n" RoboticRotation
export RoboticRotation
import ..Part_get_RoboticRotor as var"##1318"
RoboticRotor(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1318"(this))
    end
@doc "    RoboticRotor(this::RemoteTypes.Part)\n\nA  if the part is a robotic rotation servo, otherwise null.\n\n" RoboticRotor
export RoboticRotor
import ..Part_get_MomentOfInertia as var"##1319"
MomentOfInertia(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1319"(this))
    end
@doc "    MomentOfInertia(this::RemoteTypes.Part)\n\nThe moment of inertia of the part in kg.m^2 around its center of mass\nin the parts reference frame ().\n\n" MomentOfInertia
export MomentOfInertia
import ..Part_get_InertiaTensor as var"##1320"
InertiaTensor(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1320"(this))
    end
@doc "    InertiaTensor(this::RemoteTypes.Part)\n\nThe inertia tensor of the part in the parts reference frame\n().\nReturns the 3x3 matrix as a list of elements, in row-major order.\n\n" InertiaTensor
export InertiaTensor
import ..Part_get_ReferenceFrame as var"##1321"
ReferenceFrame(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1321"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.Part)\n\nThe reference frame that is fixed relative to this part, and centered on a fixed\nposition within the part, defined by the parts model.\nThe origin is at the position of the part, as returned by\n.The axes rotate with the part.The x, y and z axis directions depend on the design of the part.\n\n# Remarks\n For docking port parts, this reference frame is not necessarily equivalent to the reference frame for the docking port, returned by . \n" ReferenceFrame
export ReferenceFrame
import ..Part_get_CenterOfMassReferenceFrame as var"##1322"
CenterOfMassReferenceFrame(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1322"(this))
    end
@doc "    CenterOfMassReferenceFrame(this::RemoteTypes.Part)\n\nThe reference frame that is fixed relative to this part, and centered on its\ncenter of mass.\nThe origin is at the center of mass of the part, as returned by\n.The axes rotate with the part.The x, y and z axis directions depend on the design of the part.\n\n# Remarks\n For docking port parts, this reference frame is not necessarily equivalent to the reference frame for the docking port, returned by . \n" CenterOfMassReferenceFrame
export CenterOfMassReferenceFrame
import ..Part_get_AutoStrutMode as var"##1323"
AutoStrutMode(this::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1323"(this))
    end
@doc "" AutoStrutMode
export AutoStrutMode
import ..Part_set_AutoStrutMode as var"##1324"
AutoStrutMode!(this::RemoteTypes.Part, value::EAutostrutState) = begin
        kerbal(this.conn, var"##1324"(this, value))
    end
@doc "" AutoStrutMode!
export AutoStrutMode!
import ..Parts_WithName as var"##1325"
WithName(this::RemoteTypes.Parts, name::String) = begin
        kerbal(this.conn, var"##1325"(this, name))
    end
@doc "    WithName(this::RemoteTypes.Parts, name::String)\n\nA list of parts whose  is .\n\n# Arguments\n- `name::String`: \n" WithName
export WithName
import ..Parts_WithTitle as var"##1326"
WithTitle(this::RemoteTypes.Parts, title::String) = begin
        kerbal(this.conn, var"##1326"(this, title))
    end
@doc "    WithTitle(this::RemoteTypes.Parts, title::String)\n\nA list of all parts whose  is .\n\n# Arguments\n- `title::String`: \n" WithTitle
export WithTitle
import ..Parts_WithTag as var"##1327"
WithTag(this::RemoteTypes.Parts, tag::String) = begin
        kerbal(this.conn, var"##1327"(this, tag))
    end
@doc "    WithTag(this::RemoteTypes.Parts, tag::String)\n\nA list of all parts whose  is .\n\n# Arguments\n- `tag::String`: \n" WithTag
export WithTag
import ..Parts_WithModule as var"##1328"
WithModule(this::RemoteTypes.Parts, moduleName::String) = begin
        kerbal(this.conn, var"##1328"(this, moduleName))
    end
@doc "    WithModule(this::RemoteTypes.Parts, moduleName::String)\n\nA list of all parts that contain a  whose\n is .\n\n# Arguments\n- `moduleName::String`: \n" WithModule
export WithModule
import ..Parts_InStage as var"##1329"
InStage(this::RemoteTypes.Parts, stage::Int32) = begin
        kerbal(this.conn, var"##1329"(this, stage))
    end
@doc "    InStage(this::RemoteTypes.Parts, stage::Int32)\n\nA list of all parts that are activated in the given .\n\n# Arguments\n- `stage::Int32`: \n" InStage
export InStage
import ..Parts_InDecoupleStage as var"##1330"
InDecoupleStage(this::RemoteTypes.Parts, stage::Int32) = begin
        kerbal(this.conn, var"##1330"(this, stage))
    end
@doc "    InDecoupleStage(this::RemoteTypes.Parts, stage::Int32)\n\nA list of all parts that are decoupled in the given .\n\n# Arguments\n- `stage::Int32`: \n" InDecoupleStage
export InDecoupleStage
import ..Parts_ModulesWithName as var"##1331"
ModulesWithName(this::RemoteTypes.Parts, moduleName::String) = begin
        kerbal(this.conn, var"##1331"(this, moduleName))
    end
@doc "    ModulesWithName(this::RemoteTypes.Parts, moduleName::String)\n\nA list of modules (combined across all parts in the vessel) whose\n is .\n\n# Arguments\n- `moduleName::String`: \n" ModulesWithName
export ModulesWithName
import ..Parts_get_All as var"##1332"
All(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1332"(this))
    end
@doc "    All(this::RemoteTypes.Parts)\n\nA list of all of the vessels parts.\n\n" All
export All
import ..Parts_get_Root as var"##1333"
Root(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1333"(this))
    end
@doc "    Root(this::RemoteTypes.Parts)\n\nThe vessels root part.\n\n" Root
export Root
import ..Parts_get_Controlling as var"##1334"
Controlling(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1334"(this))
    end
@doc "    Controlling(this::RemoteTypes.Parts)\n\nThe part from which the vessel is controlled.\n\n" Controlling
export Controlling
import ..Parts_set_Controlling as var"##1335"
Controlling!(this::RemoteTypes.Parts, value::RemoteTypes.Part) = begin
        kerbal(this.conn, var"##1335"(this, value))
    end
@doc "    Controlling!(this::RemoteTypes.Parts, value::RemoteTypes.Part)\n\nThe part from which the vessel is controlled.\n\n" Controlling!
export Controlling!
import ..Parts_get_Antennas as var"##1336"
Antennas(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1336"(this))
    end
@doc "    Antennas(this::RemoteTypes.Parts)\n\nA list of all antennas in the vessel.\n\n" Antennas
export Antennas
import ..Parts_get_ControlSurfaces as var"##1337"
ControlSurfaces(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1337"(this))
    end
@doc "    ControlSurfaces(this::RemoteTypes.Parts)\n\nA list of all control surfaces in the vessel.\n\n" ControlSurfaces
export ControlSurfaces
import ..Parts_get_CargoBays as var"##1338"
CargoBays(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1338"(this))
    end
@doc "    CargoBays(this::RemoteTypes.Parts)\n\nA list of all cargo bays in the vessel.\n\n" CargoBays
export CargoBays
import ..Parts_get_Decouplers as var"##1339"
Decouplers(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1339"(this))
    end
@doc "    Decouplers(this::RemoteTypes.Parts)\n\nA list of all decouplers in the vessel.\n\n" Decouplers
export Decouplers
import ..Parts_get_DockingPorts as var"##1340"
DockingPorts(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1340"(this))
    end
@doc "    DockingPorts(this::RemoteTypes.Parts)\n\nA list of all docking ports in the vessel.\n\n" DockingPorts
export DockingPorts
import ..Parts_get_Engines as var"##1341"
Engines(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1341"(this))
    end
@doc "    Engines(this::RemoteTypes.Parts)\n\nA list of all engines in the vessel.\n\n# Remarks\n This includes any part that generates thrust. This covers many different types of engine, including liquid fuel rockets, solid rocket boosters, jet engines and RCS thrusters. \n" Engines
export Engines
import ..Parts_get_Experiments as var"##1342"
Experiments(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1342"(this))
    end
@doc "    Experiments(this::RemoteTypes.Parts)\n\nA list of all science experiments in the vessel.\n\n" Experiments
export Experiments
import ..Parts_get_Fairings as var"##1343"
Fairings(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1343"(this))
    end
@doc "    Fairings(this::RemoteTypes.Parts)\n\nA list of all fairings in the vessel.\n\n" Fairings
export Fairings
import ..Parts_get_Intakes as var"##1344"
Intakes(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1344"(this))
    end
@doc "    Intakes(this::RemoteTypes.Parts)\n\nA list of all intakes in the vessel.\n\n" Intakes
export Intakes
import ..Parts_get_Legs as var"##1345"
Legs(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1345"(this))
    end
@doc "    Legs(this::RemoteTypes.Parts)\n\nA list of all landing legs attached to the vessel.\n\n" Legs
export Legs
import ..Parts_get_LaunchClamps as var"##1346"
LaunchClamps(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1346"(this))
    end
@doc "    LaunchClamps(this::RemoteTypes.Parts)\n\nA list of all launch clamps attached to the vessel.\n\n" LaunchClamps
export LaunchClamps
import ..Parts_get_Lights as var"##1347"
Lights(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1347"(this))
    end
@doc "    Lights(this::RemoteTypes.Parts)\n\nA list of all lights in the vessel.\n\n" Lights
export Lights
import ..Parts_get_Parachutes as var"##1348"
Parachutes(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1348"(this))
    end
@doc "    Parachutes(this::RemoteTypes.Parts)\n\nA list of all parachutes in the vessel.\n\n" Parachutes
export Parachutes
import ..Parts_get_Radiators as var"##1349"
Radiators(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1349"(this))
    end
@doc "    Radiators(this::RemoteTypes.Parts)\n\nA list of all radiators in the vessel.\n\n" Radiators
export Radiators
import ..Parts_get_RCS as var"##1350"
RCS(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1350"(this))
    end
@doc "    RCS(this::RemoteTypes.Parts)\n\nA list of all RCS blocks/thrusters in the vessel.\n\n" RCS
export RCS
import ..Parts_get_ReactionWheels as var"##1351"
ReactionWheels(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1351"(this))
    end
@doc "    ReactionWheels(this::RemoteTypes.Parts)\n\nA list of all reaction wheels in the vessel.\n\n" ReactionWheels
export ReactionWheels
import ..Parts_get_ResourceConverters as var"##1352"
ResourceConverters(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1352"(this))
    end
@doc "    ResourceConverters(this::RemoteTypes.Parts)\n\nA list of all resource converters in the vessel.\n\n" ResourceConverters
export ResourceConverters
import ..Parts_get_ResourceHarvesters as var"##1353"
ResourceHarvesters(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1353"(this))
    end
@doc "    ResourceHarvesters(this::RemoteTypes.Parts)\n\nA list of all resource harvesters in the vessel.\n\n" ResourceHarvesters
export ResourceHarvesters
import ..Parts_get_Sensors as var"##1354"
Sensors(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1354"(this))
    end
@doc "    Sensors(this::RemoteTypes.Parts)\n\nA list of all sensors in the vessel.\n\n" Sensors
export Sensors
import ..Parts_get_SolarPanels as var"##1355"
SolarPanels(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1355"(this))
    end
@doc "    SolarPanels(this::RemoteTypes.Parts)\n\nA list of all solar panels in the vessel.\n\n" SolarPanels
export SolarPanels
import ..Parts_get_Wheels as var"##1356"
Wheels(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1356"(this))
    end
@doc "    Wheels(this::RemoteTypes.Parts)\n\nA list of all wheels in the vessel.\n\n" Wheels
export Wheels
import ..Parts_get_RoboticHinges as var"##1357"
RoboticHinges(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1357"(this))
    end
@doc "    RoboticHinges(this::RemoteTypes.Parts)\n        \nA list of all robotic hinges in the vessel.\n\n" RoboticHinges
export RoboticHinges
import ..Parts_get_RoboticPistons as var"##1358"
RoboticPistons(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1358"(this))
    end
@doc "    RoboticPistons(this::RemoteTypes.Parts)\n\nA list of all robotic pistons in the vessel.\n\n" RoboticPistons
export RoboticPistons
import ..Parts_get_RoboticRotations as var"##1359"
RoboticRotations(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1359"(this))
    end
@doc "    RoboticRotations(this::RemoteTypes.Parts)\n\nA list of all robotic pistons in the vessel.\n\n" RoboticRotations
export RoboticRotations
import ..Parts_get_RoboticRotors as var"##1360"
RoboticRotors(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1360"(this))
    end
@doc "    RoboticRotors(this::RemoteTypes.Parts)\n\nA list of all robotic rotors in the vessel.\n\n" RoboticRotors
export RoboticRotors
import ..Parts_get_ResourceDrains as var"##1361"
ResourceDrains(this::RemoteTypes.Parts) = begin
        kerbal(this.conn, var"##1361"(this))
    end
@doc "    ResourceDrains(this::RemoteTypes.Parts)\n\nA list of all resource drains in the vessel.\n\n" ResourceDrains
export ResourceDrains
import ..Propellant_get_Name as var"##1362"
Name(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1362"(this))
    end
@doc "    Name(this::RemoteTypes.Propellant)\n\nThe name of the propellant.\n\n" Name
export Name
import ..Propellant_get_CurrentAmount as var"##1363"
CurrentAmount(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1363"(this))
    end
@doc "    CurrentAmount(this::RemoteTypes.Propellant)\n\nThe current amount of propellant.\n\n" CurrentAmount
export CurrentAmount
import ..Propellant_get_CurrentRequirement as var"##1364"
CurrentRequirement(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1364"(this))
    end
@doc "    CurrentRequirement(this::RemoteTypes.Propellant)\n\nThe required amount of propellant.\n\n" CurrentRequirement
export CurrentRequirement
import ..Propellant_get_TotalResourceAvailable as var"##1365"
TotalResourceAvailable(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1365"(this))
    end
@doc "    TotalResourceAvailable(this::RemoteTypes.Propellant)\n\nThe total amount of the underlying resource currently reachable given\nresource flow rules.\n\n" TotalResourceAvailable
export TotalResourceAvailable
import ..Propellant_get_TotalResourceCapacity as var"##1366"
TotalResourceCapacity(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1366"(this))
    end
@doc "    TotalResourceCapacity(this::RemoteTypes.Propellant)\n\nThe total vehicle capacity for the underlying propellant resource,\nrestricted by resource flow rules.\n\n" TotalResourceCapacity
export TotalResourceCapacity
import ..Propellant_get_IgnoreForIsp as var"##1367"
IgnoreForIsp(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1367"(this))
    end
@doc "    IgnoreForIsp(this::RemoteTypes.Propellant)\n\nIf this propellant should be ignored when calculating required mass flow\ngiven specific impulse.\n\n" IgnoreForIsp
export IgnoreForIsp
import ..Propellant_get_IgnoreForThrustCurve as var"##1368"
IgnoreForThrustCurve(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1368"(this))
    end
@doc "    IgnoreForThrustCurve(this::RemoteTypes.Propellant)\n\nIf this propellant should be ignored for thrust curve calculations.\n\n" IgnoreForThrustCurve
export IgnoreForThrustCurve
import ..Propellant_get_DrawStackGauge as var"##1369"
DrawStackGauge(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1369"(this))
    end
@doc "    DrawStackGauge(this::RemoteTypes.Propellant)\n\nIf this propellant has a stack gauge or not.\n\n" DrawStackGauge
export DrawStackGauge
import ..Propellant_get_IsDeprived as var"##1370"
IsDeprived(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1370"(this))
    end
@doc "    IsDeprived(this::RemoteTypes.Propellant)\n\nIf this propellant is deprived.\n\n" IsDeprived
export IsDeprived
import ..Propellant_get_Ratio as var"##1371"
Ratio(this::RemoteTypes.Propellant) = begin
        kerbal(this.conn, var"##1371"(this))
    end
@doc "    Ratio(this::RemoteTypes.Propellant)\n\nThe propellant ratio.\n\n" Ratio
export Ratio
import ..RCS_get_Part as var"##1372"
Part(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1372"(this))
    end
@doc "    Part(this::RemoteTypes.RCS)\n\nThe part object for this RCS.\n\n" Part
export Part
import ..RCS_get_Active as var"##1373"
Active(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1373"(this))
    end
@doc "    Active(this::RemoteTypes.RCS)\n\nWhether the RCS thrusters are active.\nAn RCS thruster is inactive if the RCS action group is disabled\n(), the RCS thruster itself is not enabled\n() or it is covered by a fairing ().\n\n" Active
export Active
import ..RCS_get_Enabled as var"##1374"
Enabled(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1374"(this))
    end
@doc "    Enabled(this::RemoteTypes.RCS)\n\nWhether the RCS thrusters are enabled.\n\n" Enabled
export Enabled
import ..RCS_set_Enabled as var"##1375"
Enabled!(this::RemoteTypes.RCS, value::Bool) = begin
        kerbal(this.conn, var"##1375"(this, value))
    end
@doc "    Enabled!(this::RemoteTypes.RCS, value::Bool)\n\nWhether the RCS thrusters are enabled.\n\n" Enabled!
export Enabled!
import ..RCS_get_PitchEnabled as var"##1376"
PitchEnabled(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1376"(this))
    end
@doc "    PitchEnabled(this::RemoteTypes.RCS)\n\nWhether the RCS thruster will fire when pitch control input is given.\n\n" PitchEnabled
export PitchEnabled
import ..RCS_set_PitchEnabled as var"##1377"
PitchEnabled!(this::RemoteTypes.RCS, value::Bool) = begin
        kerbal(this.conn, var"##1377"(this, value))
    end
@doc "    PitchEnabled!(this::RemoteTypes.RCS, value::Bool)\n\nWhether the RCS thruster will fire when pitch control input is given.\n\n" PitchEnabled!
export PitchEnabled!
import ..RCS_get_YawEnabled as var"##1378"
YawEnabled(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1378"(this))
    end
@doc "    YawEnabled(this::RemoteTypes.RCS)\n\nWhether the RCS thruster will fire when yaw control input is given.\n\n" YawEnabled
export YawEnabled
import ..RCS_set_YawEnabled as var"##1379"
YawEnabled!(this::RemoteTypes.RCS, value::Bool) = begin
        kerbal(this.conn, var"##1379"(this, value))
    end
@doc "    YawEnabled!(this::RemoteTypes.RCS, value::Bool)\n\nWhether the RCS thruster will fire when yaw control input is given.\n\n" YawEnabled!
export YawEnabled!
import ..RCS_get_RollEnabled as var"##1380"
RollEnabled(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1380"(this))
    end
@doc "    RollEnabled(this::RemoteTypes.RCS)\n\nWhether the RCS thruster will fire when roll control input is given.\n\n" RollEnabled
export RollEnabled
import ..RCS_set_RollEnabled as var"##1381"
RollEnabled!(this::RemoteTypes.RCS, value::Bool) = begin
        kerbal(this.conn, var"##1381"(this, value))
    end
@doc "    RollEnabled!(this::RemoteTypes.RCS, value::Bool)\n\nWhether the RCS thruster will fire when roll control input is given.\n\n" RollEnabled!
export RollEnabled!
import ..RCS_get_ForwardEnabled as var"##1382"
ForwardEnabled(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1382"(this))
    end
@doc "    ForwardEnabled(this::RemoteTypes.RCS)\n\nWhether the RCS thruster will fire when pitch control input is given.\n\n" ForwardEnabled
export ForwardEnabled
import ..RCS_set_ForwardEnabled as var"##1383"
ForwardEnabled!(this::RemoteTypes.RCS, value::Bool) = begin
        kerbal(this.conn, var"##1383"(this, value))
    end
@doc "    ForwardEnabled!(this::RemoteTypes.RCS, value::Bool)\n\nWhether the RCS thruster will fire when pitch control input is given.\n\n" ForwardEnabled!
export ForwardEnabled!
import ..RCS_get_UpEnabled as var"##1384"
UpEnabled(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1384"(this))
    end
@doc "    UpEnabled(this::RemoteTypes.RCS)\n\nWhether the RCS thruster will fire when yaw control input is given.\n\n" UpEnabled
export UpEnabled
import ..RCS_set_UpEnabled as var"##1385"
UpEnabled!(this::RemoteTypes.RCS, value::Bool) = begin
        kerbal(this.conn, var"##1385"(this, value))
    end
@doc "    UpEnabled!(this::RemoteTypes.RCS, value::Bool)\n\nWhether the RCS thruster will fire when yaw control input is given.\n\n" UpEnabled!
export UpEnabled!
import ..RCS_get_RightEnabled as var"##1386"
RightEnabled(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1386"(this))
    end
@doc "    RightEnabled(this::RemoteTypes.RCS)\n\nWhether the RCS thruster will fire when roll control input is given.\n\n" RightEnabled
export RightEnabled
import ..RCS_set_RightEnabled as var"##1387"
RightEnabled!(this::RemoteTypes.RCS, value::Bool) = begin
        kerbal(this.conn, var"##1387"(this, value))
    end
@doc "    RightEnabled!(this::RemoteTypes.RCS, value::Bool)\n\nWhether the RCS thruster will fire when roll control input is given.\n\n" RightEnabled!
export RightEnabled!
import ..RCS_get_AvailableTorque as var"##1388"
AvailableTorque(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1388"(this))
    end
@doc "    AvailableTorque(this::RemoteTypes.RCS)\n\nThe available torque, in Newton meters, that can be produced by this RCS,\nin the positive and negative pitch, roll and yaw axes of the vessel. These axes\ncorrespond to the coordinate axes of the .\nReturns zero if RCS is disable.\n\n" AvailableTorque
export AvailableTorque
import ..RCS_get_AvailableThrust as var"##1389"
AvailableThrust(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1389"(this))
    end
@doc "    AvailableThrust(this::RemoteTypes.RCS)\n\nThe amount of thrust, in Newtons, that would be produced by the thruster when activated.\nReturns zero if the thruster does not have any fuel.\nTakes the thrusters current  and atmospheric conditions\ninto account.\n\n" AvailableThrust
export AvailableThrust
import ..RCS_get_MaxThrust as var"##1390"
MaxThrust(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1390"(this))
    end
@doc "    MaxThrust(this::RemoteTypes.RCS)\n\nThe maximum amount of thrust that can be produced by the RCS thrusters when active,\nin Newtons.\nTakes the thrusters current  and atmospheric conditions\ninto account.\n\n" MaxThrust
export MaxThrust
import ..RCS_get_MaxVacuumThrust as var"##1391"
MaxVacuumThrust(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1391"(this))
    end
@doc "    MaxVacuumThrust(this::RemoteTypes.RCS)\n\nThe maximum amount of thrust that can be produced by the RCS thrusters when active\nin a vacuum, in Newtons.\n\n" MaxVacuumThrust
export MaxVacuumThrust
import ..RCS_get_ThrustLimit as var"##1392"
ThrustLimit(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1392"(this))
    end
@doc "    ThrustLimit(this::RemoteTypes.RCS)\n\nThe thrust limiter of the thruster. A value between 0 and 1.\n\n" ThrustLimit
export ThrustLimit
import ..RCS_set_ThrustLimit as var"##1393"
ThrustLimit!(this::RemoteTypes.RCS, value::Float32) = begin
        kerbal(this.conn, var"##1393"(this, value))
    end
@doc "    ThrustLimit!(this::RemoteTypes.RCS, value::Float32)\n\nThe thrust limiter of the thruster. A value between 0 and 1.\n\n" ThrustLimit!
export ThrustLimit!
import ..RCS_get_Thrusters as var"##1394"
Thrusters(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1394"(this))
    end
@doc "    Thrusters(this::RemoteTypes.RCS)\n\nA list of thrusters, one of each nozzel in the RCS part.\n\n" Thrusters
export Thrusters
import ..RCS_get_SpecificImpulse as var"##1395"
SpecificImpulse(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1395"(this))
    end
@doc "    SpecificImpulse(this::RemoteTypes.RCS)\n\nThe current specific impulse of the RCS, in seconds. Returns zero\nif the RCS is not active.\n\n" SpecificImpulse
export SpecificImpulse
import ..RCS_get_VacuumSpecificImpulse as var"##1396"
VacuumSpecificImpulse(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1396"(this))
    end
@doc "    VacuumSpecificImpulse(this::RemoteTypes.RCS)\n\nThe vacuum specific impulse of the RCS, in seconds.\n\n" VacuumSpecificImpulse
export VacuumSpecificImpulse
import ..RCS_get_KerbinSeaLevelSpecificImpulse as var"##1397"
KerbinSeaLevelSpecificImpulse(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1397"(this))
    end
@doc "    KerbinSeaLevelSpecificImpulse(this::RemoteTypes.RCS)\n\nThe specific impulse of the RCS at sea level on Kerbin, in seconds.\n\n" KerbinSeaLevelSpecificImpulse
export KerbinSeaLevelSpecificImpulse
import ..RCS_get_Propellants as var"##1398"
Propellants(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1398"(this))
    end
@doc "    Propellants(this::RemoteTypes.RCS)\n\nThe names of resources that the RCS consumes.\n\n" Propellants
export Propellants
import ..RCS_get_PropellantRatios as var"##1399"
PropellantRatios(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1399"(this))
    end
@doc "    PropellantRatios(this::RemoteTypes.RCS)\n\nThe ratios of resources that the RCS consumes. A dictionary mapping resource names\nto the ratios at which they are consumed by the RCS.\n\n" PropellantRatios
export PropellantRatios
import ..RCS_get_HasFuel as var"##1400"
HasFuel(this::RemoteTypes.RCS) = begin
        kerbal(this.conn, var"##1400"(this))
    end
@doc "    HasFuel(this::RemoteTypes.RCS)\n\nWhether the RCS has fuel available.\n\n" HasFuel
export HasFuel
import ..Radiator_get_Part as var"##1401"
Part(this::RemoteTypes.Radiator) = begin
        kerbal(this.conn, var"##1401"(this))
    end
@doc "    Part(this::RemoteTypes.Radiator)\n\nThe part object for this radiator.\n\n" Part
export Part
import ..Radiator_get_Deployable as var"##1402"
Deployable(this::RemoteTypes.Radiator) = begin
        kerbal(this.conn, var"##1402"(this))
    end
@doc "    Deployable(this::RemoteTypes.Radiator)\n\nWhether the radiator is deployable.\n\n" Deployable
export Deployable
import ..Radiator_get_Deployed as var"##1403"
Deployed(this::RemoteTypes.Radiator) = begin
        kerbal(this.conn, var"##1403"(this))
    end
@doc "    Deployed(this::RemoteTypes.Radiator)\n\nFor a deployable radiator, true if the radiator is extended.\nIf the radiator is not deployable, this is always true.\n\n" Deployed
export Deployed
import ..Radiator_set_Deployed as var"##1404"
Deployed!(this::RemoteTypes.Radiator, value::Bool) = begin
        kerbal(this.conn, var"##1404"(this, value))
    end
@doc "    Deployed!(this::RemoteTypes.Radiator, value::Bool)\n\nFor a deployable radiator, true if the radiator is extended.\nIf the radiator is not deployable, this is always true.\n\n" Deployed!
export Deployed!
import ..Radiator_get_State as var"##1405"
State(this::RemoteTypes.Radiator) = begin
        kerbal(this.conn, var"##1405"(this))
    end
@doc "    State(this::RemoteTypes.Radiator)\n\nThe current state of the radiator.\n\n# Remarks\n A fixed radiator is always . \n" State
export State
import ..ReactionWheel_get_Part as var"##1406"
Part(this::RemoteTypes.ReactionWheel) = begin
        kerbal(this.conn, var"##1406"(this))
    end
@doc "    Part(this::RemoteTypes.ReactionWheel)\n\nThe part object for this reaction wheel.\n\n" Part
export Part
import ..ReactionWheel_get_Active as var"##1407"
Active(this::RemoteTypes.ReactionWheel) = begin
        kerbal(this.conn, var"##1407"(this))
    end
@doc "    Active(this::RemoteTypes.ReactionWheel)\n\nWhether the reaction wheel is active.\n\n" Active
export Active
import ..ReactionWheel_set_Active as var"##1408"
Active!(this::RemoteTypes.ReactionWheel, value::Bool) = begin
        kerbal(this.conn, var"##1408"(this, value))
    end
@doc "    Active!(this::RemoteTypes.ReactionWheel, value::Bool)\n\nWhether the reaction wheel is active.\n\n" Active!
export Active!
import ..ReactionWheel_get_Broken as var"##1409"
Broken(this::RemoteTypes.ReactionWheel) = begin
        kerbal(this.conn, var"##1409"(this))
    end
@doc "    Broken(this::RemoteTypes.ReactionWheel)\n\nWhether the reaction wheel is broken.\n\n" Broken
export Broken
import ..ReactionWheel_get_AvailableTorque as var"##1410"
AvailableTorque(this::RemoteTypes.ReactionWheel) = begin
        kerbal(this.conn, var"##1410"(this))
    end
@doc "    AvailableTorque(this::RemoteTypes.ReactionWheel)\n\nThe available torque, in Newton meters, that can be produced by this reaction wheel,\nin the positive and negative pitch, roll and yaw axes of the vessel. These axes\ncorrespond to the coordinate axes of the .\nReturns zero if the reaction wheel is inactive or broken.\n\n" AvailableTorque
export AvailableTorque
import ..ReactionWheel_get_MaxTorque as var"##1411"
MaxTorque(this::RemoteTypes.ReactionWheel) = begin
        kerbal(this.conn, var"##1411"(this))
    end
@doc "    MaxTorque(this::RemoteTypes.ReactionWheel)\n\nThe maximum torque, in Newton meters, that can be produced by this reaction wheel,\nwhen it is active, in the positive and negative pitch, roll and yaw axes of the vessel.\nThese axes correspond to the coordinate axes of the .\n\n" MaxTorque
export MaxTorque
import ..ResourceConverter_Active as var"##1412"
Active(this::RemoteTypes.ResourceConverter, index::Int32) = begin
        kerbal(this.conn, var"##1412"(this, index))
    end
@doc "    Active(this::RemoteTypes.ResourceConverter, index::Int32)\n\nTrue if the specified converter is active.\n\n# Arguments\n- `index::Int32`: Index of the converter.\n" Active
export Active
import ..ResourceConverter_Name as var"##1413"
Name(this::RemoteTypes.ResourceConverter, index::Int32) = begin
        kerbal(this.conn, var"##1413"(this, index))
    end
@doc "    Name(this::RemoteTypes.ResourceConverter, index::Int32)\n\nThe name of the specified converter.\n\n# Arguments\n- `index::Int32`: Index of the converter.\n" Name
export Name
import ..ResourceConverter_Start as var"##1414"
Start(this::RemoteTypes.ResourceConverter, index::Int32) = begin
        kerbal(this.conn, var"##1414"(this, index))
    end
@doc "    Start(this::RemoteTypes.ResourceConverter, index::Int32)\n\nStart the specified converter.\n\n# Arguments\n- `index::Int32`: Index of the converter.\n" Start
export Start
import ..ResourceConverter_Stop as var"##1415"
Stop(this::RemoteTypes.ResourceConverter, index::Int32) = begin
        kerbal(this.conn, var"##1415"(this, index))
    end
@doc "    Stop(this::RemoteTypes.ResourceConverter, index::Int32)\n\nStop the specified converter.\n\n# Arguments\n- `index::Int32`: Index of the converter.\n" Stop
export Stop
import ..ResourceConverter_State as var"##1416"
State(this::RemoteTypes.ResourceConverter, index::Int32) = begin
        kerbal(this.conn, var"##1416"(this, index))
    end
@doc "    State(this::RemoteTypes.ResourceConverter, index::Int32)\n\nThe state of the specified converter.\n\n# Arguments\n- `index::Int32`: Index of the converter.\n" State
export State
import ..ResourceConverter_StatusInfo as var"##1417"
StatusInfo(this::RemoteTypes.ResourceConverter, index::Int32) = begin
        kerbal(this.conn, var"##1417"(this, index))
    end
@doc "    StatusInfo(this::RemoteTypes.ResourceConverter, index::Int32)\n\nStatus information for the specified converter.\nThis is the full status message shown in the in-game UI.\n\n# Arguments\n- `index::Int32`: Index of the converter.\n" StatusInfo
export StatusInfo
import ..ResourceConverter_Inputs as var"##1418"
Inputs(this::RemoteTypes.ResourceConverter, index::Int32) = begin
        kerbal(this.conn, var"##1418"(this, index))
    end
@doc "    Inputs(this::RemoteTypes.ResourceConverter, index::Int32)\n\nList of the names of resources consumed by the specified converter.\n\n# Arguments\n- `index::Int32`: Index of the converter.\n" Inputs
export Inputs
import ..ResourceConverter_Outputs as var"##1419"
Outputs(this::RemoteTypes.ResourceConverter, index::Int32) = begin
        kerbal(this.conn, var"##1419"(this, index))
    end
@doc "    Outputs(this::RemoteTypes.ResourceConverter, index::Int32)\n\nList of the names of resources produced by the specified converter.\n\n# Arguments\n- `index::Int32`: Index of the converter.\n" Outputs
export Outputs
import ..ResourceConverter_get_Part as var"##1420"
Part(this::RemoteTypes.ResourceConverter) = begin
        kerbal(this.conn, var"##1420"(this))
    end
@doc "    Part(this::RemoteTypes.ResourceConverter)\n\nThe part object for this converter.\n\n" Part
export Part
import ..ResourceConverter_get_Count as var"##1421"
Count(this::RemoteTypes.ResourceConverter) = begin
        kerbal(this.conn, var"##1421"(this))
    end
@doc "    Count(this::RemoteTypes.ResourceConverter)\n\nThe number of converters in the part.\n\n" Count
export Count
import ..ResourceConverter_get_ThermalEfficiency as var"##1422"
ThermalEfficiency(this::RemoteTypes.ResourceConverter) = begin
        kerbal(this.conn, var"##1422"(this))
    end
@doc "    ThermalEfficiency(this::RemoteTypes.ResourceConverter)\n\nThe thermal efficiency of the converter, as a percentage of its maximum.\n\n" ThermalEfficiency
export ThermalEfficiency
import ..ResourceConverter_get_CoreTemperature as var"##1423"
CoreTemperature(this::RemoteTypes.ResourceConverter) = begin
        kerbal(this.conn, var"##1423"(this))
    end
@doc "    CoreTemperature(this::RemoteTypes.ResourceConverter)\n\nThe core temperature of the converter, in Kelvin.\n\n" CoreTemperature
export CoreTemperature
import ..ResourceConverter_get_OptimumCoreTemperature as var"##1424"
OptimumCoreTemperature(this::RemoteTypes.ResourceConverter) = begin
        kerbal(this.conn, var"##1424"(this))
    end
@doc "    OptimumCoreTemperature(this::RemoteTypes.ResourceConverter)\n\nThe core temperature at which the converter will operate with peak efficiency, in Kelvin.\n\n" OptimumCoreTemperature
export OptimumCoreTemperature
import ..ResourceDrain_SetResourceDrain as var"##1425"
SetResourceDrain(this::RemoteTypes.ResourceDrain, R::RemoteTypes.Resource, b::Bool) = begin
        kerbal(this.conn, var"##1425"(this, R, b))
    end
@doc "    SetResourceDrain(this::RemoteTypes.ResourceDrain, R::RemoteTypes.Resource, b::Bool)\n\nEnable or Disable draining for the provided resource\n\n" SetResourceDrain
export SetResourceDrain
import ..ResourceDrain_CheckResourceDrain as var"##1426"
CheckResourceDrain(this::RemoteTypes.ResourceDrain, R::RemoteTypes.Resource) = begin
        kerbal(this.conn, var"##1426"(this, R))
    end
@doc "    CheckResourceDrain(this::RemoteTypes.ResourceDrain, R::RemoteTypes.Resource)\n\nChecks whether the provided resource is selected for draining\n\n" CheckResourceDrain
export CheckResourceDrain
import ..ResourceDrain_Start as var"##1427"
Start(this::RemoteTypes.ResourceDrain) = begin
        kerbal(this.conn, var"##1427"(this))
    end
@doc "    Start(this::RemoteTypes.ResourceDrain)\n\nActivates resource drain for all enabled parts\n\n" Start
export Start
import ..ResourceDrain_Stop as var"##1428"
Stop(this::RemoteTypes.ResourceDrain) = begin
        kerbal(this.conn, var"##1428"(this))
    end
@doc "    Stop(this::RemoteTypes.ResourceDrain)\n\nTurns off resource drain\n\n" Stop
export Stop
import ..ResourceDrain_get_Part as var"##1429"
Part(this::RemoteTypes.ResourceDrain) = begin
        kerbal(this.conn, var"##1429"(this))
    end
@doc "    Part(this::RemoteTypes.ResourceDrain)\n\nThe part object for this resource drain\n\n" Part
export Part
import ..ResourceDrain_get_AvailableResources as var"##1430"
AvailableResources(this::RemoteTypes.ResourceDrain) = begin
        kerbal(this.conn, var"##1430"(this))
    end
@doc "    AvailableResources(this::RemoteTypes.ResourceDrain)\n\nReturns list of available resources\n\n" AvailableResources
export AvailableResources
import ..ResourceDrain_get_DrainMode as var"##1431"
DrainMode(this::RemoteTypes.ResourceDrain) = begin
        kerbal(this.conn, var"##1431"(this))
    end
@doc "    DrainMode(this::RemoteTypes.ResourceDrain)\n\nSets drain mode to part or vessel-wide\n\n" DrainMode
export DrainMode
import ..ResourceDrain_set_DrainMode as var"##1432"
DrainMode!(this::RemoteTypes.ResourceDrain, value::EDrainModes) = begin
        kerbal(this.conn, var"##1432"(this, value))
    end
@doc "    DrainMode!(this::RemoteTypes.ResourceDrain, value::EDrainModes)\n\nSets drain mode to part or vessel-wide\n\n" DrainMode!
export DrainMode!
import ..ResourceDrain_get_MaxDrainRate as var"##1433"
MaxDrainRate(this::RemoteTypes.ResourceDrain) = begin
        kerbal(this.conn, var"##1433"(this))
    end
@doc "    MaxDrainRate(this::RemoteTypes.ResourceDrain)\n\nMaximum possible rate of draining.\n\n" MaxDrainRate
export MaxDrainRate
import ..ResourceDrain_get_MinDrainRate as var"##1434"
MinDrainRate(this::RemoteTypes.ResourceDrain) = begin
        kerbal(this.conn, var"##1434"(this))
    end
@doc "    MinDrainRate(this::RemoteTypes.ResourceDrain)\n\nMinimum possible rate of draining\n\n" MinDrainRate
export MinDrainRate
import ..ResourceDrain_get_DrainRate as var"##1435"
DrainRate(this::RemoteTypes.ResourceDrain) = begin
        kerbal(this.conn, var"##1435"(this))
    end
@doc "    DrainRate(this::RemoteTypes.ResourceDrain)\n\n Current rate of draining\n\n" DrainRate
export DrainRate
import ..ResourceDrain_set_DrainRate as var"##1436"
DrainRate!(this::RemoteTypes.ResourceDrain, value::Float32) = begin
        kerbal(this.conn, var"##1436"(this, value))
    end
@doc "    DrainRate!(this::RemoteTypes.ResourceDrain, value::Float32)\n\n Current rate of draining\n\n" DrainRate!
export DrainRate!
import ..ResourceHarvester_get_Part as var"##1437"
Part(this::RemoteTypes.ResourceHarvester) = begin
        kerbal(this.conn, var"##1437"(this))
    end
@doc "    Part(this::RemoteTypes.ResourceHarvester)\n\nThe part object for this harvester.\n\n" Part
export Part
import ..ResourceHarvester_get_State as var"##1438"
State(this::RemoteTypes.ResourceHarvester) = begin
        kerbal(this.conn, var"##1438"(this))
    end
@doc "    State(this::RemoteTypes.ResourceHarvester)\n\nThe state of the harvester.\n\n" State
export State
import ..ResourceHarvester_get_Deployed as var"##1439"
Deployed(this::RemoteTypes.ResourceHarvester) = begin
        kerbal(this.conn, var"##1439"(this))
    end
@doc "    Deployed(this::RemoteTypes.ResourceHarvester)\n\nWhether the harvester is deployed.\n\n" Deployed
export Deployed
import ..ResourceHarvester_set_Deployed as var"##1440"
Deployed!(this::RemoteTypes.ResourceHarvester, value::Bool) = begin
        kerbal(this.conn, var"##1440"(this, value))
    end
@doc "    Deployed!(this::RemoteTypes.ResourceHarvester, value::Bool)\n\nWhether the harvester is deployed.\n\n" Deployed!
export Deployed!
import ..ResourceHarvester_get_Active as var"##1441"
Active(this::RemoteTypes.ResourceHarvester) = begin
        kerbal(this.conn, var"##1441"(this))
    end
@doc "    Active(this::RemoteTypes.ResourceHarvester)\n\nWhether the harvester is actively drilling.\n\n" Active
export Active
import ..ResourceHarvester_set_Active as var"##1442"
Active!(this::RemoteTypes.ResourceHarvester, value::Bool) = begin
        kerbal(this.conn, var"##1442"(this, value))
    end
@doc "    Active!(this::RemoteTypes.ResourceHarvester, value::Bool)\n\nWhether the harvester is actively drilling.\n\n" Active!
export Active!
import ..ResourceHarvester_get_ExtractionRate as var"##1443"
ExtractionRate(this::RemoteTypes.ResourceHarvester) = begin
        kerbal(this.conn, var"##1443"(this))
    end
@doc "    ExtractionRate(this::RemoteTypes.ResourceHarvester)\n\nThe rate at which the drill is extracting ore, in units per second.\n\n" ExtractionRate
export ExtractionRate
import ..ResourceHarvester_get_ThermalEfficiency as var"##1444"
ThermalEfficiency(this::RemoteTypes.ResourceHarvester) = begin
        kerbal(this.conn, var"##1444"(this))
    end
@doc "    ThermalEfficiency(this::RemoteTypes.ResourceHarvester)\n\nThe thermal efficiency of the drill, as a percentage of its maximum.\n\n" ThermalEfficiency
export ThermalEfficiency
import ..ResourceHarvester_get_CoreTemperature as var"##1445"
CoreTemperature(this::RemoteTypes.ResourceHarvester) = begin
        kerbal(this.conn, var"##1445"(this))
    end
@doc "    CoreTemperature(this::RemoteTypes.ResourceHarvester)\n\nThe core temperature of the drill, in Kelvin.\n\n" CoreTemperature
export CoreTemperature
import ..ResourceHarvester_get_OptimumCoreTemperature as var"##1446"
OptimumCoreTemperature(this::RemoteTypes.ResourceHarvester) = begin
        kerbal(this.conn, var"##1446"(this))
    end
@doc "    OptimumCoreTemperature(this::RemoteTypes.ResourceHarvester)\n\nThe core temperature at which the drill will operate with peak efficiency, in Kelvin.\n\n" OptimumCoreTemperature
export OptimumCoreTemperature
import ..RoboticHinge_Home as var"##1447"
Home(this::RemoteTypes.RoboticHinge) = begin
        kerbal(this.conn, var"##1447"(this))
    end
@doc "    Home(this::RemoteTypes.RoboticHinge)\n\nReturns Hinge to Build Angle Position\n\n" Home
export Home
import ..RoboticHinge_get_Part as var"##1448"
Part(this::RemoteTypes.RoboticHinge) = begin
        kerbal(this.conn, var"##1448"(this))
    end
@doc "    Part(this::RemoteTypes.RoboticHinge)\n\nThe part object for this robotic hinge.\n\n" Part
export Part
import ..RoboticHinge_get_TargetAngle as var"##1449"
TargetAngle(this::RemoteTypes.RoboticHinge) = begin
        kerbal(this.conn, var"##1449"(this))
    end
@doc "    TargetAngle(this::RemoteTypes.RoboticHinge)\n\nTarget Angle for Robotic Hinge\n \n" TargetAngle
export TargetAngle
import ..RoboticHinge_set_TargetAngle as var"##1450"
TargetAngle!(this::RemoteTypes.RoboticHinge, value::Float32) = begin
        kerbal(this.conn, var"##1450"(this, value))
    end
@doc "    TargetAngle!(this::RemoteTypes.RoboticHinge, value::Float32)\n\nTarget Angle for Robotic Hinge\n \n" TargetAngle!
export TargetAngle!
import ..RoboticHinge_get_CurrentAngle as var"##1451"
CurrentAngle(this::RemoteTypes.RoboticHinge) = begin
        kerbal(this.conn, var"##1451"(this))
    end
@doc "    CurrentAngle(this::RemoteTypes.RoboticHinge)\n\nCurrent Angle for Robotic Hinge\n \n" CurrentAngle
export CurrentAngle
import ..RoboticHinge_get_Rate as var"##1452"
Rate(this::RemoteTypes.RoboticHinge) = begin
        kerbal(this.conn, var"##1452"(this))
    end
@doc "    Rate(this::RemoteTypes.RoboticHinge)\n\nTarget Movement Rate in Degrees/s\n\n" Rate
export Rate
import ..RoboticHinge_set_Rate as var"##1453"
Rate!(this::RemoteTypes.RoboticHinge, value::Float32) = begin
        kerbal(this.conn, var"##1453"(this, value))
    end
@doc "    Rate!(this::RemoteTypes.RoboticHinge, value::Float32)\n\nTarget Movement Rate in Degrees/s\n\n" Rate!
export Rate!
import ..RoboticHinge_get_Damping as var"##1454"
Damping(this::RemoteTypes.RoboticHinge) = begin
        kerbal(this.conn, var"##1454"(this))
    end
@doc "    Damping(this::RemoteTypes.RoboticHinge)\n\nDamping Percentage>\n \n" Damping
export Damping
import ..RoboticHinge_set_Damping as var"##1455"
Damping!(this::RemoteTypes.RoboticHinge, value::Float32) = begin
        kerbal(this.conn, var"##1455"(this, value))
    end
@doc "    Damping!(this::RemoteTypes.RoboticHinge, value::Float32)\n\nDamping Percentage>\n \n" Damping!
export Damping!
import ..RoboticHinge_get_HingeLocked as var"##1456"
HingeLocked(this::RemoteTypes.RoboticHinge) = begin
        kerbal(this.conn, var"##1456"(this))
    end
@doc "    HingeLocked(this::RemoteTypes.RoboticHinge)\n\nLock Movement\n\n" HingeLocked
export HingeLocked
import ..RoboticHinge_set_HingeLocked as var"##1457"
HingeLocked!(this::RemoteTypes.RoboticHinge, value::Bool) = begin
        kerbal(this.conn, var"##1457"(this, value))
    end
@doc "    HingeLocked!(this::RemoteTypes.RoboticHinge, value::Bool)\n\nLock Movement\n\n" HingeLocked!
export HingeLocked!
import ..RoboticHinge_get_MotorEngaged as var"##1458"
MotorEngaged(this::RemoteTypes.RoboticHinge) = begin
        kerbal(this.conn, var"##1458"(this))
    end
@doc "    MotorEngaged(this::RemoteTypes.RoboticHinge)\n\nEngage/Disengage Motor\n\n" MotorEngaged
export MotorEngaged
import ..RoboticHinge_set_MotorEngaged as var"##1459"
MotorEngaged!(this::RemoteTypes.RoboticHinge, value::Bool) = begin
        kerbal(this.conn, var"##1459"(this, value))
    end
@doc "    MotorEngaged!(this::RemoteTypes.RoboticHinge, value::Bool)\n\nEngage/Disengage Motor\n\n" MotorEngaged!
export MotorEngaged!
import ..RoboticPiston_Home as var"##1460"
Home(this::RemoteTypes.RoboticPiston) = begin
        kerbal(this.conn, var"##1460"(this))
    end
@doc "    Home(this::RemoteTypes.RoboticPiston)\n\nReturns Piston to VAB Position\n\n" Home
export Home
import ..RoboticPiston_get_Part as var"##1461"
Part(this::RemoteTypes.RoboticPiston) = begin
        kerbal(this.conn, var"##1461"(this))
    end
@doc "    Part(this::RemoteTypes.RoboticPiston)\n\nThe part object for this robotic piston.\n\n" Part
export Part
import ..RoboticPiston_get_TargetPosition as var"##1462"
TargetPosition(this::RemoteTypes.RoboticPiston) = begin
        kerbal(this.conn, var"##1462"(this))
    end
@doc "    TargetPosition(this::RemoteTypes.RoboticPiston)\n\nTarget Extension for robotic piston.\n \n" TargetPosition
export TargetPosition
import ..RoboticPiston_set_TargetPosition as var"##1463"
TargetPosition!(this::RemoteTypes.RoboticPiston, value::Float32) = begin
        kerbal(this.conn, var"##1463"(this, value))
    end
@doc "    TargetPosition!(this::RemoteTypes.RoboticPiston, value::Float32)\n\nTarget Extension for robotic piston.\n \n" TargetPosition!
export TargetPosition!
import ..RoboticPiston_get_CurrentPosition as var"##1464"
CurrentPosition(this::RemoteTypes.RoboticPiston) = begin
        kerbal(this.conn, var"##1464"(this))
    end
@doc "    CurrentPosition(this::RemoteTypes.RoboticPiston)\n\nCurrent Extension of piston\n \n" CurrentPosition
export CurrentPosition
import ..RoboticPiston_get_Rate as var"##1465"
Rate(this::RemoteTypes.RoboticPiston) = begin
        kerbal(this.conn, var"##1465"(this))
    end
@doc "    Rate(this::RemoteTypes.RoboticPiston)\n\nTarget Movement Rate in Degrees/s\n\n" Rate
export Rate
import ..RoboticPiston_set_Rate as var"##1466"
Rate!(this::RemoteTypes.RoboticPiston, value::Float32) = begin
        kerbal(this.conn, var"##1466"(this, value))
    end
@doc "    Rate!(this::RemoteTypes.RoboticPiston, value::Float32)\n\nTarget Movement Rate in Degrees/s\n\n" Rate!
export Rate!
import ..RoboticPiston_get_Damping as var"##1467"
Damping(this::RemoteTypes.RoboticPiston) = begin
        kerbal(this.conn, var"##1467"(this))
    end
@doc "    Damping(this::RemoteTypes.RoboticPiston)\n\nDamping Percentage>\n \n" Damping
export Damping
import ..RoboticPiston_set_Damping as var"##1468"
Damping!(this::RemoteTypes.RoboticPiston, value::Float32) = begin
        kerbal(this.conn, var"##1468"(this, value))
    end
@doc "    Damping!(this::RemoteTypes.RoboticPiston, value::Float32)\n\nDamping Percentage>\n \n" Damping!
export Damping!
import ..RoboticPiston_get_PistonLocked as var"##1469"
PistonLocked(this::RemoteTypes.RoboticPiston) = begin
        kerbal(this.conn, var"##1469"(this))
    end
@doc "    PistonLocked(this::RemoteTypes.RoboticPiston)\n\nLock Movement\n\n" PistonLocked
export PistonLocked
import ..RoboticPiston_set_PistonLocked as var"##1470"
PistonLocked!(this::RemoteTypes.RoboticPiston, value::Bool) = begin
        kerbal(this.conn, var"##1470"(this, value))
    end
@doc "    PistonLocked!(this::RemoteTypes.RoboticPiston, value::Bool)\n\nLock Movement\n\n" PistonLocked!
export PistonLocked!
import ..RoboticPiston_get_MotorEngaged as var"##1471"
MotorEngaged(this::RemoteTypes.RoboticPiston) = begin
        kerbal(this.conn, var"##1471"(this))
    end
@doc "    MotorEngaged(this::RemoteTypes.RoboticPiston)\n\nEngage/Disengage Motor\n\n" MotorEngaged
export MotorEngaged
import ..RoboticPiston_set_MotorEngaged as var"##1472"
MotorEngaged!(this::RemoteTypes.RoboticPiston, value::Bool) = begin
        kerbal(this.conn, var"##1472"(this, value))
    end
@doc "    MotorEngaged!(this::RemoteTypes.RoboticPiston, value::Bool)\n\nEngage/Disengage Motor\n\n" MotorEngaged!
export MotorEngaged!
import ..RoboticRotation_Home as var"##1473"
Home(this::RemoteTypes.RoboticRotation) = begin
        kerbal(this.conn, var"##1473"(this))
    end
@doc "    Home(this::RemoteTypes.RoboticRotation)\n\nReturns Servo to Build Angle Position\n\n" Home
export Home
import ..RoboticRotation_get_Part as var"##1474"
Part(this::RemoteTypes.RoboticRotation) = begin
        kerbal(this.conn, var"##1474"(this))
    end
@doc "    Part(this::RemoteTypes.RoboticRotation)\n\nThe part object for this robotic servo.\n\n" Part
export Part
import ..RoboticRotation_get_TargetPosition as var"##1475"
TargetPosition(this::RemoteTypes.RoboticRotation) = begin
        kerbal(this.conn, var"##1475"(this))
    end
@doc "    TargetPosition(this::RemoteTypes.RoboticRotation)\n\nTarget Angle for Robotic Servo\n \n" TargetPosition
export TargetPosition
import ..RoboticRotation_set_TargetPosition as var"##1476"
TargetPosition!(this::RemoteTypes.RoboticRotation, value::Float32) = begin
        kerbal(this.conn, var"##1476"(this, value))
    end
@doc "    TargetPosition!(this::RemoteTypes.RoboticRotation, value::Float32)\n\nTarget Angle for Robotic Servo\n \n" TargetPosition!
export TargetPosition!
import ..RoboticRotation_get_CurrentPosition as var"##1477"
CurrentPosition(this::RemoteTypes.RoboticRotation) = begin
        kerbal(this.conn, var"##1477"(this))
    end
@doc "    CurrentPosition(this::RemoteTypes.RoboticRotation)\n\nCurrent Angle for Robotic Hinge\n \n" CurrentPosition
export CurrentPosition
import ..RoboticRotation_get_Rate as var"##1478"
Rate(this::RemoteTypes.RoboticRotation) = begin
        kerbal(this.conn, var"##1478"(this))
    end
@doc "    Rate(this::RemoteTypes.RoboticRotation)\n\nTarget Movement Rate in Degrees/s\n\n" Rate
export Rate
import ..RoboticRotation_set_Rate as var"##1479"
Rate!(this::RemoteTypes.RoboticRotation, value::Float32) = begin
        kerbal(this.conn, var"##1479"(this, value))
    end
@doc "    Rate!(this::RemoteTypes.RoboticRotation, value::Float32)\n\nTarget Movement Rate in Degrees/s\n\n" Rate!
export Rate!
import ..RoboticRotation_get_Damping as var"##1480"
Damping(this::RemoteTypes.RoboticRotation) = begin
        kerbal(this.conn, var"##1480"(this))
    end
@doc "    Damping(this::RemoteTypes.RoboticRotation)\n\nDamping Percentage>\n \n" Damping
export Damping
import ..RoboticRotation_set_Damping as var"##1481"
Damping!(this::RemoteTypes.RoboticRotation, value::Float32) = begin
        kerbal(this.conn, var"##1481"(this, value))
    end
@doc "    Damping!(this::RemoteTypes.RoboticRotation, value::Float32)\n\nDamping Percentage>\n \n" Damping!
export Damping!
import ..RoboticRotation_get_RotationLocked as var"##1482"
RotationLocked(this::RemoteTypes.RoboticRotation) = begin
        kerbal(this.conn, var"##1482"(this))
    end
@doc "    RotationLocked(this::RemoteTypes.RoboticRotation)\n\nLock Movement\n\n" RotationLocked
export RotationLocked
import ..RoboticRotation_set_RotationLocked as var"##1483"
RotationLocked!(this::RemoteTypes.RoboticRotation, value::Bool) = begin
        kerbal(this.conn, var"##1483"(this, value))
    end
@doc "    RotationLocked!(this::RemoteTypes.RoboticRotation, value::Bool)\n\nLock Movement\n\n" RotationLocked!
export RotationLocked!
import ..RoboticRotation_get_MotorEngaged as var"##1484"
MotorEngaged(this::RemoteTypes.RoboticRotation) = begin
        kerbal(this.conn, var"##1484"(this))
    end
@doc "    MotorEngaged(this::RemoteTypes.RoboticRotation)\n\nEngage/Disengage Motor\n\n" MotorEngaged
export MotorEngaged
import ..RoboticRotation_set_MotorEngaged as var"##1485"
MotorEngaged!(this::RemoteTypes.RoboticRotation, value::Bool) = begin
        kerbal(this.conn, var"##1485"(this, value))
    end
@doc "    MotorEngaged!(this::RemoteTypes.RoboticRotation, value::Bool)\n\nEngage/Disengage Motor\n\n" MotorEngaged!
export MotorEngaged!
import ..RoboticRotor_get_Part as var"##1486"
Part(this::RemoteTypes.RoboticRotor) = begin
        kerbal(this.conn, var"##1486"(this))
    end
@doc "    Part(this::RemoteTypes.RoboticRotor)\n\nThe part object for this robotic rotor.\n\n" Part
export Part
import ..RoboticRotor_get_TargetRPM as var"##1487"
TargetRPM(this::RemoteTypes.RoboticRotor) = begin
        kerbal(this.conn, var"##1487"(this))
    end
@doc "    TargetRPM(this::RemoteTypes.RoboticRotor)\n\nTarget RPM for Robotic Rotor\n \n" TargetRPM
export TargetRPM
import ..RoboticRotor_set_TargetRPM as var"##1488"
TargetRPM!(this::RemoteTypes.RoboticRotor, value::Float32) = begin
        kerbal(this.conn, var"##1488"(this, value))
    end
@doc "    TargetRPM!(this::RemoteTypes.RoboticRotor, value::Float32)\n\nTarget RPM for Robotic Rotor\n \n" TargetRPM!
export TargetRPM!
import ..RoboticRotor_get_CurrentRPM as var"##1489"
CurrentRPM(this::RemoteTypes.RoboticRotor) = begin
        kerbal(this.conn, var"##1489"(this))
    end
@doc "    CurrentRPM(this::RemoteTypes.RoboticRotor)\n\nCurrent RPM for Robotic Rotor\n \n" CurrentRPM
export CurrentRPM
import ..RoboticRotor_get_Inverted as var"##1490"
Inverted(this::RemoteTypes.RoboticRotor) = begin
        kerbal(this.conn, var"##1490"(this))
    end
@doc "    Inverted(this::RemoteTypes.RoboticRotor)\n\nInvert Rotor Direction?\n \n" Inverted
export Inverted
import ..RoboticRotor_set_Inverted as var"##1491"
Inverted!(this::RemoteTypes.RoboticRotor, value::Bool) = begin
        kerbal(this.conn, var"##1491"(this, value))
    end
@doc "    Inverted!(this::RemoteTypes.RoboticRotor, value::Bool)\n\nInvert Rotor Direction?\n \n" Inverted!
export Inverted!
import ..RoboticRotor_get_RotationLocked as var"##1492"
RotationLocked(this::RemoteTypes.RoboticRotor) = begin
        kerbal(this.conn, var"##1492"(this))
    end
@doc "    RotationLocked(this::RemoteTypes.RoboticRotor)\n\nLock Movement\n\n" RotationLocked
export RotationLocked
import ..RoboticRotor_set_RotationLocked as var"##1493"
RotationLocked!(this::RemoteTypes.RoboticRotor, value::Bool) = begin
        kerbal(this.conn, var"##1493"(this, value))
    end
@doc "    RotationLocked!(this::RemoteTypes.RoboticRotor, value::Bool)\n\nLock Movement\n\n" RotationLocked!
export RotationLocked!
import ..RoboticRotor_get_MotorEngaged as var"##1494"
MotorEngaged(this::RemoteTypes.RoboticRotor) = begin
        kerbal(this.conn, var"##1494"(this))
    end
@doc "    MotorEngaged(this::RemoteTypes.RoboticRotor)\n\nEngage/Disengage Motor\n\n" MotorEngaged
export MotorEngaged
import ..RoboticRotor_set_MotorEngaged as var"##1495"
MotorEngaged!(this::RemoteTypes.RoboticRotor, value::Bool) = begin
        kerbal(this.conn, var"##1495"(this, value))
    end
@doc "    MotorEngaged!(this::RemoteTypes.RoboticRotor, value::Bool)\n\nEngage/Disengage Motor\n\n" MotorEngaged!
export MotorEngaged!
import ..RoboticRotor_get_TorqueLimit as var"##1496"
TorqueLimit(this::RemoteTypes.RoboticRotor) = begin
        kerbal(this.conn, var"##1496"(this))
    end
@doc "    TorqueLimit(this::RemoteTypes.RoboticRotor)\n\nTorque Limit Percentage\n \n" TorqueLimit
export TorqueLimit
import ..RoboticRotor_set_TorqueLimit as var"##1497"
TorqueLimit!(this::RemoteTypes.RoboticRotor, value::Float32) = begin
        kerbal(this.conn, var"##1497"(this, value))
    end
@doc "    TorqueLimit!(this::RemoteTypes.RoboticRotor, value::Float32)\n\nTorque Limit Percentage\n \n" TorqueLimit!
export TorqueLimit!
import ..ScienceData_get_DataAmount as var"##1498"
DataAmount(this::RemoteTypes.ScienceData) = begin
        kerbal(this.conn, var"##1498"(this))
    end
@doc "    DataAmount(this::RemoteTypes.ScienceData)\n\nData amount.\n\n" DataAmount
export DataAmount
import ..ScienceData_get_ScienceValue as var"##1499"
ScienceValue(this::RemoteTypes.ScienceData) = begin
        kerbal(this.conn, var"##1499"(this))
    end
@doc "    ScienceValue(this::RemoteTypes.ScienceData)\n\nScience value.\n\n" ScienceValue
export ScienceValue
import ..ScienceData_get_TransmitValue as var"##1500"
TransmitValue(this::RemoteTypes.ScienceData) = begin
        kerbal(this.conn, var"##1500"(this))
    end
@doc "    TransmitValue(this::RemoteTypes.ScienceData)\n\nTransmit value.\n\n" TransmitValue
export TransmitValue
import ..ScienceSubject_get_Science as var"##1501"
Science(this::RemoteTypes.ScienceSubject) = begin
        kerbal(this.conn, var"##1501"(this))
    end
@doc "    Science(this::RemoteTypes.ScienceSubject)\n\nAmount of science already earned from this subject, not updated until after\ntransmission/recovery.\n\n" Science
export Science
import ..ScienceSubject_get_ScienceCap as var"##1502"
ScienceCap(this::RemoteTypes.ScienceSubject) = begin
        kerbal(this.conn, var"##1502"(this))
    end
@doc "    ScienceCap(this::RemoteTypes.ScienceSubject)\n\nTotal science allowable for this subject.\n\n" ScienceCap
export ScienceCap
import ..ScienceSubject_get_IsComplete as var"##1503"
IsComplete(this::RemoteTypes.ScienceSubject) = begin
        kerbal(this.conn, var"##1503"(this))
    end
@doc "    IsComplete(this::RemoteTypes.ScienceSubject)\n\nWhether the experiment has been completed.\n\n" IsComplete
export IsComplete
import ..ScienceSubject_get_DataScale as var"##1504"
DataScale(this::RemoteTypes.ScienceSubject) = begin
        kerbal(this.conn, var"##1504"(this))
    end
@doc "    DataScale(this::RemoteTypes.ScienceSubject)\n\nMultiply science value by this to determine data amount in mits.\n\n" DataScale
export DataScale
import ..ScienceSubject_get_ScientificValue as var"##1505"
ScientificValue(this::RemoteTypes.ScienceSubject) = begin
        kerbal(this.conn, var"##1505"(this))
    end
@doc "    ScientificValue(this::RemoteTypes.ScienceSubject)\n\nDiminishing value multiplier for decreasing the science value returned from repeated\nexperiments.\n\n" ScientificValue
export ScientificValue
import ..ScienceSubject_get_SubjectValue as var"##1506"
SubjectValue(this::RemoteTypes.ScienceSubject) = begin
        kerbal(this.conn, var"##1506"(this))
    end
@doc "    SubjectValue(this::RemoteTypes.ScienceSubject)\n\nMultiplier for specific Celestial Body/Experiment Situation combination.\n\n" SubjectValue
export SubjectValue
import ..ScienceSubject_get_Title as var"##1507"
Title(this::RemoteTypes.ScienceSubject) = begin
        kerbal(this.conn, var"##1507"(this))
    end
@doc "    Title(this::RemoteTypes.ScienceSubject)\n\nTitle of science subject, displayed in science archives\n\n" Title
export Title
import ..Sensor_get_Part as var"##1508"
Part(this::RemoteTypes.Sensor) = begin
        kerbal(this.conn, var"##1508"(this))
    end
@doc "    Part(this::RemoteTypes.Sensor)\n\nThe part object for this sensor.\n\n" Part
export Part
import ..Sensor_get_Active as var"##1509"
Active(this::RemoteTypes.Sensor) = begin
        kerbal(this.conn, var"##1509"(this))
    end
@doc "    Active(this::RemoteTypes.Sensor)\n\nWhether the sensor is active.\n\n" Active
export Active
import ..Sensor_set_Active as var"##1510"
Active!(this::RemoteTypes.Sensor, value::Bool) = begin
        kerbal(this.conn, var"##1510"(this, value))
    end
@doc "    Active!(this::RemoteTypes.Sensor, value::Bool)\n\nWhether the sensor is active.\n\n" Active!
export Active!
import ..Sensor_get_Value as var"##1511"
Value(this::RemoteTypes.Sensor) = begin
        kerbal(this.conn, var"##1511"(this))
    end
@doc "    Value(this::RemoteTypes.Sensor)\n\nThe current value of the sensor.\n\n" Value
export Value
import ..SolarPanel_get_Part as var"##1512"
Part(this::RemoteTypes.SolarPanel) = begin
        kerbal(this.conn, var"##1512"(this))
    end
@doc "    Part(this::RemoteTypes.SolarPanel)\n\nThe part object for this solar panel.\n\n" Part
export Part
import ..SolarPanel_get_Deployable as var"##1513"
Deployable(this::RemoteTypes.SolarPanel) = begin
        kerbal(this.conn, var"##1513"(this))
    end
@doc "    Deployable(this::RemoteTypes.SolarPanel)\n\nWhether the solar panel is deployable.\n\n" Deployable
export Deployable
import ..SolarPanel_get_Deployed as var"##1514"
Deployed(this::RemoteTypes.SolarPanel) = begin
        kerbal(this.conn, var"##1514"(this))
    end
@doc "    Deployed(this::RemoteTypes.SolarPanel)\n\nWhether the solar panel is extended.\n\n" Deployed
export Deployed
import ..SolarPanel_set_Deployed as var"##1515"
Deployed!(this::RemoteTypes.SolarPanel, value::Bool) = begin
        kerbal(this.conn, var"##1515"(this, value))
    end
@doc "    Deployed!(this::RemoteTypes.SolarPanel, value::Bool)\n\nWhether the solar panel is extended.\n\n" Deployed!
export Deployed!
import ..SolarPanel_get_State as var"##1516"
State(this::RemoteTypes.SolarPanel) = begin
        kerbal(this.conn, var"##1516"(this))
    end
@doc "    State(this::RemoteTypes.SolarPanel)\n\nThe current state of the solar panel.\n\n" State
export State
import ..SolarPanel_get_EnergyFlow as var"##1517"
EnergyFlow(this::RemoteTypes.SolarPanel) = begin
        kerbal(this.conn, var"##1517"(this))
    end
@doc "    EnergyFlow(this::RemoteTypes.SolarPanel)\n\nThe current amount of energy being generated by the solar panel, in\nunits of charge per second.\n\n" EnergyFlow
export EnergyFlow
import ..SolarPanel_get_SunExposure as var"##1518"
SunExposure(this::RemoteTypes.SolarPanel) = begin
        kerbal(this.conn, var"##1518"(this))
    end
@doc "    SunExposure(this::RemoteTypes.SolarPanel)\n\nThe current amount of sunlight that is incident on the solar panel,\nas a percentage. A value between 0 and 1.\n\n" SunExposure
export SunExposure
import ..Thruster_ThrustPosition as var"##1519"
ThrustPosition(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1519"(this, referenceFrame))
    end
@doc "    ThrustPosition(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position at which the thruster generates thrust, in the given reference frame.\nFor gimballed engines, this takes into account the current rotation of the gimbal.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n" ThrustPosition
export ThrustPosition
import ..Thruster_ThrustDirection as var"##1520"
ThrustDirection(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1520"(this, referenceFrame))
    end
@doc "    ThrustDirection(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe direction of the force generated by the thruster, in the given reference frame.\nThis is opposite to the direction in which the thruster expels propellant.\nFor gimballed engines, this takes into account the current rotation of the gimbal.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned direction is in.\n# Returns\nThe direction as a unit vector.\n" ThrustDirection
export ThrustDirection
import ..Thruster_InitialThrustPosition as var"##1521"
InitialThrustPosition(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1521"(this, referenceFrame))
    end
@doc "    InitialThrustPosition(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe position at which the thruster generates thrust, when the engine is in its\ninitial position (no gimballing), in the given reference frame.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n# Remarks\n This position can move when the gimbal rotates. This is because the thrust position and gimbal position are not necessarily the same. \n" InitialThrustPosition
export InitialThrustPosition
import ..Thruster_InitialThrustDirection as var"##1522"
InitialThrustDirection(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1522"(this, referenceFrame))
    end
@doc "    InitialThrustDirection(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame)\n\nThe direction of the force generated by the thruster, when the engine is in its\ninitial position (no gimballing), in the given reference frame.\nThis is opposite to the direction in which the thruster expels propellant.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned direction is in.\n# Returns\nThe direction as a unit vector.\n" InitialThrustDirection
export InitialThrustDirection
import ..Thruster_GimbalPosition as var"##1523"
GimbalPosition(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##1523"(this, referenceFrame))
    end
@doc "    GimbalPosition(this::RemoteTypes.Thruster, referenceFrame::RemoteTypes.ReferenceFrame)\n\nPosition around which the gimbal pivots.\n\n# Arguments\n- `referenceFrame::RemoteTypes.ReferenceFrame`: The reference frame that the returned position vector is in.\n# Returns\nThe position as a vector.\n" GimbalPosition
export GimbalPosition
import ..Thruster_get_Part as var"##1524"
Part(this::RemoteTypes.Thruster) = begin
        kerbal(this.conn, var"##1524"(this))
    end
@doc "    Part(this::RemoteTypes.Thruster)\n\nThe  that contains this thruster.\n\n" Part
export Part
import ..Thruster_get_ThrustReferenceFrame as var"##1525"
ThrustReferenceFrame(this::RemoteTypes.Thruster) = begin
        kerbal(this.conn, var"##1525"(this))
    end
@doc "    ThrustReferenceFrame(this::RemoteTypes.Thruster)\n\nA reference frame that is fixed relative to the thruster and orientated with\nits thrust direction ().\nFor gimballed engines, this takes into account the current rotation of the gimbal.\n\nThe origin is at the position of thrust for this thruster\n().\nThe axes rotate with the thrust direction.\nThis is the direction in which the thruster expels propellant, including any gimballing.\nThe y-axis points along the thrust direction.The x-axis and z-axis are perpendicular to the thrust direction.\n\n" ThrustReferenceFrame
export ThrustReferenceFrame
import ..Thruster_get_Gimballed as var"##1526"
Gimballed(this::RemoteTypes.Thruster) = begin
        kerbal(this.conn, var"##1526"(this))
    end
@doc "    Gimballed(this::RemoteTypes.Thruster)\n\nWhether the thruster is gimballed.\n\n" Gimballed
export Gimballed
import ..Thruster_get_GimbalAngle as var"##1527"
GimbalAngle(this::RemoteTypes.Thruster) = begin
        kerbal(this.conn, var"##1527"(this))
    end
@doc "    GimbalAngle(this::RemoteTypes.Thruster)\n\nThe current gimbal angle in the pitch, roll and yaw axes, in degrees.\n\n" GimbalAngle
export GimbalAngle
import ..Wheel_get_Part as var"##1528"
Part(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1528"(this))
    end
@doc "    Part(this::RemoteTypes.Wheel)\n\nThe part object for this wheel.\n\n" Part
export Part
import ..Wheel_get_State as var"##1529"
State(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1529"(this))
    end
@doc "    State(this::RemoteTypes.Wheel)\n\nThe current state of the wheel.\n\n" State
export State
import ..Wheel_get_Radius as var"##1530"
Radius(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1530"(this))
    end
@doc "    Radius(this::RemoteTypes.Wheel)\n\nRadius of the wheel, in meters.\n\n" Radius
export Radius
import ..Wheel_get_Grounded as var"##1531"
Grounded(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1531"(this))
    end
@doc "    Grounded(this::RemoteTypes.Wheel)\n\nWhether the wheel is touching the ground.\n\n" Grounded
export Grounded
import ..Wheel_get_HasBrakes as var"##1532"
HasBrakes(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1532"(this))
    end
@doc "    HasBrakes(this::RemoteTypes.Wheel)\n\nWhether the wheel has brakes.\n\n" HasBrakes
export HasBrakes
import ..Wheel_get_Brakes as var"##1533"
Brakes(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1533"(this))
    end
@doc "    Brakes(this::RemoteTypes.Wheel)\n\nThe braking force, as a percentage of maximum, when the brakes are applied.\n\n" Brakes
export Brakes
import ..Wheel_set_Brakes as var"##1534"
Brakes!(this::RemoteTypes.Wheel, value::Float32) = begin
        kerbal(this.conn, var"##1534"(this, value))
    end
@doc "    Brakes!(this::RemoteTypes.Wheel, value::Float32)\n\nThe braking force, as a percentage of maximum, when the brakes are applied.\n\n" Brakes!
export Brakes!
import ..Wheel_get_AutoFrictionControl as var"##1535"
AutoFrictionControl(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1535"(this))
    end
@doc "    AutoFrictionControl(this::RemoteTypes.Wheel)\n\nWhether automatic friction control is enabled.\n\n" AutoFrictionControl
export AutoFrictionControl
import ..Wheel_set_AutoFrictionControl as var"##1536"
AutoFrictionControl!(this::RemoteTypes.Wheel, value::Bool) = begin
        kerbal(this.conn, var"##1536"(this, value))
    end
@doc "    AutoFrictionControl!(this::RemoteTypes.Wheel, value::Bool)\n\nWhether automatic friction control is enabled.\n\n" AutoFrictionControl!
export AutoFrictionControl!
import ..Wheel_get_ManualFrictionControl as var"##1537"
ManualFrictionControl(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1537"(this))
    end
@doc "    ManualFrictionControl(this::RemoteTypes.Wheel)\n\nManual friction control value. Only has an effect if automatic friction control is disabled.\nA value between 0 and 5 inclusive.\n\n" ManualFrictionControl
export ManualFrictionControl
import ..Wheel_set_ManualFrictionControl as var"##1538"
ManualFrictionControl!(this::RemoteTypes.Wheel, value::Float32) = begin
        kerbal(this.conn, var"##1538"(this, value))
    end
@doc "    ManualFrictionControl!(this::RemoteTypes.Wheel, value::Float32)\n\nManual friction control value. Only has an effect if automatic friction control is disabled.\nA value between 0 and 5 inclusive.\n\n" ManualFrictionControl!
export ManualFrictionControl!
import ..Wheel_get_Deployable as var"##1539"
Deployable(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1539"(this))
    end
@doc "    Deployable(this::RemoteTypes.Wheel)\n\nWhether the wheel is deployable.\n\n" Deployable
export Deployable
import ..Wheel_get_Deployed as var"##1540"
Deployed(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1540"(this))
    end
@doc "    Deployed(this::RemoteTypes.Wheel)\n\nWhether the wheel is deployed.\n\n" Deployed
export Deployed
import ..Wheel_set_Deployed as var"##1541"
Deployed!(this::RemoteTypes.Wheel, value::Bool) = begin
        kerbal(this.conn, var"##1541"(this, value))
    end
@doc "    Deployed!(this::RemoteTypes.Wheel, value::Bool)\n\nWhether the wheel is deployed.\n\n" Deployed!
export Deployed!
import ..Wheel_get_Powered as var"##1542"
Powered(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1542"(this))
    end
@doc "    Powered(this::RemoteTypes.Wheel)\n\nWhether the wheel is powered by a motor.\n\n" Powered
export Powered
import ..Wheel_get_MotorEnabled as var"##1543"
MotorEnabled(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1543"(this))
    end
@doc "    MotorEnabled(this::RemoteTypes.Wheel)\n\nWhether the motor is enabled.\n\n" MotorEnabled
export MotorEnabled
import ..Wheel_set_MotorEnabled as var"##1544"
MotorEnabled!(this::RemoteTypes.Wheel, value::Bool) = begin
        kerbal(this.conn, var"##1544"(this, value))
    end
@doc "    MotorEnabled!(this::RemoteTypes.Wheel, value::Bool)\n\nWhether the motor is enabled.\n\n" MotorEnabled!
export MotorEnabled!
import ..Wheel_get_MotorInverted as var"##1545"
MotorInverted(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1545"(this))
    end
@doc "    MotorInverted(this::RemoteTypes.Wheel)\n\nWhether the direction of the motor is inverted.\n\n" MotorInverted
export MotorInverted
import ..Wheel_set_MotorInverted as var"##1546"
MotorInverted!(this::RemoteTypes.Wheel, value::Bool) = begin
        kerbal(this.conn, var"##1546"(this, value))
    end
@doc "    MotorInverted!(this::RemoteTypes.Wheel, value::Bool)\n\nWhether the direction of the motor is inverted.\n\n" MotorInverted!
export MotorInverted!
import ..Wheel_get_MotorState as var"##1547"
MotorState(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1547"(this))
    end
@doc "    MotorState(this::RemoteTypes.Wheel)\n\nWhether the direction of the motor is inverted.\n\n" MotorState
export MotorState
import ..Wheel_get_MotorOutput as var"##1548"
MotorOutput(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1548"(this))
    end
@doc "    MotorOutput(this::RemoteTypes.Wheel)\n\nThe output of the motor. This is the torque currently being generated, in Newton meters.\n\n" MotorOutput
export MotorOutput
import ..Wheel_get_TractionControlEnabled as var"##1549"
TractionControlEnabled(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1549"(this))
    end
@doc "    TractionControlEnabled(this::RemoteTypes.Wheel)\n\nWhether automatic traction control is enabled.\nA wheel only has traction control if it is powered.\n\n" TractionControlEnabled
export TractionControlEnabled
import ..Wheel_set_TractionControlEnabled as var"##1550"
TractionControlEnabled!(this::RemoteTypes.Wheel, value::Bool) = begin
        kerbal(this.conn, var"##1550"(this, value))
    end
@doc "    TractionControlEnabled!(this::RemoteTypes.Wheel, value::Bool)\n\nWhether automatic traction control is enabled.\nA wheel only has traction control if it is powered.\n\n" TractionControlEnabled!
export TractionControlEnabled!
import ..Wheel_get_TractionControl as var"##1551"
TractionControl(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1551"(this))
    end
@doc "    TractionControl(this::RemoteTypes.Wheel)\n\nSetting for the traction control.\nOnly takes effect if the wheel has automatic traction control enabled.\nA value between 0 and 5 inclusive.\n\n" TractionControl
export TractionControl
import ..Wheel_set_TractionControl as var"##1552"
TractionControl!(this::RemoteTypes.Wheel, value::Float32) = begin
        kerbal(this.conn, var"##1552"(this, value))
    end
@doc "    TractionControl!(this::RemoteTypes.Wheel, value::Float32)\n\nSetting for the traction control.\nOnly takes effect if the wheel has automatic traction control enabled.\nA value between 0 and 5 inclusive.\n\n" TractionControl!
export TractionControl!
import ..Wheel_get_DriveLimiter as var"##1553"
DriveLimiter(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1553"(this))
    end
@doc "    DriveLimiter(this::RemoteTypes.Wheel)\n\nManual setting for the motor limiter.\nOnly takes effect if the wheel has automatic traction control disabled.\nA value between 0 and 100 inclusive.\n\n" DriveLimiter
export DriveLimiter
import ..Wheel_set_DriveLimiter as var"##1554"
DriveLimiter!(this::RemoteTypes.Wheel, value::Float32) = begin
        kerbal(this.conn, var"##1554"(this, value))
    end
@doc "    DriveLimiter!(this::RemoteTypes.Wheel, value::Float32)\n\nManual setting for the motor limiter.\nOnly takes effect if the wheel has automatic traction control disabled.\nA value between 0 and 100 inclusive.\n\n" DriveLimiter!
export DriveLimiter!
import ..Wheel_get_Steerable as var"##1555"
Steerable(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1555"(this))
    end
@doc "    Steerable(this::RemoteTypes.Wheel)\n\nWhether the wheel has steering.\n\n" Steerable
export Steerable
import ..Wheel_get_SteeringEnabled as var"##1556"
SteeringEnabled(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1556"(this))
    end
@doc "    SteeringEnabled(this::RemoteTypes.Wheel)\n\nWhether the wheel steering is enabled.\n\n" SteeringEnabled
export SteeringEnabled
import ..Wheel_set_SteeringEnabled as var"##1557"
SteeringEnabled!(this::RemoteTypes.Wheel, value::Bool) = begin
        kerbal(this.conn, var"##1557"(this, value))
    end
@doc "    SteeringEnabled!(this::RemoteTypes.Wheel, value::Bool)\n\nWhether the wheel steering is enabled.\n\n" SteeringEnabled!
export SteeringEnabled!
import ..Wheel_get_SteeringInverted as var"##1558"
SteeringInverted(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1558"(this))
    end
@doc "    SteeringInverted(this::RemoteTypes.Wheel)\n\nWhether the wheel steering is inverted.\n\n" SteeringInverted
export SteeringInverted
import ..Wheel_set_SteeringInverted as var"##1559"
SteeringInverted!(this::RemoteTypes.Wheel, value::Bool) = begin
        kerbal(this.conn, var"##1559"(this, value))
    end
@doc "    SteeringInverted!(this::RemoteTypes.Wheel, value::Bool)\n\nWhether the wheel steering is inverted.\n\n" SteeringInverted!
export SteeringInverted!
import ..Wheel_get_SteeringAngleLimiter as var"##1560"
SteeringAngleLimiter(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1560"(this))
    end
@doc "    SteeringAngleLimiter(this::RemoteTypes.Wheel)\n\nManually set steering angle limit.  1.12 feature\n\n" SteeringAngleLimiter
export SteeringAngleLimiter
import ..Wheel_set_SteeringAngleLimiter as var"##1561"
SteeringAngleLimiter!(this::RemoteTypes.Wheel, value::Float32) = begin
        kerbal(this.conn, var"##1561"(this, value))
    end
@doc "    SteeringAngleLimiter!(this::RemoteTypes.Wheel, value::Float32)\n\nManually set steering angle limit.  1.12 feature\n\n" SteeringAngleLimiter!
export SteeringAngleLimiter!
import ..Wheel_get_SteeringAngleResponse as var"##1562"
SteeringAngleResponse(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1562"(this))
    end
@doc "    SteeringAngleResponse(this::RemoteTypes.Wheel)\n\nSteering Response Time  - 1.12 feature\n\n" SteeringAngleResponse
export SteeringAngleResponse
import ..Wheel_set_SteeringAngleResponse as var"##1563"
SteeringAngleResponse!(this::RemoteTypes.Wheel, value::Float32) = begin
        kerbal(this.conn, var"##1563"(this, value))
    end
@doc "    SteeringAngleResponse!(this::RemoteTypes.Wheel, value::Float32)\n\nSteering Response Time  - 1.12 feature\n\n" SteeringAngleResponse!
export SteeringAngleResponse!
import ..Wheel_get_HasSuspension as var"##1564"
HasSuspension(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1564"(this))
    end
@doc "    HasSuspension(this::RemoteTypes.Wheel)\n\nWhether the wheel has suspension.\n\n" HasSuspension
export HasSuspension
import ..Wheel_get_SuspensionSpringStrength as var"##1565"
SuspensionSpringStrength(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1565"(this))
    end
@doc "    SuspensionSpringStrength(this::RemoteTypes.Wheel)\n\nSuspension spring strength, as set in the editor.\n\n" SuspensionSpringStrength
export SuspensionSpringStrength
import ..Wheel_get_SuspensionDamperStrength as var"##1566"
SuspensionDamperStrength(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1566"(this))
    end
@doc "    SuspensionDamperStrength(this::RemoteTypes.Wheel)\n\nSuspension damper strength, as set in the editor.\n\n" SuspensionDamperStrength
export SuspensionDamperStrength
import ..Wheel_get_Broken as var"##1567"
Broken(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1567"(this))
    end
@doc "    Broken(this::RemoteTypes.Wheel)\n\nWhether the wheel is broken.\n\n" Broken
export Broken
import ..Wheel_get_Repairable as var"##1568"
Repairable(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1568"(this))
    end
@doc "    Repairable(this::RemoteTypes.Wheel)\n\nWhether the wheel is repairable.\n\n" Repairable
export Repairable
import ..Wheel_get_Stress as var"##1569"
Stress(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1569"(this))
    end
@doc "    Stress(this::RemoteTypes.Wheel)\n\nCurrent stress on the wheel.\n\n" Stress
export Stress
import ..Wheel_get_StressTolerance as var"##1570"
StressTolerance(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1570"(this))
    end
@doc "    StressTolerance(this::RemoteTypes.Wheel)\n\nStress tolerance of the wheel.\n\n" StressTolerance
export StressTolerance
import ..Wheel_get_StressPercentage as var"##1571"
StressPercentage(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1571"(this))
    end
@doc "    StressPercentage(this::RemoteTypes.Wheel)\n\nCurrent stress on the wheel as a percentage of its stress tolerance.\n\n" StressPercentage
export StressPercentage
import ..Wheel_get_Deflection as var"##1572"
Deflection(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1572"(this))
    end
@doc "    Deflection(this::RemoteTypes.Wheel)\n\nCurrent deflection of the wheel.\n\n" Deflection
export Deflection
import ..Wheel_get_Slip as var"##1573"
Slip(this::RemoteTypes.Wheel) = begin
        kerbal(this.conn, var"##1573"(this))
    end
@doc "    Slip(this::RemoteTypes.Wheel)\n\nCurrent slip of the wheel.\n\n" Slip
export Slip
end
end
module KerbalAlarmClock
import ...kRPCTypes
import ...Request
import ..SpaceCenter
module RemoteTypes
import ....kRPCTypes
import ....KRPCConnection
struct Alarm <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct KerbalAlarmClock
    conn::KRPCConnection
end
export Alarm
export KerbalAlarmClock
end
struct EAlarmAction <: kRPCTypes.Enum
    value::Int32
end
const EAlarmAction_DoNothing = EAlarmAction(0)
const EAlarmAction_DoNothingDeleteWhenPassed = EAlarmAction(1)
const EAlarmAction_KillWarp = EAlarmAction(2)
const EAlarmAction_KillWarpOnly = EAlarmAction(3)
const EAlarmAction_MessageOnly = EAlarmAction(4)
const EAlarmAction_PauseGame = EAlarmAction(5)
struct EAlarmType <: kRPCTypes.Enum
    value::Int32
end
const EAlarmType_Raw = EAlarmType(0)
const EAlarmType_Maneuver = EAlarmType(1)
const EAlarmType_ManeuverAuto = EAlarmType(2)
const EAlarmType_Apoapsis = EAlarmType(3)
const EAlarmType_Periapsis = EAlarmType(4)
const EAlarmType_AscendingNode = EAlarmType(5)
const EAlarmType_DescendingNode = EAlarmType(6)
const EAlarmType_Closest = EAlarmType(7)
const EAlarmType_Contract = EAlarmType(8)
const EAlarmType_ContractAuto = EAlarmType(9)
const EAlarmType_Crew = EAlarmType(10)
const EAlarmType_Distance = EAlarmType(11)
const EAlarmType_EarthTime = EAlarmType(12)
const EAlarmType_LaunchRendevous = EAlarmType(13)
const EAlarmType_SOIChange = EAlarmType(14)
const EAlarmType_SOIChangeAuto = EAlarmType(15)
const EAlarmType_Transfer = EAlarmType(16)
const EAlarmType_TransferModelled = EAlarmType(17)
export EAlarmAction, EAlarmType
struct AlarmWithName <: Request{:KerbalAlarmClock, :AlarmWithName, RemoteTypes.Alarm}
    AlarmWithName(name::String) = begin
            new(name)
        end
    name::String
end
struct AlarmsWithType <: Request{:KerbalAlarmClock, :AlarmsWithType, begin
                Array{RemoteTypes.Alarm, 1}
            end}
    AlarmsWithType(type::EAlarmType) = begin
            new(type)
        end
    type::EAlarmType
end
struct CreateAlarm <: Request{:KerbalAlarmClock, :CreateAlarm, RemoteTypes.Alarm}
    CreateAlarm(type::EAlarmType, name::String, ut::Float64) = begin
            new(type, name, ut)
        end
    type::EAlarmType
    name::String
    ut::Float64
end
struct get_Available <: Request{:KerbalAlarmClock, :get_Available, Bool}
    get_Available() = begin
            new()
        end
end
struct get_Alarms <: Request{:KerbalAlarmClock, :get_Alarms, begin
                Array{RemoteTypes.Alarm, 1}
            end}
    get_Alarms() = begin
            new()
        end
end
struct Alarm_Remove <: Request{:KerbalAlarmClock, :Alarm_Remove, Nothing}
    Alarm_Remove(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_Action <: Request{:KerbalAlarmClock, :Alarm_get_Action, EAlarmAction}
    Alarm_get_Action(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_Action <: Request{:KerbalAlarmClock, :Alarm_set_Action, Nothing}
    Alarm_set_Action(this::RemoteTypes.Alarm, value::EAlarmAction) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::EAlarmAction
end
struct Alarm_get_Margin <: Request{:KerbalAlarmClock, :Alarm_get_Margin, Float64}
    Alarm_get_Margin(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_Margin <: Request{:KerbalAlarmClock, :Alarm_set_Margin, Nothing}
    Alarm_set_Margin(this::RemoteTypes.Alarm, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::Float64
end
struct Alarm_get_Time <: Request{:KerbalAlarmClock, :Alarm_get_Time, Float64}
    Alarm_get_Time(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_Time <: Request{:KerbalAlarmClock, :Alarm_set_Time, Nothing}
    Alarm_set_Time(this::RemoteTypes.Alarm, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::Float64
end
struct Alarm_get_Type <: Request{:KerbalAlarmClock, :Alarm_get_Type, EAlarmType}
    Alarm_get_Type(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_ID <: Request{:KerbalAlarmClock, :Alarm_get_ID, String}
    Alarm_get_ID(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_Name <: Request{:KerbalAlarmClock, :Alarm_get_Name, String}
    Alarm_get_Name(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_Name <: Request{:KerbalAlarmClock, :Alarm_set_Name, Nothing}
    Alarm_set_Name(this::RemoteTypes.Alarm, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::String
end
struct Alarm_get_Notes <: Request{:KerbalAlarmClock, :Alarm_get_Notes, String}
    Alarm_get_Notes(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_Notes <: Request{:KerbalAlarmClock, :Alarm_set_Notes, Nothing}
    Alarm_set_Notes(this::RemoteTypes.Alarm, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::String
end
struct Alarm_get_Remaining <: Request{:KerbalAlarmClock, :Alarm_get_Remaining, Float64}
    Alarm_get_Remaining(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_get_Repeat <: Request{:KerbalAlarmClock, :Alarm_get_Repeat, Bool}
    Alarm_get_Repeat(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_Repeat <: Request{:KerbalAlarmClock, :Alarm_set_Repeat, Nothing}
    Alarm_set_Repeat(this::RemoteTypes.Alarm, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::Bool
end
struct Alarm_get_RepeatPeriod <: Request{:KerbalAlarmClock, :Alarm_get_RepeatPeriod, Float64}
    Alarm_get_RepeatPeriod(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_RepeatPeriod <: Request{:KerbalAlarmClock, :Alarm_set_RepeatPeriod, Nothing}
    Alarm_set_RepeatPeriod(this::RemoteTypes.Alarm, value::Float64) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::Float64
end
struct Alarm_get_Vessel <: Request{:KerbalAlarmClock, :Alarm_get_Vessel, SpaceCenter.RemoteTypes.Vessel}
    Alarm_get_Vessel(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_Vessel <: Request{:KerbalAlarmClock, :Alarm_set_Vessel, Nothing}
    Alarm_set_Vessel(this::RemoteTypes.Alarm, value::SpaceCenter.RemoteTypes.Vessel) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::SpaceCenter.RemoteTypes.Vessel
end
struct Alarm_get_XferOriginBody <: Request{:KerbalAlarmClock, :Alarm_get_XferOriginBody, SpaceCenter.RemoteTypes.CelestialBody}
    Alarm_get_XferOriginBody(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_XferOriginBody <: Request{:KerbalAlarmClock, :Alarm_set_XferOriginBody, Nothing}
    Alarm_set_XferOriginBody(this::RemoteTypes.Alarm, value::SpaceCenter.RemoteTypes.CelestialBody) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::SpaceCenter.RemoteTypes.CelestialBody
end
struct Alarm_get_XferTargetBody <: Request{:KerbalAlarmClock, :Alarm_get_XferTargetBody, SpaceCenter.RemoteTypes.CelestialBody}
    Alarm_get_XferTargetBody(this::RemoteTypes.Alarm) = begin
            new(this)
        end
    this::RemoteTypes.Alarm
end
struct Alarm_set_XferTargetBody <: Request{:KerbalAlarmClock, :Alarm_set_XferTargetBody, Nothing}
    Alarm_set_XferTargetBody(this::RemoteTypes.Alarm, value::SpaceCenter.RemoteTypes.CelestialBody) = begin
            new(this, value)
        end
    this::RemoteTypes.Alarm
    value::SpaceCenter.RemoteTypes.CelestialBody
end
export AlarmWithName, AlarmsWithType, CreateAlarm, get_Available, get_Alarms, Alarm_Remove, Alarm_get_Action, Alarm_set_Action, Alarm_get_Margin, Alarm_set_Margin, Alarm_get_Time, Alarm_set_Time, Alarm_get_Type, Alarm_get_ID, Alarm_get_Name, Alarm_set_Name, Alarm_get_Notes, Alarm_set_Notes, Alarm_get_Remaining, Alarm_get_Repeat, Alarm_set_Repeat, Alarm_get_RepeatPeriod, Alarm_set_RepeatPeriod, Alarm_get_Vessel, Alarm_set_Vessel, Alarm_get_XferOriginBody, Alarm_set_XferOriginBody, Alarm_get_XferTargetBody, Alarm_set_XferTargetBody
module Helpers
import ....kerbal
import ....KRPCConnection
import ....Request
import ..RemoteTypes
import ...SpaceCenter
import ...KerbalAlarmClock.EAlarmType
import ...KerbalAlarmClock.EAlarmAction
import ..AlarmWithName as var"##451"
AlarmWithName(conn::KRPCConnection, name::String) = begin
        kerbal(conn, var"##451"(name))
    end
@doc "    AlarmWithName(name::String)\n\nGet the alarm with the given , or null\nif no alarms have that name. If more than one alarm has the name,\nonly returns one of them.\n\n# Arguments\n- `name::String`: Name of the alarm to search for.\n" AlarmWithName
export AlarmWithName
import ..AlarmsWithType as var"##452"
AlarmsWithType(conn::KRPCConnection, type::EAlarmType) = begin
        kerbal(conn, var"##452"(type))
    end
@doc "    AlarmsWithType(type::EAlarmType)\n\nGet a list of alarms of the specified .\n\n# Arguments\n- `type::EAlarmType`: Type of alarm to return.\n" AlarmsWithType
export AlarmsWithType
import ..CreateAlarm as var"##453"
CreateAlarm(conn::KRPCConnection, type::EAlarmType, name::String, ut::Float64) = begin
        kerbal(conn, var"##453"(type, name, ut))
    end
@doc "    CreateAlarm(type::EAlarmType, name::String, ut::Float64)\n\nCreate a new alarm and return it.\n\n# Arguments\n- `type::EAlarmType`: Type of the new alarm.\n- `name::String`: Name of the new alarm.\n- `ut::Float64`: Time at which the new alarm should trigger.\n" CreateAlarm
export CreateAlarm
import ..get_Available as var"##454"
Available(this::RemoteTypes.KerbalAlarmClock) = begin
        kerbal(this.conn, var"##454"())
    end
@doc "    Available()\n\nWhether Kerbal Alarm Clock is available.\n\n" Available
export Available
import ..get_Alarms as var"##455"
Alarms(this::RemoteTypes.KerbalAlarmClock) = begin
        kerbal(this.conn, var"##455"())
    end
@doc "    Alarms()\n\nA list of all the alarms.\n\n" Alarms
export Alarms
import ..Alarm_Remove as var"##456"
Remove(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##456"(this))
    end
@doc "    Remove(this::RemoteTypes.Alarm)\n\nRemoves the alarm.\n\n" Remove
export Remove
import ..Alarm_get_Action as var"##457"
Action(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##457"(this))
    end
@doc "    Action(this::RemoteTypes.Alarm)\n\nThe action that the alarm triggers.\n\n" Action
export Action
import ..Alarm_set_Action as var"##458"
Action!(this::RemoteTypes.Alarm, value::EAlarmAction) = begin
        kerbal(this.conn, var"##458"(this, value))
    end
@doc "    Action!(this::RemoteTypes.Alarm, value::EAlarmAction)\n\nThe action that the alarm triggers.\n\n" Action!
export Action!
import ..Alarm_get_Margin as var"##459"
Margin(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##459"(this))
    end
@doc "    Margin(this::RemoteTypes.Alarm)\n\nThe number of seconds before the event that the alarm will fire.\n\n" Margin
export Margin
import ..Alarm_set_Margin as var"##460"
Margin!(this::RemoteTypes.Alarm, value::Float64) = begin
        kerbal(this.conn, var"##460"(this, value))
    end
@doc "    Margin!(this::RemoteTypes.Alarm, value::Float64)\n\nThe number of seconds before the event that the alarm will fire.\n\n" Margin!
export Margin!
import ..Alarm_get_Time as var"##461"
Time(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##461"(this))
    end
@doc "    Time(this::RemoteTypes.Alarm)\n\nThe time at which the alarm will fire.\n\n" Time
export Time
import ..Alarm_set_Time as var"##462"
Time!(this::RemoteTypes.Alarm, value::Float64) = begin
        kerbal(this.conn, var"##462"(this, value))
    end
@doc "    Time!(this::RemoteTypes.Alarm, value::Float64)\n\nThe time at which the alarm will fire.\n\n" Time!
export Time!
import ..Alarm_get_Type as var"##463"
Type(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##463"(this))
    end
@doc "    Type(this::RemoteTypes.Alarm)\n\nThe type of the alarm.\n\n" Type
export Type
import ..Alarm_get_ID as var"##464"
ID(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##464"(this))
    end
@doc "    ID(this::RemoteTypes.Alarm)\n\nThe unique identifier for the alarm.\n\n" ID
export ID
import ..Alarm_get_Name as var"##465"
Name(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##465"(this))
    end
@doc "    Name(this::RemoteTypes.Alarm)\n\nThe short name of the alarm.\n\n" Name
export Name
import ..Alarm_set_Name as var"##466"
Name!(this::RemoteTypes.Alarm, value::String) = begin
        kerbal(this.conn, var"##466"(this, value))
    end
@doc "    Name!(this::RemoteTypes.Alarm, value::String)\n\nThe short name of the alarm.\n\n" Name!
export Name!
import ..Alarm_get_Notes as var"##467"
Notes(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##467"(this))
    end
@doc "    Notes(this::RemoteTypes.Alarm)\n\nThe long description of the alarm.\n\n" Notes
export Notes
import ..Alarm_set_Notes as var"##468"
Notes!(this::RemoteTypes.Alarm, value::String) = begin
        kerbal(this.conn, var"##468"(this, value))
    end
@doc "    Notes!(this::RemoteTypes.Alarm, value::String)\n\nThe long description of the alarm.\n\n" Notes!
export Notes!
import ..Alarm_get_Remaining as var"##469"
Remaining(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##469"(this))
    end
@doc "    Remaining(this::RemoteTypes.Alarm)\n\nThe number of seconds until the alarm will fire.\n\n" Remaining
export Remaining
import ..Alarm_get_Repeat as var"##470"
Repeat(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##470"(this))
    end
@doc "    Repeat(this::RemoteTypes.Alarm)\n\nWhether the alarm will be repeated after it has fired.\n\n" Repeat
export Repeat
import ..Alarm_set_Repeat as var"##471"
Repeat!(this::RemoteTypes.Alarm, value::Bool) = begin
        kerbal(this.conn, var"##471"(this, value))
    end
@doc "    Repeat!(this::RemoteTypes.Alarm, value::Bool)\n\nWhether the alarm will be repeated after it has fired.\n\n" Repeat!
export Repeat!
import ..Alarm_get_RepeatPeriod as var"##472"
RepeatPeriod(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##472"(this))
    end
@doc "    RepeatPeriod(this::RemoteTypes.Alarm)\n\nThe time delay to automatically create an alarm after it has fired.\n\n" RepeatPeriod
export RepeatPeriod
import ..Alarm_set_RepeatPeriod as var"##473"
RepeatPeriod!(this::RemoteTypes.Alarm, value::Float64) = begin
        kerbal(this.conn, var"##473"(this, value))
    end
@doc "    RepeatPeriod!(this::RemoteTypes.Alarm, value::Float64)\n\nThe time delay to automatically create an alarm after it has fired.\n\n" RepeatPeriod!
export RepeatPeriod!
import ..Alarm_get_Vessel as var"##474"
Vessel(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##474"(this))
    end
@doc "    Vessel(this::RemoteTypes.Alarm)\n\nThe vessel that the alarm is attached to.\n\n" Vessel
export Vessel
import ..Alarm_set_Vessel as var"##475"
Vessel!(this::RemoteTypes.Alarm, value::SpaceCenter.RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##475"(this, value))
    end
@doc "    Vessel!(this::RemoteTypes.Alarm, value::SpaceCenter.RemoteTypes.Vessel)\n\nThe vessel that the alarm is attached to.\n\n" Vessel!
export Vessel!
import ..Alarm_get_XferOriginBody as var"##476"
XferOriginBody(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##476"(this))
    end
@doc "    XferOriginBody(this::RemoteTypes.Alarm)\n\nThe celestial body the vessel is departing from.\n\n" XferOriginBody
export XferOriginBody
import ..Alarm_set_XferOriginBody as var"##477"
XferOriginBody!(this::RemoteTypes.Alarm, value::SpaceCenter.RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##477"(this, value))
    end
@doc "    XferOriginBody!(this::RemoteTypes.Alarm, value::SpaceCenter.RemoteTypes.CelestialBody)\n\nThe celestial body the vessel is departing from.\n\n" XferOriginBody!
export XferOriginBody!
import ..Alarm_get_XferTargetBody as var"##478"
XferTargetBody(this::RemoteTypes.Alarm) = begin
        kerbal(this.conn, var"##478"(this))
    end
@doc "    XferTargetBody(this::RemoteTypes.Alarm)\n\nThe celestial body the vessel is arriving at.\n\n" XferTargetBody
export XferTargetBody
import ..Alarm_set_XferTargetBody as var"##479"
XferTargetBody!(this::RemoteTypes.Alarm, value::SpaceCenter.RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##479"(this, value))
    end
@doc "    XferTargetBody!(this::RemoteTypes.Alarm, value::SpaceCenter.RemoteTypes.CelestialBody)\n\nThe celestial body the vessel is arriving at.\n\n" XferTargetBody!
export XferTargetBody!
end
end
module InfernalRobotics
import ...kRPCTypes
import ...Request
import ..SpaceCenter
module RemoteTypes
import ....kRPCTypes
import ....KRPCConnection
struct Servo <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct ServoGroup <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct InfernalRobotics
    conn::KRPCConnection
end
export Servo, ServoGroup
export InfernalRobotics
end
struct ServoGroups <: Request{:InfernalRobotics, :ServoGroups, begin
                Array{RemoteTypes.ServoGroup, 1}
            end}
    ServoGroups(vessel::SpaceCenter.RemoteTypes.Vessel) = begin
            new(vessel)
        end
    vessel::SpaceCenter.RemoteTypes.Vessel
end
struct ServoGroupWithName <: Request{:InfernalRobotics, :ServoGroupWithName, RemoteTypes.ServoGroup}
    ServoGroupWithName(vessel::SpaceCenter.RemoteTypes.Vessel, name::String) = begin
            new(vessel, name)
        end
    vessel::SpaceCenter.RemoteTypes.Vessel
    name::String
end
struct ServoWithName <: Request{:InfernalRobotics, :ServoWithName, RemoteTypes.Servo}
    ServoWithName(vessel::SpaceCenter.RemoteTypes.Vessel, name::String) = begin
            new(vessel, name)
        end
    vessel::SpaceCenter.RemoteTypes.Vessel
    name::String
end
struct get_Available <: Request{:InfernalRobotics, :get_Available, Bool}
    get_Available() = begin
            new()
        end
end
struct get_Ready <: Request{:InfernalRobotics, :get_Ready, Bool}
    get_Ready() = begin
            new()
        end
end
struct Servo_MoveRight <: Request{:InfernalRobotics, :Servo_MoveRight, Nothing}
    Servo_MoveRight(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_MoveLeft <: Request{:InfernalRobotics, :Servo_MoveLeft, Nothing}
    Servo_MoveLeft(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_MoveCenter <: Request{:InfernalRobotics, :Servo_MoveCenter, Nothing}
    Servo_MoveCenter(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_MoveNextPreset <: Request{:InfernalRobotics, :Servo_MoveNextPreset, Nothing}
    Servo_MoveNextPreset(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_MovePrevPreset <: Request{:InfernalRobotics, :Servo_MovePrevPreset, Nothing}
    Servo_MovePrevPreset(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_MoveTo <: Request{:InfernalRobotics, :Servo_MoveTo, Nothing}
    Servo_MoveTo(this::RemoteTypes.Servo, position::Float32, speed::Float32) = begin
            new(this, position, speed)
        end
    this::RemoteTypes.Servo
    position::Float32
    speed::Float32
end
struct Servo_Stop <: Request{:InfernalRobotics, :Servo_Stop, Nothing}
    Servo_Stop(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_get_Name <: Request{:InfernalRobotics, :Servo_get_Name, String}
    Servo_get_Name(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_set_Name <: Request{:InfernalRobotics, :Servo_set_Name, Nothing}
    Servo_set_Name(this::RemoteTypes.Servo, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Servo
    value::String
end
struct Servo_get_Part <: Request{:InfernalRobotics, :Servo_get_Part, SpaceCenter.RemoteTypes.Part}
    Servo_get_Part(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_set_Highlight <: Request{:InfernalRobotics, :Servo_set_Highlight, Nothing}
    Servo_set_Highlight(this::RemoteTypes.Servo, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Servo
    value::Bool
end
struct Servo_get_Position <: Request{:InfernalRobotics, :Servo_get_Position, Float32}
    Servo_get_Position(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_get_MinConfigPosition <: Request{:InfernalRobotics, :Servo_get_MinConfigPosition, Float32}
    Servo_get_MinConfigPosition(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_get_MaxConfigPosition <: Request{:InfernalRobotics, :Servo_get_MaxConfigPosition, Float32}
    Servo_get_MaxConfigPosition(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_get_MinPosition <: Request{:InfernalRobotics, :Servo_get_MinPosition, Float32}
    Servo_get_MinPosition(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_set_MinPosition <: Request{:InfernalRobotics, :Servo_set_MinPosition, Nothing}
    Servo_set_MinPosition(this::RemoteTypes.Servo, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Servo
    value::Float32
end
struct Servo_get_MaxPosition <: Request{:InfernalRobotics, :Servo_get_MaxPosition, Float32}
    Servo_get_MaxPosition(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_set_MaxPosition <: Request{:InfernalRobotics, :Servo_set_MaxPosition, Nothing}
    Servo_set_MaxPosition(this::RemoteTypes.Servo, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Servo
    value::Float32
end
struct Servo_get_ConfigSpeed <: Request{:InfernalRobotics, :Servo_get_ConfigSpeed, Float32}
    Servo_get_ConfigSpeed(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_get_Speed <: Request{:InfernalRobotics, :Servo_get_Speed, Float32}
    Servo_get_Speed(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_set_Speed <: Request{:InfernalRobotics, :Servo_set_Speed, Nothing}
    Servo_set_Speed(this::RemoteTypes.Servo, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Servo
    value::Float32
end
struct Servo_get_CurrentSpeed <: Request{:InfernalRobotics, :Servo_get_CurrentSpeed, Float32}
    Servo_get_CurrentSpeed(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_set_CurrentSpeed <: Request{:InfernalRobotics, :Servo_set_CurrentSpeed, Nothing}
    Servo_set_CurrentSpeed(this::RemoteTypes.Servo, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Servo
    value::Float32
end
struct Servo_get_Acceleration <: Request{:InfernalRobotics, :Servo_get_Acceleration, Float32}
    Servo_get_Acceleration(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_set_Acceleration <: Request{:InfernalRobotics, :Servo_set_Acceleration, Nothing}
    Servo_set_Acceleration(this::RemoteTypes.Servo, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Servo
    value::Float32
end
struct Servo_get_IsMoving <: Request{:InfernalRobotics, :Servo_get_IsMoving, Bool}
    Servo_get_IsMoving(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_get_IsFreeMoving <: Request{:InfernalRobotics, :Servo_get_IsFreeMoving, Bool}
    Servo_get_IsFreeMoving(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_get_IsLocked <: Request{:InfernalRobotics, :Servo_get_IsLocked, Bool}
    Servo_get_IsLocked(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_set_IsLocked <: Request{:InfernalRobotics, :Servo_set_IsLocked, Nothing}
    Servo_set_IsLocked(this::RemoteTypes.Servo, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Servo
    value::Bool
end
struct Servo_get_IsAxisInverted <: Request{:InfernalRobotics, :Servo_get_IsAxisInverted, Bool}
    Servo_get_IsAxisInverted(this::RemoteTypes.Servo) = begin
            new(this)
        end
    this::RemoteTypes.Servo
end
struct Servo_set_IsAxisInverted <: Request{:InfernalRobotics, :Servo_set_IsAxisInverted, Nothing}
    Servo_set_IsAxisInverted(this::RemoteTypes.Servo, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Servo
    value::Bool
end
struct ServoGroup_ServoWithName <: Request{:InfernalRobotics, :ServoGroup_ServoWithName, RemoteTypes.Servo}
    ServoGroup_ServoWithName(this::RemoteTypes.ServoGroup, name::String) = begin
            new(this, name)
        end
    this::RemoteTypes.ServoGroup
    name::String
end
struct ServoGroup_MoveRight <: Request{:InfernalRobotics, :ServoGroup_MoveRight, Nothing}
    ServoGroup_MoveRight(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_MoveLeft <: Request{:InfernalRobotics, :ServoGroup_MoveLeft, Nothing}
    ServoGroup_MoveLeft(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_MoveCenter <: Request{:InfernalRobotics, :ServoGroup_MoveCenter, Nothing}
    ServoGroup_MoveCenter(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_MoveNextPreset <: Request{:InfernalRobotics, :ServoGroup_MoveNextPreset, Nothing}
    ServoGroup_MoveNextPreset(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_MovePrevPreset <: Request{:InfernalRobotics, :ServoGroup_MovePrevPreset, Nothing}
    ServoGroup_MovePrevPreset(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_Stop <: Request{:InfernalRobotics, :ServoGroup_Stop, Nothing}
    ServoGroup_Stop(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_get_Name <: Request{:InfernalRobotics, :ServoGroup_get_Name, String}
    ServoGroup_get_Name(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_set_Name <: Request{:InfernalRobotics, :ServoGroup_set_Name, Nothing}
    ServoGroup_set_Name(this::RemoteTypes.ServoGroup, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.ServoGroup
    value::String
end
struct ServoGroup_get_ForwardKey <: Request{:InfernalRobotics, :ServoGroup_get_ForwardKey, String}
    ServoGroup_get_ForwardKey(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_set_ForwardKey <: Request{:InfernalRobotics, :ServoGroup_set_ForwardKey, Nothing}
    ServoGroup_set_ForwardKey(this::RemoteTypes.ServoGroup, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.ServoGroup
    value::String
end
struct ServoGroup_get_ReverseKey <: Request{:InfernalRobotics, :ServoGroup_get_ReverseKey, String}
    ServoGroup_get_ReverseKey(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_set_ReverseKey <: Request{:InfernalRobotics, :ServoGroup_set_ReverseKey, Nothing}
    ServoGroup_set_ReverseKey(this::RemoteTypes.ServoGroup, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.ServoGroup
    value::String
end
struct ServoGroup_get_Speed <: Request{:InfernalRobotics, :ServoGroup_get_Speed, Float32}
    ServoGroup_get_Speed(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_set_Speed <: Request{:InfernalRobotics, :ServoGroup_set_Speed, Nothing}
    ServoGroup_set_Speed(this::RemoteTypes.ServoGroup, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.ServoGroup
    value::Float32
end
struct ServoGroup_get_Expanded <: Request{:InfernalRobotics, :ServoGroup_get_Expanded, Bool}
    ServoGroup_get_Expanded(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_set_Expanded <: Request{:InfernalRobotics, :ServoGroup_set_Expanded, Nothing}
    ServoGroup_set_Expanded(this::RemoteTypes.ServoGroup, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.ServoGroup
    value::Bool
end
struct ServoGroup_get_Servos <: Request{:InfernalRobotics, :ServoGroup_get_Servos, begin
                Array{RemoteTypes.Servo, 1}
            end}
    ServoGroup_get_Servos(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
struct ServoGroup_get_Parts <: Request{:InfernalRobotics, :ServoGroup_get_Parts, begin
                Array{SpaceCenter.RemoteTypes.Part, 1}
            end}
    ServoGroup_get_Parts(this::RemoteTypes.ServoGroup) = begin
            new(this)
        end
    this::RemoteTypes.ServoGroup
end
export ServoGroups, ServoGroupWithName, ServoWithName, get_Available, get_Ready, Servo_MoveRight, Servo_MoveLeft, Servo_MoveCenter, Servo_MoveNextPreset, Servo_MovePrevPreset, Servo_MoveTo, Servo_Stop, Servo_get_Name, Servo_set_Name, Servo_get_Part, Servo_set_Highlight, Servo_get_Position, Servo_get_MinConfigPosition, Servo_get_MaxConfigPosition, Servo_get_MinPosition, Servo_set_MinPosition, Servo_get_MaxPosition, Servo_set_MaxPosition, Servo_get_ConfigSpeed, Servo_get_Speed, Servo_set_Speed, Servo_get_CurrentSpeed, Servo_set_CurrentSpeed, Servo_get_Acceleration, Servo_set_Acceleration, Servo_get_IsMoving, Servo_get_IsFreeMoving, Servo_get_IsLocked, Servo_set_IsLocked, Servo_get_IsAxisInverted, Servo_set_IsAxisInverted, ServoGroup_ServoWithName, ServoGroup_MoveRight, ServoGroup_MoveLeft, ServoGroup_MoveCenter, ServoGroup_MoveNextPreset, ServoGroup_MovePrevPreset, ServoGroup_Stop, ServoGroup_get_Name, ServoGroup_set_Name, ServoGroup_get_ForwardKey, ServoGroup_set_ForwardKey, ServoGroup_get_ReverseKey, ServoGroup_set_ReverseKey, ServoGroup_get_Speed, ServoGroup_set_Speed, ServoGroup_get_Expanded, ServoGroup_set_Expanded, ServoGroup_get_Servos, ServoGroup_get_Parts
module Helpers
import ....kerbal
import ....KRPCConnection
import ....Request
import ..RemoteTypes
import ...SpaceCenter
import ..ServoGroups as var"##395"
ServoGroups(conn::KRPCConnection, vessel::SpaceCenter.RemoteTypes.Vessel) = begin
        kerbal(conn, var"##395"(vessel))
    end
@doc "    ServoGroups(vessel::SpaceCenter.RemoteTypes.Vessel)\n\nA list of all the servo groups in the given .\n\n" ServoGroups
export ServoGroups
import ..ServoGroupWithName as var"##396"
ServoGroupWithName(conn::KRPCConnection, vessel::SpaceCenter.RemoteTypes.Vessel, name::String) = begin
        kerbal(conn, var"##396"(vessel, name))
    end
@doc "    ServoGroupWithName(vessel::SpaceCenter.RemoteTypes.Vessel, name::String)\n\nReturns the servo group in the given  with the given ,\nor null if none exists. If multiple servo groups have the same name, only one of them is returned.\n\n# Arguments\n- `vessel::SpaceCenter.RemoteTypes.Vessel`: Vessel to check.\n- `name::String`: Name of servo group to find.\n" ServoGroupWithName
export ServoGroupWithName
import ..ServoWithName as var"##397"
ServoWithName(conn::KRPCConnection, vessel::SpaceCenter.RemoteTypes.Vessel, name::String) = begin
        kerbal(conn, var"##397"(vessel, name))
    end
@doc "    ServoWithName(vessel::SpaceCenter.RemoteTypes.Vessel, name::String)\n\nReturns the servo in the given  with the given  or\nnull if none exists. If multiple servos have the same name, only one of them is returned.\n\n# Arguments\n- `vessel::SpaceCenter.RemoteTypes.Vessel`: Vessel to check.\n- `name::String`: Name of the servo to find.\n" ServoWithName
export ServoWithName
import ..get_Available as var"##398"
Available(this::RemoteTypes.InfernalRobotics) = begin
        kerbal(this.conn, var"##398"())
    end
@doc "    Available()\n\nWhether Infernal Robotics is installed.\n\n" Available
export Available
import ..get_Ready as var"##399"
Ready(this::RemoteTypes.InfernalRobotics) = begin
        kerbal(this.conn, var"##399"())
    end
@doc "    Ready()\n\nWhether Infernal Robotics API is ready.\n\n" Ready
export Ready
import ..Servo_MoveRight as var"##400"
MoveRight(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##400"(this))
    end
@doc "    MoveRight(this::RemoteTypes.Servo)\n\nMoves the servo to the right.\n\n" MoveRight
export MoveRight
import ..Servo_MoveLeft as var"##401"
MoveLeft(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##401"(this))
    end
@doc "    MoveLeft(this::RemoteTypes.Servo)\n\nMoves the servo to the left.\n\n" MoveLeft
export MoveLeft
import ..Servo_MoveCenter as var"##402"
MoveCenter(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##402"(this))
    end
@doc "    MoveCenter(this::RemoteTypes.Servo)\n\nMoves the servo to the center.\n\n" MoveCenter
export MoveCenter
import ..Servo_MoveNextPreset as var"##403"
MoveNextPreset(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##403"(this))
    end
@doc "    MoveNextPreset(this::RemoteTypes.Servo)\n\nMoves the servo to the next preset.\n\n" MoveNextPreset
export MoveNextPreset
import ..Servo_MovePrevPreset as var"##404"
MovePrevPreset(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##404"(this))
    end
@doc "    MovePrevPreset(this::RemoteTypes.Servo)\n\nMoves the servo to the previous preset.\n\n" MovePrevPreset
export MovePrevPreset
import ..Servo_MoveTo as var"##405"
MoveTo(this::RemoteTypes.Servo, position::Float32, speed::Float32) = begin
        kerbal(this.conn, var"##405"(this, position, speed))
    end
@doc "    MoveTo(this::RemoteTypes.Servo, position::Float32, speed::Float32)\n\nMoves the servo to  and sets the\nspeed multiplier to .\n\n# Arguments\n- `position::Float32`: The position to move the servo to.\n- `speed::Float32`: Speed multiplier for the movement.\n" MoveTo
export MoveTo
import ..Servo_Stop as var"##406"
Stop(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##406"(this))
    end
@doc "    Stop(this::RemoteTypes.Servo)\n\nStops the servo.\n\n" Stop
export Stop
import ..Servo_get_Name as var"##407"
Name(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##407"(this))
    end
@doc "    Name(this::RemoteTypes.Servo)\n\nThe name of the servo.\n\n" Name
export Name
import ..Servo_set_Name as var"##408"
Name!(this::RemoteTypes.Servo, value::String) = begin
        kerbal(this.conn, var"##408"(this, value))
    end
@doc "    Name!(this::RemoteTypes.Servo, value::String)\n\nThe name of the servo.\n\n" Name!
export Name!
import ..Servo_get_Part as var"##409"
Part(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##409"(this))
    end
@doc "    Part(this::RemoteTypes.Servo)\n\nThe part containing the servo.\n\n" Part
export Part
import ..Servo_set_Highlight as var"##410"
Highlight!(this::RemoteTypes.Servo, value::Bool) = begin
        kerbal(this.conn, var"##410"(this, value))
    end
@doc "    Highlight!(this::RemoteTypes.Servo, value::Bool)\n\nWhether the servo should be highlighted in-game.\n\n" Highlight!
export Highlight!
import ..Servo_get_Position as var"##411"
Position(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##411"(this))
    end
@doc "    Position(this::RemoteTypes.Servo)\n\nThe position of the servo.\n\n" Position
export Position
import ..Servo_get_MinConfigPosition as var"##412"
MinConfigPosition(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##412"(this))
    end
@doc "    MinConfigPosition(this::RemoteTypes.Servo)\n\nThe minimum position of the servo, specified by the part configuration.\n\n" MinConfigPosition
export MinConfigPosition
import ..Servo_get_MaxConfigPosition as var"##413"
MaxConfigPosition(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##413"(this))
    end
@doc "    MaxConfigPosition(this::RemoteTypes.Servo)\n\nThe maximum position of the servo, specified by the part configuration.\n\n" MaxConfigPosition
export MaxConfigPosition
import ..Servo_get_MinPosition as var"##414"
MinPosition(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##414"(this))
    end
@doc "    MinPosition(this::RemoteTypes.Servo)\n\nThe minimum position of the servo, specified by the in-game tweak menu.\n\n" MinPosition
export MinPosition
import ..Servo_set_MinPosition as var"##415"
MinPosition!(this::RemoteTypes.Servo, value::Float32) = begin
        kerbal(this.conn, var"##415"(this, value))
    end
@doc "    MinPosition!(this::RemoteTypes.Servo, value::Float32)\n\nThe minimum position of the servo, specified by the in-game tweak menu.\n\n" MinPosition!
export MinPosition!
import ..Servo_get_MaxPosition as var"##416"
MaxPosition(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##416"(this))
    end
@doc "    MaxPosition(this::RemoteTypes.Servo)\n\nThe maximum position of the servo, specified by the in-game tweak menu.\n\n" MaxPosition
export MaxPosition
import ..Servo_set_MaxPosition as var"##417"
MaxPosition!(this::RemoteTypes.Servo, value::Float32) = begin
        kerbal(this.conn, var"##417"(this, value))
    end
@doc "    MaxPosition!(this::RemoteTypes.Servo, value::Float32)\n\nThe maximum position of the servo, specified by the in-game tweak menu.\n\n" MaxPosition!
export MaxPosition!
import ..Servo_get_ConfigSpeed as var"##418"
ConfigSpeed(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##418"(this))
    end
@doc "    ConfigSpeed(this::RemoteTypes.Servo)\n\nThe speed multiplier of the servo, specified by the part configuration.\n\n" ConfigSpeed
export ConfigSpeed
import ..Servo_get_Speed as var"##419"
Speed(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##419"(this))
    end
@doc "    Speed(this::RemoteTypes.Servo)\n\nThe speed multiplier of the servo, specified by the in-game tweak menu.\n\n" Speed
export Speed
import ..Servo_set_Speed as var"##420"
Speed!(this::RemoteTypes.Servo, value::Float32) = begin
        kerbal(this.conn, var"##420"(this, value))
    end
@doc "    Speed!(this::RemoteTypes.Servo, value::Float32)\n\nThe speed multiplier of the servo, specified by the in-game tweak menu.\n\n" Speed!
export Speed!
import ..Servo_get_CurrentSpeed as var"##421"
CurrentSpeed(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##421"(this))
    end
@doc "    CurrentSpeed(this::RemoteTypes.Servo)\n\nThe current speed at which the servo is moving.\n\n" CurrentSpeed
export CurrentSpeed
import ..Servo_set_CurrentSpeed as var"##422"
CurrentSpeed!(this::RemoteTypes.Servo, value::Float32) = begin
        kerbal(this.conn, var"##422"(this, value))
    end
@doc "    CurrentSpeed!(this::RemoteTypes.Servo, value::Float32)\n\nThe current speed at which the servo is moving.\n\n" CurrentSpeed!
export CurrentSpeed!
import ..Servo_get_Acceleration as var"##423"
Acceleration(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##423"(this))
    end
@doc "    Acceleration(this::RemoteTypes.Servo)\n\nThe current speed multiplier set in the UI.\n\n" Acceleration
export Acceleration
import ..Servo_set_Acceleration as var"##424"
Acceleration!(this::RemoteTypes.Servo, value::Float32) = begin
        kerbal(this.conn, var"##424"(this, value))
    end
@doc "    Acceleration!(this::RemoteTypes.Servo, value::Float32)\n\nThe current speed multiplier set in the UI.\n\n" Acceleration!
export Acceleration!
import ..Servo_get_IsMoving as var"##425"
IsMoving(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##425"(this))
    end
@doc "    IsMoving(this::RemoteTypes.Servo)\n\nWhether the servo is moving.\n\n" IsMoving
export IsMoving
import ..Servo_get_IsFreeMoving as var"##426"
IsFreeMoving(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##426"(this))
    end
@doc "    IsFreeMoving(this::RemoteTypes.Servo)\n\nWhether the servo is freely moving.\n\n" IsFreeMoving
export IsFreeMoving
import ..Servo_get_IsLocked as var"##427"
IsLocked(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##427"(this))
    end
@doc "    IsLocked(this::RemoteTypes.Servo)\n\nWhether the servo is locked.\n\n" IsLocked
export IsLocked
import ..Servo_set_IsLocked as var"##428"
IsLocked!(this::RemoteTypes.Servo, value::Bool) = begin
        kerbal(this.conn, var"##428"(this, value))
    end
@doc "    IsLocked!(this::RemoteTypes.Servo, value::Bool)\n\nWhether the servo is locked.\n\n" IsLocked!
export IsLocked!
import ..Servo_get_IsAxisInverted as var"##429"
IsAxisInverted(this::RemoteTypes.Servo) = begin
        kerbal(this.conn, var"##429"(this))
    end
@doc "    IsAxisInverted(this::RemoteTypes.Servo)\n\nWhether the servos axis is inverted.\n\n" IsAxisInverted
export IsAxisInverted
import ..Servo_set_IsAxisInverted as var"##430"
IsAxisInverted!(this::RemoteTypes.Servo, value::Bool) = begin
        kerbal(this.conn, var"##430"(this, value))
    end
@doc "    IsAxisInverted!(this::RemoteTypes.Servo, value::Bool)\n\nWhether the servos axis is inverted.\n\n" IsAxisInverted!
export IsAxisInverted!
import ..ServoGroup_ServoWithName as var"##431"
ServoWithName(this::RemoteTypes.ServoGroup, name::String) = begin
        kerbal(this.conn, var"##431"(this, name))
    end
@doc "    ServoWithName(this::RemoteTypes.ServoGroup, name::String)\n\nReturns the servo with the given  from this group,\nor null if none exists.\n\n# Arguments\n- `name::String`: Name of servo to find.\n" ServoWithName
export ServoWithName
import ..ServoGroup_MoveRight as var"##432"
MoveRight(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##432"(this))
    end
@doc "    MoveRight(this::RemoteTypes.ServoGroup)\n\nMoves all of the servos in the group to the right.\n\n" MoveRight
export MoveRight
import ..ServoGroup_MoveLeft as var"##433"
MoveLeft(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##433"(this))
    end
@doc "    MoveLeft(this::RemoteTypes.ServoGroup)\n\nMoves all of the servos in the group to the left.\n\n" MoveLeft
export MoveLeft
import ..ServoGroup_MoveCenter as var"##434"
MoveCenter(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##434"(this))
    end
@doc "    MoveCenter(this::RemoteTypes.ServoGroup)\n\nMoves all of the servos in the group to the center.\n\n" MoveCenter
export MoveCenter
import ..ServoGroup_MoveNextPreset as var"##435"
MoveNextPreset(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##435"(this))
    end
@doc "    MoveNextPreset(this::RemoteTypes.ServoGroup)\n\nMoves all of the servos in the group to the next preset.\n\n" MoveNextPreset
export MoveNextPreset
import ..ServoGroup_MovePrevPreset as var"##436"
MovePrevPreset(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##436"(this))
    end
@doc "    MovePrevPreset(this::RemoteTypes.ServoGroup)\n\nMoves all of the servos in the group to the previous preset.\n\n" MovePrevPreset
export MovePrevPreset
import ..ServoGroup_Stop as var"##437"
Stop(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##437"(this))
    end
@doc "    Stop(this::RemoteTypes.ServoGroup)\n\nStops the servos in the group.\n\n" Stop
export Stop
import ..ServoGroup_get_Name as var"##438"
Name(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##438"(this))
    end
@doc "    Name(this::RemoteTypes.ServoGroup)\n\nThe name of the group.\n\n" Name
export Name
import ..ServoGroup_set_Name as var"##439"
Name!(this::RemoteTypes.ServoGroup, value::String) = begin
        kerbal(this.conn, var"##439"(this, value))
    end
@doc "    Name!(this::RemoteTypes.ServoGroup, value::String)\n\nThe name of the group.\n\n" Name!
export Name!
import ..ServoGroup_get_ForwardKey as var"##440"
ForwardKey(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##440"(this))
    end
@doc "    ForwardKey(this::RemoteTypes.ServoGroup)\n\nThe key assigned to be the \"forward\" key for the group.\n\n" ForwardKey
export ForwardKey
import ..ServoGroup_set_ForwardKey as var"##441"
ForwardKey!(this::RemoteTypes.ServoGroup, value::String) = begin
        kerbal(this.conn, var"##441"(this, value))
    end
@doc "    ForwardKey!(this::RemoteTypes.ServoGroup, value::String)\n\nThe key assigned to be the \"forward\" key for the group.\n\n" ForwardKey!
export ForwardKey!
import ..ServoGroup_get_ReverseKey as var"##442"
ReverseKey(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##442"(this))
    end
@doc "    ReverseKey(this::RemoteTypes.ServoGroup)\n\nThe key assigned to be the \"reverse\" key for the group.\n\n" ReverseKey
export ReverseKey
import ..ServoGroup_set_ReverseKey as var"##443"
ReverseKey!(this::RemoteTypes.ServoGroup, value::String) = begin
        kerbal(this.conn, var"##443"(this, value))
    end
@doc "    ReverseKey!(this::RemoteTypes.ServoGroup, value::String)\n\nThe key assigned to be the \"reverse\" key for the group.\n\n" ReverseKey!
export ReverseKey!
import ..ServoGroup_get_Speed as var"##444"
Speed(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##444"(this))
    end
@doc "    Speed(this::RemoteTypes.ServoGroup)\n\nThe speed multiplier for the group.\n\n" Speed
export Speed
import ..ServoGroup_set_Speed as var"##445"
Speed!(this::RemoteTypes.ServoGroup, value::Float32) = begin
        kerbal(this.conn, var"##445"(this, value))
    end
@doc "    Speed!(this::RemoteTypes.ServoGroup, value::Float32)\n\nThe speed multiplier for the group.\n\n" Speed!
export Speed!
import ..ServoGroup_get_Expanded as var"##446"
Expanded(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##446"(this))
    end
@doc "    Expanded(this::RemoteTypes.ServoGroup)\n\nWhether the group is expanded in the InfernalRobotics UI.\n\n" Expanded
export Expanded
import ..ServoGroup_set_Expanded as var"##447"
Expanded!(this::RemoteTypes.ServoGroup, value::Bool) = begin
        kerbal(this.conn, var"##447"(this, value))
    end
@doc "    Expanded!(this::RemoteTypes.ServoGroup, value::Bool)\n\nWhether the group is expanded in the InfernalRobotics UI.\n\n" Expanded!
export Expanded!
import ..ServoGroup_get_Servos as var"##448"
Servos(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##448"(this))
    end
@doc "    Servos(this::RemoteTypes.ServoGroup)\n\nThe servos that are in the group.\n\n" Servos
export Servos
import ..ServoGroup_get_Parts as var"##449"
Parts(this::RemoteTypes.ServoGroup) = begin
        kerbal(this.conn, var"##449"(this))
    end
@doc "    Parts(this::RemoteTypes.ServoGroup)\n\nThe parts containing the servos in the group.\n\n" Parts
export Parts
end
end
module RemoteTech
import ...kRPCTypes
import ...Request
import ..SpaceCenter
module RemoteTypes
import ....kRPCTypes
import ....KRPCConnection
struct Antenna <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Comms <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct RemoteTech
    conn::KRPCConnection
end
export Antenna, Comms
export RemoteTech
end
struct ETarget <: kRPCTypes.Enum
    value::Int32
end
const ETarget_ActiveVessel = ETarget(0)
const ETarget_CelestialBody = ETarget(1)
const ETarget_GroundStation = ETarget(2)
const ETarget_Vessel = ETarget(3)
const ETarget_None = ETarget(4)
export ETarget
struct Comms <: Request{:RemoteTech, :Comms, RemoteTypes.Comms}
    Comms(vessel::SpaceCenter.RemoteTypes.Vessel) = begin
            new(vessel)
        end
    vessel::SpaceCenter.RemoteTypes.Vessel
end
struct Antenna <: Request{:RemoteTech, :Antenna, RemoteTypes.Antenna}
    Antenna(part::SpaceCenter.RemoteTypes.Part) = begin
            new(part)
        end
    part::SpaceCenter.RemoteTypes.Part
end
struct get_Available <: Request{:RemoteTech, :get_Available, Bool}
    get_Available() = begin
            new()
        end
end
struct get_GroundStations <: Request{:RemoteTech, :get_GroundStations, begin
                Array{String, 1}
            end}
    get_GroundStations() = begin
            new()
        end
end
struct Antenna_get_Part <: Request{:RemoteTech, :Antenna_get_Part, SpaceCenter.RemoteTypes.Part}
    Antenna_get_Part(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_HasConnection <: Request{:RemoteTech, :Antenna_get_HasConnection, Bool}
    Antenna_get_HasConnection(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_get_Target <: Request{:RemoteTech, :Antenna_get_Target, ETarget}
    Antenna_get_Target(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_set_Target <: Request{:RemoteTech, :Antenna_set_Target, Nothing}
    Antenna_set_Target(this::RemoteTypes.Antenna, value::ETarget) = begin
            new(this, value)
        end
    this::RemoteTypes.Antenna
    value::ETarget
end
struct Antenna_get_TargetBody <: Request{:RemoteTech, :Antenna_get_TargetBody, SpaceCenter.RemoteTypes.CelestialBody}
    Antenna_get_TargetBody(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_set_TargetBody <: Request{:RemoteTech, :Antenna_set_TargetBody, Nothing}
    Antenna_set_TargetBody(this::RemoteTypes.Antenna, value::SpaceCenter.RemoteTypes.CelestialBody) = begin
            new(this, value)
        end
    this::RemoteTypes.Antenna
    value::SpaceCenter.RemoteTypes.CelestialBody
end
struct Antenna_get_TargetGroundStation <: Request{:RemoteTech, :Antenna_get_TargetGroundStation, String}
    Antenna_get_TargetGroundStation(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_set_TargetGroundStation <: Request{:RemoteTech, :Antenna_set_TargetGroundStation, Nothing}
    Antenna_set_TargetGroundStation(this::RemoteTypes.Antenna, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Antenna
    value::String
end
struct Antenna_get_TargetVessel <: Request{:RemoteTech, :Antenna_get_TargetVessel, SpaceCenter.RemoteTypes.Vessel}
    Antenna_get_TargetVessel(this::RemoteTypes.Antenna) = begin
            new(this)
        end
    this::RemoteTypes.Antenna
end
struct Antenna_set_TargetVessel <: Request{:RemoteTech, :Antenna_set_TargetVessel, Nothing}
    Antenna_set_TargetVessel(this::RemoteTypes.Antenna, value::SpaceCenter.RemoteTypes.Vessel) = begin
            new(this, value)
        end
    this::RemoteTypes.Antenna
    value::SpaceCenter.RemoteTypes.Vessel
end
struct Comms_SignalDelayToVessel <: Request{:RemoteTech, :Comms_SignalDelayToVessel, Float64}
    Comms_SignalDelayToVessel(this::RemoteTypes.Comms, other::SpaceCenter.RemoteTypes.Vessel) = begin
            new(this, other)
        end
    this::RemoteTypes.Comms
    other::SpaceCenter.RemoteTypes.Vessel
end
struct Comms_get_Vessel <: Request{:RemoteTech, :Comms_get_Vessel, SpaceCenter.RemoteTypes.Vessel}
    Comms_get_Vessel(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_HasLocalControl <: Request{:RemoteTech, :Comms_get_HasLocalControl, Bool}
    Comms_get_HasLocalControl(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_HasFlightComputer <: Request{:RemoteTech, :Comms_get_HasFlightComputer, Bool}
    Comms_get_HasFlightComputer(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_HasConnection <: Request{:RemoteTech, :Comms_get_HasConnection, Bool}
    Comms_get_HasConnection(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_HasConnectionToGroundStation <: Request{:RemoteTech, :Comms_get_HasConnectionToGroundStation, Bool}
    Comms_get_HasConnectionToGroundStation(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_SignalDelay <: Request{:RemoteTech, :Comms_get_SignalDelay, Float64}
    Comms_get_SignalDelay(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_SignalDelayToGroundStation <: Request{:RemoteTech, :Comms_get_SignalDelayToGroundStation, Float64}
    Comms_get_SignalDelayToGroundStation(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
struct Comms_get_Antennas <: Request{:RemoteTech, :Comms_get_Antennas, begin
                Array{RemoteTypes.Antenna, 1}
            end}
    Comms_get_Antennas(this::RemoteTypes.Comms) = begin
            new(this)
        end
    this::RemoteTypes.Comms
end
export Comms, Antenna, get_Available, get_GroundStations, Antenna_get_Part, Antenna_get_HasConnection, Antenna_get_Target, Antenna_set_Target, Antenna_get_TargetBody, Antenna_set_TargetBody, Antenna_get_TargetGroundStation, Antenna_set_TargetGroundStation, Antenna_get_TargetVessel, Antenna_set_TargetVessel, Comms_SignalDelayToVessel, Comms_get_Vessel, Comms_get_HasLocalControl, Comms_get_HasFlightComputer, Comms_get_HasConnection, Comms_get_HasConnectionToGroundStation, Comms_get_SignalDelay, Comms_get_SignalDelayToGroundStation, Comms_get_Antennas
module Helpers
import ....kerbal
import ....KRPCConnection
import ....Request
import ..RemoteTypes
import ...SpaceCenter
import ...RemoteTech.ETarget
import ..Comms as var"##482"
Comms(conn::KRPCConnection, vessel::SpaceCenter.RemoteTypes.Vessel) = begin
        kerbal(conn, var"##482"(vessel))
    end
@doc "    Comms(vessel::SpaceCenter.RemoteTypes.Vessel)\n\nGet a communications object, representing the communication capability of a particular vessel.\n\n" Comms
export Comms
import ..Antenna as var"##483"
Antenna(conn::KRPCConnection, part::SpaceCenter.RemoteTypes.Part) = begin
        kerbal(conn, var"##483"(part))
    end
@doc "    Antenna(part::SpaceCenter.RemoteTypes.Part)\n\nGet the antenna object for a particular part.\n\n" Antenna
export Antenna
import ..get_Available as var"##484"
Available(this::RemoteTypes.RemoteTech) = begin
        kerbal(this.conn, var"##484"())
    end
@doc "    Available()\n\nWhether RemoteTech is installed.\n\n" Available
export Available
import ..get_GroundStations as var"##485"
GroundStations(this::RemoteTypes.RemoteTech) = begin
        kerbal(this.conn, var"##485"())
    end
@doc "    GroundStations()\n\nThe names of the ground stations.\n\n" GroundStations
export GroundStations
import ..Antenna_get_Part as var"##486"
Part(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##486"(this))
    end
@doc "    Part(this::RemoteTypes.Antenna)\n\nGet the part containing this antenna.\n\n" Part
export Part
import ..Antenna_get_HasConnection as var"##487"
HasConnection(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##487"(this))
    end
@doc "    HasConnection(this::RemoteTypes.Antenna)\n\nWhether the antenna has a connection.\n\n" HasConnection
export HasConnection
import ..Antenna_get_Target as var"##488"
Target(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##488"(this))
    end
@doc "    Target(this::RemoteTypes.Antenna)\n\nThe object that the antenna is targetting.\nThis property can be used to set the target to  or .\nTo set the target to a celestial body, ground station or vessel see ,\n and .\n\n" Target
export Target
import ..Antenna_set_Target as var"##489"
Target!(this::RemoteTypes.Antenna, value::ETarget) = begin
        kerbal(this.conn, var"##489"(this, value))
    end
@doc "    Target!(this::RemoteTypes.Antenna, value::ETarget)\n\nThe object that the antenna is targetting.\nThis property can be used to set the target to  or .\nTo set the target to a celestial body, ground station or vessel see ,\n and .\n\n" Target!
export Target!
import ..Antenna_get_TargetBody as var"##490"
TargetBody(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##490"(this))
    end
@doc "    TargetBody(this::RemoteTypes.Antenna)\n\nThe celestial body the antenna is targetting.\n\n" TargetBody
export TargetBody
import ..Antenna_set_TargetBody as var"##491"
TargetBody!(this::RemoteTypes.Antenna, value::SpaceCenter.RemoteTypes.CelestialBody) = begin
        kerbal(this.conn, var"##491"(this, value))
    end
@doc "    TargetBody!(this::RemoteTypes.Antenna, value::SpaceCenter.RemoteTypes.CelestialBody)\n\nThe celestial body the antenna is targetting.\n\n" TargetBody!
export TargetBody!
import ..Antenna_get_TargetGroundStation as var"##492"
TargetGroundStation(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##492"(this))
    end
@doc "    TargetGroundStation(this::RemoteTypes.Antenna)\n\nThe ground station the antenna is targetting.\n\n" TargetGroundStation
export TargetGroundStation
import ..Antenna_set_TargetGroundStation as var"##493"
TargetGroundStation!(this::RemoteTypes.Antenna, value::String) = begin
        kerbal(this.conn, var"##493"(this, value))
    end
@doc "    TargetGroundStation!(this::RemoteTypes.Antenna, value::String)\n\nThe ground station the antenna is targetting.\n\n" TargetGroundStation!
export TargetGroundStation!
import ..Antenna_get_TargetVessel as var"##494"
TargetVessel(this::RemoteTypes.Antenna) = begin
        kerbal(this.conn, var"##494"(this))
    end
@doc "    TargetVessel(this::RemoteTypes.Antenna)\n\nThe vessel the antenna is targetting.\n\n" TargetVessel
export TargetVessel
import ..Antenna_set_TargetVessel as var"##495"
TargetVessel!(this::RemoteTypes.Antenna, value::SpaceCenter.RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##495"(this, value))
    end
@doc "    TargetVessel!(this::RemoteTypes.Antenna, value::SpaceCenter.RemoteTypes.Vessel)\n\nThe vessel the antenna is targetting.\n\n" TargetVessel!
export TargetVessel!
import ..Comms_SignalDelayToVessel as var"##496"
SignalDelayToVessel(this::RemoteTypes.Comms, other::SpaceCenter.RemoteTypes.Vessel) = begin
        kerbal(this.conn, var"##496"(this, other))
    end
@doc "    SignalDelayToVessel(this::RemoteTypes.Comms, other::SpaceCenter.RemoteTypes.Vessel)\n\nThe signal delay between the this vessel and another vessel, in seconds.\n\n# Arguments\n- `other::SpaceCenter.RemoteTypes.Vessel`: \n" SignalDelayToVessel
export SignalDelayToVessel
import ..Comms_get_Vessel as var"##497"
Vessel(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##497"(this))
    end
@doc "    Vessel(this::RemoteTypes.Comms)\n\nGet the vessel.\n\n" Vessel
export Vessel
import ..Comms_get_HasLocalControl as var"##498"
HasLocalControl(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##498"(this))
    end
@doc "    HasLocalControl(this::RemoteTypes.Comms)\n\nWhether the vessel can be controlled locally.\n\n" HasLocalControl
export HasLocalControl
import ..Comms_get_HasFlightComputer as var"##499"
HasFlightComputer(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##499"(this))
    end
@doc "    HasFlightComputer(this::RemoteTypes.Comms)\n\nWhether the vessel has a flight computer on board.\n\n" HasFlightComputer
export HasFlightComputer
import ..Comms_get_HasConnection as var"##500"
HasConnection(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##500"(this))
    end
@doc "    HasConnection(this::RemoteTypes.Comms)\n\nWhether the vessel has any connection.\n\n" HasConnection
export HasConnection
import ..Comms_get_HasConnectionToGroundStation as var"##501"
HasConnectionToGroundStation(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##501"(this))
    end
@doc "    HasConnectionToGroundStation(this::RemoteTypes.Comms)\n\nWhether the vessel has a connection to a ground station.\n\n" HasConnectionToGroundStation
export HasConnectionToGroundStation
import ..Comms_get_SignalDelay as var"##502"
SignalDelay(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##502"(this))
    end
@doc "    SignalDelay(this::RemoteTypes.Comms)\n\nThe shortest signal delay to the vessel, in seconds.\n\n" SignalDelay
export SignalDelay
import ..Comms_get_SignalDelayToGroundStation as var"##503"
SignalDelayToGroundStation(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##503"(this))
    end
@doc "    SignalDelayToGroundStation(this::RemoteTypes.Comms)\n\nThe signal delay between the vessel and the closest ground station, in seconds.\n\n" SignalDelayToGroundStation
export SignalDelayToGroundStation
import ..Comms_get_Antennas as var"##504"
Antennas(this::RemoteTypes.Comms) = begin
        kerbal(this.conn, var"##504"(this))
    end
@doc "    Antennas(this::RemoteTypes.Comms)\n\nThe antennas for this vessel.\n\n" Antennas
export Antennas
end
end
module Drawing
import ...kRPCTypes
import ...Request
import ..SpaceCenter
import ..UI
module RemoteTypes
import ....kRPCTypes
import ....KRPCConnection
struct Line <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Polygon <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Text <: kRPCTypes.Class
    conn::KRPCConnection
    id::Int
end
struct Drawing
    conn::KRPCConnection
end
export Line, Polygon, Text
export Drawing
end
struct AddLine <: Request{:Drawing, :AddLine, RemoteTypes.Line}
    AddLine(start::begin
                    Tuple{Float64, Float64, Float64}
                end, kEnd::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, visible::Bool) = begin
            new(start, kEnd, referenceFrame, visible)
        end
    start::begin
            Tuple{Float64, Float64, Float64}
        end
    kEnd::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame
    visible::Bool
end
struct AddDirection <: Request{:Drawing, :AddDirection, RemoteTypes.Line}
    AddDirection(direction::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, length::Float32, visible::Bool) = begin
            new(direction, referenceFrame, length, visible)
        end
    direction::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame
    length::Float32
    visible::Bool
end
struct AddDirectionFromCom <: Request{:Drawing, :AddDirectionFromCom, RemoteTypes.Line}
    AddDirectionFromCom(direction::begin
                    Tuple{Float64, Float64, Float64}
                end, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, length::Float32, visible::Bool) = begin
            new(direction, referenceFrame, length, visible)
        end
    direction::begin
            Tuple{Float64, Float64, Float64}
        end
    referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame
    length::Float32
    visible::Bool
end
struct AddPolygon <: Request{:Drawing, :AddPolygon, RemoteTypes.Polygon}
    AddPolygon(vertices::begin
                    Array{begin
                            Tuple{Float64, Float64, Float64}
                        end, 1}
                end, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, visible::Bool) = begin
            new(vertices, referenceFrame, visible)
        end
    vertices::begin
            Array{begin
                    Tuple{Float64, Float64, Float64}
                end, 1}
        end
    referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame
    visible::Bool
end
struct AddText <: Request{:Drawing, :AddText, RemoteTypes.Text}
    AddText(text::String, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, position::begin
                    Tuple{Float64, Float64, Float64}
                end, rotation::begin
                    Tuple{Float64, Float64, Float64, Float64}
                end, visible::Bool) = begin
            new(text, referenceFrame, position, rotation, visible)
        end
    text::String
    referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame
    position::begin
            Tuple{Float64, Float64, Float64}
        end
    rotation::begin
            Tuple{Float64, Float64, Float64, Float64}
        end
    visible::Bool
end
struct Clear <: Request{:Drawing, :Clear, Nothing}
    Clear(clientOnly::Bool) = begin
            new(clientOnly)
        end
    clientOnly::Bool
end
struct Line_Remove <: Request{:Drawing, :Line_Remove, Nothing}
    Line_Remove(this::RemoteTypes.Line) = begin
            new(this)
        end
    this::RemoteTypes.Line
end
struct Line_get_Start <: Request{:Drawing, :Line_get_Start, begin
                Tuple{Float64, Float64, Float64}
            end}
    Line_get_Start(this::RemoteTypes.Line) = begin
            new(this)
        end
    this::RemoteTypes.Line
end
struct Line_set_Start <: Request{:Drawing, :Line_set_Start, Nothing}
    Line_set_Start(this::RemoteTypes.Line, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Line
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Line_get_End <: Request{:Drawing, :Line_get_End, begin
                Tuple{Float64, Float64, Float64}
            end}
    Line_get_End(this::RemoteTypes.Line) = begin
            new(this)
        end
    this::RemoteTypes.Line
end
struct Line_set_End <: Request{:Drawing, :Line_set_End, Nothing}
    Line_set_End(this::RemoteTypes.Line, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Line
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Line_get_Color <: Request{:Drawing, :Line_get_Color, begin
                Tuple{Float64, Float64, Float64}
            end}
    Line_get_Color(this::RemoteTypes.Line) = begin
            new(this)
        end
    this::RemoteTypes.Line
end
struct Line_set_Color <: Request{:Drawing, :Line_set_Color, Nothing}
    Line_set_Color(this::RemoteTypes.Line, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Line
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Line_get_Thickness <: Request{:Drawing, :Line_get_Thickness, Float32}
    Line_get_Thickness(this::RemoteTypes.Line) = begin
            new(this)
        end
    this::RemoteTypes.Line
end
struct Line_set_Thickness <: Request{:Drawing, :Line_set_Thickness, Nothing}
    Line_set_Thickness(this::RemoteTypes.Line, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Line
    value::Float32
end
struct Line_get_ReferenceFrame <: Request{:Drawing, :Line_get_ReferenceFrame, SpaceCenter.RemoteTypes.ReferenceFrame}
    Line_get_ReferenceFrame(this::RemoteTypes.Line) = begin
            new(this)
        end
    this::RemoteTypes.Line
end
struct Line_set_ReferenceFrame <: Request{:Drawing, :Line_set_ReferenceFrame, Nothing}
    Line_set_ReferenceFrame(this::RemoteTypes.Line, value::SpaceCenter.RemoteTypes.ReferenceFrame) = begin
            new(this, value)
        end
    this::RemoteTypes.Line
    value::SpaceCenter.RemoteTypes.ReferenceFrame
end
struct Line_get_Visible <: Request{:Drawing, :Line_get_Visible, Bool}
    Line_get_Visible(this::RemoteTypes.Line) = begin
            new(this)
        end
    this::RemoteTypes.Line
end
struct Line_set_Visible <: Request{:Drawing, :Line_set_Visible, Nothing}
    Line_set_Visible(this::RemoteTypes.Line, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Line
    value::Bool
end
struct Line_get_Material <: Request{:Drawing, :Line_get_Material, String}
    Line_get_Material(this::RemoteTypes.Line) = begin
            new(this)
        end
    this::RemoteTypes.Line
end
struct Line_set_Material <: Request{:Drawing, :Line_set_Material, Nothing}
    Line_set_Material(this::RemoteTypes.Line, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Line
    value::String
end
struct Polygon_Remove <: Request{:Drawing, :Polygon_Remove, Nothing}
    Polygon_Remove(this::RemoteTypes.Polygon) = begin
            new(this)
        end
    this::RemoteTypes.Polygon
end
struct Polygon_get_Vertices <: Request{:Drawing, :Polygon_get_Vertices, begin
                Array{begin
                        Tuple{Float64, Float64, Float64}
                    end, 1}
            end}
    Polygon_get_Vertices(this::RemoteTypes.Polygon) = begin
            new(this)
        end
    this::RemoteTypes.Polygon
end
struct Polygon_set_Vertices <: Request{:Drawing, :Polygon_set_Vertices, Nothing}
    Polygon_set_Vertices(this::RemoteTypes.Polygon, value::begin
                    Array{begin
                            Tuple{Float64, Float64, Float64}
                        end, 1}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Polygon
    value::begin
            Array{begin
                    Tuple{Float64, Float64, Float64}
                end, 1}
        end
end
struct Polygon_get_Color <: Request{:Drawing, :Polygon_get_Color, begin
                Tuple{Float64, Float64, Float64}
            end}
    Polygon_get_Color(this::RemoteTypes.Polygon) = begin
            new(this)
        end
    this::RemoteTypes.Polygon
end
struct Polygon_set_Color <: Request{:Drawing, :Polygon_set_Color, Nothing}
    Polygon_set_Color(this::RemoteTypes.Polygon, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Polygon
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Polygon_get_Thickness <: Request{:Drawing, :Polygon_get_Thickness, Float32}
    Polygon_get_Thickness(this::RemoteTypes.Polygon) = begin
            new(this)
        end
    this::RemoteTypes.Polygon
end
struct Polygon_set_Thickness <: Request{:Drawing, :Polygon_set_Thickness, Nothing}
    Polygon_set_Thickness(this::RemoteTypes.Polygon, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Polygon
    value::Float32
end
struct Polygon_get_ReferenceFrame <: Request{:Drawing, :Polygon_get_ReferenceFrame, SpaceCenter.RemoteTypes.ReferenceFrame}
    Polygon_get_ReferenceFrame(this::RemoteTypes.Polygon) = begin
            new(this)
        end
    this::RemoteTypes.Polygon
end
struct Polygon_set_ReferenceFrame <: Request{:Drawing, :Polygon_set_ReferenceFrame, Nothing}
    Polygon_set_ReferenceFrame(this::RemoteTypes.Polygon, value::SpaceCenter.RemoteTypes.ReferenceFrame) = begin
            new(this, value)
        end
    this::RemoteTypes.Polygon
    value::SpaceCenter.RemoteTypes.ReferenceFrame
end
struct Polygon_get_Visible <: Request{:Drawing, :Polygon_get_Visible, Bool}
    Polygon_get_Visible(this::RemoteTypes.Polygon) = begin
            new(this)
        end
    this::RemoteTypes.Polygon
end
struct Polygon_set_Visible <: Request{:Drawing, :Polygon_set_Visible, Nothing}
    Polygon_set_Visible(this::RemoteTypes.Polygon, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Polygon
    value::Bool
end
struct Polygon_get_Material <: Request{:Drawing, :Polygon_get_Material, String}
    Polygon_get_Material(this::RemoteTypes.Polygon) = begin
            new(this)
        end
    this::RemoteTypes.Polygon
end
struct Polygon_set_Material <: Request{:Drawing, :Polygon_set_Material, Nothing}
    Polygon_set_Material(this::RemoteTypes.Polygon, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Polygon
    value::String
end
struct Text_static_AvailableFonts <: Request{:Drawing, :Text_static_AvailableFonts, begin
                Array{String, 1}
            end}
    Text_static_AvailableFonts() = begin
            new()
        end
end
struct Text_Remove <: Request{:Drawing, :Text_Remove, Nothing}
    Text_Remove(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_get_Position <: Request{:Drawing, :Text_get_Position, begin
                Tuple{Float64, Float64, Float64}
            end}
    Text_get_Position(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Position <: Request{:Drawing, :Text_set_Position, Nothing}
    Text_set_Position(this::RemoteTypes.Text, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Text_get_Rotation <: Request{:Drawing, :Text_get_Rotation, begin
                Tuple{Float64, Float64, Float64, Float64}
            end}
    Text_get_Rotation(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Rotation <: Request{:Drawing, :Text_set_Rotation, Nothing}
    Text_set_Rotation(this::RemoteTypes.Text, value::begin
                    Tuple{Float64, Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::begin
            Tuple{Float64, Float64, Float64, Float64}
        end
end
struct Text_get_Content <: Request{:Drawing, :Text_get_Content, String}
    Text_get_Content(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Content <: Request{:Drawing, :Text_set_Content, Nothing}
    Text_set_Content(this::RemoteTypes.Text, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::String
end
struct Text_get_Font <: Request{:Drawing, :Text_get_Font, String}
    Text_get_Font(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Font <: Request{:Drawing, :Text_set_Font, Nothing}
    Text_set_Font(this::RemoteTypes.Text, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::String
end
struct Text_get_Size <: Request{:Drawing, :Text_get_Size, Int32}
    Text_get_Size(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Size <: Request{:Drawing, :Text_set_Size, Nothing}
    Text_set_Size(this::RemoteTypes.Text, value::Int32) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::Int32
end
struct Text_get_CharacterSize <: Request{:Drawing, :Text_get_CharacterSize, Float32}
    Text_get_CharacterSize(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_CharacterSize <: Request{:Drawing, :Text_set_CharacterSize, Nothing}
    Text_set_CharacterSize(this::RemoteTypes.Text, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::Float32
end
struct Text_get_Style <: Request{:Drawing, :Text_get_Style, UI.EFontStyle}
    Text_get_Style(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Style <: Request{:Drawing, :Text_set_Style, Nothing}
    Text_set_Style(this::RemoteTypes.Text, value::UI.EFontStyle) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::UI.EFontStyle
end
struct Text_get_Alignment <: Request{:Drawing, :Text_get_Alignment, UI.ETextAlignment}
    Text_get_Alignment(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Alignment <: Request{:Drawing, :Text_set_Alignment, Nothing}
    Text_set_Alignment(this::RemoteTypes.Text, value::UI.ETextAlignment) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::UI.ETextAlignment
end
struct Text_get_LineSpacing <: Request{:Drawing, :Text_get_LineSpacing, Float32}
    Text_get_LineSpacing(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_LineSpacing <: Request{:Drawing, :Text_set_LineSpacing, Nothing}
    Text_set_LineSpacing(this::RemoteTypes.Text, value::Float32) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::Float32
end
struct Text_get_Anchor <: Request{:Drawing, :Text_get_Anchor, UI.ETextAnchor}
    Text_get_Anchor(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Anchor <: Request{:Drawing, :Text_set_Anchor, Nothing}
    Text_set_Anchor(this::RemoteTypes.Text, value::UI.ETextAnchor) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::UI.ETextAnchor
end
struct Text_get_Color <: Request{:Drawing, :Text_get_Color, begin
                Tuple{Float64, Float64, Float64}
            end}
    Text_get_Color(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Color <: Request{:Drawing, :Text_set_Color, Nothing}
    Text_set_Color(this::RemoteTypes.Text, value::begin
                    Tuple{Float64, Float64, Float64}
                end) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::begin
            Tuple{Float64, Float64, Float64}
        end
end
struct Text_get_ReferenceFrame <: Request{:Drawing, :Text_get_ReferenceFrame, SpaceCenter.RemoteTypes.ReferenceFrame}
    Text_get_ReferenceFrame(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_ReferenceFrame <: Request{:Drawing, :Text_set_ReferenceFrame, Nothing}
    Text_set_ReferenceFrame(this::RemoteTypes.Text, value::SpaceCenter.RemoteTypes.ReferenceFrame) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::SpaceCenter.RemoteTypes.ReferenceFrame
end
struct Text_get_Visible <: Request{:Drawing, :Text_get_Visible, Bool}
    Text_get_Visible(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Visible <: Request{:Drawing, :Text_set_Visible, Nothing}
    Text_set_Visible(this::RemoteTypes.Text, value::Bool) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::Bool
end
struct Text_get_Material <: Request{:Drawing, :Text_get_Material, String}
    Text_get_Material(this::RemoteTypes.Text) = begin
            new(this)
        end
    this::RemoteTypes.Text
end
struct Text_set_Material <: Request{:Drawing, :Text_set_Material, Nothing}
    Text_set_Material(this::RemoteTypes.Text, value::String) = begin
            new(this, value)
        end
    this::RemoteTypes.Text
    value::String
end
export AddLine, AddDirection, AddDirectionFromCom, AddPolygon, AddText, Clear, Line_Remove, Line_get_Start, Line_set_Start, Line_get_End, Line_set_End, Line_get_Color, Line_set_Color, Line_get_Thickness, Line_set_Thickness, Line_get_ReferenceFrame, Line_set_ReferenceFrame, Line_get_Visible, Line_set_Visible, Line_get_Material, Line_set_Material, Polygon_Remove, Polygon_get_Vertices, Polygon_set_Vertices, Polygon_get_Color, Polygon_set_Color, Polygon_get_Thickness, Polygon_set_Thickness, Polygon_get_ReferenceFrame, Polygon_set_ReferenceFrame, Polygon_get_Visible, Polygon_set_Visible, Polygon_get_Material, Polygon_set_Material, Text_static_AvailableFonts, Text_Remove, Text_get_Position, Text_set_Position, Text_get_Rotation, Text_set_Rotation, Text_get_Content, Text_set_Content, Text_get_Font, Text_set_Font, Text_get_Size, Text_set_Size, Text_get_CharacterSize, Text_set_CharacterSize, Text_get_Style, Text_set_Style, Text_get_Alignment, Text_set_Alignment, Text_get_LineSpacing, Text_set_LineSpacing, Text_get_Anchor, Text_set_Anchor, Text_get_Color, Text_set_Color, Text_get_ReferenceFrame, Text_set_ReferenceFrame, Text_get_Visible, Text_set_Visible, Text_get_Material, Text_set_Material
module Helpers
import ....kerbal
import ....KRPCConnection
import ....Request
import ..RemoteTypes
import ...SpaceCenter
import ...UI
import ...UI.ETextAnchor
import ...UI.EFontStyle
import ...UI.ETextAlignment
import ..AddLine as var"##329"
AddLine(conn::KRPCConnection, start::begin
                Tuple{Float64, Float64, Float64}
            end, kEnd::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(conn, var"##329"(start, kEnd, referenceFrame, visible))
    end
@doc "    AddLine(start::begin\n    Tuple{Float64, Float64, Float64}\nend, kEnd::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, visible::Bool)\n\nDraw a line in the scene.\n\n# Arguments\n- `start::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position of the start of the line.\n- `kEnd::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position of the end of the line.\n- `referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame`: Reference frame that the positions are in.\n- `visible::Bool`: Whether the line is visible.\n" AddLine
export AddLine
import ..AddDirection as var"##330"
AddDirection(conn::KRPCConnection, direction::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, length::Float32 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x20, 0x41], Float32), visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(conn, var"##330"(direction, referenceFrame, length, visible))
    end
@doc "    AddDirection(direction::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, length::Float32, visible::Bool)\n\nDraw a direction vector in the scene, starting from the origin of the given reference frame.\n\n# Arguments\n- `direction::begin\n    Tuple{Float64, Float64, Float64}\nend`: Direction to draw the line in.\n- `referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame`: Reference frame that the direction is in and defines the start position.\n- `length::Float32`: The length of the line.\n- `visible::Bool`: Whether the line is visible.\n" AddDirection
export AddDirection
import ..AddDirectionFromCom as var"##331"
AddDirectionFromCom(conn::KRPCConnection, direction::begin
                Tuple{Float64, Float64, Float64}
            end, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, length::Float32 = getJuliaValue(this.conn, UInt8[0x00, 0x00, 0x20, 0x41], Float32), visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(conn, var"##331"(direction, referenceFrame, length, visible))
    end
@doc "    AddDirectionFromCom(direction::begin\n    Tuple{Float64, Float64, Float64}\nend, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, length::Float32, visible::Bool)\n\nDraw a direction vector in the scene, from the center of mass of the active vessel.\n\n# Arguments\n- `direction::begin\n    Tuple{Float64, Float64, Float64}\nend`: Direction to draw the line in.\n- `referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame`: Reference frame that the direction is in.\n- `length::Float32`: The length of the line.\n- `visible::Bool`: Whether the line is visible.\n" AddDirectionFromCom
export AddDirectionFromCom
import ..AddPolygon as var"##332"
AddPolygon(conn::KRPCConnection, vertices::begin
                Array{begin
                        Tuple{Float64, Float64, Float64}
                    end, 1}
            end, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(conn, var"##332"(vertices, referenceFrame, visible))
    end
@doc "    AddPolygon(vertices::begin\n    Array{begin\n            Tuple{Float64, Float64, Float64}\n        end, 1}\nend, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, visible::Bool)\n\nDraw a polygon in the scene, defined by a list of vertices.\n\n# Arguments\n- `vertices::begin\n    Array{begin\n            Tuple{Float64, Float64, Float64}\n        end, 1}\nend`: Vertices of the polygon.\n- `referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame`: Reference frame that the vertices are in.\n- `visible::Bool`: Whether the polygon is visible.\n" AddPolygon
export AddPolygon
import ..AddText as var"##333"
AddText(conn::KRPCConnection, text::String, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, position::begin
                Tuple{Float64, Float64, Float64}
            end, rotation::begin
                Tuple{Float64, Float64, Float64, Float64}
            end, visible::Bool = getJuliaValue(this.conn, UInt8[0x01], Bool)) = begin
        kerbal(conn, var"##333"(text, referenceFrame, position, rotation, visible))
    end
@doc "    AddText(text::String, referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame, position::begin\n    Tuple{Float64, Float64, Float64}\nend, rotation::begin\n    Tuple{Float64, Float64, Float64, Float64}\nend, visible::Bool)\n\nDraw text in the scene.\n\n# Arguments\n- `text::String`: The string to draw.\n- `referenceFrame::SpaceCenter.RemoteTypes.ReferenceFrame`: Reference frame that the text position is in.\n- `position::begin\n    Tuple{Float64, Float64, Float64}\nend`: Position of the text.\n- `rotation::begin\n    Tuple{Float64, Float64, Float64, Float64}\nend`: Rotation of the text, as a quaternion.\n- `visible::Bool`: Whether the text is visible.\n" AddText
export AddText
import ..Clear as var"##334"
Clear(conn::KRPCConnection, clientOnly::Bool = getJuliaValue(this.conn, UInt8[0x00], Bool)) = begin
        kerbal(conn, var"##334"(clientOnly))
    end
@doc "    Clear(clientOnly::Bool)\n\nRemove all objects being drawn.\n\n# Arguments\n- `clientOnly::Bool`: If true, only remove objects created by the calling client.\n" Clear
export Clear
import ..Line_Remove as var"##335"
Remove(this::RemoteTypes.Line) = begin
        kerbal(this.conn, var"##335"(this))
    end
@doc "    Remove(this::RemoteTypes.Line)\n\nRemove the object.\n\n" Remove
export Remove
import ..Line_get_Start as var"##336"
Start(this::RemoteTypes.Line) = begin
        kerbal(this.conn, var"##336"(this))
    end
@doc "    Start(this::RemoteTypes.Line)\n\nStart position of the line.\n\n" Start
export Start
import ..Line_set_Start as var"##337"
Start!(this::RemoteTypes.Line, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##337"(this, value))
    end
@doc "    Start!(this::RemoteTypes.Line, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nStart position of the line.\n\n" Start!
export Start!
import ..Line_get_End as var"##338"
End(this::RemoteTypes.Line) = begin
        kerbal(this.conn, var"##338"(this))
    end
@doc "    End(this::RemoteTypes.Line)\n\nEnd position of the line.\n\n" End
export End
import ..Line_set_End as var"##339"
End!(this::RemoteTypes.Line, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##339"(this, value))
    end
@doc "    End!(this::RemoteTypes.Line, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nEnd position of the line.\n\n" End!
export End!
import ..Line_get_Color as var"##340"
Color(this::RemoteTypes.Line) = begin
        kerbal(this.conn, var"##340"(this))
    end
@doc "    Color(this::RemoteTypes.Line)\n\nSet the color\n\n" Color
export Color
import ..Line_set_Color as var"##341"
Color!(this::RemoteTypes.Line, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##341"(this, value))
    end
@doc "    Color!(this::RemoteTypes.Line, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nSet the color\n\n" Color!
export Color!
import ..Line_get_Thickness as var"##342"
Thickness(this::RemoteTypes.Line) = begin
        kerbal(this.conn, var"##342"(this))
    end
@doc "    Thickness(this::RemoteTypes.Line)\n\nSet the thickness\n\n" Thickness
export Thickness
import ..Line_set_Thickness as var"##343"
Thickness!(this::RemoteTypes.Line, value::Float32) = begin
        kerbal(this.conn, var"##343"(this, value))
    end
@doc "    Thickness!(this::RemoteTypes.Line, value::Float32)\n\nSet the thickness\n\n" Thickness!
export Thickness!
import ..Line_get_ReferenceFrame as var"##344"
ReferenceFrame(this::RemoteTypes.Line) = begin
        kerbal(this.conn, var"##344"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.Line)\n\nReference frame for the positions of the object.\n\n" ReferenceFrame
export ReferenceFrame
import ..Line_set_ReferenceFrame as var"##345"
ReferenceFrame!(this::RemoteTypes.Line, value::SpaceCenter.RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##345"(this, value))
    end
@doc "    ReferenceFrame!(this::RemoteTypes.Line, value::SpaceCenter.RemoteTypes.ReferenceFrame)\n\nReference frame for the positions of the object.\n\n" ReferenceFrame!
export ReferenceFrame!
import ..Line_get_Visible as var"##346"
Visible(this::RemoteTypes.Line) = begin
        kerbal(this.conn, var"##346"(this))
    end
@doc "    Visible(this::RemoteTypes.Line)\n\nWhether the object is visible.\n\n" Visible
export Visible
import ..Line_set_Visible as var"##347"
Visible!(this::RemoteTypes.Line, value::Bool) = begin
        kerbal(this.conn, var"##347"(this, value))
    end
@doc "    Visible!(this::RemoteTypes.Line, value::Bool)\n\nWhether the object is visible.\n\n" Visible!
export Visible!
import ..Line_get_Material as var"##348"
Material(this::RemoteTypes.Line) = begin
        kerbal(this.conn, var"##348"(this))
    end
@doc "    Material(this::RemoteTypes.Line)\n\nMaterial used to render the object.\nCreates the material from a shader with the given name.\n\n" Material
export Material
import ..Line_set_Material as var"##349"
Material!(this::RemoteTypes.Line, value::String) = begin
        kerbal(this.conn, var"##349"(this, value))
    end
@doc "    Material!(this::RemoteTypes.Line, value::String)\n\nMaterial used to render the object.\nCreates the material from a shader with the given name.\n\n" Material!
export Material!
import ..Polygon_Remove as var"##350"
Remove(this::RemoteTypes.Polygon) = begin
        kerbal(this.conn, var"##350"(this))
    end
@doc "    Remove(this::RemoteTypes.Polygon)\n\nRemove the object.\n\n" Remove
export Remove
import ..Polygon_get_Vertices as var"##351"
Vertices(this::RemoteTypes.Polygon) = begin
        kerbal(this.conn, var"##351"(this))
    end
@doc "    Vertices(this::RemoteTypes.Polygon)\n\nVertices for the polygon.\n\n" Vertices
export Vertices
import ..Polygon_set_Vertices as var"##352"
Vertices!(this::RemoteTypes.Polygon, value::begin
                Array{begin
                        Tuple{Float64, Float64, Float64}
                    end, 1}
            end) = begin
        kerbal(this.conn, var"##352"(this, value))
    end
@doc "    Vertices!(this::RemoteTypes.Polygon, value::begin\n    Array{begin\n            Tuple{Float64, Float64, Float64}\n        end, 1}\nend)\n\nVertices for the polygon.\n\n" Vertices!
export Vertices!
import ..Polygon_get_Color as var"##353"
Color(this::RemoteTypes.Polygon) = begin
        kerbal(this.conn, var"##353"(this))
    end
@doc "    Color(this::RemoteTypes.Polygon)\n\nSet the color\n\n" Color
export Color
import ..Polygon_set_Color as var"##354"
Color!(this::RemoteTypes.Polygon, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##354"(this, value))
    end
@doc "    Color!(this::RemoteTypes.Polygon, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nSet the color\n\n" Color!
export Color!
import ..Polygon_get_Thickness as var"##355"
Thickness(this::RemoteTypes.Polygon) = begin
        kerbal(this.conn, var"##355"(this))
    end
@doc "    Thickness(this::RemoteTypes.Polygon)\n\nSet the thickness\n\n" Thickness
export Thickness
import ..Polygon_set_Thickness as var"##356"
Thickness!(this::RemoteTypes.Polygon, value::Float32) = begin
        kerbal(this.conn, var"##356"(this, value))
    end
@doc "    Thickness!(this::RemoteTypes.Polygon, value::Float32)\n\nSet the thickness\n\n" Thickness!
export Thickness!
import ..Polygon_get_ReferenceFrame as var"##357"
ReferenceFrame(this::RemoteTypes.Polygon) = begin
        kerbal(this.conn, var"##357"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.Polygon)\n\nReference frame for the positions of the object.\n\n" ReferenceFrame
export ReferenceFrame
import ..Polygon_set_ReferenceFrame as var"##358"
ReferenceFrame!(this::RemoteTypes.Polygon, value::SpaceCenter.RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##358"(this, value))
    end
@doc "    ReferenceFrame!(this::RemoteTypes.Polygon, value::SpaceCenter.RemoteTypes.ReferenceFrame)\n\nReference frame for the positions of the object.\n\n" ReferenceFrame!
export ReferenceFrame!
import ..Polygon_get_Visible as var"##359"
Visible(this::RemoteTypes.Polygon) = begin
        kerbal(this.conn, var"##359"(this))
    end
@doc "    Visible(this::RemoteTypes.Polygon)\n\nWhether the object is visible.\n\n" Visible
export Visible
import ..Polygon_set_Visible as var"##360"
Visible!(this::RemoteTypes.Polygon, value::Bool) = begin
        kerbal(this.conn, var"##360"(this, value))
    end
@doc "    Visible!(this::RemoteTypes.Polygon, value::Bool)\n\nWhether the object is visible.\n\n" Visible!
export Visible!
import ..Polygon_get_Material as var"##361"
Material(this::RemoteTypes.Polygon) = begin
        kerbal(this.conn, var"##361"(this))
    end
@doc "    Material(this::RemoteTypes.Polygon)\n\nMaterial used to render the object.\nCreates the material from a shader with the given name.\n\n" Material
export Material
import ..Polygon_set_Material as var"##362"
Material!(this::RemoteTypes.Polygon, value::String) = begin
        kerbal(this.conn, var"##362"(this, value))
    end
@doc "    Material!(this::RemoteTypes.Polygon, value::String)\n\nMaterial used to render the object.\nCreates the material from a shader with the given name.\n\n" Material!
export Material!
import ..Text_static_AvailableFonts as var"##363"
AvailableFonts(conn::KRPCConnection) = begin
        kerbal(conn, var"##363"())
    end
@doc "    AvailableFonts()\n\nA list of all available fonts.\n\n" AvailableFonts
export AvailableFonts
import ..Text_Remove as var"##364"
Remove(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##364"(this))
    end
@doc "    Remove(this::RemoteTypes.Text)\n\nRemove the object.\n\n" Remove
export Remove
import ..Text_get_Position as var"##365"
Position(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##365"(this))
    end
@doc "    Position(this::RemoteTypes.Text)\n\nPosition of the text.\n\n" Position
export Position
import ..Text_set_Position as var"##366"
Position!(this::RemoteTypes.Text, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##366"(this, value))
    end
@doc "    Position!(this::RemoteTypes.Text, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nPosition of the text.\n\n" Position!
export Position!
import ..Text_get_Rotation as var"##367"
Rotation(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##367"(this))
    end
@doc "    Rotation(this::RemoteTypes.Text)\n\nRotation of the text as a quaternion.\n\n" Rotation
export Rotation
import ..Text_set_Rotation as var"##368"
Rotation!(this::RemoteTypes.Text, value::begin
                Tuple{Float64, Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##368"(this, value))
    end
@doc "    Rotation!(this::RemoteTypes.Text, value::begin\n    Tuple{Float64, Float64, Float64, Float64}\nend)\n\nRotation of the text as a quaternion.\n\n" Rotation!
export Rotation!
import ..Text_get_Content as var"##369"
Content(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##369"(this))
    end
@doc "    Content(this::RemoteTypes.Text)\n\nThe text string\n\n" Content
export Content
import ..Text_set_Content as var"##370"
Content!(this::RemoteTypes.Text, value::String) = begin
        kerbal(this.conn, var"##370"(this, value))
    end
@doc "    Content!(this::RemoteTypes.Text, value::String)\n\nThe text string\n\n" Content!
export Content!
import ..Text_get_Font as var"##371"
Font(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##371"(this))
    end
@doc "    Font(this::RemoteTypes.Text)\n\nName of the font\n\n" Font
export Font
import ..Text_set_Font as var"##372"
Font!(this::RemoteTypes.Text, value::String) = begin
        kerbal(this.conn, var"##372"(this, value))
    end
@doc "    Font!(this::RemoteTypes.Text, value::String)\n\nName of the font\n\n" Font!
export Font!
import ..Text_get_Size as var"##373"
Size(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##373"(this))
    end
@doc "    Size(this::RemoteTypes.Text)\n\nFont size.\n\n" Size
export Size
import ..Text_set_Size as var"##374"
Size!(this::RemoteTypes.Text, value::Int32) = begin
        kerbal(this.conn, var"##374"(this, value))
    end
@doc "    Size!(this::RemoteTypes.Text, value::Int32)\n\nFont size.\n\n" Size!
export Size!
import ..Text_get_CharacterSize as var"##375"
CharacterSize(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##375"(this))
    end
@doc "    CharacterSize(this::RemoteTypes.Text)\n\nCharacter size.\n\n" CharacterSize
export CharacterSize
import ..Text_set_CharacterSize as var"##376"
CharacterSize!(this::RemoteTypes.Text, value::Float32) = begin
        kerbal(this.conn, var"##376"(this, value))
    end
@doc "    CharacterSize!(this::RemoteTypes.Text, value::Float32)\n\nCharacter size.\n\n" CharacterSize!
export CharacterSize!
import ..Text_get_Style as var"##377"
Style(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##377"(this))
    end
@doc "    Style(this::RemoteTypes.Text)\n\nFont style.\n\n" Style
export Style
import ..Text_set_Style as var"##378"
Style!(this::RemoteTypes.Text, value::UI.EFontStyle) = begin
        kerbal(this.conn, var"##378"(this, value))
    end
@doc "    Style!(this::RemoteTypes.Text, value::UI.EFontStyle)\n\nFont style.\n\n" Style!
export Style!
import ..Text_get_Alignment as var"##379"
Alignment(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##379"(this))
    end
@doc "    Alignment(this::RemoteTypes.Text)\n\nAlignment.\n\n" Alignment
export Alignment
import ..Text_set_Alignment as var"##380"
Alignment!(this::RemoteTypes.Text, value::UI.ETextAlignment) = begin
        kerbal(this.conn, var"##380"(this, value))
    end
@doc "    Alignment!(this::RemoteTypes.Text, value::UI.ETextAlignment)\n\nAlignment.\n\n" Alignment!
export Alignment!
import ..Text_get_LineSpacing as var"##381"
LineSpacing(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##381"(this))
    end
@doc "    LineSpacing(this::RemoteTypes.Text)\n\nLine spacing.\n\n" LineSpacing
export LineSpacing
import ..Text_set_LineSpacing as var"##382"
LineSpacing!(this::RemoteTypes.Text, value::Float32) = begin
        kerbal(this.conn, var"##382"(this, value))
    end
@doc "    LineSpacing!(this::RemoteTypes.Text, value::Float32)\n\nLine spacing.\n\n" LineSpacing!
export LineSpacing!
import ..Text_get_Anchor as var"##383"
Anchor(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##383"(this))
    end
@doc "    Anchor(this::RemoteTypes.Text)\n\nAnchor.\n\n" Anchor
export Anchor
import ..Text_set_Anchor as var"##384"
Anchor!(this::RemoteTypes.Text, value::UI.ETextAnchor) = begin
        kerbal(this.conn, var"##384"(this, value))
    end
@doc "    Anchor!(this::RemoteTypes.Text, value::UI.ETextAnchor)\n\nAnchor.\n\n" Anchor!
export Anchor!
import ..Text_get_Color as var"##385"
Color(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##385"(this))
    end
@doc "    Color(this::RemoteTypes.Text)\n\nSet the color\n\n" Color
export Color
import ..Text_set_Color as var"##386"
Color!(this::RemoteTypes.Text, value::begin
                Tuple{Float64, Float64, Float64}
            end) = begin
        kerbal(this.conn, var"##386"(this, value))
    end
@doc "    Color!(this::RemoteTypes.Text, value::begin\n    Tuple{Float64, Float64, Float64}\nend)\n\nSet the color\n\n" Color!
export Color!
import ..Text_get_ReferenceFrame as var"##387"
ReferenceFrame(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##387"(this))
    end
@doc "    ReferenceFrame(this::RemoteTypes.Text)\n\nReference frame for the positions of the object.\n\n" ReferenceFrame
export ReferenceFrame
import ..Text_set_ReferenceFrame as var"##388"
ReferenceFrame!(this::RemoteTypes.Text, value::SpaceCenter.RemoteTypes.ReferenceFrame) = begin
        kerbal(this.conn, var"##388"(this, value))
    end
@doc "    ReferenceFrame!(this::RemoteTypes.Text, value::SpaceCenter.RemoteTypes.ReferenceFrame)\n\nReference frame for the positions of the object.\n\n" ReferenceFrame!
export ReferenceFrame!
import ..Text_get_Visible as var"##389"
Visible(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##389"(this))
    end
@doc "    Visible(this::RemoteTypes.Text)\n\nWhether the object is visible.\n\n" Visible
export Visible
import ..Text_set_Visible as var"##390"
Visible!(this::RemoteTypes.Text, value::Bool) = begin
        kerbal(this.conn, var"##390"(this, value))
    end
@doc "    Visible!(this::RemoteTypes.Text, value::Bool)\n\nWhether the object is visible.\n\n" Visible!
export Visible!
import ..Text_get_Material as var"##391"
Material(this::RemoteTypes.Text) = begin
        kerbal(this.conn, var"##391"(this))
    end
@doc "    Material(this::RemoteTypes.Text)\n\nMaterial used to render the object.\nCreates the material from a shader with the given name.\n\n" Material
export Material
import ..Text_set_Material as var"##392"
Material!(this::RemoteTypes.Text, value::String) = begin
        kerbal(this.conn, var"##392"(this, value))
    end
@doc "    Material!(this::RemoteTypes.Text, value::String)\n\nMaterial used to render the object.\nCreates the material from a shader with the given name.\n\n" Material!
export Material!
end
end
version = "0.4.8"
end
