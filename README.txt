See README.md for the linked lecture-by-lecture material table.

Focused statistical learning

Each numbered lecture is a six-page PDF with editable LaTeX source. The worked
notebooks run independently and place definitions, statements, and descriptions
of the main functions before their code. Solutions/ contains detailed PDF
explanations and separate answer keys for the student worksheets.

Lecture 1: linear and logistic regression
  01_linear_and_logistic_regression.pdf
  A_request_latency.ipynb  — least squares, gradients, collinearity, ridge
  B_advertising.ipynb      — multiple features, interactions, model selection
  C_budget_violation.ipynb — logistic loss, probabilities, cost-based decisions
  D_student_applications.ipynb — two student exercises; five short code gaps

Lecture 2: decision trees and random forests
  02_decision_trees_and_random_forests.pdf
  02_A_service_regimes.ipynb    — stump audit, pruning, prediction stability
  02_B_carseats.ipynb          — categorical inputs, trees, probability decisions
  02_C_forest_diagnostics.ipynb — forests, out-of-bag checks, feature importance

Lecture 3: support vector machines
  03_support_vector_machines.pdf
  03_A_margins_and_hinge.ipynb   — exact margin solution, hinge loss, linear SVM
  03_B_kernels_and_scaling.ipynb — explicit features, kernel equivalence, scaling
  03_C_oj_score_thresholds.ipynb — OJ purchases, model selection, score cutoffs
  03_D_student_exercises.ipynb  — linear and RBF SVMs; five short code gaps

Lecture 4: clustering and principal component analysis
  04_clustering_and_pca.pdf
  04_A_cluster_geometry.ipynb  — Lloyd updates, hierarchies, rings, stability
  04_B_pca_compression.ipynb   — exact PCA, reconstruction, signal versus noise
  04_C_usarrests.ipynb         — scaling, PCA scores, historical state groups
  04_D_student_exercises.ipynb — K-means and PCA; five short code gaps

Running the notebooks

Worked notebooks contain tables and plots from a complete run. Use Restart Kernel
and Run All Cells to reproduce them. The three D student worksheets are unsolved:
replace each TODO error with the indicated one or two lines before running later
cells. Their outputs are intentionally empty. Their answers were verified separately.
No interactive input or GPU is required.

Sessions 2–4 need no data downloads. Their three external datasets are bundled:
  data/Carseats.csv  — 400 stores/markets, 11 columns
  data/OJ.csv        — 1,070 purchase records, 18 columns
  data/USArrests.csv — 50 state rows, 4 features plus state identifiers
Keep data/ with the notebooks when copying FocusedContent. Loaders search the
current folder and course ancestors, so they work from FocusedContent or the
StatisticalLearning course root. In Colab, upload the required CSV to
/content/data or /content before running. A missing CSV gives an explicit error.
See data/README.txt for provenance and checksums. All other session 2–4 data
are generated inside their notebooks.

Lecture 1 also uses bundled data/Advertising.csv (200 markets, 4 features/target columns
plus row identifiers). All four lectures run without runtime dataset downloads.

Use the dependencies pinned in requirements.txt (Python 3.12.9 was used).
From the course root:
  python -m pip install -r requirements.txt
  python -m jupyterlab

The forest notebook fits many trees and takes longer than the other notebooks.
Its one-worker timing measurements depend on the local machine. The SVM kernel
and OJ searches use a focused C grid capped at 10 and ordinary solver tolerance
for manageable classroom runtimes; separate diagnostic settings are identified.

Experiment conventions

The worked A/B/C notebooks of lectures 1–3 use 60/20/20 training/validation/test
splits (in addition to their small algebra examples). Model settings are selected
by five-fold training cross-validation, with learned preprocessing refitted inside
each fold. Lecture 1 C, lecture 2 B, and lecture 3 C select a decision threshold
on validation. Other validation uses are identified as audits or diagnostics.
Final tests assess frozen models and policies; baselines use fitting targets only.

Lecture 4 A and C are descriptive unsupervised analyses of their full datasets,
with no test-accuracy claim. Generating labels in A are excluded from selection.
Subsample stability compares shared rows and fixes the previously selected K.
Lecture 4 B uses a 60/20/20 fitting/validation/test split for compression. Its
clean-validation oracle is explicitly a simulation diagnostic, distinct from the
fitting-variance rule and the prespecified signal dimension. No supervised
cross-validation protocol is imposed on these descriptive tasks.

The short D worksheets use 80/20 fitting/test splits and fixed settings; they do
not perform model or threshold selection. In lecture 4 D, test rows assess use of
frozen centers or PCA directions, not supervised classification accuracy.

Detailed solutions

Solutions/ has one PDF and editable .tex source per notebook (15 in total).
Beyond the notebook steps, these documents provide derivations, independent
numerical checks, interpretation of results, documentation notes, and practical
pitfalls. The seven earlier explanations have been expanded with this material.
The D PDFs are answer keys; the student notebooks remain unsolved.
See Solutions/README.txt for the complete list and build instructions.

Rebuilding

With a TeX Live installation, from the course root:
  bash build.sh
  bash Solutions/build.sh

Or build just one document:
  bash build.sh 04_clustering_and_pca
  bash Solutions/build.sh 04_B_pca_compression_solution

Build intermediates and logs are stored in the respective .build/ directories.
This standalone repository contains the four focused lectures; longer parent-course
chapters are outside this package.

Focused applications preserve the main ideas while reducing the full chapters'
optional experiments. The short D worksheets are separate student exercises,
not implementations of the longer chapters' application D proposals.

Notebook revision — 13 October 2026

Session 2–4 explanations were shortened while retaining problem statements,
definitions, formulas, command meanings, questions, and evaluation protocols.
The two student worksheets still contain five deliberate gaps each. Only the
three CSV-loading cells changed executable code; analysis settings are unchanged.
See VALIDATION.txt for the scoped checks and word-count comparison.
