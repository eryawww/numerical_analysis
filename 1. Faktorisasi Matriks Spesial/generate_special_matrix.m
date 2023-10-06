function A = generate_special_matrix (n)

A = zeros(n, n);

for i=1:n
  A(i, i) = rand();
  A(i, n-i+1) = rand();
endfor

endfunction
