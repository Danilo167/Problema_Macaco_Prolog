movimento(estado(Posicao, nacadeira, Posicao, naoter), agarrar, estado(Posicao, nacadeira, Posicao, simter), [agarrar]).

movimento(estado(Posicao, chao, Posicao, naoter), subir, estado(Posicao, nacadeira, Posicao, naoter), [subir]).

movimento(estado(PosicaoA, chao, PosicaoA, Ter), empurrar(PosicaoA, PosicaoB), estado(PosicaoB, chao, PosicaoB, Ter), [empurrar(PosicaoA, PosicaoB)]).

movimento(estado(PosicaoA, chao, Cadeira, Ter), andar(PosicaoA, PosicaoB), estado(PosicaoB, chao, Cadeira, Ter), [andar(PosicaoA, PosicaoB)]).

pode_pegar(estado(_, _, _, simter), []).
pode_pegar(Estado, Sequencia) :-
    movimento(Estado, _, NovoEstado, Lista),
    pode_pegar(NovoEstado, NovaSequencia),
    append(Lista, NovaSequencia, Sequencia).
