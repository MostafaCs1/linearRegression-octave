function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
  
  #init m 
  m = length(y);
  J_history = zeros(num_iters,1);
  
  #compute theta
  for index = 1:num_iters
    h = X*theta;
    theta = theta - (alpha/m)*(X'*(h-y));
    %compute cost history
    J_history(index) = computeCost(X, y, theta);
    
  end
end