# Menyelesaikan Ax=b dengan A adalah LU dari matriks representasi efisien

function x = solve_special (A, b)

[n, m] = size(A);

x = zeros(m, 1);
b_copy = b;

# configure b
for i=1:m/2
  index_start = (i-1)*2+1;
  b(index_start) = b_copy(i);
  b(index_start+1) = b_copy(m-i+1);
endfor

# solve for each submatrix
for i=1:m/2
  index_start = (i-1)*2+1;
  b_square = b(index_start:index_start+1);

  # Take L
  L = eye(2);
  L(2, 1) = A(2, index_start);

  # Take U
  U = A(:, index_start:index_start+1);
  U(2, 1) = 0; # Remove L

  # find z | Lz = b using forward
  z = forward(L, b_square);

  # find x | Ux = z
  x(index_start:index_start+1) = backward(U, z);
endfor

# restore x to match original b
x_copy = x;
for i=1:m/2
  index_start = (i-1)*2+1;
  x(i) = x_copy(index_start);
  x(m-i+1) = x_copy(index_start+1);
endfor

endfunction
