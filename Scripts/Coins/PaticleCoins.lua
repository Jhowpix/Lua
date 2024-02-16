-- este escript vai dentro da pasta coin junto com a sua coin 

-- crie uma particula para sua coin e nomeia como ParticleCoins
-- temos uma imagem sobre em /srcCoins


local particleCoin = script.Parent 
local particle = particleCoin:WaitForChild("ParticleCoin")  

function OnTouched(hit)

	if hit.Parent:FindFirstChild('Humanoid') then
		particle.Enabled = true
		task.wait(1)
		particle.Enabled = false
	end
end

script.Parent.Touched:Connect(OnTouched)