---@meta Таймеры

---@alias TimerInstance userdata

---@class timer
timer = {}

---создание нового таймера
---@return TimerInstance
function timer.create() end

---запуск таймера
---@param timered TimerInstance заранее созданный таймер
function timer.start(timered) end

---получение времени, отсчитанного таймером в миллисекундах
---@param timered TimerInstance заранее созданный таймер
---@return number ms миллисекунды
function timer.time(timered) end

---остановка таймера
---@param timered TimerInstance заранее созданный таймер
function timer.stop(timered) end

---остановка и сброс таймера
---@param timered TimerInstance заранее созданный таймер
function timer.reset(timered) end

---удаление таймера
---@param timered TimerInstance заранее созданный таймер
function timer.remove(timered) end

return timer
