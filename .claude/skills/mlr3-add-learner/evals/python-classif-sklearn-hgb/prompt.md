---
tags: [mlr3-add-learner]
max_turns: 80
timeout_seconds: 2400
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash]
---

I want to use scikit-learn's HistGradientBoostingClassifier from mlr3. Please implement it as a new learner `classif.sklearn_hgb` in mlr3extralearners using reticulate, the same way the other Python-based learners in the package are done. It should support prob predictions and be saveable.
