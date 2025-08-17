---@meta Кнопки

---@class buttons
buttons = {
    select = 1,
    --unknown = 2,
    --unknown = 4,
    start = 8,
    up = 16,
    right = 32,
    down = 64,
    left = 128,
    l = 256,
    r = 512,
    --unknown = 1024,
    --unknown = 2048,
    triangle = 4096,
    circle = 8192,
    cross = 16384,
    square = 32768,
    home = 65536
};

---@alias buttonEnum `buttons.select`|`buttons.start`|`buttons.up`|`buttons.right`|`buttons.down`|`buttons.left`|`buttons.l`|`buttons.r`|`buttons.triangle`|`buttons.circle`|`buttons.cross`|`buttons.square`|`buttons.home`
---@alias buttonNumbers 1|8|16|32|64|128|256|512|4096|8192|16384|32768|65536

---считывание состояния кнопок
function buttons.read() end;

---считывание состояния стика по оси х
---@return number Lx число от -128 до 127
---@nodiscard
function buttons.Lx() end;

---считывание состояния стика по оси y
---@return number Ly число от -128 до 127
---@nodiscard
function buttons.Ly() end;

---проверка на то, была ли кнопка нажата только что
---@param button buttonEnum|buttonNumbers кнопка из класса buttons
---@return boolean
---@nodiscard
function buttons.pressed(button) end;

---проверка на то, удерживается ли кнопка в данный момент
---@param button buttonEnum|buttonNumbers кнопка из класса buttons
---@return boolean
---@nodiscard
function buttons.held(button) end;

---проверка на то, была ли кнопка только что отпущена
---@param button buttonEnum|buttonNumbers кнопка из класса buttons
---@return boolean
---@nodiscard
function buttons.released(button) end;
