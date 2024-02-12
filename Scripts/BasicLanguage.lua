-- Bem vindo 
-- Para Aqueles sem tempo ou que nao gostem de ler temos um video em Portugues-Portugal que explica linda mente esta linguagem.
-- https://www.youtube.com/watch?v=gf28_jAs-Cc


-- Isto e um caracter de comentario ( -- ) comentario de uma linha 

--[[
    Isto e um comentario 
    de varias linhas ou um
    bloco de comentariop
]]

-- temos o caracter de concatenacao ( .. ) os dois pontos ele liga dois valores veremos mais para frente 
-- Exemplo 
Variavel1 = " Eu sou o .. "
Variavel2 = " Caracter que concatenacao, junto dois valores "
print(Variavel1..Variavel2) -- Usamos print() para mostrar resultados de em nosso Debug Console para testar retornos de operacoes e funcoes

--[[
    As seguintes palavras-chave são reservadas e não podem ser utilizadas como nomes 
     and       break     do        else      elseif
     end       false     for       function  if
     in        local     nil       not       or
     repeat    return    then      true      until     while
]]

Variavel = " oque é ima variavel " 
--[[Quando nos referimos à variável, do ponto de vista da programação de computadores, estamos tratando de uma “região de memória (do computador) previamente identificada cuja finalidade é armazenar os dados ou informações de um programa por um determinado espaço de tempo”.
https://pt.wikipedia.org/wiki/Vari%C3%A1vel_(programa%C3%A7%C3%A3o) ]]

--[[ 
    Declarando um variavel, 
   ( = )atribui o valor a variavel,  
   nil  e o valor atribuido a vaiavel 
]]
        NomeVariavel = nil 

-- tipos de valores que uma variavel pode armazenar 

-- pode armazenar uma palavra ou frase que chamamos de string
VariavelString = " isso é uma String com aspas duplas " 
-- pode armazenar uma palavra ou frase que chamamos de string
VariavelString = ' isso tambem é uma String com aspas simples ' 
-- pode armazenar numeros que chamamos de Number 
VariavelNumber = 15 
-- nil nao possui um valor nao guarda nada 
VariavelNil = nil 
-- esta variavel Boolean pode armazenar true ou False que seria verdadeiro ou falso so que em ingles
VariavelBoolean = true 


--[[ 
    teremos os caracteres de operacoes 
    +     -     *     /     %     ^     #
    ==    ~=    <=    >=    <     >     =
    (     )     {     }     [     ]
    ;     :     ,     .     ..    ...
]]

-- podemos realizar calculos com os operadores + - * / ^ # 

Numero2 = 2 
OutroNumero2 = 2 
Soma = Numero2 + OutroNumero2 -- operador de adicao ( + )
print(Soma)

Numero3 = 3
OutroNumero3 = 3
Subitracao = Numero3 - OutroNumero3 -- operador de subitracao ( - )
print(Subitracao)

Numero4 = 4
OutroNumero4 = 4
Multiplicacao = Numero4 * OutroNumero4 -- operador de multiplicacao ( * )

SegundaMultiplicacao = Numero2 * Numero3 -- podemos buscar qualquer valor em qualquer variavel para realizar operacoes

-- podemos concatenar estring e number e usarmos dois valores diferentes 
print(Multiplicacao.." Resultado da  Segunda Multiplicacao e " ..SegundaMultiplicacao ) 

Numero5 = 10
Numero10 = 5 
Divisao = Numero5 / Numero10 -- operador de divisao ( / )

-- podemos usar tambem variaveis que receberam valores de outras variaveis para realizar operacoes
OutraDivisao = Numero3 / Divisao
print("A divisao entre "..Numero5.." e Numero "..Numero10.." e igual a "..Divisao)
print("Vamos aproveitar e dividir "..Numero3.." que esta em uma variavel mais distante linhas a cima e dividir pelo resultado da divisao de outras duas variaveis "..Divisao.."\n o resultado e "..OutraDivisao)

-- ao usar o ( \n ) quebramos uma linha ao escrever uma estring ou mostrar um resulta
-- entao podemos concatenar "JUNTAR" com ( .. ) e quevrar linhas com ( \n )
-- vimos que a linguagem lua nao gera somente resultados inteiros 

Numero11 = 11
Numero20 = 32 
Exponencial = Numero11 ^ Numero20 -- Operador de exponencial ( ^ )
-- claro que acima nao conseguimos fazer uma equacao exponencial completa 
print(Exponencial)

--[[
    exemplo de uma equacao exponencial se quise relembrar segue o link de um video
    https://www.youtube.com/watch?v=7EPKmS68KT0
    
     x
    2 = 32
     x    5
    2  = 2
    x = 5
]]


-- falamos de string " TEXTO "  vou mostrar uma funcao de substituicao de string

VariavelBomDia = "Bom dia povo"
VariavelBoaTarde = "Boa tarde lindos e lindas"
VariavelGalera = "galera"

-- neste expmlo definimos a variavel damos seu tipo string e ativamos a funcao gsub para subistituirmos uma palavra
--[[
    a funcao gsub precisa de tres parametros para funcionar 
    primeiro a variavel onde esta o valor da string
    segundo a string a ser substituida 
    terceiro a variavel que possui o valor em string que ira subistituir o valor da primeira variavel
]]
ExemploDeSubstituicao = string.gsub(VariavelBomDia,"povo",VariavelGalera)
print(ExemploDeSubstituicao)