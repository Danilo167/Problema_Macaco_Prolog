movimento(estado(centro, nacadeira, centro, naoter), agarrar, estado(centro, nacadeira, centro, simter), [agarrar]).
movimento(estado(Posicao, chao, Posicao, Banana), subir, estado(Posicao, nacadeira, Posicao, Banana), [subir]).
movimento(estado(PosicaoA, chao, PosicaoA, Banana), empurrar(PosicaoA, PosicaoB), estado(PosicaoB, chao, PosicaoB, Banana), [empurrar(PosicaoA, PosicaoB)]).
movimento(estado(PosicaoA, chao, Cadeira, Banana), andar(PosicaoA, PosicaoB), estado(PosicaoB, chao, Cadeira, Banana), [andar(PosicaoA, PosicaoB)]).

pode_pegar(estado(_, _, _, simter), []).

pode_pegar(Estado, Sequencia) :- 
movimento(Estado, _,NovoEstado, ListaAcao), 
pode_pegar(NovoEstado, SubSequencia), 
append(ListaAcao, SubSequencia, Sequencia).
