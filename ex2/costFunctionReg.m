function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
h = zeros(m);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
dim = length(grad);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
J = sum(-y .* log(sigmoid(X * theta)) - (1 .- y) .* log(1 .- sigmoid(X * theta))) / m;
grad = X' * (sigmoid(X * theta) .- y) ./ m;
temp = theta;
temp(1)=0;
J += lambda * sum(temp .* temp) / (2 * m);
grad += lambda .* temp ./ m;
% =============================================================

end
