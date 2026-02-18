Output of max_ball_nloptr.r
```bash
[1] "We will compute the Chebychev (maximum inscribed) ball of a 2D simplex(a triangle) by reformulating it as an LP to solve using one of the algorithms in R interface of nlopt"
[1] "A:"
     [,1] [,2]
[1,]   -1    0
[2,]    0   -1
[3,]    1    1
[1] "b:"
[1] 0 0 1

Call:
nloptr(x0 = x0, eval_f = fn, lb = lower, ub = upper, eval_g_ineq = hin,     opts = opts)


Minimization using NLopt version 2.10.0 

NLopt solver status: 4 ( NLOPT_XTOL_REACHED: Optimization stopped because xtol_rel or xtol_abs (above) was reached. )

Number of Iterations....: 36 
Termination conditions:  stopval: -Inf	xtol_rel: 1e-06	maxeval: 1000	ftol_rel: 0	ftol_abs: 0 
Number of inequality constraints:  3 
Number of equality constraints:    0 
Optimal value of objective function:  -0.292893218813452 
Optimal value of controls: 0.2928932 0.2928932 0.2928932

```
