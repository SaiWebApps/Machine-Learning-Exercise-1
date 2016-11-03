function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% (1 x n) vector with mean of each feature/column
mu = mean(X);

% (1 x n) vector with standard deviation of each feature/column
sigma = std(X);

% To normalize x(i,j), subtract mu(j), and divide the difference by sigma(j).
X_norm = (X - mu) ./ sigma;

end