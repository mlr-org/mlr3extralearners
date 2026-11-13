---
type: llm
focus: trace
weight: 1
---

Both .train() and .predict() call assert_python_packages() with the scikit-learn requirement before reticulate::import("sklearn")
