% Bishop function
{bishop(1..n,1..n)}.

% No two bishops are on the same diagonal
:- bishop(R1,C1), bishop(R2,C2), R1!=R2, |R1-R2|=|C1-C2|.

% Maximize number of bishops
#maximize{1,X,Y:bishop(X,Y)}.