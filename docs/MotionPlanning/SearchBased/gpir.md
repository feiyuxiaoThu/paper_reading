time: 20230214
pdf_source: https://arxiv.org/pdf/2205.11853.pdf
code_source: https://github.com/jchengai/gpir

# GPIR: Real Time Trajectory Planning for Autonomous Driving with Gaussian Process and Incremental Refinement

## Introduction

Existing works can be categorized into two main classes:
+ spatio-temporal planning
    + first find an initial solution in s-t space
    + and the preliminary result is improved by solving a receding-horizon optimization problem or fitting it with a parameterized curve
    + however, finding an initial guess in the spatio-temporal space is non-trival, sometimes even harder than solving the optimization problem
    + approximations(e.g., increasing grid size or sample resolution, heuristics) have to to be used to make this problem tractable in limited time.
    + so, the approach is prone to local optimum
+ path-speed decoupled planning
    + breaks the high dimensional problem into two easier subproblems
    + the benifits are two folds. Firstlt, they do not require a preliminary result in the s-t domain. Secondly, they are generally much harder to guarantee kinodynamic feasibility due to the decomposition structure.

Apart from the issues mentioned above, most existing works have difficulty handling the curvature constraint. In this paper, the path planning problem is converted to **a probabilistic inference problem with Guassian process(GP)**. Analytic formulation of curvature constraint is used and integrated into the path planning process. The authors also prove this path generation method is a good generalization of the well-known jerk optimal solution. To avoid local optimum, a novel and efficient s-t graph search method is introduced. Finally, an incremental path-speed adjustment method is adopted to ensure kinodynamic feasibility.

## Related Work

### Iterative Path-speed Refinement

### Motion Planning via Probabilistic Inference

