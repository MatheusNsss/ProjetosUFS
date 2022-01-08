--- MATHEUS NASCIMENTO DOS SANTOS
--- 202100011708

import Data.Char
type CPF = Integer
type Nome = String
type Genero = Char
type Dia = Int
type Mes = Int
type Ano = Int
type Data = (Dia, Mes, Ano)
type DataNasc = Data
type Endereco = String
type Municipio = String
type Estado = String
type Telefone = String
type Email = String
type Cidadao = (CPF, Nome, Genero, DataNasc, Endereco, Municipio, Estado, Telefone, Email) 
type Cadastro = [Cidadao]
type IdadeInicial = Int
type IdadeFinal = Int
type FaixaIdade = (IdadeInicial, IdadeFinal)
type Quantidade = Int
type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)
type Vacinados = [Vacinado]
type FixedFaixas = [FaixaIdade]
type Populacao = Int
type PopMun2 = (Municipio, [(FaixaIdade, Populacao)])
type PopEstado = (Estado, [PopMun2])
type PopPais = [PopEstado]
type UltimaIdade = Int
type Populacao2 = Int
type PopMun = (Municipio, Populacao2)
data Arv a =  NoNulo |  No PopMun (Arv PopMun) (Arv PopMun)
                      deriving (Eq, Ord, Show, Read)



cadastro :: Arv PopMun
cadastro = No ("Itabaiana", 100000) 
               (No ("Capela", 35000) 
                 (No ("Aracaju", 675000) NoNulo NoNulo) 
                 (No ("Estancia", 70000) NoNulo NoNulo)) 
               (No ("Sao Cristovao", 92100) 
                 (No ("Lagarto", 107000) NoNulo NoNulo) 
                 (No ("Siriri", 10000) NoNulo NoNulo))

cad :: Cadastro
cad = [(11111111111, "Abel", 'F', (28,04,1980), "Endereco A", "Lagarto", "SE", "55555555", "matheus@gmal.com"), 
       (22222222222, "Maro", 'M', (28,04,1980), "Endereco B", "Lagarto", "SE", "55555555", "matheus@gmal.com"), 
       (33333333333, "Cristiano", 'M', (28,04,1980), "Endereco C", "Siriri", "SE", "55555555", "matheus@gmal.com"),
       (44444444444, "Paula", 'F', (28,04,1980), "Endereco D", "Siriri", "SE", "55555555", "matheus@gmal.com"), 
       (55555555555, "Mariano", 'M', (28,04,2000), "Endereco A", "Aracaju", "SE", "55555555", "matheus@gmal.com"), 
       (66666666666, "Maria", 'F', (28,04,2000), "Endereco B", "Aracaju", "SE", "55555555", "matheus@gmal.com"),
       (77777777777, "Eduardo", 'M', (28,04,2000), "Endereco G", "Estancia", "SE", "55555555", "matheus@gmal.com"),
       (88888888888, "Abelardo", 'F', (28,04,2000), "Endereco H", "Estancia", "SE", "55555555", "matheus@gmal.com"),
       (99999999999, "Francisco", 'M', (28,04,2020), "Endereco I", "Capela", "SE", "55555555", "matheus@gmal.com"),
       (12312312312, "Marcia", 'F', (28,04,1980), "Endereco Aa", "Cidade AB", "BA", "55555555", "matheus@gmal.com"), 
       (23423423423, "Igos", 'M', (28,04,1980), "Endereco Bb", "Cidade BC", "BA", "55555555", "matheus@gmal.com"), 
       (34534534534, "Pedro Eduardo", 'M', (28,04,1980), "Endereco Cc", "Cidade CD", "BA", "55555555", "matheus@gmal.com"),
       (45645645645, "Fran", 'F', (28,04,1980), "Endereco Dd", "Cidade DE", "BA", "55555555", "matheus@gmal.com"), 
       (56756756756, "Laelson", 'M', (28,04,2000), "Endereco Ee", "Cidade EF", "BA", "55555555", "matheus@gmal.com"), 
       (67867867867, "Edilde", 'F', (28,04,2000), "Endereco Ff", "Cidade AB", "BA", "55555555", "matheus@gmal.com"),
       (78978978978, "Rivaldo", 'M', (28,04,2000), "Endereco Gg", "Cidade AB", "BA", "55555555", "matheus@gmal.com"),
       (89089089089, "Juliana", 'F', (28,04,2000), "Endereco Hh", "Cidade AB", "BA", "55555555", "matheus@gmal.com"),
       (90190190190, "Matheus", 'M', (28,04,2020), "Endereco Ii", "Cidade BC", "BA", "55555555", "matheus@gmal.com"),
       (12121212121, "Renata", 'F', (28,04,1980), "Endereco J1", "Cidade ABC", "CE", "55555555", "matheus@gmal.com"),
       (23232323232, "Ronaldo", 'M', (28,04,1980), "Endereco K2", "Cidade BCD", "CE", "55555555", "matheus@gmal.com"),
       (34343434343, "Iraildes", 'M', (28,04,1980), "Endereco L3", "Cidade CDE", "CE", "55555555", "matheus@gmal.com"),
       (45454545454, "Angelo", 'M', (28,04,1980), "Endereco M4", "Cidade EFG", "CE", "55555555", "matheus@gmal.com"),
       (56565656565, "Angela", 'F', (28,04,2000), "Endereco N5", "Cidade ABC", "CE", "55555555", "matheus@gmal.com"),
       (67676767676, "Angeline", 'M', (28,04,2000), "Endereco O6", "Cidade CDE", "CE", "55555555", "matheus@gmal.com"),
       (78787878787, "Luiz Carlos", 'F', (28,04,2000), "Endereco P7", "Cidade EFG", "CE", "55555555", "matheus@gmal.com"),
       (89898989898, "Anita", 'O', (28,04,2000), "Endereco Q8", "Cidade EFG", "CE", "55555555", "matheus@gmal.com"),
       (90909090909, "Cosme", 'O', (28,04,2020), "Endereco R9", "Cidade EFG", "CE", "55555555", "matheus@gmal.com")]
