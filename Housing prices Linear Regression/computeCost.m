function J = computeCost(X, y, theta)

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;


h = X * theta; % hypothesis function (Theta' * x = theta_0 + theta_1 * x_1)
squaredErrors = (h - y) .^ 2;
J = (1 / (2 * m)) * sum(squaredErrors);


end
