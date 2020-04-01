function [J, grad] = linearRegCostFunction(X, y, theta, lambda)

% Initialize some useful values
m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));

hypothesis = X*theta;
tempTheta = theta;
tempTheta(1) = 0;
sumVal = (hypothesis - y).^2;
J = 1/(2*m) * sum(sumVal) + (lambda/(2*m)) * sum(realpow(theta(2:end),2));
grad = 1/m .* X' * (hypothesis - y) + (lambda/m).*(tempTheta);

grad = grad(:);

end
