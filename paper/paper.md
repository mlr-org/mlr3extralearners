---
title: 'mlr3extralearners: A community-driven package for integrating learners into mlr3'
tags:
  - R
  - machine learning
  - community
  - FAIR
authors:
  - name: Sebastian Fischer
    orcid: 0000-0002-9609-3197
    affiliation: "2, 3"
  - name: John Zobolas
    orcid: 0000-0002-3609-8674
    affiliation: 4
  - name: Raphael Sonabend
    orcid: 0000-0001-9225-4654
  - name: Marc Becker
    orcid: 0000-0002-8115-0400
    affiliation: 2
  - name: Michel Lang
    orcid: 0000-0001-9754-0393
    affiliation: "1, 2"
  - name: Martin Binder
    affiliation: 2
  - name: Lennart Schneider
    orchid: 0000-0003-4152-5308
    affiliation: "2, 3"
  - name: Lukas Burk
    orchid: 0000-0001-7528-3795
    affiliation: "2, 3"
  - name: Patrick Schratz
    orcid: 0000-0003-0748-6624
    affiliation: 2
  - name: Byron C. Jaeger
    orchid: 0000-0001-7399-2299
    affiliation: 13
  - name: Stephen A. Lauer
    orchid: 
    affiliation: 7
  - name: Lorenz A. Kapsner
    orchid: 
    affiliation: 8
  - name: Maximilian Mücke
    orchid: 0009-0000-9432-9795
    affiliation: 2
  - name: Zezhi Wang 
    orchid: 
    affiliation: 9
  - name: Keenan Ganz
    orchid: 0000-0002-8486-3959
    affiliation: 10
  - name: Henri Funk
    orchid: 0009-0007-0949-8385
    affiliation: "3, 11, 12"
  - name: Philipp Kopper
    orchid: 0000-0002-5037-7135
    affiliation: 3
  - name: Andreas Bender
    orchid: 0000-0001-5628-8611
    affiliation: "2, 3"
  - name: Bernd Bischl
    orcid: 0000-0001-6002-6980
    affiliation: "2, 3, 5, 6"
affiliations:
 - name: TU Dortmund University, Germany
   index: 1
 - name: Department of Statistics, LMU Munich, Germany
   index: 2
 - name: Munich Center for Machine Learning (MCML), Germany
   index: 3
 - name: Department of Cancer Genetics, Institute for Cancer Research, Oslo University Hospital, Norway
   index: 4
 - name: Leibniz Institute for Prevention Research and Epidemiology (BIPS), Bremen, Germany
   index: 5
 - name: Faculty of Mathematics and Computer Science, University of Bremen, Germany
   index: 6
 - name: Certilytics, Inc., Louisville, Kentucky
   index: 7
 - name: Friedrich-Alexander-Universität Erlangen-Nürnberg (FAU), Erlangen, Germany
   index: 8
 - name: Department of Statistics and Finance/International Institute of Finance, School of Management, University of Science and Technology of China, Hefei, Anhui, China
   index: 9
 - name: School of Environmental and Forest Sciences, University of Washington, Seattle
   index: 10
 - name: Department of Geography, LMU Munich, Germany
   index: 11
 - name: Statistical Consulting Unit StaBLab, LMU Munich, Germany
   index: 12
 - name: Wake Forest University School of Medicine, Department of Biostatistics and Data Science, Division of Public Health SciencesWinston-Salem, North Carolina
   index: 13
date: XXX December 2024
bibliography: paper.bib
---

# Summary

