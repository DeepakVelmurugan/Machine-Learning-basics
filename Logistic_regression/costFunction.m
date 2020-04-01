function [J, grad] = costFunction(theta, X, y)
% Initialize some useful values
m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));


hypothesis = sigmoid(X*theta);
sumVal = -y'*log(hypothesis) - (1.-y)'*log(1.-hypothesis);
grad = (1/m)*(X'*(hypothesis - y));
J = (1/m)*sum(sumVal);


end
