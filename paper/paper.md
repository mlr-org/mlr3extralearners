---
title: 'mlr3extralearners: Expanding the mlr3 Ecosystem with Community-Driven Learner Integration'
tags:
  - R
  - machine learning
  - community
  - FAIR
  - benchmarking
authors:
  - name: Sebastian Fischer
    orcid: 0000-0002-9609-3197
    affiliation: "2, 3"
  - name: John Zobolas
    orcid: 0000-0002-3609-8674
    affiliation: 4
  - name: Raphael Sonabend
    orcid: 0000-0001-9225-4654
    affiliation: "15, 16"
  - name: Marc Becker
    orcid: 0000-0002-8115-0400
    affiliation: "2, 3"
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
    affiliation: "2, 3, 4, 5"
  - name: Patrick Schratz
    orcid: 0000-0003-0748-6624
    affiliation: 2
  - name: Byron C. Jaeger
    orchid: 0000-0001-7399-2299
    affiliation: 13
  - name: Stephen A Lauer
    orchid: 0000-0003-2948-630X
    affiliation: 7
  - name: Lorenz A. Kapsner
    orchid: 0000-0003-1866-860X
    affiliation: 8
  - name: Maximilian Mücke
    orchid: 0009-0000-9432-9795
    affiliation: 2
  - name: Zezhi Wang 
    orchid: 0000-0001-6988-5853
    affiliation: 9
  - name: Damir Pulatov
    orchid: 0000-0003-4901-7201
    affiliation: 14
  - name: Keenan Ganz
    orchid: 0000-0002-8486-3959
    affiliation: 10
  - name: Henri Funk
    orchid: 0009-0007-0949-8385
    affiliation: "3, 11, 12"
  - name: Liana Harutyunyan
  - name: Pierre Camilleri
    orchid: 0009-0005-1070-0670
    affiliation: 17
  - name: Philipp Kopper
    orchid: 0000-0002-5037-7135
    affiliation: 3
  - name: Andreas Bender
    orchid: 0000-0001-5628-8611
    affiliation: "2, 3"
  - name: Bernd Bischl
    orcid: 0000-0001-6002-6980
    affiliation: "2, 3"
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
 - name: Certilytics, Inc., 9200 Shelbyville Rd, Louisville, KY, 40222, USA
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
 - name: University of North Carolina Wilmington
   index: 14
 - name: OSPO Now
   index: 15
 - name: Imperial College London
   index: 16
 - name: multi, 8 passage Brûlon, 75012 PARIS, France
   index: 17
date: XXX December 2024
bibliography: paper.bib
---

# Summary

