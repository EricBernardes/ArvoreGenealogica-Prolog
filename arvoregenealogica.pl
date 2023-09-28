%Arvore

%progenitores
progenitor(evaldo, eric).
progenitor(evaldo, luan).
progenitor(rosalina, eric).
progenitor(rosalina, luan).
progenitor(ana, evaldo).
progenitor(mauricio, evaldo).
progenitor(ana, miro).
progenitor(mauricio, miro).
progenitor(ana, mirim).
progenitor(mauricio, mirim).
progenitor(euvira, rosalina).
progenitor(valdemiro, rosalina).
progenitor(euvira, angela).
progenitor(valdemiro, angela).
progenitor(euvira, delinha).
progenitor(valdemiro, delinha).
progenitor(angela, raisa).
progenitor(rosildo, raisa).
progenitor(delinha, bruno).
progenitor(nissim, bruno).
progenitor(delinha, poliana).
progenitor(nissim, poliana).

%sexo masculino
masculino(evaldo).
masculino(eric).
masculino(mirim).
masculino(miro).
masculino(mauricio).
masculino(valdemiro).
masculino(nissim).
masculino(rosildo).
masculino(bruno).

%sexo feminino
feminino(rosalina).
feminino(ana).
feminino(euvira).
feminino(angela).
feminino(delinha).
feminino(poliana).
feminino(raisa).

marido(nissin, delinha).
marido(evaldo, rosalina).
marido(rosildo, angela).
marido(valdemiro, euvira).
marido(mauricio, ana).

filho(Y, X) :- progenitor(X, Y).

mae(X, Y) :- progenitor(X, Y), feminino(X).

pai(X, Y) :- progenitor(X, Y), masculino(X).

avo(X, Z) :- progenitor(X, Y), progenitor(Y, Z).

tio(Tio, Sob) :- progenitor(P, Sob), irmaos(P, Aux), progenitor(Tio, X), progenitor(Aux, X), masculino(Tio).

tia(Tia, Sob) :- progenitor(P, Sob), irmaos(P, Aux), progenitor(Tia, X), progenitor(Aux, X), feminino(Tia).

irma(X, Y) :- progenitor(Z, X), progenitor(Z, Y), feminino(X), X\=Y.

irmao(X, Y) :- progenitor(Z, X), progenitor(Z, Y), masculino(X), X\=Y.

irmaos(X, Y) :- progenitor(Z, X), progenitor(Z, Y), X\=Y.

antepassado(X, Z) :- progenitor(X, Z).
antepassado(X, Z) :- progenitor(X, Y), antepassado(Y, Z).

esposa(X, Y) :- marido(Y, X).