module Cliente where
    data Cliente = OrgGov String
                 | Empresa String Int String 
                 | Individuo Pessoa Bool
                 deriving Show

    data Pessoa = Pessoa String String Cargo Genero Estado
                 
                deriving Show

    data Genero = Masculino | Feminino | Outro
                deriving Show
    data Cargo =  Gerente   | Auxiliar | Diretor
                deriving Show
    data Estado = Solteiro  | Casado   | 

                  -- Função para Obter o Nome de um cliente + Cargo + Genero 
    nomeCliente :: Cliente -> String
    nomeCliente c = case c of 
                    OrgGov nome                -> nome
                    Empresa nome id resp       -> nome
                    Individuo p ads            -> 
                        case p of 
                            Pessoa pn sn c g  e  -> pn ++ " " ++ sn

    nomeCliente' :: Cliente -> String
    nomeCliente' c = case c of
                    OrgGov nome                     -> nome 
                    Empresa nome id resp            -> nome
                    Individuo(Pessoa pn sn c g e )  ads  -> pn ++ " " ++ sn      


-- FEITO PELO TERMINAL
N°1 

*Main> (4, "ola", True)             
(4,"ola",True)
*Main>



N° 2
*Main> snd ( fst(("Hello",4), True))
4
*Main>

                  