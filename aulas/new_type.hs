type Nome = String
type Idade = Int
type Linguagem = String
type Pessoa = (Nome, Idade, Linguagem)


pessoa :: Pessoa
pessoa = ("Peppe", 23, "C++")


my_fst :: Pessoa -> Nome
my_fst (n,_, _) = n

my_snd :: Pessoa -> Idade
my_snd (_, i, _) = i

my_lst :: Pessoa -> Linguagem
my_lst (_, _, l) = l
