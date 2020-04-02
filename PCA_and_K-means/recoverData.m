function X_rec = recoverData(Z, U, K)
X_rec = zeros(size(Z, 1), size(U, 1));

Ureduce = U(:, 1:K);
for i=1:length(Z),
v = Z(i, :)';
for j=1:length(Ureduce),
X_rec(i,j) = v' * U(j, 1:K)';
end
end

end
