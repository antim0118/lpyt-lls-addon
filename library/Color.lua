---@meta Цвет

---@alias ColorInstance userdata

---@class Color
Color = {};

---создание нового цвета
---@param r number содержание красного цвета (0-255)
---@param g number содержание зелёного цвета (0-255)
---@param b number содержание синего цвета (0-255)
---@param a? number прозрачность цвета (0-255) [опционально, по-умолчанию - 255]
---@return ColorInstance
---@nodiscard
function Color.new(r, g, b, a) end;

---получение содержания всех цветов или конкретного в указанном
---@param color ColorInstance заранее созданный цвет
---@param RGBA? 'r'|'g'|'b'|'a' конкретный цвет в составе [опционально, по-умолчанию возвращает таблицу со всеми значениями (r/g/b/a)]
---@return { r: number, g: number, b: number, a: number }
---@nodiscard
function Color.get(color, RGBA) end;

return Color;
