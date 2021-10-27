
% ================== initializing the data ==================

% clear and close Figure
clc ; clear ; close all

fprintf('loading data ...\n');
% load dataset
data = load('data.txt');
[row,column] = size(data);
X = data(:,1:column-1);
y = data(:,column);
m = row; 

% print out some data points
fprintf('first 10 exmaple from the dataset ....\n');
ans = [X(1:10,:) y(1:10,:)];
display(ans);
fprintf('Press enter to continue.\n');
pause;

% ================== Feature Normalization ==================

% Scale features and set them to zero mean
fprintf('Normalizing Features ...\n');

[X mu sigma] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];

% ==================== Gradient Descent ====================
 
fprintf('Running gradient descent ...\n');

% Choose some alpha value
alpha = 0.01;
num_iters = 400;

% Init Theta and Run Gradient Descent 
theta = zeros(size(X,2), 1);
[theta , J_history] = gradientDescent(X, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

% ==================== Normal Equations ===================

fprintf('Solving with normal equations...\n');

% load dataset
data = load('data.txt');
[row,column] = size(data);
X = data(:,1:column-1);
y = data(:,column);
m = row;

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);









