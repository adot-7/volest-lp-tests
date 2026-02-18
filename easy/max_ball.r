library('volesti')

p1 = gen_simplex(2, representation = "H")
ball_vec_1 = inner_ball(p1)
print("For a 2D simplex")
print(p1)
print(ball_vec_1)

p2 = gen_cube(3, representation = "H")
ball_vec_2 = inner_ball(p2)
print("For a 3D hypercube")
print(p2)
print(ball_vec_2)
