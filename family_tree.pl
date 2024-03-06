/**
 *This Program represents family tree
 *Define:- parents[Father & Mother] and their sons and daugthers.
 */
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

mother(X, Y):-
    parent(X, Y),
    female(X).

grandparent(X, Z):-
    parent(X, Y),
    parent(Y, Z).

sister(X, Y):-
    parent(Z, X),
    parent(Z, Y),
    female(X),
    female(Y),
    X\=Y.