reg :: Vacinados
reg = [(11111111111,[("AstraZeneca", (20,09,2021)),("AstraZeneca", (20,10,2021))]),
       (33333333333,[("AstraZeneca", (20,09,2021)),("AstraZeneca", (20,10,2021))]),
       (44444444444,[("CoronaVac", (20,09,2021))]),
       (55555555555,[("CoronaVac", (20,09,2021)),("CoronaVac", (20,10,2021))]),
       (66666666666,[("CoronaVac", (20,09,2021))]),
       (77777777777,[("Pfizer", (20,09,2021)),("Pfizer", (20,10,2021))]),
       (88888888888,[("Pfizer", (20,09,2021))]),
       (99999999999,[("Pfizer", (20,09,2021)),("Pfizer", (20,10,2021))]),
       (12312312312,[("AstraZeneca", (20,09,2021))]),
       (23423423423,[("CoronaVac", (20,09,2021))]),
       (34534534534,[("Janssen", (20,09,2021)),("Janssen", (20,09,2021))]),
       (45645645645,[("Pfizer", (20,09,2021))]),
       (56756756756,[("Janssen", (20,09,2021)),("Janssen", (20,09,2021))]),
       (67867867867,[("Pfizer", (20,09,2021))]),
       (78978978978,[("CoronaVac", (20,09,2021)),("CoronaVac", (20,10,2021))]),
       (89089089089,[("CoronaVac", (20,09,2021))]),
       (90190190190,[("CoronaVac", (20,09,2021)),("CoronaVac", (20,10,2021))]),
       (12121212121,[("AstraZeneca", (20,09,2021))]),
       (23232323232,[("AstraZeneca", (20,09,2021)),("AstraZeneca", (20,10,2021))]),
       (34343434343,[("AstraZeneca", (20,09,2021))]),
       (45454545454,[("Janssen", (20,09,2021)),("Janssen", (20,09,2021))]),
       (56565656565,[("Pfizer", (20,09,2021))]),
       (67676767676,[("Janssen", (20,09,2021)),("Janssen", (20,09,2021))]),
       (78787878787,[("Pfizer", (20,09,2021))]),
       (89898989898,[("Janssen", (20,09,2021)),("Janssen", (20,09,2021))]),
       (90909090909,[("Pfizer", (20,09,2021))])]
------------------------------------------------------------
------------------------------------------------------------
questao01 :: Cadastro -> Vacinados -> IO ()
questao01 registro lista = main
 where main = do nome <- ask "Informe o CPF que deseja consultar: "
                 if (not (ehZero nome))  then if (chockCpf nome registro) && (chockVacina nome lista) then putStrLn ("NOME: "++ myName registro nome ++ "\n" ++ "DOSES:" ++ formatVac (vacinou nome lista)) else putStrLn "Cpf nao encontrado em nosso banco de dados"
                 else error  "PROGRAMA ENCERRADO"
                 main
------------------------------------------------------------
------------------------------------------------------------
questao02a :: Arv PopMun -> Cadastro -> Vacinados -> IO ()
questao02a arvore registro lista = main
      where main = do city <- ask "Nova Consulta Referente aos Dados Apresentados Anteriormente: (S ou N): "
                      if city == "S" then resposta arvore registro lista else error "PROGRAMA ENCERRADO"
                      main
------------------------------------------------------------
------------------------------------------------------------
questao02b :: Arv PopMun -> Cadastro -> Vacinados -> Data ->  IO ()
questao02b arvore registro lista dataH = main
      where main = do city <- ask "Nova Consulta Referente aos Dados Apresentados Anteriormente: (S ou N): "
                      if (city == "S") || (city == "s") then respostab arvore registro lista dataH else error "PROGRAMA ENCERRADO"
                      main

chocka :: String -> Cadastro -> Bool
chocka card registro = or $ map ondeEsta registro
 where 
       ondeEsta (a,s,d,f,g,h,j,k,l) = card == h
------------------------------------------------------------                      
------------------------------------------------------------
------------------------------------------------------------

------------------------ AUXILIARES Q 01 ------------------------------------

chockMuni :: String -> Arv PopMun -> Bool
chockMuni info arvore = or $ map ondeEsta (em_ordem (arvore))
 where ondeEsta (x,xs) = x == info

ehVazio :: String -> Bool
ehVazio xs = and $ map deveser0 xs
 where deveser0 x = x == ' '
ehZero :: String -> Bool
ehZero xs = and $ map deveser0 xs
 where deveser0 x = x == '0'
formatVac :: Doses -> String
formatVac (x:xs) = if length (x:xs) == 2 then if (fst x) /= "Janssen"  then ((fst x) ++ ", " ++ show (dia (snd x)) ++ "." ++ show (mes (snd x)) ++ "." ++ show (ano (snd x)) ++ "\n" ++ "      " ++ (fst $ head xs) ++ ", " ++ show (dia (snd (head xs))) ++ "." ++ show (mes (snd (head xs))) ++ "." ++ show (ano (snd (head xs)))) else ((fst x) ++ ", " ++ show (dia (snd x)) ++ "." ++ show (mes (snd x)) ++ "." ++ show (ano (snd x))) else ((fst x) ++ ", " ++ show (dia (snd x)) ++ "." ++ show (mes (snd x)) ++ "." ++ show (ano (snd x)))
dia :: Data -> Dia
dia (a,s,d) = a
mes :: Data -> Mes
mes (a,s,d) = s
ano :: Data -> Ano
ano (a,s,d) = d
vacinou :: String -> Vacinados -> Doses
vacinou card registro =snd $ head $ filter ondeEsta registro
 where 
      ondeEsta (x,xs) = show x == card
myName :: Cadastro -> String -> String   
myName  registro card = myName $ head $ filter ondeEsta registro
 where
      ondeEsta (a,s,d,f,g,h,j,k,l) = show a == card
      myName (a,s,d,f,g,h,j,k,l) = s
chockCpf :: String -> Cadastro -> Bool
chockCpf card registro = or $ map ondeEsta registro
 where 
      ondeEsta (a,s,d,f,g,h,j,k,l) = card == (show a)

chockVacina :: String -> Vacinados -> Bool
chockVacina card registro = or $ map ondeEsta registro
 where 
       ondeEsta (x,xs) = card == (show x)
ask :: String -> IO String
ask question = do putStr question
                  getLine

