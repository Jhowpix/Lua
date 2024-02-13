-- Get the Lighting service
local lighting = game:GetService("Lighting")

-- Configure the lighting settings
lighting.Ambient = Color3.fromRGB(127, 127, 127) -- Set ambient light color to gray
lighting.OutdoorAmbient = Color3.fromRGB(178, 178, 178) -- Set outdoor ambient light color to a lighter gray
lighting.Brightness = 2 -- Adjust brightness as needed

-- Function to simulate daytime lighting
local function simulateDaytime()
    lighting.ClockTime = 14 -- Set the time to midday (14:00)
end

-- Function to simulate nighttime lighting
local function simulateNighttime()
    lighting.ClockTime = 1 -- Set the time to midnight (01:00)
end

-- Call the functions to simulate initial lighting
simulateDaytime()

-- Set up a loop to alternate between daytime and nighttime lighting (optional)
while true do
    wait(60) -- Wait for 60 seconds (adjust as needed)
    simulateNighttime()
    wait(60) -- Wait for 60 seconds
    simulateDaytime()
end
