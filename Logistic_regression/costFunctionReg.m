function [J, grad] = costFunctionReg(theta, X, y, lambda)

% Initialize some useful values
m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));
hypothesis = sigmoid(X*theta);
tempTheta = theta;
tempTheta(1) = 0;
sumVal = -y'*log(hypothesis) - (1.-y)'*log(1.-hypothesis);
J =  (1/m)*sum(sumVal) + (lambda/(2*m))*sum(realpow(theta(2:end),2));
grad =  (1/m)*(X'*(hypothesis - y)) + (lambda/m)*(tempTheta); 


end
