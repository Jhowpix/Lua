-- Define the part to explode
local part = script.Parent

-- Function to handle explosion
local function explode()
    -- Create an explosion at the part's position
    local explosion = Instance.new("Explosion")
    explosion.Position = part.Position
    explosion.Parent = game.Workspace
    explosion.BlastRadius = 10 -- Adjust the blast radius as needed
    explosion:Explode()
end

-- Function to handle touch events
local function onTouch(otherPart)
    local character = otherPart.Parent
    local player = game.Players:GetPlayerFromCharacter(character)
    if player then
        explode() -- Explode the part when touched by a player
    end
end

-- Connect the touch event to the onTouch function
part.Touched:Connect(onTouch)
