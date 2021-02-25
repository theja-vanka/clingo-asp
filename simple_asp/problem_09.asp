% in(I,S) means number I is in set S
{in(I,1..k)} = 1 :- I=1..n.
% these subsets are sum-free.
:- in(I,S), in(J,S), in(I+J,S), I!=J.
