function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)

% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

            
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

errors = (X*Theta' - Y ).*R;
diff = (X*Theta' - Y).^2;
regTheta = (lambda/2)*sum(sum(Theta.^2));
regX = (lambda/2)*sum(sum(X.^2));
J = (1/2)*sum(sum(R.*diff)) + regTheta + regX;
X_grad = (errors)*Theta + lambda*X;
Theta_grad = (errors)'*X + lambda*Theta;

grad = [X_grad(:); Theta_grad(:)];

end
