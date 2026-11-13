---
tags: [mlr3-add-learner]
max_turns: 60
timeout_seconds: 1800
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash]
---

Add a new learner `regr.rlm` to mlr3extralearners that wraps `MASS::rlm()` (robust linear regression). It should support response and se predictions and observation weights. Include tests and documentation like the other learners in the package.
