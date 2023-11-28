Citizen.CreateThread(function()
    while true do
        Wait(Config.SetInterval)
        if Config.DynamicDensity then

            Citizen.CreateThread(function ()
                while true do
                    Wait(Config.SetInterval)
                    if Config.DynamicDensity then
                        local playerCount = #GetActivePlayers()
                        local dynamicDensityMultiplier = 1.0 - (playerCount * Config.density.dynamicDensityFactor)
                        dynamicDensityMultiplier = ClampDensity(dynamicDensityMultiplier)
                
                        Config.density.AI_Vehicles = dynamicDensityMultiplier * Config.density.AI_Vehicles
                        Config.density.AI_Peds = dynamicDensityMultiplier * Config.density.AI_Peds
                        Config.density.AI_Animals = dynamicDensityMultiplier * Config.density.AI_Animals
                        
                    else
                        Config.density.AI_Vehicles = ClampDensity(Config.density.AI_Vehicles)
                        Config.density.AI_Peds = ClampDensity(Config.density.AI_Peds)
                        Config.density.AI_Animals = ClampDensity(Config.density.AI_Animals)
                    end
                end                
            end)
        end
        

        if Config.debug.debug_print then
            Citizen.CreateThread(function()
                while true do
                    Wait(Config.debug.debug_interval)
                    print("[DEBUG] AI_Vehicles: " .. Config.density.AI_Vehicles)
                    print("[DEBUG] AI_Peds: " .. Config.density.AI_Peds)
                    print("[DEBUG] AI_Animals: " .. Config.density.AI_Animals)
                end
            end)
        end

        CheckDensityValue("AI_Vehicles", Config.density.AI_Vehicles)
        CheckDensityValue("AI_Peds", Config.density.AI_Peds)
        CheckDensityValue("AI_Animals", Config.density.AI_Animals)

        SetPedDensityMultiplierThisFrame(Config.density.AI_Peds)
        SetScenarioPedDensityMultiplierThisFrame(Config.density.AI_Peds, 1)

        if Config.density.AI_Vehicles > 0.0 then
            SetVehicleDensityMultiplierThisFrame(Config.density.AI_Vehicles)
            SetParkedVehicleDensityMultiplierThisFrame(Config.density.AI_Vehicles)
            SetVehicleDensityMultiplierThisFrame(Config.density.AI_Vehicles)
            SetAmbientVehicleRangeMultiplierThisFrame(Config.density.AI_Vehicles)
        else
            SetVehicleDensityMultiplierThisFrame(0.0)
            SetParkedVehicleDensityMultiplierThisFrame(0.0)
            SetVehicleDensityMultiplierThisFrame(0.0)
            SetAmbientVehicleRangeMultiplierThisFrame(0.0)
        end

        SetHostilePedBudget(Config.density.AI_Hostile)
    end
end)

function ClampDensity(value)
    return math.min(1.0, math.max(0.0, value))
end

function CheckDensityValue(name, value)
    if value < 0.0 or value > 1.0 then
        print("[WARNING] " .. name .. " density value out of range (0.0 to 1.0): " .. value)
    end
end

function SetHostilePedBudget(enableHostile)
    SetPedPopulationBudget(enableHostile and 3 or 0)
end
