function [X_poly] = polyFeatures(X, p)
X_poly = zeros(numel(X), p);

m = size(X, 1);

for i=1:m,
poly = zeros(p,1);
for j=1:p,
poly(j) = X(i).^j;
end
X_poly(i,:) = poly;
end

end
