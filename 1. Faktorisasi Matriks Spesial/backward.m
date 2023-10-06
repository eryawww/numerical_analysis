function x = backward (A, b)

n = length(A);
x = zeros(n, 1);

for i=n:-1:1
  x(i) = ( b(i)- dot(A(i, i+1:n), x(i+1:n)) )/A(i, i);
endfor

endfunction
