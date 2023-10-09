# fungsi untuk membandingkan penggunaan memory pada matriks A dan matriks
# efisien Ahat

function retval = memory_comparison (n)

A = generate_special_matrix(n);
info = whos('A');
memoryUsage = info.bytes; % Memory usage in bytes
fprintf('Mem usage of A: %d bytes\n', memoryUsage);

Ahat = transform(A);
info = whos('Ahat');
memoryUsage = info.bytes; % Memory usage in bytes
fprintf('Mem usage of Ahat: %d bytes\n', memoryUsage);


endfunction
