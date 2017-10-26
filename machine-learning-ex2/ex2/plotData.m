function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
# Here X = rawdata[:,(1,2)] are test results for test1 and test2
# and y = rawdata(:,3) is accepted (1) or denied (0).
# accepted --> positive
# denied   --> negative

# First we separate indices by accepted or denied
pos = find(y==1); neg = find(y==0);
# We then plot them to see if there's any clear correlation, to ensure
# logistic regression makes sense to use on the given features

plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7); 





% =========================================================================



hold off;

end
