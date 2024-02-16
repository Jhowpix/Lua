-- este escript vai dentro da pasta coin junto com a sua coin 

-- Variavel tempo para habilitar a som 
local COOLDOWN = 10

-- Variavel volume para controlar o volume do som
local volume = game.Workspace.WordCoins.Coins.Coin.Sound
volume.Volume=("0.070") -- ajuste aqui


-- funcao para ativar o som ao tocar na moeda 
function OnTouched(hit)
	
	if hit.Parent:FindFirstChild('Humanoid') then
		if script.Parent.Transparency * 1 then -- se a transparencia for 1
		script.Parent.Sound:Play()             -- de play no som 
			script.Parent.SoundS.Disabled = true -- e desative o som 
			task.wait(COOLDOWN)                   -- aguarde 10 segundos
			script.Parent.SoundS.Disabled = false -- e ative o som
		end
	end
end
script.Parent.Touched:Connect(OnTouched)