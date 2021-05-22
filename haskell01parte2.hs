-- Prática 01 de Haskell - Parte 2
-- Nome: Gustavo Machado de Freitas

{-
	Funcoes auxiliares
-}

-- Recebe uma String e adiciona tags <li> e <\li> como prefixo e sufixo
htmlItem :: String -> String 
htmlItem str = "<li>" ++ str ++ "</li>"

-- Recebe um caracter e verifica se ele e uma vogal 
isVowel2 :: Char -> Bool 
isVowel2 c = elem c "aeiouAEIOU"

-- Recebe uma idade e resulta verdadeiro caso a idade seja maior que 65 anos
isElderly :: Int -> Bool 
isElderly x = x > 65

-- Verifica se uma palavra tem mais de 10 caracteres
isLongWord :: String -> Bool 
isLongWord s = length s > 10

-- Verifica se um numero eh par 
isEven :: Int -> Bool
isEven n = mod n 2 == 0

-- Verifica se um numero esta entre 60 e 80
between60and80 :: Int -> Bool
between60and80 x = x >= 60 && x <= 80

-- Verifica espacos
identifySpaces :: Char -> Bool
identifySpaces c = c == ' '

-- Recebe um raio r e calcula a área de um círculo com esse raio
-- A área é dada por pi vezes o raio ao quadrado
circleArea :: Float -> Float
circleArea r = (r^2) * pi

{-
	Funcoes da atividade
-}

-- Recebe uma lista de nomes e aplica a funcao htmlItem em cada nome
itemize :: [String] -> [String] 
itemize strl = map htmlItem strl

-- Recebe uma string e retorna outra contendo somente suas vogais
onlyVowels :: String -> String 
onlyVowels str = filter isVowel2 str

-- Dada uma lista de idades, seleciona somente as que forem maiores que 65 anos
onlyElderly :: [Int] -> [Int] 
onlyElderly l = filter isElderly l

-- Recebe uma lista de strings e retorna somente as strings longas
onlyLongWords :: [String] -> [String]
onlyLongWords strl = filter isLongWord strl

-- Recebe uma lista de numeros inteiros e retorna somente aqueles que forem pares
onlyEven :: [Int] -> [Int] 
onlyEven l = filter isEven l

-- Recebe uma lista de numeros e retorne somente os que estiverem entre 60 e 80
onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 l = filter between60and80 l

-- Recebe uma string e retorna o numero de espacos nela contidos
countSpaces :: String -> Int
countSpaces str = length (filter identifySpaces str)

-- Recebe uma lista de valores de raios de círculos
-- Retorna uma lista com a área correspondente a cada raio
calcAreas :: [Float] -> [Float]
calcAreas l = map circleArea l

-- Verifica se o caracter esta contido na string
charFound :: Char -> String -> Bool
charFound c str
 | str == [ ] = False
 | c == head str = True
 | otherwise = charFound c (tail str) 