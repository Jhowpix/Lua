 -- https://create.roblox.com/docs/pt-br/reference/engine/classes/Explosion

--[[ vamos cria uma Part e da o nome de Minha Parte
	 dentro de Workspace ou seja da area de trabalho do seu mapa.
	 video deste tutorial em /Movie/Explosion
]]

MinhaPart = game.Workspace.Parent -- vamos inserir a part dentro da Workspace

--[[	Repare que abrimos a variavel LOCAL e damos o nome de MinhaParte
		isso fara comque a variavel armazene oque vamos criar para que possamos
		chamar o objeto a qualquer momento.
		
		entao falamos a cima Minha variavel de nome MinhaParte ( = esta ) no game. dentro da pasta Workspace 
		e sera filha de Workspace
		
		confuso ne mais so estamos dando o caminho de onde este objeto se encontra 
		podemos criar manualmente abrindo a pasta Workspace criando uma Part abrindo um script
		dentro desta Part e fazer alteracoes desta Parte dentro do script que estara dentro dela 
		mais com o tempo voce percebera que isso torna a progamacao confusa conforme seu jogo for crescendo 
]]

-- podemos testar trocar alguma de suas propriedades tentaremos mudar a cor para preto
game.Workspace.MinhaPart.BrickColor=BrickColor.new("Black")

-- vamos ancorar esta part para que ela nao saia perdida no mapa 
game.Workspace.MinhaPart.Anchored=true

-- Pagaremos tambem a posicao onde esta esta MinhaParte na Workspace
--[[	se voce abrir a aba de propriedades da Part MinhaPart voce  
		encontrar Position dentro dele tres valores 
		que e a referencia que o Vector3() trabalha 
		seria o primeiro eixo x, segundo eixo y, terceiro eixo z.
]]
game.Workspace.MinhaPart.Position=Vector3(-5.5, 6, 18)


--[[	acima dizemos 
		jogo (game). abra a pasta  Workspace . abra a pasta MinhaPart
		. e abra a propriedade BrickColor = agora BrickColor sera ( = Igual ) a nova ( .new ) cor ("Black")
		parece confuso mais pratique criando varias trocas de cores e mentalizando esta ordem que 
		acabara ficando intuitivo a pragramacao.
]]

wait(10)
local explosao = Instance.new("Explosion")
explosao.BlastRadius = 60
explosao.ExplosionType = Enum.ExplosionType.Craters -- damages terrain
explosao.Position = Vector3.new(0, 10, 0)
explosao.Parent = workspace

-- vamos fazer esta parede explodir criaremos uma explosao primeiro

--[[
local explosao = Instance.new('Explosion')-- aqui criamos uma explosao com a funcao Instance.new() 

-- voce pode aprender mais sobre Instance aqui --> https://pt.wikipedia.org/wiki/Inst%C3%A2ncia_(ci%C3%AAncia_da_computa%C3%A7%C3%A3o)
     mais vou tentar resumir: 
     Instanciar um objeto e criar ele dentro de uma classe neste caso como nosta varavel e local dentro de Workspace
     entao quando falamos Instance cria um Novo .new() objeto para mim e dentro de .new(......) voce 
     escolhe oque quer que seja criado ali.



-- a explosao esta criada mais nao esta inserida em nada entao vamos por 

explosao.Parent=MinhaPart-- aqui eu disse explosao voce vai para. dentro da pasta MinhaParte vai ser filha de MinhaParte

-- vamos dar parametros para esta explosao vamos dimensionala e dar a posicao onde ela estara 

explosao.BlastRadius=40 --BlastRadius e uma propriedade que da o raio onde a minha explosao tera alcance 

explosao.Position=MinhaPart.Position

print(explosao)
]]    



