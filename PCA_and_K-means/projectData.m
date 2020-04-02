function Z = projectData(X, U, K)
Z = zeros(size(X, 1), K);

Ureduce = U(:, 1:K);
for i=1:length(X),
x = X(i, :)';
Z(i,:) = x' * Ureduce;
end

end
