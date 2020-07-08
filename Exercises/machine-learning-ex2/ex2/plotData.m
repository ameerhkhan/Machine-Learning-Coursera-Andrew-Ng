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
%X contains the two values for plotting. y contains whether the value at that index is positive
%or negative.
pos = find(y == 1); #find the index of all positive values in that are marked with one in the dataset. 
neg = find(y == 0); #find the index of all negative values in the matrix marked with zero in the dataset's third column.

plot(X(pos,1),X(pos,2), 'r+','LineWidth',2,'MarkerSize',7);
plot(X(neg,1),X(neg,2), 'yo','LineWidth',2,'MarkerFaceColor','y','MarkerSize',7);







% =========================================================================



hold off;

end
