--[[
    If All Values are 0.0 then it will be fully Off else on etc 
    Please keep the values to 0.0 - 1.0 i have clamped it so you cant go over it
]]

Config = {
    debug = {
     debug_print = false,   
     debug_interval = 10, -- do not recommend making this below 1 second
    },
    
    SetInterval = 10, -- this depends on how resource intensive you want it
    density = {
        AI_Vehicles = 0.0, -- 0.0 to 1.0
        AI_Peds = 0.0, -- 0.0 to 1.0
        AI_Animals = 0.0, -- 0.0 to 1.0
        AI_Hostile = 0 -- (0 = false) (3 = true) (1 = I dont really know)
        AI_Dynamic_Density = false
    }
}
