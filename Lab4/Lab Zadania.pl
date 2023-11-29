%Zadanie 1
pole_kwadratu(Bok, Pole):-
    Pole is Bok * Bok.

pole_kola(Radius, Pole):-
    Pole is pi*Radius * Radius.

%zadanie 2
srednia_arytmetyczna(Liczba1, Liczba2, Srednia):-
    Srednia is (Liczba1 + Liczba2)/2.

%zadanie 4

%Dni tygodnia
dzien_tygodnia(poniedzialek).
dzien_tygodnia(wtorek).
dzien_tygodnia(sroda).
dzien_tygodnia(czwartek).
dzien_tygodnia(piatek).
dzien_tygodnia(sobota).
dzien_tygodnia(niedziela).

%Lew klamie
lew_klamie(Dzien):-
    dzien_tygodnia(Dzien),
    (Dzien = poniedzialek; Dzien = wtorek ; Dzien = sroda).

%Nosorozec klamie
nosorozec_klamie(Dzien):-
    dzien_tygodnia(Dzien),
    (Dzien = czwartek; Dzien = piatek ; Dzien = sobota).

%lew i nosorozec
wczorajszy_dzien(Dzien):-
    dzien_tygodnia(Dzien),
    (lew_klamie(Dzien), nosorozec_klamie(Dzien)),
    (\+ lew_klamie(Dzien); nosorozec_klamie(Dzien)),
    (lew_klamie(Dzien);\+ nosorozec_klamie(Dzien)).

%sprawdzenie
rozwiazanie(Wczoraj):-
    wczorajszy_dzien(Wczoraj),
    write('Wczoraj byl '), write(Wczoraj), nl.
