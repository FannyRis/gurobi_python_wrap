#ifndef GLPKWRAPPER_HH_
#define GLPKWRAPPER_HH_

#include <hpp/bezier-com-traj/solver/solver-abstract.hpp>
#include <Eigen/Dense>

namespace solvers {

// min g'x
// st  CIx <= ci0
//     CEx  = ce0
int solveglpk(const VectorXd& g0, const MatrixXd& CE, const VectorXd& ce0, const MatrixXd& CI, const VectorXd& ci0,
              solvers::Cref_vectorX minBounds, solvers::Cref_vectorX maxBounds, VectorXd& x, double& cost);

} /* namespace solvers */

#endif /* GLPKWRAPPER_HH_ */
