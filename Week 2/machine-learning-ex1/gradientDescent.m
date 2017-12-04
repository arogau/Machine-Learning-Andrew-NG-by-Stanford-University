      function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
%disp("X in Gradient Descent function:"), disp(X);
%disp("y in Gradient Descent function:"), disp(y);
%disp("theta in Gradient Descent function:"), disp(theta);
%disp("alpha in Gradient Descent function:"), disp(alpha);
%disp("iterations in Gradient Descent function:"), disp(num_iters);
J_history = zeros(num_iters, 1);
for iter = 1:num_iters,

delta = X*theta-y;
derivative=(delta.*X);
theta = theta - (alpha/m)*sum(derivative,1)';
J_history(iter) = computeCost(X, y, theta);
end;



    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
   
