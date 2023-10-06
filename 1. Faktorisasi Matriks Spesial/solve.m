## Author: Eryawan <Eryawan@DESKTOP-B68N805>
## Created: 2023-10-06

function x = solve (A, b)

[n, n] = size(A);
Ahat = zeros(2, n);

# ubah A ke indexing efisien
for i=1:n/2
  index_start = (i-1)*2+1;
  Ahat(1, index_start) = A(i, i);
  Ahat(1, index_start+1) = A(i, n-i+1);
  Ahat(2, index_start) = A(n-i+1, i);
  Ahat(2, index_start+1) = A(n-i+1, n-i+1);
endfor

# faktorisasi LU
factA = LU(Ahat);

# solve faktorisasi LU
x = solve_represented(factA, b);

endfunction
