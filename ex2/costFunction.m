function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples
a=theta'*X';
h=sigmoid(a);
p=0;
% You need to return the following variables correctly 
J = 0;
for i=1:m
  z(i)=((-y(i)*log(h(i)))-(1-y(i))*log(1-h(i)));
  p=p+z(i);
endfor
J = p/m;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
%grad = zeros(size(theta));
p=0;
q=0;
r=0;
for i=1:m
  b(i)=(h(i)-y(i))*X(i,1);
  c(i)=(h(i)-y(i))*X(i,2);
  d(i)=(h(i)-y(i))*X(i,3);
  p=p+b(i);
  q=q+c(i);
  r=r+d(i);
endfor
grad = [p;q;r]/m;
% =============================================================

end
