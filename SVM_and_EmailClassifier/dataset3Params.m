function [C, sigma] = dataset3Params(X, y, Xval, yval)
C = 1;
sigma = 0.3;


multiples = [0.01,0.03,0.1,0.3,1,3,10,30];
l = length(multiples);
resultMatrix = [];
for C = 1:l,
for sigma = 1:l,
test_C = multiples(C);
test_sigma = multiples(sigma);
model= svmTrain(X, y, test_C, @(x1, x2) gaussianKernel(x1, x2, test_sigma)); 
predictions = svmPredict(model, Xval);
test_error = mean(double(predictions ~= yval));
resultMatrix = [resultMatrix;test_C,test_sigma,test_error];
end
end
[minVal,minIndex] = min(resultMatrix(:,3));
C = resultMatrix(minIndex,1);
sigma = resultMatrix(minIndex,2); 


end
