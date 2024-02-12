-- picking up an object and working with it in Roblox Studio

-- pegando um obejeto e trabalhando com ele no Roblox Studio
-- Imagem deste Tutorial em /src/Wall

--[[
     Let's create a part and name it wall,
     it will be created inside the Workspace folder
     we will click on the wall and create a script on it
]]

--[[
    Vamos criar uma part e nomear como parede, 
    ela vai ser criada dentro da pasta Workspace 
    clicaremos na parede e criaremos um script nela 
]]

--let's understand each structure
--vamos intender cada estrutura 
game.Workspace.parede.Material="Rock"

game.Workspace.parede.Transparency= 0.6

game.Workspace.parede.Anchored= true

--[[ to come up with lines of code in a
      object within the game we need to give the route the path from where
      We want to go and who are we going to pick up?
      game we are entering the game with the script
      .Workspace we are entering the Workspace folder
      Inside the Workspace folder we created the wall part so we go to it
      .wall
      being in .parede we can already access all the properties it has
      we can modify any properties it has available that accepts
      new values new parameters as seen above
]]

--[[ para chegar com linhas de codigo em um 
     objeto dentro do game precisamos dar a rota o caminho de onde 
     queremos ir e quem vamos buscar
     game estamos entrando no game com o script 
     .Workspace estamos entrando na pasta Workspace
     dentro da pasta Workspace nos criamos a part parede entao vamos ate ela 
     .parede 
     estando no .parede ja conseguimos acessar todas as propriedades que ela tem 
     podemos modificar qualquer propriedades que ela tenha disponivel que aceite 
     novos valores novos parametros como visto acima 
]]

game.Workspace.parede.Transparency= 0
-- we have to be careful because the code is read by the computer from top to bottom line by line
-- so in this case the Transparency of our wall went from 0.6 to 0

-- temos que tomar cuidado porque o codigo e lido pelo compurador de cima para baixo linha por linha 
-- entao neste caso a Transparency da nossa parede passou de 0.6 para 0 


-- Video About variables CANAL GEEK

-- Video Sobre variaveis CANAL GEEK 
-- https://www.youtube.com/watch?v=kItsDMnGKoE&list=PLxT6hVtp_007VzGo7HoYrFIevqo9gcYbU&index=5