function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

      h = X * theta; % hypothesis
      % X' * (h - y) = sum((h - y) .* X)'
      theta -= alpha * (1 / m) * (X' * (h - y));
    	% Save the cost J in every iteration    
     J_history(iter) = computeCost(X, y, theta);

end

end
