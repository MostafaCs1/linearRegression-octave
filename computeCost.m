function J = computeCost(X, y, theta)
  
  % Initialize some useful values
  J = 0;
  m = length(y); % number of training examples
  
  % compute cost function
  h = X*theta;
  J = (1/(2*m))*sum((h-y).^2);
  
end