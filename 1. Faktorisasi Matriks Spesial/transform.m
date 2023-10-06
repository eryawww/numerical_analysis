# Fungsi untuk mengubah special matrix A ke indexing yang lebih efisien
function Ahat = transform (A)

[n, n] = size(A);
Ahat = zeros(2, n);

for i=1:n/2
  index_start = (i-1)*2+1;
  Ahat(1, index_start) = A(i, i);
  Ahat(1, index_start+1) = A(i, n-i+1);
  Ahat(2, index_start) = A(n-i+1, i);
  Ahat(2, index_start+1) = A(n-i+1, n-i+1);
endfor

endfunction
