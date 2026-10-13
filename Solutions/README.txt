Worked explanations for the FocusedContent notebooks

One PDF per notebook, with editable LaTeX source of the same basename:

  A_request_latency_solution.pdf
    Least squares, ridge, identifiability, optimization conditioning, uncertainty.
  B_advertising_solution.pdf
    Regression interactions, centering, validation averages, fair comparisons.
  C_budget_violation_solution.pdf
    Logistic derivatives, probability losses, costs, thresholds, calibration.
  D_student_applications_solution.pdf
    Five student answers, array shapes, estimator state, probability columns.

  02_A_service_regimes_solution.pdf
    Split-gain derivation, pruning, tree discontinuities, prediction stability.
  02_B_carseats_solution.pdf
    Categories, unseen levels, Gini/Brier relationships, probability decisions.
  02_C_forest_diagnostics_solution.pdf
    Averaging, variance assumptions, out-of-bag scope, correlated importance.

  03_A_margins_and_hinge_solution.pdf
    Exact margin proof, dual certificate, hinge derivative, C normalization.
  03_B_kernels_and_scaling_solution.pdf
    Kernel/feature equivalence, curved geometry, scaling, honest model comparison.
  03_C_oj_score_thresholds_solution.pdf
    Score-policy enumeration, costs versus accuracy, probabilities versus scores.
  03_D_student_exercises_solution.pdf
    Five student answers for linear and RBF SVMs, with shapes and result checks.

  04_A_cluster_geometry_solution.pdf
    Lloyd descent, Ward heights, compactness versus ring agreement, stability.
  04_B_pca_compression_solution.pdf
    SVD algebra, reconstruction, denoising risk, subspaces, storage, unit changes.
  04_C_usarrests_solution.pdf
    Data quality, correlation geometry, directions versus correlations, groups.
  04_D_student_exercises_solution.pdf
    Five student answers for K-means and PCA, with independent numerical checks.

These are explanatory documents, not notebook exports. They develop the problem,
notation, reasoning, derivations, software semantics, numerical results, and their
practical limits. Documentation links explain relevant parameters, fitted
attributes, methods, and conventions. Numbered sections follow the notebook where
applicable; some additional sections develop interpretation beyond its cells.

The seven lecture 1–2 explanations were expanded without changing those notebooks.
All new worked notebooks were executed from a fresh kernel; their figures and
reported results were checked against saved outputs. The three D answer keys were
verified separately, leaving the student worksheets unsolved and without outputs.
Recorded numerical values depend on the specified seeds and course environment;
model rankings, finite-sample errors, and stability values are not universal claims.

Build from the course root with a TeX Live installation:
  bash Solutions/build.sh

Or rebuild one explanation:
  bash Solutions/build.sh 04_B_pca_compression_solution

preamble.tex holds shared formatting. figures/ contains the selected figures used
by the PDFs. Build logs and intermediate files are stored in .build/.
