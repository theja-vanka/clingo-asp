% Each number 1..9 is assigned to one cell in each box
1 { a(X,Y,N):X=1..9,Y=1..9,X1<=X,X<=X1+2,Y1<=Y,Y<=Y1+2 } 1 :- N=1..9, X1 = 3*(0..2)+1, Y1 = 3*(0..2)+1.

% no two different numbers given a row and a column
:- a(X,Y,N), a(X,Y,N1), N!=N1.

% no two different columns given a row and a number
:- a(X,Y,N), a(X,Y1,N), Y!=Y1.

% no two different rows given a column and a number
:- a(X,Y,N), a(X1,Y,N), X!=X1.

% define the directions of the greater-than symbols on each row 

left_right(1, l, l, r, l, l, l).
left_right(2, l, r, l, r, l, l).
left_right(3, r, l, r, r, r, l).
left_right(4, r, l, l, l, r, l).
left_right(5, l, r, r, l, r, r).
left_right(6, l, r, l, l, l, r).
left_right(7, r, l, r, l, l, r).
left_right(8, r, r, l, r, l, l).
left_right(9, l, r, l, r, l, l).

up_down(1, u, u, d, u, u, d, d, d, d).
up_down(2, u, d, d, d, d, d, u, u, d).
up_down(4, d, u, d, u, u, d, u, u, u).
up_down(5, u, d, u, d, d, u, u, u, u).
up_down(7, d, u, d, d, u, d, d, u, u).
up_down(8, d, u, u, u, u, d, d, d, d).

% define the effect of the greater-than symbols on left-right directions 
N1 < N2 :- left_right(R, D, _, _, _, _, _), D=l, a(R,1,N1), a(R,2,N2).
N1 < N2 :- left_right(R, _, D, _, _, _, _), D=l, a(R,2,N1), a(R,3,N2).
N1 < N2 :- left_right(R, _, _, D, _, _, _), D=l, a(R,4,N1), a(R,5,N2).
N1 < N2 :- left_right(R, _, _, _, D, _, _), D=l, a(R,5,N1), a(R,6,N2).
N1 < N2 :- left_right(R, _, _, _, _, D, _), D=l, a(R,7,N1), a(R,8,N2).
N1 < N2 :- left_right(R, _, _, _, _, _, D), D=l, a(R,8,N1), a(R,9,N2).

N1 > N2 :- left_right(R, D, _, _, _, _, _), D=r, a(R,1,N1), a(R,2,N2).
N1 > N2 :- left_right(R, _, D, _, _, _, _), D=r, a(R,2,N1), a(R,3,N2).
N1 > N2 :- left_right(R, _, _, D, _, _, _), D=r, a(R,4,N1), a(R,5,N2).
N1 > N2 :- left_right(R, _, _, _, D, _, _), D=r, a(R,5,N1), a(R,6,N2).
N1 > N2 :- left_right(R, _, _, _, _, D, _), D=r, a(R,7,N1), a(R,8,N2).
N1 > N2 :- left_right(R, _, _, _, _, _, D), D=r, a(R,8,N1), a(R,9,N2).

%define the effect of the greater-than symbols on up-down directions
N1 < N2 :- up_down(R, D, _, _, _, _, _, _, _, _), D=u, a(R,1,N1), a(R+1,1,N2).
N1 < N2 :- up_down(R, _, D, _, _, _, _, _, _, _), D=u, a(R,2,N1), a(R+1,2,N2).
N1 < N2 :- up_down(R, _, _, D, _, _, _, _, _, _), D=u, a(R,3,N1), a(R+1,3,N2).
N1 < N2 :- up_down(R, _, _, _, D, _, _, _, _, _), D=u, a(R,4,N1), a(R+1,4,N2).
N1 < N2 :- up_down(R, _, _, _, _, D, _, _, _, _), D=u, a(R,5,N1), a(R+1,5,N2).
N1 < N2 :- up_down(R, _, _, _, _, _, D, _, _, _), D=u, a(R,6,N1), a(R+1,6,N2).
N1 < N2 :- up_down(R, _, _, _, _, _, _, D, _, _), D=u, a(R,7,N1), a(R+1,7,N2).
N1 < N2 :- up_down(R, _, _, _, _, _, _, _, D, _), D=u, a(R,8,N1), a(R+1,8,N2).
N1 < N2 :- up_down(R, _, _, _, _, _, _, _, _, D), D=u, a(R,9,N1), a(R+1,9,N2).

N1 > N2 :- up_down(R, D, _, _, _, _, _, _, _, _), D=d, a(R,1,N1), a(R+1,1,N2).
N1 > N2 :- up_down(R, _, D, _, _, _, _, _, _, _), D=d, a(R,2,N1), a(R+1,2,N2).
N1 > N2 :- up_down(R, _, _, D, _, _, _, _, _, _), D=d, a(R,3,N1), a(R+1,3,N2).
N1 > N2 :- up_down(R, _, _, _, D, _, _, _, _, _), D=d, a(R,4,N1), a(R+1,4,N2).
N1 > N2 :- up_down(R, _, _, _, _, D, _, _, _, _), D=d, a(R,5,N1), a(R+1,5,N2).
N1 > N2 :- up_down(R, _, _, _, _, _, D, _, _, _), D=d, a(R,6,N1), a(R+1,6,N2).
N1 > N2 :- up_down(R, _, _, _, _, _, _, D, _, _), D=d, a(R,7,N1), a(R+1,7,N2).
N1 > N2 :- up_down(R, _, _, _, _, _, _, _, D, _), D=d, a(R,8,N1), a(R+1,8,N2).
N1 > N2 :- up_down(R, _, _, _, _, _, _, _, _, D), D=d, a(R,9,N1), a(R+1,9,N2).
