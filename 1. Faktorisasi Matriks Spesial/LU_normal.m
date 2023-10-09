# faktorisasi lu normal sebagai pembanding
function [L, U] = LU_normal (A)

tic;
n = length(A);
U = A;
L = eye(n);

for j=1:n
  for i=j+1:n
    L(i, j) = U(i,j)/U(j,j);
    U(i,:) = U(i,:)-L(i,j)*U(j,:);
  endfor
 endfor
toc;

endfunction
