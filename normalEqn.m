function theta = normalEqn(X, y)
  
  % init theta
  theta = zeros(size(X,2),1);
  
  % copmut theta with Normal Equations
  theta = (inv(X'*X))*X'*y;
  
 end