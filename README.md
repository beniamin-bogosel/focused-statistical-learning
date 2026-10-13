# Focused Statistical Learning

Four six-page lectures with executable illustrations, applications, and student exercises. The repository contains 15 notebooks, 15 accompanying explanation/solution PDFs, editable LaTeX sources, and all four CSV datasets.

Read each lecture, run its worked notebooks, then attempt the student exercises before opening their solutions. Materials are listed in that order below.

| Lecture | Material | Files, in teaching order |
|---|---|---|
| **1. Linear and logistic regression** | **Lecture PDF** | [Linear and logistic regression](01_linear_and_logistic_regression.pdf) |
| 1 | Notebooks | [A — Request latency](A_request_latency.ipynb)<br>[B — Advertising](B_advertising.ipynb)<br>[C — Budget violations](C_budget_violation.ipynb) |
| 1 | Illustrations + applications: PDF explanations | [A — Least squares, ridge, and stability](Solutions/A_request_latency_solution.pdf)<br>[B — Features and interactions](Solutions/B_advertising_solution.pdf)<br>[C — Probabilities and cost-based decisions](Solutions/C_budget_violation_solution.pdf) |
| 1 | Student exercises + solutions | [Exercise notebook](D_student_applications.ipynb) · [Solution PDF](Solutions/D_student_applications_solution.pdf) |
| **2. Decision trees and random forests** | **Lecture PDF** | [Decision trees and random forests](02_decision_trees_and_random_forests.pdf) |
| 2 | Notebooks | [A — Service regimes](02_A_service_regimes.ipynb)<br>[B — Carseats](02_B_carseats.ipynb)<br>[C — Forest diagnostics](02_C_forest_diagnostics.ipynb) |
| 2 | Illustrations + applications: PDF explanations | [A — Splits, pruning, and stability](Solutions/02_A_service_regimes_solution.pdf)<br>[B — Categories and probabilities](Solutions/02_B_carseats_solution.pdf)<br>[C — Bagging, OOB, and importance](Solutions/02_C_forest_diagnostics_solution.pdf) |
| 2 | Student exercises + solutions | Use the closing questions in notebooks 2A–2C; their explanations are linked above. There is no separate student worksheet for this lecture. |
| **3. Support vector machines** | **Lecture PDF** | [Support vector machines](03_support_vector_machines.pdf) |
| 3 | Notebooks | [A — Margins and hinge loss](03_A_margins_and_hinge.ipynb)<br>[B — Kernels and scaling](03_B_kernels_and_scaling.ipynb)<br>[C — OJ score thresholds](03_C_oj_score_thresholds.ipynb) |
| 3 | Illustrations + applications: PDF explanations | [A — Margin geometry and derivatives](Solutions/03_A_margins_and_hinge_solution.pdf)<br>[B — Feature maps and kernels](Solutions/03_B_kernels_and_scaling_solution.pdf)<br>[C — Scores and decision costs](Solutions/03_C_oj_score_thresholds_solution.pdf) |
| 3 | Student exercises + solutions | [Exercise notebook](03_D_student_exercises.ipynb) · [Solution PDF](Solutions/03_D_student_exercises_solution.pdf) |
| **4. Clustering and PCA** | **Lecture PDF** | [Clustering and principal component analysis](04_clustering_and_pca.pdf) |
| 4 | Notebooks | [A — Cluster geometry](04_A_cluster_geometry.ipynb)<br>[B — PCA compression](04_B_pca_compression.ipynb)<br>[C — USArrests](04_C_usarrests.ipynb) |
| 4 | Illustrations + applications: PDF explanations | [A — Lloyd updates, linkage, and stability](Solutions/04_A_cluster_geometry_solution.pdf)<br>[B — Reconstruction and denoising](Solutions/04_B_pca_compression_solution.pdf)<br>[C — Scaling, scores, and descriptive groups](Solutions/04_C_usarrests_solution.pdf) |
| 4 | Student exercises + solutions | [Exercise notebook](04_D_student_exercises.ipynb) · [Solution PDF](Solutions/04_D_student_exercises_solution.pdf) |

## Run the notebooks

Tested with Python 3.12.9. From the repository root:

```bash
python -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
python -m jupyterlab
```

On Windows, activate with `.venv\Scripts\activate`. Restart the kernel and run cells in order. Worked notebooks retain outputs; the three student worksheets intentionally stop at five TODO cells until completed. No GPU is required. The forest diagnostics notebook takes longer because it fits many trees.

## Data

[Advertising](data/Advertising.csv), [Carseats](data/Carseats.csv), [OJ](data/OJ.csv), and [USArrests](data/USArrests.csv) are bundled in `data/`; other examples generate synthetic data. No runtime dataset downloads are needed. Keep this folder when copying notebooks. In Colab, upload the required CSV to `/content/data` or `/content`. See [data provenance and checksums](data/README.txt).

## Editable sources

Lecture `.tex` files sit beside their PDFs. `Solutions/` contains explanation sources and figures. With TeX Live installed:

```bash
bash build.sh
bash Solutions/build.sh
```

Pass a document basename to rebuild one file, for example `bash build.sh 03_support_vector_machines`. Build files go into ignored `.build/` directories. PDFs are already included for readers who do not use LaTeX.

[Validation record](VALIDATION.txt) · [Detailed teaching and evaluation conventions](README.txt)
