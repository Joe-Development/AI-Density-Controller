# AI Density Controller Script for FiveM 🚗🚶🐾

This Lua script allows you to control the AI density in your FiveM server. It adjusts the density of AI vehicles, pedestrians, and animals within a specified range (0.0 to 1.0). Additionally, it provides an option to enable hostile AI behavior. 🎮

## Configuration 🛠️

You can customize the AI density settings and other parameters by modifying the configuration in the script. ⚙️

```lua
Config = {
    density = {
        AI_Vehicles = 0.0, -- 0.0 to 1.0
        AI_Peds = 0.0, -- 0.0 to 1.0
        AI_Animals = 0.0, -- 0.0 to 1.0
        AI_Hostile = false
    }
}
```

## Adjust the values according to your preferences. ⚙️

## Usage 🕹️
- Place the script in your FiveM server resources folder. 📂
- Ensure the script is properly configured in the Lua file. ⚙️
- Start the script on your FiveM server. ▶️

### This script does not use commands but continuously adjusts AI density based on the configured values. If you want to make real-time changes, you can modify the script to include commands. 🔄

## Additional Notes 📝
The script includes debug lines to help monitor the AI density values in the server console. 🐛

## Credits 👏
- JoeV2 (Joe Development) 🙌
