% Each row has exactly one queen
{queen(R,1..8)}=1 :- R=1..8.

% No two queens are on the same column
:- queen(R1,C), queen(R2,C), R1!=R2.

% No two queen are on the same diagonal
:- queen(R1,C1), queen(R2,C2), R1<R2, |R1-R2|=|C1-C2|.

% Not center 4x4 cells
:- queen(3..6,3..6).