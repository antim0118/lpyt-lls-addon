---@meta intraFont

---@alias intraFontInstance userdata

---@class intraFont
intraFont = {
    ALIGN_LEFT = 0,
    ALIGN_CENTER = 512,
    ALIGN_RIGHT = 1024,

    SCROLL_LEFT = 8192,
    SCROLL_SEESAW = 8704,
    SCROLL_RIGHT = 9216,
    SCROLL_THROUGH = 9728
};

---@alias intraFontAlignEnum `intraFont.ALIGN_LEFT`|`intraFont.ALIGN_CENTER`|`intraFont.ALIGN_RIGHT`
---@alias intraFontAlignNumbers 0|512|1024

---@alias intraFontScrollEnum `intraFont.SCROLL_LEFT`|`intraFont.SCROLL_SEESAW`|`intraFont.SCROLL_RIGHT`|`intraFont.SCROLL_THROUGH`
---@alias intraFontScrollNumbers 8192|8704|9216|9728

---загрузка шрифта в формате .pgf/.ttf/.otf
---@param path string путь к файлу
---@param size? number размер шрифта
---@return intraFontInstance
---@nodiscard
function intraFont.load(path, size) end;

---простой вывод текста
---@param x number координата вывода на оси х
---@param y number координата вывода на оси y
---@param text string текст для вывода
---@param textColor? ColorInstance
---@param font? intraFontInstance предварительно загруженный шрифт
---@param size? number размер текста [по-умолчанию 1]
---@param rotation? number поворот текста
---@param alignMode? intraFontAlignEnum|intraFontAlignNumbers
function intraFont.print(x, y, text, textColor, font, size, rotation, alignMode) end;

---вывод текста на фоне рамки
---@param x number координата вывода на оси х
---@param y number координата вывода на оси y
---@param text string текст для вывода
---@param textColor? ColorInstance цвет текста
---@param bgColor? ColorInstance цвет рамки
---@param font? intraFontInstance предварительно загруженный шрифт
---@param size? number размер текста [по-умолчанию 1]
function intraFont.printBackground(x, y, text, textColor, bgColor, font, size) end;

---вывод текста колонной
---@param x number координата вывода на оси х
---@param y number координата вывода на оси y
---@param text string текст для вывода
---@param width number ширина текста в пикселях
---@param color? ColorInstance цвет текста
---@param font? intraFontInstance предварительно загруженный шрифт
---@param size? number размер текста
---@param alignMode? intraFontAlignEnum|intraFontAlignNumbers
---@param scrollMode? intraFontScrollEnum|intraFontScrollNumbers
function intraFont.printColumn(x, y, text, width, color, font, size, alignMode, scrollMode) end;

---вывод обведённого контуром текста
---@param x number координата вывода на оси х
---@param y number координата вывода на оси y
---@param text string текст для вывода
---@param textColor? ColorInstance цвет текста
---@param contourColor? ColorInstance цвет линии
---@param font? intraFontInstance предварительно загруженный шрифт
---@param size? number размер текста [по-умолчанию 1]
---@param rotation? number угол наклона [по-умолчанию 0]
function intraFont.printContoured(x, y, text, textColor, contourColor, font, size, rotation) end;

---вывод текста с градиентом
---@param x number координата вывода на оси х
---@param y number координата вывода на оси y
---@param text string текст для вывода
---@param colorStart? ColorInstance начальный цвет градиента
---@param colorEnd? ColorInstance конечный цвет градиента
---@param font? intraFontInstance предварительно загруженный шрифт
---@param size? number размер текста [по-умолчанию 1]
function intraFont.printGradient(x, y, text, colorStart, colorEnd, font, size) end;

---вывод текста, отбрасывающего тень
---@param x number координата вывода на оси х
---@param y number координата вывода на оси y
---@param text string текст для вывода
---@param textColor? ColorInstance цвет текста
---@param shadowColor? ColorInstance цвет тени
---@param font? intraFontInstance предварительно загруженный шрифт
---@param shadowAngle? number угол падения света на текст
---@param lightDistance? number удалённость источника света от текста
---@param size? number размер текста [по-умолчанию 1]
---@param rotation? number  угол наклона [по-умолчанию 0]
function intraFont.printShadowed(x, y, text, textColor, shadowColor, font, shadowAngle, lightDistance, size, rotation) end;

---вывод перечёркнутого текста
---@param x number координата вывода на оси х
---@param y number координата вывода на оси y
---@param text string текст для вывода
---@param textColor? ColorInstance цвет текста
---@param lineColor? ColorInstance цвет перечеркивающей линии
---@param font? intraFontInstance предварительно загруженный шрифт
---@param size? number размер текста [по-умолчанию 1]
function intraFont.printStriked(x, y, text, textColor, lineColor, font, size) end;

---вывод подчеркнутого текста
---@param x number координата вывода на оси х
---@param y number координата вывода на оси y
---@param text string текст для вывода
---@param textColor? ColorInstance цвет текста
---@param lineColor? ColorInstance цвет линии
---@param font? intraFontInstance предварительно загруженный шрифт
---@param size? number размер текста [по-умолчанию 1]
function intraFont.printUnderlined(x, y, text, textColor, lineColor, font, size) end;

---возвращает развёрнутый текст
---@param text string текст для разворачивания
---@return string reversedText возвращает развёрнутый текст
---@nodiscard
function intraFont.reverseText(font, x, y, text, color, size, rot) end;

---выставление необходимых параметров шрифта
---@param font intraFontInstance предварительно загруженный шрифт
---@param size number размер шрифта
---@param color ColorInstance цвет шрифта
---@param angle number угол наклона шрифта
---@param alignMode? intraFontAlignEnum|intraFontAlignNumbers режим выравнивания шрифта
function intraFont.setStyle(font, size, color, angle, alignMode) end;

---изменение размера шрифта
---@param font intraFontInstance предварительно загруженный шрифт
---@param size number новый размер
function intraFont.size(font, size) end;

---измерение занимаемого текстом пространства в пикселях (строка без переносов)
---@param font intraFontInstance предварительно загруженный шрифт
---@param text string текст для вывода
---@param size number масштаб шрифта (не размер!)
---@return number
---@nodiscard
function intraFont.textW(font, text, size) end;

---измерение высоты шрифта в пикселях с учётом заданного размера
---@param font intraFontInstance предварительно загруженный шрифт
---@return number
---@nodiscard
function intraFont.textH(font) end;

---выгрузить шрифт из памяти
---@param font intraFontInstance предварительно загруженный шрифт
function intraFont.unload(font) end;

return intraFont;
