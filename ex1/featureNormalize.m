function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
m = length(X)
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
ave1=0,ave2=0; 

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%     
for j=1:m
  ave1=ave1+X_norm(j,1);
  ave2=ave2+X_norm(j,2);
endfor
ave1=ave1./m;
ave2=ave2./m;
max_1 = max(X_norm(:,1));
max_2 = max(X_norm(:,2));
#fprintf("%d\n",max_tmp);
min_1 = min(X_norm(:,1));
min_2 = min(X_norm(:,2));
#fprintf("%d\n",max_tmp);
for j=1:m
  X_norm(j,1)=(X_norm(j,1)-ave1)/(max_1-min_1);  
  X_norm(j,2)=(X_norm(j,2)-ave2)/(max_2-min_2);  
end








% ============================================================

end
