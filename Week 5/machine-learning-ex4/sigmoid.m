function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.
euler = e(size(z));
g = (1./(1.+euler.^(-z)));
end
