--This script goes in the ServeScriptservice folder
-- Este Script vai na pasta ServeScriptservice

-- Initializing services and variables
-- Inicializa servicos e variaveis
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

-- Craindo as variaveis para guardar os valores da pasta WordCoins
local coinsFolder = Workspace.WordCoins.Coins
-- Craindo as variaveis para pegar os valores dentro da pasta WordCoins
local coin = coinsFolder:GetChildren()

local COOLDOWN = 10

-- Defining the event handler
-- Defini uma funcao
local function onCoinTouched(otherPart, coin)
	if coin:GetAttribute("Enabled") then
		local character = otherPart.Parent
		local player = Players:GetPlayerFromCharacter(character)
		if player then
			-- Player touched a coin
			-- Quando o jogador tocar na moeda
			coin.Transparency = 1 -- Deixa a moeda transparente
			coin.Decal1.Transparency = 1 -- Deixa a face (desenho) da moeda transparente
			coin.Decal2.Transparency = 1 -- Deixa a face (desenho) da moeda transparente
			coin:SetAttribute("Enabled", false)
			print("Player collected coin")
			task.wait(COOLDOWN) -- Aguarda 10 segundos 
			coin.Transparency = 0 -- Mostra novamente a moeda
			coin.Decal1.Transparency = 0 -- Mostra novamente a face da moeda
			coin.Decal2.Transparency = 0 -- Mostra novamente a face da moeda
			coin:SetAttribute("Enabled", true) -- Ativa novamente o contador 
		end
	end
end

-- Setting up event listeners
-- For para dar loop na funcao 
for _, coin in coins do
	coin:SetAttribute("Enabled", true)
	coin.Touched:Connect(function(otherPart)
		onCoinTouched(otherPart, coin)
	end)
end

