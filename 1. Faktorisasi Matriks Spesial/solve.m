function x = solve (A, b)

# ubah A ke indexing efisien
efficientA = transform(A);

# faktorisasi LU
factA = LU_special(efficientA);

# solve faktorisasi LU
x = solve_special(factA, b);

endfunction
