function [X mu sigma] = featureNormalize(X)
  
  % initializing
  X = X;
  mu = zeros(1,size(X,2));
  sigma = zeros(1,size(X,2));
  
  % main code
  for i = 1:size(X,2)
    mu(i) = mean(X(:,i));
    sigma(i) = std(X(:,i));
  end
  
  % calculate X norm
  X = ( X - mu)./sigma; 
end