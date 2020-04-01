function p = predict(Theta1, Theta2, X)
% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

p = zeros(size(X, 1), 1);

X = [ones(m, 1) X];
z2 = X*Theta1';
a2 = [ones(size(z2,1),1) sigmoid(z2)];
z3 = a2*Theta2';
a3 = sigmoid(z3);

[v p] = max(a3,[],2);


end
