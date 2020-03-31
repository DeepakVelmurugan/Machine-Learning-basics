function [X_norm, mu, sigma] = featureNormalize(X)

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

n = size(X, 2);

for i = 1:n

	avg = mean(X(:, i));
	deviation = std(X(:, i));

	X_norm(:, i) = X_norm(:, i) - avg;
	X_norm(:, i) = X_norm(:, i) / deviation;

	mu(i) = avg;
	sigma(i) = deviation;

end
end
