function x = forward (A, b)

n = length(A);
x = zeros(n, 1);

for i=1:n
  x(i) = ( b(i)- dot(A(i, 1:i-1),x(1:i-1)) )/A(i, i);
endfor

endfunction
