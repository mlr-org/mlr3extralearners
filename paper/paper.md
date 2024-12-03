---
title: 'mlr3extralearners: A community-driven package for integrating learners into mlr3'
tags:
  - R
  - machine learning
  - community
authors:
  - name: Sebastian Fischer
    orcid: 0000-0002-9609-3197
    affiliation: "2, 3"
  - name: Michel Lang
    orcid: 0000-0001-9754-0393
    affiliation: "1, 2"
  - name: Martin Binder
    affiliation: 2
  - name: Patrick Schratz
    orcid: 0000-0003-0748-6624
    affiliation: 2
  - name: Bernd Bischl
    orcid: 0000-0001-6002-6980
    affiliation: "2, 3"
affiliations:
 - name: TU Dortmund University
   index: 1
 - name: LMU Munich
   index: 2
 - name: Munich Center for Machine Learning
   index: 3
date: XXX December 2024
bibliography: paper.bib
---

# Summary

- Background on mlr3:
  - unified interface for ML in R
  - mention that we don't implement methods ourselves but just wrap them
  - mlr3 is nothing without its learners
  - mention other packgages such as mlr3learners, mlr3torch and mlr3proba

- Comparison with other packages:
  - parsnip tidymodels
  - ???

- License of the package

# Statement of Need

- No ML without learners:
  - people have to rewrite the same learners
- Give people the ability to contribute their own methods to the ecosystem

# Features

- Ease of use
  - benefit from the whole ecosystem:
    - annotate parameter spaces that make tuning the learner easier
    - Examples for how to user learner
    - preprocessing via mlr3pipelines
    - tuning via mlr3tuning

- Functional correctness
  - parameter tests
  - sanity tests

- Community-driven integration of new learners:
  - distinguish between mlr3learners and mlr3extralearners
  - Mention tutorial on website
  - Mention template-generating functions for tests and learner

# Acknowledgements

Sebastian Fischer is supported by the Deutsche Forschungsgemeinschaft (DFG, German Research
Foundation) – 460135501 (NFDI project MaRDI).

# References