The [`mlr3extralearners`](https://mlr3extralearners.mlr-org.com/) [`R`](https://www.r-project.org/) [@R] package is a community-driven package that integrates external machine learning algorithms into the [`mlr3`](https://mlr3.mlr-org.com/) [@Lang2019] ecosystem.
The `mlr3` ecosystem is a versatile toolbox for machine learning in `R` and is targeted towards both practitioners and researchers [@Bischl2024].
At its core, the `mlr3extralearners` package provides a standardized interface for machine learning and connects many R packages implementing machine learning algorithms into a unified framework.
The package currently wraps **85 different learning algorithms** from many different R packages, for tasks such as classification, regression, and survival analysis.
This enables users to seamlessly access and utilize these learners directly within their workflows as well as execute large-scale empirical benchmark experiments [@benchlargescale], leveraging the `mlr3` framework's parallelization and optimization capabilities.
An overview of all `mlr3` learners, including those from `mlr3extralearners`, is available on the [mlr3 website](https://mlr-org.com/learners.html).

Beyond accessibility, `mlr3extralearners` also allows `mlr3` users and package developers to easily add their own learners to the ecosystem.
This **enriches each learner with extensive metadata** about its parameter space, prediction types, and other key attributes.
Furthermore, `mlr3extralearners` includes robust mechanisms for **quality assurance**, such as regular sanity checks and verification tests that ensure learner parameters are consistent and up-to-date with the latest versions of their underlying R packages.
In order to allow the integration of learners that are not available on `CRAN`, the package is hosted on the [`mlr` R-universe](https://mlr-org.r-universe.dev/).

- Comparison with other packages:
  - parsnip tidymodels
  - ???

# Statement of Need

In order to solve modeling problems using machine learning, one often has specific requirements for the learning algorithm such as performance, interpretability, or the ability to handle specific data types and modeling tasks.
For this reason, it is essential for the `mlr3` ecosystem to offer a wide variety of learners, such that users can choose the most appropriate learner for their specific problem.
While connecting a new learner to `mlr3` is straightforward and can be done on a per-need basis, integrating learners into `mlr3extralearners` also makes this available to other users and avoids replication of effort.
Furthermore, contributing to `mlr3extralearners` also has the added benefits that the learners are reviewed by the maintainers of the package, ensuring that they are correct and work as expected.

Besides the advantage for users of machine learning methods, `mlr3extralearners` also offers benefits for package developers.
After developing a new R package that implements a machine learning algorithm, making it available in the `mlr3` ecosystem means that the learning algorithm is immediately integrated into the wider ecosystem and can therefore easily be tuned or combined with preprocessing steps [@mlr3pipelines2021].

# Features

The core functionality of `mlr3extralearners` is to integrate new learners into the `mlr3` ecosystem.
By doing so, many different learning algorithms can be used with the same syntax and standardized interface.
However, the benefits of `mlr3extralearners` do not stop at mere integration.

## Metadata

One core feature of the `mlr3` ecosystem is that it annotates learners with extensive metadata.
For one, the parameter spaces of learners are defined as parameter sets as defined in the [`paradox` package](https://paradox.mlr-org.com/) [@paradox].
Parameters are explicitly typed, their ranges or list of available values are annotated and this information is used to both check for valid configurations, but also allow for easier parameter tuning.
Furthermore, learners are annotated with respect to their task type (such as classification, regression or survival analysis [@Sonabend2021]) and predict type (such as probabilities or class predictions), which feature types they can handle, and which capabilities they have.
The latter are standardized via a set of standardized properties, which e.g. includes the ability to do feature selection, to assign importance scores to features, or to handle missing values.

## Functional Correctness

One problem that manifests when integrating learning algorithms from different R packages is that their API can change.
The most frequent case is that new parameters are added, which were not present in the version of the package when the learner was integrated.
In `mlr3extralearners`, we regularly check whether the learner implements the expected interface of the upstream function and update the parameter set accordingly.

In addition to this `mlr3`-specific check, `mlr3extralearners` also verifies the correctness of learners by regularly running automatic tests on the learners.
These tests perform simple sanity checks and also verify that the learner's metadata is correctly annotated, e.g. that a learner that claims to be able to handle missing values actually does so.

## Templates for new Learners

In order to make the integration of new learners into `mlr3extralearners` as easy as possible, we provide templates for generating code for both the new learner itself, as well as associated test files.
These templates can easily be created via an `R` function that takes in the metadata of the learner and generates files that fill out as much as possible and clearly indicate what is needed to be added by the user.
The package website contains an [extensive tutorioal](https://mlr3extralearners.mlr-org.com/articles/extending.html) on how to do this, as well as a list with [common mistakes](https://mlr3extralearners.mlr-org.com/articles/common_issues.html) encountered by several contributors.

# Acknowledgements

Sebastian Fischer is supported by the Deutsche Forschungsgemeinschaft (DFG, German Research
Foundation) – 460135501 (NFDI project MaRDI).
John Zobolas received funding from the European Union's Horizon 2020 research and innovation programme under grant agreement No 101016851, project PANCAIM.

# References
