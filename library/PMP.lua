---@meta PMP

---@alias PMPPointer userdata

---@class PMP
PMP = {};

---проверяет, воспроизводится ли видео. Если да - обновляет pointer. Если нет - автоматически его перезапускает.
---@param pointer PMPPointer указатель на запущенный PMP
---@return boolean isPlaying возвращает, запущено ли видео.
function PMP.getFrame(pointer) end;

---получить текущее время запущенного видео
---@return number timeCode время в секундах
function PMP.getTimeCode() end;

---получить текст с субтитров
---@return ""|string
function PMP.getSubs() end;

---поставить на паузу запущенное видео
function PMP.pause() end;

---воспроизвести .pmp файл
---@param path string путь к видеофайлу
---@param getPointer? boolean возвращать указатель
---@param subtitlePath? string путь к субтитрам (.srt)
---@param interruptButton? number кнопка остановки воспроизведения [опционально, по-умолчанию Start]
---@param FPS? number
---@return PMPPointer pointer указатель, если был указан аргумент getPointer
function PMP.play(path, getPointer, subtitlePath, interruptButton, FPS) end;

---установка громкости воспроизведения
---@param volume number громкость (0-100)
function PMP.setVolume(volume) end;

---остановить видео
---@param pointer PMPPointer указатель на запущенный PMP
function PMP.stop(pointer) end;
