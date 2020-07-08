function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
J_pre = 0;
grad_pre = 0;
h = 0;
t1 = 0;
t2 = 0;
#J_pre += (-X(a,3)*log(sigmoid(theta*X(a,2)))) - (1 - X(a,3))*(log(1-sigmoid(theta*X(a,2))));
%h = sigmoid(theta*((X(:,2))'));
h = sigmoid(X*theta);
t1 = -(y'*(log(h)));
t2 = (1-y)'*log(1-h);
J = (1/m)*sum((t1-t2));

%{for b = 1:size(theta,1)
%  for c = 1:size(theta,2)
%    grad_pre(b,c) = 
%  endfor
%  
%endfor
%}
t3 = h - y;
grad = (1/m) * sum(X.*t3);
%grad = (1 / m) * sum( X .* repmat((h - y), 1, size(X,2)) );



% =============================================================

end
