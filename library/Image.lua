---@meta Изображение

---@alias ImageInstance userdata

---@class Image
Image = {
    lUp = 0,
    rUp = 1,
    rDn = 2,
    lDn = 3,
    Center = 4
}

---@alias imageAlignEnum `Image.lUp`|`Image.rUp`|`Image.rDn`|`Image.lDn`|`Image.Center`
---@alias imageAlignNumbers 0|1|2|3|4

---загрузка изображения
---@param path string путь к изображению
---@return ImageInstance
---@nodiscard
function Image.load(path) end

---выгрузка изображения
---@param texture ImageInstance предварительно загруженное изображение
function Image.unload(texture) end

---получение ширины изображения
---@param texture ImageInstance предварительно загруженное изображение
---@return number
---@nodiscard
function Image.W(texture) end

---получение высоты изображения
---@param texture ImageInstance предварительно загруженное изображение
---@return number
---@nodiscard
function Image.H(texture) end

---отрисовка изображения
---@param texture ImageInstance | PMPPointer предварительно загруженное изображение
---@param x number положение на оси х
---@param y number положение на оси y
---@param w? number ширина изображения [опционально, по-умполчанию стандарнтная ширина загруженного изображения]
---@param h? number высота изображения [опционально, по-умполчанию стандарнтная высота загруженного изображения]
---@param color? ColorInstance цвет для наложения на изображение [опционально, по-умолчанию {НИЧЕГО}]
---@param srcx? number координаты начала захвата рабочей области изображения [опционально, по-умолчанию 0, 0]
---@param srcy? number координаты начала захвата рабочей области изображения [опционально, по-умолчанию 0, 0]
---@param srcw? number координаты окончания захвата рабочей области изображения [опционально, по-умолчанию стандартная ширина и высота изображения]
---@param srch? number координаты окончания захвата рабочей области изображения [опционально, по-умолчанию стандартная ширина и высота изображения]
---@param rotation? number угол поворота изображения [опционально, по-умолчанию 0]
---@param alpha? number прозрачность изображения [опционально, по-умолчанию 255]
---@param alignMode? imageAlignEnum|imageAlignNumbers режим выравнивания изображения [опционально, по-умолчанию Image.lUP]
---@param GU_LINEAR? boolean интерполяция текстуры. true=LINEAR, false=NEAREST
---@param GU_REPEAT? boolean повторение текстуры. true=REPEAT, false=CLAMP
function Image.draw(texture, x, y, w, h, color, srcx, srcy, srcw, srch, rotation, alpha, alignMode, GU_LINEAR, GU_REPEAT) end

---упрощённая отрисовка изображения
---@param texture ImageInstance предварительно загруженное изображение
---@param x number положение на оси х
---@param y number положение на оси y
---@param color? ColorInstance цвет для наложения на изображение [опционально, по-умолчанию {НИЧЕГО}]
---@param rotation? number угол поворота изображения [опционально, по-умолчанию 0]
---@param alpha? number прозрачность изображения [опционально, по-умолчанию 255]
---@param alignMode? imageAlignEnum|imageAlignNumbers режим выравнивания изображения [опционально, по-умолчанию Image.lUP]
---@param GU_LINEAR? boolean интерполяция текстуры. true=LINEAR, false=NEAREST
---@param GU_REPEAT? boolean повторение текстуры. true=REPEAT, false=CLAMP
function Image.draweasy(texture, x, y, color, rotation, alpha, alignMode, GU_LINEAR, GU_REPEAT) end

return Image
