function [U, S] = pca(X)

% Useful values
[m, n] = size(X);

U = zeros(n);
S = zeros(n);

sigma = (1/m)*X'*X;
[U,S,V] = svd(sigma);

end
