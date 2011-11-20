function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% We can reuse ex1's computeCost() but it be messier and slower
h0 = X*theta;
J = (sum((h0 - y) .^ 2) + lambda*sum(theta(2:end) .^ 2))/(2*m);

grad = (1/m)*(X'*(h0-y)) + [0; (lambda/m)*theta(2:end)];

% =========================================================================

grad = grad(:);

end
