function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
a=X*theta;
h=sigmoid(a);
p=0;
q=0;
% You need to return the following variables correctly 
J = 0;
for i=1:m
    z(i)=((-y(i)*log(h(i)))-(1-y(i))*log(1-h(i)));
  p=p+z(i);
endfor
for j=2:28
  y(j)=lambda*(theta(j)^2)/2;
  q=q+y(j);
endfor
J = (p+q)/m;

grad = zeros(size(theta));
tempTheta = theta;
tempTheta(1) = 0;
error=h-y;
grad = (1 / m) * (X' * error) + (lambda/m)*tempTheta;
%p=zeros(size(theta));
%p=0;
%  for i=1:m
%    z(i)=(h(i)-y(i))*X(i,1);
%    p=p+z(i);
%  end
%for i=1:m
%  for j=1:28
%      b(j)=X(i,j)*(h(i)-y(i));
%      p(j)=p(j)+b(j);
%  endfor
%  if j==1
%    p(j)=p(j);
%  else
%    p(j)=(p(j)+lambda*theta(j));
%  endif
%endfor
%grad = p/m;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


% =============================================================
end
