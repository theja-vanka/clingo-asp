#const n=15.
composite(N) :- N=1..n, I=2..N-1, N\I=0.

%  Prime number
prime(N) :- N=2..n, not composite(N).

#show prime/1.