The [`mlr3extralearners`](https://mlr3extralearners.mlr-org.com/) [`R`](https://www.r-project.org/) [@R] package is a community-driven package that integrates external machine learning algorithms into the [`mlr3`](https://mlr3.mlr-org.com/) [@Lang2019] ecosystem.
The `mlr3` ecosystem is a versatile toolbox for machine learning in `R` and is targeted towards both practitioners and researchers [@Bischl2024].
At its core, the `mlr3extralearners` package provides a standardized interface for machine learning and connects many R packages implementing machine learning algorithms into a unified framework.
The package currently wraps **85 different learning algorithms** from many different R packages, for tasks such as classification, regression, and survival analysis.
This enables users to seamlessly access and utilize these learners directly within their workflows.
It also facilitates large-scale empirical benchmark experiments, leveraging the `mlr3` framework's parallelization and optimization capabilities  [@benchlargescale].
An overview of all `mlr3` learners, including those introduced through `mlr3extralearners`, is available on the [mlr3 website](https://mlr-org.com/learners.html).

Beyond accessibility, `mlr3extralearners` also allows `mlr3` users and package developers to easily add their own learners to the ecosystem.
This **enriches each learner with extensive metadata** about its parameter space, prediction types, and other key attributes.
Furthermore, `mlr3extralearners` includes robust mechanisms for **quality assurance**, such as regular sanity checks and verification tests that ensure learner parameters are consistent and up-to-date with the latest versions of their underlying R packages.
In order to allow the integration of learners that are not available on `CRAN`, the package is hosted on the [`mlr` R-universe](https://mlr-org.r-universe.dev/).
By providing a standardized interface and comprehensive metadata for each learner, mlr3extralearners enhances the FAIRness (findability, accessibility, interoperability, and reusability) of machine learning algorithms within the R ecosystem [@wilkinson2016fair]).

# Statement of Need

Machine learning often requires practitioners to navigate a diverse array of modeling problems, each with unique demands such as performance, interpretability, or compatibility with specific data types and tasks.
To address this challenge, packages like `caret` [@caret] and `parsnip` [@parsnip] from the `tidymodels` ecosystem have historically provided unified interfaces for simplifying model experimentation [@tidymodels].
For instance, `parsnip` provides a clean and consistent way to define models, enabling users to experiment with different algorithms without dealing with the nuances of underlying package syntax.
Similarly, the `mlr3` ecosystem aims to streamline model selection and experimentation, making it a versatile toolbox for machine learning in R.

Within this ecosystem, `mlr3extralearners` plays a crucial role by providing a comprehensive collection of external machine learning algorithms integrated into the `mlr3` framework.
This ensures that users can access a wide variety of learners to meet their specific needs,
and choose the most appropriate learner for their specific problem.
While connecting new learners to `mlr3` is straightforward and can be done on a per-need basis, integrating them into `mlr3extralearners` benefits the broader community by avoiding redundant effort and ensuring accessibility for all users.
Additionally, contributions to `mlr3extralearners` are reviewed by the package maintainers, providing a layer of quality assurance.
This review process ensures that integrated learners work as expected and adhere to the high standards of the `mlr3` ecosystem.

Beyond its utility for users, `mlr3extralearners` also offers significant advantages for developers of machine learning packages.
By integrating a new algorithm into the `mlr3` ecosystem, developers can immediately make their methods accessible to a wider audience.
This integration facilitates seamless tuning [@mlr3tuning] and preprocessing [@mlr3pipelines2021] through the broader `mlr3` framework, enhancing the usability and impact of their work.

# Features

The core functionality of `mlr3extralearners` is to integrate new learners into the `mlr3` ecosystem, allowing users to access a wide array of learning algorithms through a unified syntax and standardized interface.
However, the advantages of `mlr3extralearners` go well beyond simple integration.

## Metadata

One core feature of the `mlr3` ecosystem is that it annotates learners with extensive metadata.

- **Parameter Management**: The parameter spaces of learners are defined using parameter sets from the [`paradox` package](https://paradox.mlr-org.com/) [@paradox].
Each parameter is explicitly typed, with annotations for valid ranges and allowable values.
This ensures valid configurations and simplifies tasks like parameter tuning.
- **Task and Prediction Types**: Learners are categorized with respect to their task type (e.g. as classification, regression or survival analysis [@Sonabend2021]) and prediction types (e.g. probabilities or class predictions).
This allows users to easily identify suitable learners for their specific modeling tasks.
- **Standardized Properties**: Learners are annotated with detailed attributes, including the types of features they can process and their support for functionalities such as feature selection such as feature selection, importance scoring, handling missing values, or monitoring performance on a separate validation set during training among others.
This allows users to have a clear understanding of a learner's capabilities and limitations and assess if it aligns with the specific requirements of their workflows, reducing trial-and-error and streamlining the modeling process.

## Functional Correctness

Integrating learners from diverse R packages poses challenges, particularly due to changes in upstream APIs. `mlr3extralearners` addresses these issues through rigorous checks:

- **Interface Consistency**: The package regularly verifies that each learner adheres to the expected interface of its upstream function.
When new parameters are introduced or existing ones change, the tests fail until the parameter sets are updated accordingly.
- **Automated Testing**: To ensure correctness, `mlr3extralearners` performs regular automated tests on all learners.
These tests include sanity checks that, e.g., verify that the learners produce sensible predictions for simple tasks.
Furthermore, the tests also validate the learners' metadata annotations, such as whether a learner can actually handle missing values or is able to produce importance scores.

## Simplified Integration of New Learners

To streamline the addition of new learners, `mlr3extralearners` provides robust support tools:

- **Code Templates**: Predefined templates are available for generating the necessary code for both the learner implementation and associated test files.
These templates are generated through an `R` function that uses learner metadata to prefill as much information as possible, leaving only minimal input required from the contributor.
- **Guides and Resources**: The package website contains an contains an [extensive tutorial](https://mlr3extralearners.mlr-org.com/articles/extending.html), as well as a curated list of [common issues](https://mlr3extralearners.mlr-org.com/articles/common_issues.html) encountered during learner integration, making the process accessible for contributors of all experience levels.
Additionally, every integrated learner includes a simple example of usage in the documentation, ensuring that users can quickly understand how to utilize the learner effectively within the `mlr3` ecosystem.

# Community Impact and Future Directions

`mlr3extralearners` is a direct result of the contributions from a diverse community of authors and developers.
The authors of this paper themselves have been actively involved in integrating learners, providing quality assurance, and maintaining the package's infrastructure.
Their contributions, such as the addition of learners for specialized tasks like survival analysis and high-dimensional data, highlight the impact that thoughtful integration has on the `mlr3` ecosystem.
This ongoing effort illustrates the transformative potential of **community-driven development**, ensuring that `mlr3extralearners` continues to grow as a dynamic and inclusive repository for cutting-edge machine learning algorithms.

By fostering a spirit of collaboration, the `mlr3extralearners` project invites future contributors to follow this example, helping shape the package's evolution and making advanced machine learning tools accessible to a wider `R` audience.

# Acknowledgements

Sebastian Fischer is supported by the Deutsche Forschungsgemeinschaft (DFG, German Research
Foundation) – 460135501 (NFDI project MaRDI).
John Zobolas received funding from the European Union's Horizon 2020 research and innovation programme under grant agreement No 101016851, project PANCAIM.

# References
