local a = string.sub
local b = string.unpack
local c = {}
local d = {
    RIFF_ID = 1,
    FILE_SIZE = 5,
    WAVE_ID = 9,
    FMT_ID = 13,
    FMT_SIZE = 17,
    AUDIO_FORMAT = 21,
    NUM_CHANNELS = 23,
    SAMPLE_RATE = 25,
    BYTE_RATE = 29,
    BLOCK_ALIGN = 33,
    BITS_PER_SAMPLE = 35,
    DATA_ID = 37,
    DATA_SIZE = 41
}
function c.decode(e)
    local f = a(e, d.RIFF_ID, d.RIFF_ID + 3)
    if f ~= "RIFF" then
        error("Invalid WAV file")
    end
    local g = a(e, d.WAVE_ID, d.WAVE_ID + 3)
    if g ~= "WAVE" then
        error("Invalid WAV file")
    end
    local h = b("<I2", e, d.NUM_CHANNELS)
    local i = b("<I4", e, d.SAMPLE_RATE)
    local j = b("<I2", e, d.BITS_PER_SAMPLE)
    local k = b("<I4", e, d.DATA_SIZE)
    local l = {numChannels = h, sampleRate = i, bitsPerSample = j, dataSize = k, AudioData = a(e, 45)}
    return l
end
return c
