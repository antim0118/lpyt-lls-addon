---@meta Звук

---@class sound
sound = {
    NONE = 0,
    MP3 = 1,
    AT3_1 = 5,
    AT3_2 = 6,
    WAV_1 = 17,
    WAV_2 = 18,
    WAV_3 = 19,
    WAV_4 = 20,
    WAV_5 = 21,
    WAV_6 = 22,
    WAV_7 = 23,
    WAV_8 = 24,
    WAV_9 = 25,
    WAV_10 = 26,
    WAV_11 = 27,
    WAV_12 = 28,
    WAV_13 = 29,
    WAV_14 = 30,
    WAV_15 = 31,
    WAV_16 = 32,
    WAV_17 = 33,
    WAV_18 = 34,
    WAV_19 = 35,
    WAV_20 = 36,
    WAV_21 = 37,
    WAV_22 = 38,
    WAV_23 = 39,
    WAV_24 = 40,
    WAV_25 = 41,
    WAV_26 = 42,
    WAV_27 = 43,
    WAV_28 = 44,
    WAV_29 = 45,
    WAV_30 = 46,
    WAV_31 = 47
};

---@alias soundEnum `sound.MP3`|`sound.AT3_1`|`sound.AT3_2`|`sound.WAV_1`|`sound.WAV_2`|`sound.WAV_3`|`sound.WAV_4`|`sound.WAV_5`|`sound.WAV_6`|`sound.WAV_7`|`sound.WAV_8`|`sound.WAV_9`|`sound.WAV_10`|`sound.WAV_11`|`sound.WAV_12`|`sound.WAV_13`|`sound.WAV_14`|`sound.WAV_15`|`sound.WAV_16`|`sound.WAV_17`|`sound.WAV_18`|`sound.WAV_19`|`sound.WAV_20`|`sound.WAV_21`|`sound.WAV_22`|`sound.WAV_23`|`sound.WAV_24`|`sound.WAV_25`|`sound.WAV_26`|`sound.WAV_27`|`sound.WAV_28`|`sound.WAV_29`|`sound.WAV_30`|`sound.WAV_31`
---@alias soundNumber 1|5|6|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|45|46|47|48

---предзагрузка звука
---@param path string путь к файлу .mp3/.wav/.ogg/.at3
---@param channel soundEnum|soundNumber канал для загрузки звука
---@param loadToRam? boolean загрузка в ОЗУ (true, если вы хотите, чтобы после выхода из спящего режима консоль продолжала воспроизведение .wav, однако объём ОЗУ будет постепенно уменьшаться; на PSP GO при использовании внутренней памяти в любом случае воспроизведение будет продолжаться)
function sound.cloud(path, channel, loadToRam) end;

---воспроизведение аудиофайла
---@param channel soundEnum|soundNumber канал для загрузки звука
---@param loop? boolean повторение проигрывания
function sound.play(channel, loop) end;

---чтение ID3 тегов из mp3 файла (из уже загруженного канала)
---@return { title: string, artist: string, album: string, year: string, genre: string, id3v: string, track: number } info Возвращает таблицу с информацией
---@nodiscard
function sound.info() end;

---приостановка воспроизведения
---@param channel soundEnum|soundNumber канал для приостановки
function sound.pause(channel) end;

---изменение громкости воспроизведения
---@param channel soundEnum|soundNumber канал для изменения громкости
---@param volumeL number громкость в левом канале (0-100)
---@param volumeR number громкость в правом канале (0-100)
function sound.volume(channel, volumeL, volumeR) end;

---остановка воспроизведения
---@param channel soundEnum|soundNumber канал для остановки
function sound.stop(channel) end;

---получение информации о канале
---@param channel soundEnum|soundNumber канал для получения информации
---@return { state: "playing"|"paused"|"stopped", free: boolean, volume: number } state Возвращает таблицу вида {state(playing/paused/stopped), free(true/false), volume(0-100)}
function sound.state(channel) end;

---выгрузка аудиофайла из канала (работает только с .wav/.at3/.ogg, для .mp3 достаточно sound.stop())
---@param channel soundEnum|soundNumber канал для выгрузки
function sound.unload(channel) end;

return sound;
