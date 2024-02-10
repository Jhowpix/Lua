--[[    Script to have super speed after touching a part. 
        And I need to increase this script to a part, 
        this script will be a child of this part.  ]]


--[[   Script para obter super velocidade apos tocar em uma parte.
       E preciso acrecentar este script a uma parte, 
       este script vai ser filho desta parte.  ]]



-- Get reference to the part
-- Pegando a referencia da part a ser adicionada o Script
local part = script.Parent

-- Function to give super speed to the player
-- Funcao para dar super velocidade ao player
local function giveSuperSpeed(player)

    -- Check if the player is valid and has a character
    -- Verifique se o jogador é válido e tem personagem
    if player and player.Character then

        -- Get the humanoid of the player's character
        -- Obtenha o avatar do personagem do jogador
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then

            -- Set the speed multiplier to give super speed
            -- Defina o multiplicador de velocidade para dar supervelocidade
            humanoid.WalkSpeed = humanoid.WalkSpeed * 2 -- You can adjust this multiplier as needed / Você pode ajustar este multiplicador conforme necessário
        end                                                 
    end
end

-- Function to handle when a player touches the part
-- Função a ser manuseada quando um jogador toca a peça
local function onTouch(otherPart)

    -- Check if the part touched is a character
    -- Verifique se a parte tocada é um personagem
    local character = otherPart.Parent

    if character and character:IsA("Model") then

        -- Get the player who owns the character
        -- Obtenha o jogador que possui o personagem
        local player = game.Players:GetPlayerFromCharacter(character)
        if player then

            -- Give super speed to the player
            -- De Super Velocidade Para o player
            giveSuperSpeed(player)
        end
    end
end

-- Connect the onTouch function to the part's Touched event
--Conecte a função onTouch ao evento Touched da parte
part.Touched:Connect(onTouch)


-- we have a video of what this function would look like posted in the / Movie / SuperSpeed.mp4 part
-- You can delete all these comments

-- temos um video de como ficaria esta funcao posta em uma parte na parta / Movie / SuperSpeed.mp4
-- Voce Pode apagar todos estes comentarios 