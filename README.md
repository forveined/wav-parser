# Luau WAV Parser

A   Luau module for parsing WAV audio files in Roblox.

## Installation

Place the ModuleScript in your game's ReplicatedStorage.

## Usage

```lua
lua
local a = require(game.ReplicatedStorage.ModuleScript)
print(a.decode(game.HttpService:GetAsync("https://file-examples.com/storage/fe7094c3e1675c6019f2849/2017/11/file_example_WAV_1MG.wav")))
```


# Output

```lua
 {    
 ["bitsPerSample"] = 16,
 ["dataSize"] = 1048376,
 ["numChannels"] = 2,
 ["sampleRate"] = 44100
}  
```
