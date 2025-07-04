---@meta Система

---@class System
System = {}

---переименование папки/файла
---@param path string путь к файлу для переименования
---@param newName string новое имя
function System.rename(path, newName) end

---удаление файла
---@param path string путь к файлу для удаления
function System.removeFile(path) end

---удаление папки
---@param path string путь к папке для удаления
function System.removeDir(path) end

---создание новой папки
---@param path string путь к новой папке
function System.createDir(path) end

---Проверяет, является ли элемент папкой (в случае false: не существует или является файлом)
---@param path? string неизвестный параметр
---@return boolean
---@nodiscard
function System.isDir(path) end

---смена рабочей директории
---@param path string путь новой рабочей директории
function System.currentDir(path) end

---чтение файлов (и папок!), находящихся в указанной директории
---@param path? string путь к директории для чтения [если директория не указана, возвращает список файлов из текущей рабочей директории]
---@return [{ name: string, size: number }]
---@nodiscard
function System.listDir(path) end

---вызов системной клавиатуры PSP
---@param text string текст, изначально напечатанный в отведённом поле
---@param desc string описание текста, который необходимо ввести
---@param cleanBG? boolean Очищать фон
---@param bgpath? string Путь до фона (480x272)
---@return string
---@nodiscard
function System.OSK(text, desc, cleanBG, bgpath) end

---вызов системного сообщения
---@param message string текст выводимого сообщения
---@param mode? 0|1 режим (0 - стандарт [только кнопка О]; 1 - режим Да/Нет [кнопки Да/Нет]) [опционально, по-умолчанию 0]
---@param cleanBG? boolean Очищать фон
---@param bgpath? string Путь до фона (480x272)
function System.message(message, mode, cleanBG, bgpath) end

---получение заряда АКБ в процентах
---@return number
---@nodiscard
function System.getBatteryPercent() end

---получение оставшегося времени работы АКБ в минутах
---@return number
---@nodiscard
function System.getBatteryLifeTime() end

---получение частоты процессора
---@return number
---@nodiscard
function System.getCPU() end

---получение модели консоли
---@return string
---@nodiscard
function System.getModel() end

---получение времени, выставленной на консоли
---@return { year:number, month:string, day:string, hour:string, minutes:string, seconds:string, microseconds:number }
---@nodiscard
function System.getTime() end

---получение версии официальной прошивки
---@return string
---@nodiscard
function System.getOSV() end

---очистка ОЗУ от "LUA-мусора" (работает чуть эффективней, чем стандартный collectgarbage)
function System.GC() end

---получение информации о том, какая кнопка была нажата во время вызова System.message()
---@return "Yes"|"No"|"Back" button Возвращает текст Yes/No/Back
---@nodiscard
function System.buttonPressed() end

---получение никнейма консоли
---@return string
---@nodiscard
function System.getNickname() end

---получения языка, выставленного на консоли
---@return "Jap"|"Eng"|"Fr"|"Span"|"Ger"|"It"|"Dut"|"Por"|"Rus"|"Kor"|"ChTrad"|"ChSimpl"|string
---@nodiscard
function System.getLang() end

---Предотвращает отключение питания устройства и/или выключение дисплея.
function System.PowerTick() end

---возвращает ID игры в формате "UCJS10041"
---@return string
---@nodiscard
function System.getGameID() end

---Открывает окно с запросом на выбор слота для сохранения
---@param saveData string|number Данные для сохранения
---@param subTitle string|number Подзаголовок (например, глава игры)
---@param description string|number Описание (например, игровой прогресс или локация)
---@param ebootpath "EBOOT.PBP"|string Путь до файла EBOOT.PBP (унаследует иконки, если они не указаны в параметрах icon0path и bgpath)
---@param icon0path? string Путь до icon0 (144x80)
---@param cleanBG? boolean Очищать фон
---@param bgpath? string Путь до фона (480x272)
---@return string saveSlot Возвращает номер слота сохранения в виде "0004" (будет означать, что слот четвёртый). В таком случае, сохранение будет в папке "UCJS100410004".
function System.SaveData(saveData, subTitle, description, ebootpath, icon0path, cleanBG, bgpath) end

---Открывает окно с запросом на загрузку сохранения
---@param cleanBG? boolean Очищать фон
---@param bgpath? string Путь до фона (480x272)
---@return { id: string, data: string } | nil loadedData Возвращает таблицу с двумя параметрами: id (слот сохранения в виде 0000) и data (строка, которая была сохранена).
---@nodiscard
function System.LoadData(cleanBG, bgpath) end

---Открывает окно с запросом на удаление сохранения.
---@param cleanBG? boolean Очищать фон
---@param bgpath? string Путь до фона (480x272)
---@return string bgpath
function System.DeleteData(cleanBG, bgpath) end

---Автосохраняет данные
---@param saveData string|number Данные для сохранения
---@param subTitle string|number Подзаголовок (например, глава игры)
---@param description string|number Описание (например, игровой прогресс или локация)
---@param ebootpath "EBOOT.PBP"|string Путь до файла EBOOT.PBP (унаследует иконки, если они не указаны в параметрах icon0path и bgpath)
---@param AutoSaveFolder string|number Постфикс для папки сохранения ("UCJS10041*", где * - постфикс). Также может состоять из слота сохранения (см. System.SaveData).
---@param icon0path? string Путь до icon0 (144x80)
function System.AutoSave(saveData, subTitle, description, ebootpath, AutoSaveFolder, icon0path) end

---Автозагружает данные
---@param AutoSaveFolder string|number Постфикс для папки сохранения ("UCJS10041*", где * - постфикс). Также может состоять из слота сохранения (см. System.SaveData).
---@return { data: string } | nil loadedData Возвращает таблицу с двумя параметрами: id (слот сохранения в виде 0000) и data (строка, которая была сохранена).
---@nodiscard
function System.AutoLoad(AutoSaveFolder) end

---@alias FilePointer userdata

---Загружает файл в память и возвращает указатель (pointer).
---@param file string Путь до файла
---@return { linesCount: number, pointer: FilePointer } fileDump Возвращает таблицу: количество строк в файле и указатель к файлу
---@nodiscard
function System.fileDumpCreate(file) end

---Получить строку из указателя (см. System.fileDumpCreate)
---@param filePointer FilePointer Указатель
---@param pos number Номер строки
---@return string
---@nodiscard
function System.fileDumpGetLine(filePointer, pos) end

---Выгрузить файл из памяти
---@param filePointer FilePointer
---@param linesCount number
function System.fileDumpRemove(filePointer, linesCount) end

---@class System.USB
System.USB = {}

---активировать USB режим
---@return 1
function System.USB.activate() end

---деактивировать USB режим
function System.USB.deactivate() end

---получить состояние USB режима
---@return -2145112057|546|number
---@nodiscard
function System.USB.getState() end

return System
