import Text.Printf

-- String inicial do SVG
-- Bom saber que a formatacao do printf eh a mesma do C 
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

-- cx e cy sao as coordenadas do centro do circulo
svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 8 circulos, formando um emoji.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 200 200 200 "rgb(255, 204, 77, 1)") ++
  (svgCircle 200 320 40 "rgb(102, 69, 0)") ++
  (svgCircle 90 250 60 "rgb(255, 120, 146, 0.6)") ++
  (svgCircle 310 250 60 "rgb(255, 120, 146, 0.6)") ++
  (svgCircle 120 180 60 "rgb(245, 248, 250)") ++
  (svgCircle 280 180 60 "rgb(245, 248, 250)") ++
  (svgCircle 120 180 30 "rgb(41, 47, 51)") ++
  (svgCircle 280 180 30 "rgb(41, 47, 51)") ++
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