------------------------ AUXILIARES Q 02 A------------------------------------
resposta :: Arv PopMun -> Cadastro -> Vacinados -> IO ()                       
resposta arvore registro lista = main
  where main = do city <- ask "Municipio: "
                  if (not(ehVazio city)) then if (chockMuni city arvore) then putStrLn ("CIDADE:" ++ city ++ "\n" ++ "PERCENTUAL:" ++ divisao city arvore registro lista) else putStrLn "Municipio Nao encontrado em nosso Banco de Dados" else error "PROGRAMA ENCERRADO"

em_ordem :: Arv PopMun -> [PopMun]
em_ordem NoNulo = []
em_ordem (No cidade esq dir) = (em_ordem esq) ++ [cidade] ++ (em_ordem dir)
osDeVddeuSeiQuemSao :: [PopMun2] -> Municipio -> Bool
osDeVddeuSeiQuemSao [] _ = False
osDeVddeuSeiQuemSao lista info = or $ map taAqui lista 
 where taAqui (x,xs) = x == info
divisao :: Municipio -> Arv PopMun -> Cadastro -> Vacinados -> String 
divisao info arvore registro lista = percent (confere info lista registro) (getMunicipio info arvore) ++ "%"
getMunicipio :: Municipio -> Arv PopMun ->  Int
getMunicipio info arvore = snd $ head $ filter takeMunicipio (em_ordem arvore)
 where takeMunicipio (x,xs) = info == x
confere :: Municipio -> Vacinados -> Cadastro ->  Int
confere info lista registro = length $ checkVacina (map justA $ filter saoDoMuni registro) lista
 where saoDoMuni (a,b,c,d,e,f,g,h,i) = f == info
       justA (a,b,c,d,e,f,g,h,i) = a
checkVacina :: [CPF] -> Vacinados -> [(CPF, Doses)]
checkVacina [] _ = []
checkVacina (x:xs) lista = filter ehDalista lista ++ checkVacina xs lista
 where ehDalista (o,os) = o == x && length os == 2
percent :: Int ->  Int -> String
percent _ 0 = error "Operação Impossivel de ser realizada"
percent x y =  formatPercent $ 100 * ( a / b )
     where a = fromIntegral x :: Float
           b = fromIntegral y :: Float
formatPercent :: Float -> String
formatPercent x = if (or $ map ehE (show x)) then formatFormat x else (show x) 
  where ehE y = y == 'e'
formatFormat :: Float -> String
formatFormat x
 | last (show x) == '2' = "0.0" ++ [head $ show x]
 | otherwise = "0.00" ++ socorro (ord (last (show (x)))) ++ [(head (show x))] ++ (take 1 (drop 2 (show x)))
socorro :: Int -> String
socorro 51 = "" 
socorro x = "0" ++ socorro (x-1)

------------------------ AUXILIARES Q 02 B ------------------------------------
       
confere2 :: Municipio -> Vacinados -> Cadastro ->  [(Integer, String, Data)]
confere2 info lista registro = checkVacinaA (map justA $ filter saoDoMuni registro) lista
 where saoDoMuni (a,b,c,d,e,f,g,h,i) = f == info
       justA (a,b,c,d,e,f,g,h,i) = a

checkVacinaA :: [CPF] -> Vacinados -> [(Integer, String, Data)]
checkVacinaA [] _ = []
checkVacinaA (x:xs) lista = (map jahVenceu (filter ehDalista lista))++ checkVacinaA xs lista
 where ehDalista (o,os) = o == x && length os == 1
       jahVenceu (x,xs) = (x, fst $ head xs, snd $ head xs) 

verificando :: [(Integer, String, Data)] ->  Data -> [(Integer, String, Data)]
verificando lista dataH = map ehValida lista
 where ehValida (x, y, z) = (x, y, takeIdade z dataH)

respostab :: Arv PopMun -> Cadastro -> Vacinados -> Data -> IO ()                       
respostab arvore registro lista dataH = main
  where main = do city <- ask "Municipio Para Consulta de Atrasados: "
                  if (not(ehVazio city))  then if (chockMuni city arvore) && (chocka city registro) then putStrLn ("CIDADE:" ++ city ++ "\n" ++ "% em relação à População Total::" ++ divisaob city arvore registro lista dataH ++ "\n" ++ "% em relação às pessoas registradas no banco de dados de Vacinados::" ++ divisaob2 city arvore registro lista dataH) else putStrLn "Municipio Nao encontrado em nosso Banco de Dados ou Nao há registros para este Municipio" else error "PROGRAMA ENCERRADO"


