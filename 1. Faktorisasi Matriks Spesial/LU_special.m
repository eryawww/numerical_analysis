# Melakukan faktorisasi LU dengan A adalah matriks yang sudah diubah ke bentuk
# efisien
function R = LU_special (A)

[a, b] = size(A);
R = zeros(a, b);

for i=1:b/2
  index_start = (i-1)*2+1;
  square_matrix = A(:, index_start:index_start+1);

  # LU Fact
  ratio = square_matrix(2, 1)/square_matrix(1, 1);
  square_matrix(2, :) = square_matrix(2, :)-ratio*square_matrix(1, :);

  R(:, index_start:index_start+1) = square_matrix;
  R(2, index_start) = ratio;
endfor

endfunction
