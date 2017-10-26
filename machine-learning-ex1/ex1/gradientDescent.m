function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % Define our hypothesis (the thing inside summation)
    % theta' * x = X*theta, where X is the "design matrix"
    
    h = X * theta;
    
    % partial d[J(theta)]/d[theta_j]  <- (h-y).*X   (n.b. the element-wise multiplication)
    
    % Simultaneously update all thetas -- when vectorized, this is just a single theta vector
    
    theta -= (1/m) * alpha * (X' * (h - y));
    



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