divisaob :: Municipio -> Arv PopMun -> Cadastro -> Vacinados -> Data -> String 
divisaob info arvore registro lista dataH = percent (vencendoOrVenceu (confere2 info lista registro) dataH) (getMunicipio info arvore) ++ "%"
divisaob2 :: Municipio -> Arv PopMun -> Cadastro -> Vacinados -> Data -> String 
divisaob2 info arvore registro lista dataH = percent (vencendoOrVenceu (confere2 info lista registro) dataH) (meDeOsMuni info registro lista) ++ "%"

meDeOsMuni :: Municipio ->  Cadastro -> Vacinados -> Int
meDeOsMuni info registro lista = length $ filter ehTrue $ map ehVacinadoh $ filter ehdoMuni registro
 where ehdoMuni (a,s,d,f,g,h,j,k,l) = h == info  
       ehVacinadoh (a,s,d,f,g,h,j,k,l) = socorrodeus lista a
       ehTrue x = x == True

socorrodeus lista x = or $ map taaquiNaLista lista
 where taaquiNaLista (a,b) = a == x

vencendoOrVenceu :: [(Integer, String, Data)] -> Data -> Int
vencendoOrVenceu x dataH = length $ filter ehFalse $ map valida x 
 where valida (x, y, z) = if y == "CoronaVac" then conferir z dataH 21 else if y == "Pfizer" then conferir z dataH 90 else if y == "AstraZeneca" then conferir z dataH 90 else False
       ehFalse x = x == True
conferir :: Data -> Data -> Int -> Bool
conferir (a,b,c) (x,y,z) dif
 | (c == z) = if (b == y) then 
                                 if((x-a) <= dif) then False 
                                 else False 
              else 
                  if (( (complexCheckM (b,c) (y,z)) - ((checkMes (y,z))-x) - ((checkMes (b,c))-a) )) < dif then False 
                  else True  
 | otherwise = if ((z-c) == 1) then if ((complexCheck y (y,z) - ((checkMes (y,z)) - x)) + (complexCheckIN b (b,c) - ((checkMes (b,c)) - a))) <= dif then False else True else True

complexCheckM :: (Int, Int) -> (Int, Int) -> Int
complexCheckM (13, _) _ = 0
complexCheckM (b,c) (f,g)
 | b <= f = checkMes (b,c) + complexCheckM (b+1,c) (f,g)
 | otherwise = 0
complexCheck :: Int -> (Int, Int) -> Int
complexCheck 0 _ = 0
complexCheck a (b,c) = checkMes (b,c) + complexCheck (a-1) (b-1,c)

complexCheckIN :: Int -> (Int, Int) -> Int
complexCheckIN 13 _ = 0
complexCheckIN a (b,c) = checkMes (b,c) + complexCheckIN (a+1) (b+1,c)


checkMes :: (Int,Int) -> Int
checkMes (valorM, valorA)
 | valorM == 1 || valorM == 3 || valorM == 5 || valorM == 7 || valorM == 8 || valorM == 10 || valorM == 12 = 31 
 | valorM == 4 || valorM == 6 || valorM == 9 || valorM == 11 = 30 
 | otherwise = if (mod valorA 4) == 0 then 29 else 28

takeIdade :: Data -> Data -> Data
takeIdade datanasc datahoje
 | takeano datanasc >  takeano datahoje =  error "Erro"
 | takeano datanasc ==  takeano datahoje && takemes datanasc > takemes datahoje = error "Erro"
 | takeano datanasc ==  takeano datahoje && takemes datanasc == takemes datahoje && takedia datanasc > takedia datahoje = error "Invalid date"
 | otherwise = datanasc
takedia :: Data -> Dia
takedia (diaNasc, _, _) = diaNasc
takemes :: Data -> Mes
takemes (_, mesNasc, _) = mesNasc
takeano :: Data -> Ano
takeano (_, _, anoNasc) = anoNasc
















