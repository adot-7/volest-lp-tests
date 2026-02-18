#include "Eigen/Eigen"
#include "cartesian_geom/cartesian_kernel.h"
#include "convex_bodies/hpolytope.h"
#include "generators/known_polytope_generators.h"

typedef Cartesian<double> Kernel;
typedef typename Kernel::Point Point;
typedef HPolytope<Point> HPolytopeType;

int main()
{
  //For a 2D simplex
	HPolytopeType HP = generate_simplex<HPolytopeType>(2, false);
	std::cout << "Polytope: \n";
	HP.print();
	std::cout << "\n";
	std::cout << "This polytope is a simplex of dimension: " << HP.dimension() << std::endl;

	auto ball_vec = HP.ComputeInnerBall();
	std::cout << "Maximum Inner ball: Center = (" << ball_vec.first[0] << ", "
			  << ball_vec.first[1] << "), Radius = "
			  << ball_vec.second << std::endl;

  // For a 3D hypercube
	HPolytopeType HP = generate_cube<HPolytopeType>(3, false);
	std::cout << "Polytope: \n";
	HP.print();
	std::cout << "\n";
	std::cout << "This polytope is a hypercube of dimension: " << HP.dimension() << std::endl;

	auto ball_vec = HP.ComputeInnerBall();
	std::cout << "Maximum Inner ball: Center = (" << ball_vec.first[0] << ", "
			  << ball_vec.first[1] << ", " << ball_vec.first[2] << "), Radius = "
			  << ball_vec.second << std::endl;

	return 0;
}
