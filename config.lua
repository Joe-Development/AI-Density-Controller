--[[
    If All Values are 0.0 then it will be fully Off else on etc 
    Please keep the values to 0.0 - 1.0 i have clamped it so you cant go over it
]]

Config = {
    SetInterval = 5000,  -- Interval in milliseconds for density adjustments
    DynamicDensity = true,  -- Set to true to enable dynamic density based on player count

    density = {
        AI_Vehicles = 0.5,
        AI_Peds = 0.8,
        AI_Animals = 0.3,
        dynamicDensityFactor = 0.02,  -- Factor for dynamic density adjustment (This will only work if you have DynamicDensity true)
        AI_Hostile = false
    },

    debug = {
        debug_print = true,  -- Set to true to enable debug print statements
        debug_interval = 5000  -- Interval in milliseconds for debug prints
    }
}
