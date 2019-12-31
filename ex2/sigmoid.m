function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
[p,q]=size(z);
for i=1:p
  for j=1:q
    g(i,j) = 1/(1+exp(-z(i,j)));
  endfor
endfor
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% =============================================================
g;
end
