-- https://create.roblox.com/docs/pt-br/reference/engine/classes/Explosion

--[[ vamos cria uma Part e da o nome de MinhaPart
	 dentro de Workspace ou seja da area de trabalho do seu mapa.
	 video deste tutorial em /Movie/Explosion.mp4
]]

local MinhaPart = game.Workspace.MinhaPart -- vamos inserir a part dentro da Workspace

--[[	Repare que abrimos a variavel LOCAL e damos o nome de MinhaParte
		isso fara comque a variavel armazene oque vamos criar para que possamos
		chamar o objeto a qualquer momento.
		
		entao falamos a cima Minha variavel de nome MinhaParte ( = esta ) no game. dentro da pasta Workspace 
		e sera filha de Workspace
]]

-- podemos testar trocar alguma de suas propriedades tentaremos mudar a cor para preto
MinhaPart.BrickColor=BrickColor.new("Black")

-- vamos ancorar esta part para que ela nao saia perdida no mapa 
MinhaPart.Anchored=true

-- Pagaremos tambem a posicao onde esta esta MinhaParte na Workspace
--[[	se voce abrir a aba de propriedades da Part MinhaPart voce  
		encontrar Position dentro dele tres valores 
		que e a referencia que o Vector3() trabalha 
		seria o primeiro eixo x, segundo eixo y, terceiro eixo z.
]]
MinhaPart.Position=Vector3(16.096, 7.586, 5.216)


--[[	acima dizemos 
		jogo (game). abra a pasta  Workspace . abra a pasta MinhaPart
		. e abra a propriedade BrickColor = agora BrickColor sera ( = Igual ) a nova ( .new ) cor ("Black")
		parece confuso mais pratique criando varias trocas de cores e mentalizando esta ordem que 
		acabara ficando intuitivo a pragramacao.
]]

-- vamos fazer esta parede explodir criaremos uma explosao primeiro

local explosao = Instance.new('Explosion')-- aqui criamos uma explosao com a funcao Instance.new() 

--[[voce pode aprender mais sobre Instance aqui --> https://pt.wikipedia.org/wiki/Inst%C3%A2ncia_(ci%C3%AAncia_da_computa%C3%A7%C3%A3o)
     mais vou tentar resumir: 
     Instanciar um objeto e criar ele dentro de uma classe neste caso como nosta varavel e local dentro de Workspace
     entao quando falamos Instance cria um Novo .new() objeto para mim e dentro de .new(......) voce 
     escolhe oque quer que seja criado ali.
]]

wait(5)

-- onde acontecera a explosao 
explosao.Position = MinhaPart.Position

-- a explosao esta criada mais nao esta inserida em nada entao vamos por 
-- aqui damos onde a explosao vai acontecer em algum pondo dentro de workspace
explosao.Parent = game.Workspace 

-- vamos dar parametros para esta explosao vamos dimensionala e dar a posicao onde ela estara 

--BlastRadius e uma propriedade que da o raio onde a minha explosao tera alcance 
explosao.BlastRadius = 60 


--[[	
		ATENCAO PARA QUE ESTE TUTORIAL FUNCIONE NO SEU SCRIPT
      	NAO ADIANTA COPIAR E COLAR DARA UM ERRO EM RELACAO A POSICAO DA PARTE DECLARADA A CIMA 
		PROVAVELMENTE SUA PARTE NAO ESTARA NA MESMA POSICAO 
		PARA FUNCIONAR APAGUE A LINHA 30 --> MinhaPart.Position=Vector3(16.096, 7.586, 5.216) 
]]