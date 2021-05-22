-- Prática 01 de Haskell - Parte 1
-- Nome: Gustavo Machado de Freitas

-- Recebe dois números x e y e calcula a soma dos seus quadrados
sumSquares :: Int -> Int -> Int
sumSquares x y = (x^2) + (y^2)

-- Recebe um raio r e calcula a área de um círculo com esse raio
-- A área é dada por pi vezes o raio ao quadrado
circleArea :: Float -> Float
circleArea r = (r^2) * pi

-- Recebe o ano de nascimento de uma pessoa e o ano atual
-- Produz como resultado a idade (aproximada) da pessoa
age :: Int -> Int -> Int
age x y = y - x

-- Recebe uma idade e resulta verdadeiro caso a idade seja maior que 65 anos
isElderly :: Int -> Bool 
isElderly x = x > 65

-- Recebe uma String e adiciona tags <li> e <\li> como prefixo e sufixo
htmlItem :: String -> String 
htmlItem str = "<li>" ++ str ++ "</li>"

-- Receba uma string e verifique se ela inicia com o caracter 'A'
startsWithA :: String -> Bool 
startsWithA str = (head str) == 'A'

-- Recebe uma string e verifica se ela termina com o caracter 'r'
isVerb :: String -> Bool 
isVerb str = (last str) == 'r'

-- Recebe um caracter e verifica se ele é uma vogal minúscula
isVowel :: Char -> Bool 
isVowel c 
   | c == 'a'  = True
   | c == 'e'  = True
   | c == 'i'  = True
   | c == 'o'  = True
   | c == 'u'  = True
   | otherwise = False

-- Verifica se 2 listas possuem o mesmo primeiro elemento
hasEqHeads :: [Int] -> [Int] -> Bool 
hasEqHeads l1 l2 = (head l1) == (head l2)

-- Recebe um caracter e verifica se ele é uma vogal 
isVowel2 :: Char -> Bool 
isVowel2 c = elem c "aeiouAEIOU"
