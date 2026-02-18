library('nloptr')

print("We will compute the Chebychev (maximum inscribed) ball of a 2D simplex(a triangle) by reformulating it as an LP to solve using one of the algorithms in R interface of nlopt")

A = rbind(
  c(-1,0),
  c(0,-1),
  c(1,1)
) #This represents the matrix form for the coefficients of variables x1 and x2 of half-space equations of a 2D simplex (a triangle)
# basically -x1<=0, -x2<=0 and x1+x2<=1 for a triangle (inequalities or sign may change based on the quadrant). 
# This can be represented as Ax<=b where x is the variables vector, A is the coefficient matrix and b is the RHS or a scalar vector
b = c(0,0,1)

fn = function(z){
  return(-z[3])
}
#fn is the objective function. -z[3] is the negative of value of radius which we want to minimize (this is how the solver function expects the objective function, to minimize it. So to maximize r, we minimize -r)

row_norms = sqrt(rowSums(A^2)) #This calculates the euclidean distance, also called the 2nd norm of A matrix

hin = function(z){
  x = z[1:2]
  r = z[3]
  return (A %*% x + r*row_norms -b)
} 
#hin is the constraint function (the expression has to be <=0)
# %*% gives the dot product. 
# We converted the chebychev ball problem constraint of Ax<=b to Ax+r*||A||-b<=0. where ||.|| is the 2nd norm or the simple straight line distance from center. 

x0 = c(0,0,0) #make a random initial guess 

print('A:')
print(A)
print("b:")
print(b)
S = cobyla(x0, fn, hin=hin, nl.info=TRUE, deprecatedBehavior=FALSE)
