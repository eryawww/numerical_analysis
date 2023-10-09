function x = solve (A, b)

tic; # set up execution timer

# ubah A ke indexing efisien
efficientA = transform(A);

# faktorisasi LU
[factA, s] = LU_special(efficientA);

toc; # end execution timer

# solve faktorisasi LU
x = solve_special(factA, b, s);

endfunction
