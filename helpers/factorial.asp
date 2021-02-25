#const n=5-1.
factorial(0,1).

factorial(N+1,(N+1)*F) :- factorial(N,F), N=0..n.
factorial(F) :- factorial(N,F), N=n+1.
#show factorial/1.

