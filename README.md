Coursera Machine Learning Exercise #1
===================
Key Concepts:

* Introduction to Matlab/Octave
* Supervised Learning - Linear Regression Model
	* Cost Functions
	* Gradient Descent
	* Normal Equations

-----------
Prerequisites
-----------
<img src="https://www.gnu.org/software/octave/images//logo.png" width="25" height="25" /> GNU Octave 4.0.0+

<img src="http://itprocurement.unl.edu/software_product_images/matlablogo.jpg" width="100"/>

-------------
Files Included In This Exercise
-------------

#### Drivers (Main Files)
* ex1.m - Run univariate linear regression learning model.
* ex1_multi.m - Run multivariate linear regression learning model.
* submit.m - Submit code to Coursera grader.

#### Datasets
* ex1data1.txt - Univariate linear regression training data.
* ex1data2.txt - Multivariate linear regression training data.

#### Basic
* warmUpExercise.m - "Hello World" in Matlab/Octave (function that generates a 5x5 identity matrix)
* plotData.m - Function to display the dataset.

#### Cost Functions
* computeCost.m - Univariate linear regression cost function (mean squared error).
* computeCostMulti.m - Multivariate linear regression cost function (mean squared error).

#### Feature Normalization
* featureNormalize.m - Normalize features in input matrix (m x (n+1)) X. Essentially, subtract the mean for feature j from each X(i,j), and divide the difference by the standard deviation for feature j.

#### Gradient Descent
* gradientDescent.m - Find the parameter values that minimize the mean squared error cost function for univariate linear regression model.
* gradientDescentMulti.m - Same as gradientDescent.m, but for multivariate linear regression model instead.

#### Normal Equations
* normalEqn.m - Alternate method to gradient descent for calculating parameter values that would minimize the mean squared error cost function. Faster than gradient descent but only efficient for datasets with small number of features (n).

-------------
Essential Concepts
-------------
#### Terminology
* m = number of training examples
* n = number of features
* <img src="https://latex.codecogs.com/gif.latex?\Theta" title="\Theta" /> = hypothesis function weights; parameters
* x = input
* y = actual output
* <img src="https://latex.codecogs.com/gif.latex?h_\Theta(x)" title="h_\Theta(x)" /> = prediction; output of hypothesis function
* <img src="https://latex.codecogs.com/gif.latex?x^{(i)}_j" title="x^{(i)}_j" /> = input for training example i, feature j
* <img src="https://latex.codecogs.com/gif.latex?y^{(i)}" title="y^{(i)}" /> = output for training example i

#### Linear Regression Hypothesis Function
<a href="https://www.codecogs.com/eqnedit.php?latex=h_\Theta(x^{(i)})&space;=&space;\sum_{j=0}^{n}\Theta_jx^{(i)}_j&space;=&space;\Theta^{T}x^{(i)}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?h_\Theta(x^{(i)})&space;=&space;\sum_{j=0}^{n}\Theta_jx^{(i)}_j&space;=&space;\Theta^{T}x^{(i)}" title="h_\Theta(x^{(i)}) = \sum_{j=0}^{n}\Theta_jx^{(i)}_j = \Theta^{T}x^{(i)}" /></a>

#### Linear Regression Cost Function
<a href="https://www.codecogs.com/eqnedit.php?latex=J(\Theta)&space;=&space;\frac{1}{2m}\sum_{i=1}^{m}(h_\Theta(x^{(i)})&space;-&space;y^{(i)})^2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?J(\Theta)&space;=&space;\frac{1}{2m}\sum_{i=1}^{m}(h_\Theta(x^{(i)})&space;-&space;y^{(i)})^2" title="J(\Theta) = \frac{1}{2m}\sum_{i=1}^{m}(h_\Theta(x^{(i)}) - y^{(i)})^2" /></a>

#### Gradient Descent
*For j = [0, n]:*

<img src="https://latex.codecogs.com/gif.latex?\Theta_j&space;:=&space;\Theta_j&space;-&space;\alpha\frac{1}{m}\sum_{i=1}^{m}(h_\Theta(x^{(i)})&space;-&space;y^{(i)})x^{(i)}_j" title="\Theta_j := \Theta_j - \alpha\frac{1}{m}\sum_{i=1}^{m}(h_\Theta(x^{(i)}) - y^{(i)})x^{(i)}_j" />

-------------
References
-------------
* [Coursera Machine Learning Exercise #1 Instructions](https://github.com/SaiWebApps/Machine-Learning-Exercise-1/blob/master/ex1.pdf)
* GNU Octave Documentation
* Matlab Documentation
