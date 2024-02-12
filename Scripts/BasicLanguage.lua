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

Numero10 = 10
Numero5 = 5 
Divisao = Numero5 / Numero10 -- operador de divisao ( / )

-- podemos usar tambem variaveis que receberam valores de outras variaveis para realizar operacoes
OutraDivisao = Numero3 / Divisao
print("A divisao entre "..Numero5.." e Numero "..Numero10.." e igual a "..Divisao)
print("Vamos aproveitar e dividir "..Numero3.." que esta em uma variavel mais distante linhas a cima e dividir pelo resultado da divisao de outras duas variaveis "..Divisao.."\n o resultado e "..OutraDivisao)

-- ao usar o ( \n ) quebramos uma linha ao escrever uma estring ou mostrar um resulta
-- entao podemos concatenar "JUNTAR" com ( .. ) e quevrar linhas com ( \n )
-- vimos que a linguagem lua nao gera somente resultados inteiros 

Numero11 = 11
Numero20 = 20 
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

-- neste caso declaramos a variavel e ja atribuimos os valores e o operador de porcentagem de modo que a variavel ja efetua o calculos
Porcentagem = 50 % 100 -- operador de porcentagem ( % )
print(Porcentagem)

--[[ operadores logicos
     < menor 
     > maior 
     <= menor igual 
     >= maior igual
     == igual
     ~= different
     and  e 
     ar ou
     not nao 
]]

--[[ para comprendermos melhor os operadores logicos 
     vamos usar uma estrutura de decisao  If Else 
     If traduzindo seria.. SE 
     exemplo: Se eu aprender lua serei programador 
     else traduzindo seria... Se Nao 
     exemplo: se eu nao aprender nao serei programador

     observe a sintaxe da estrutura if else 

        if condicao a ser testada then 
           algo a ser feito pela condicao se sim
        else
           algo a ser feito pela condicao se nao
        end
]]

-- exemplo:

            if Numero2 < Numero3 then -- numero 2 e < menor que numero 3 
                print("Numero menor "..Numero2) -- se 2 e < menor que 3 escreva... Numero menor 2
            else 
                print("Numero maior "..Numero3) -- se 2 nao for < menor que 3 esqueva.. Numero maior 3
            end

            if Numero10 > Numero20 then  -- numero 10 e > maior que numero 20
                print("Numero menor "..Numero10)
            else 
                print("Numero maior "..Numero20)
            end

            if Numero10 >= Numero20 then -- numero 10 e >= maior ou igual a 20 
                print("Numero e maior e igual")
            else 
                print("Numero e menor")
            end
            
            if Numero10 <= Numero20 then -- numero 10 e <= menor ou igual a 20 
                print("Numero e menor") -- repare que tivemos que mudar as condicoes 
            else 
                print("Numero e maior e igual")
            end

            if Numero10 == Numero20 then -- numero 10 e == igual a 20 
                print("Numero e igual") 
            else 
                print("Numero e diferente")
            end

            if Numero10 == Numero10 then -- numero 10 e == igual a 10 
                print("Numero e igual") 
            else 
                print("Numero e diferente")
            end

            if Numero10 ~= Numero10 then -- numero 10 e ~= diferente de 10 
                print("Numero e diferente")
            else 
                print("Numero e igual") 
            end

--[[ vamos mudar um pouco e vamos ver junto com os 
     operadores logicos junto com a estrutura de repeticao
     conheceremos a estrutura While 
     a funcao while seria na traducao 
     enquanto for verdadeiro faca...

     sintaxe 

     while condicao  do 
        condiao a ser executada caso for verdadeiro a condicao 
     end
]]

-- exemplo
EstruturaWhile = 0 -- declarando uma variavel para este exemplo

          while EstruturaWhile < 10 do --enquanto a variavel EstruturaWhile for menor que 10 repita 
            print(EstruturaWhile) -- vai mostrar no console toda vez que acrecentar + 1 
            EstruturaWhile = EstruturaWhile + 1 -- variavel EstruturaWhile soma com + 1 
          end

          print(EstruturaWhile)


-- outro exemplo

          while Numero20 > 10 do -- enauqnto numero 20 for maior que 10 faca
            print(Numero20)  -- vai mostrar no console toda vez que subtrair 1
            Numero20 = Numero20  - 1  -- varuavel Numero20 vai subtrair -1 
          end

          print(" Valor da variavel Numero20 agora e "..Numero20)-- agor Numero20 nao vale mais 20 como declarado na linha 111 ele agora vale 10 porque foi reatribuido o valor atraves da funcao while


-- voltando ao if testaremos os operadores and or not

         if Numero20 and Numero10 <= 20 then -- se Numero20 e Numero10 forem Menor ou igual a 20 
            print(Numero20,Numero10)         -- repare que temos como por duas variaveis ou dois valores juntos com o uso da virgula 
         else                                -- se nao 
            print(Numero10)                  -- imprima Numero10
         end

-- vamos ver no console dois numeros 10 poe que a variavel Numero20 nao vale mais 20 vamos arrumar isso 

        if Numero10 or Numero5 > 20 then                                    -- se Numero10 ou Numero5 for menor que 20 entao faca 
            Numero20=Numero20 + 10                                          -- Numero20 soma com + 10 
            print(" Valor da variavel Numero20 agora e "..Numero20)         -- vai mostrar no console o valor de Numero20 
        else                                                                -- se nao 
            print("A adicao de valores ao Numero20 nao sera nescessaria")   -- vai mostrar no console que a soma nao e nescessaria
        end

-- veremos um pouco soble os boolean 

VariavelBoolean = true  
        
        if VariavelBoolean ~= false then              -- se a VariavelBoolean for diferente de falso faca 
            print("VariavelBoolean nao e falsa ")     -- mostra resultado
        else                                          -- se nao 
            print("VariavelBoolean e verdadeira")     -- mostre este resultado 
        end


        -- em construcao 
        