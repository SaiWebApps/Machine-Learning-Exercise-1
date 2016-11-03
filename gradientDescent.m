function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

m = length(y); % number of training examples
n = length(theta); % number of features
coefficient = alpha/m; % learning rate / number of training examples

J_history = zeros(num_iters, 1);

for iter = 1:num_iters
	h = X * theta; % Recalculate predictions. (m x 1)
	errors = h - y; % (m x 1)
	steps = X' * errors; % ((n+1) x m) * (m x 1) = ((n+1) x 1)

    % Calculate new thetas. Take a gradient step.
    theta = theta - (coefficient * steps); % ((n+1) x 1)

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end