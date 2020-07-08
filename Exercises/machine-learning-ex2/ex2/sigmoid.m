function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
for i = 1:size(z,1)
  for v = 1:size(z,2)
    x = z(i,v);
    g(i,v) = 1/(1+exp(-x));
    #fprintf(g(i,v))
  endfor
endfor
#g = 1/(1+exp(-z))



% =============================================================

end
