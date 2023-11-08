dodaj1(A,B,C):-
    C is A+B,
    write(C).

dodaj(A,B,C):-
    C is A +B,
    write('Wynik: '),
    write(C), nl.

silnia(0,1).
silnia(N,Wynik):-
    N>0,
    NewN is N -1,
    silnia(NewN, NewWynik),
    Wynik is N *NewWynik.

warunek(X):-
    (   X>0->
    write('liczba dodatnia');
    write('liczba ujemna')
    ).

main:-
    write('podaj liczbe'),read(N), silnia(N).

fib(0,0).
fib(1,1).
fib(N,Wynik):-
    N1 is N-1,
    N2 is N-2,
    fib(N1, W1),
    fib(N2,W2),
        Wynik is W1+W2.

%Potegowanie
%podaj a i n
%spr czy n>0 to wywo�aj regula potega
%blad to komunikat o bledzie

potega:-
    write('Podaj podstawe potegi (a) = '), read(A),
    write('Podaj wykladnik potegi (n) = '), read(N),
    (   N>=0->
    potegaRek(A,N,1,Wynik),
    write('Wynik = '), write(Wynik);
    write('Blad: N musi byc wieksze od 0')
    ).

potegaRek(_,0,X,X).
potegaRek(A,N,X,Wynik):-
    N>0,
    NoweX is X * A,
    NoweN is N - 1,
    potegaRek(A, NoweN, NoweX, Wynik).

%Hanoi
%przenie� kr��ek z % wie�y pierwszej na drug�, przenie� kr��ek
%z wie�y trzeci� na pierwsz�

