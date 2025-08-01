% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/learner_lme4_regr_lmer.R
\name{mlr_learners_regr.lmer}
\alias{mlr_learners_regr.lmer}
\alias{LearnerRegrLmer}
\title{Regression Linear Mixed Effects Learner}
\description{
Linear model with random effects.
Calls \code{\link[lme4:lmer]{lme4::lmer()}} from \CRANpkg{lme4}.
}
\section{Formula}{

Although most mlr3 learners don't allow to specify the formula manually, and automatically
set it by valling \code{task$formula()}, this learner allows to set the \code{formula} because it's core
functionality depends it. This means that it might not always use all features that are available
in the \link[mlr3:Task]{task}.
Be aware, that this can sometimes lead to unexpected error messages,
because mlr3 checks the compatibility between the learner and the task on \strong{all} available features.
}

\section{Dictionary}{

This \link[mlr3:Learner]{Learner} can be instantiated via \link[mlr3:mlr_sugar]{lrn()}:

\if{html}{\out{<div class="sourceCode">}}\preformatted{lrn("regr.lmer")
}\if{html}{\out{</div>}}
}

\section{Meta Information}{

\itemize{
\item Task type: \dQuote{regr}
\item Predict Types: \dQuote{response}
\item Feature Types: \dQuote{logical}, \dQuote{integer}, \dQuote{numeric}, \dQuote{factor}
\item Required Packages: \CRANpkg{mlr3}, \CRANpkg{lme4}
}
}

\section{Parameters}{
\tabular{lllll}{
   Id \tab Type \tab Default \tab Levels \tab Range \cr
   formula \tab untyped \tab - \tab  \tab - \cr
   REML \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   start \tab untyped \tab NULL \tab  \tab - \cr
   verbose \tab integer \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   contrasts \tab untyped \tab NULL \tab  \tab - \cr
   optimizer \tab character \tab nloptwrap \tab Nelder_Mead, bobyqa, nlminbwrap, nloptwrap \tab - \cr
   restart_edge \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   boundary.tol \tab numeric \tab 1e-05 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   calc.derivs \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   check.nobs.vs.rankZ \tab character \tab ignore \tab ignore, warning, message, stop \tab - \cr
   check.nobs.vs.nlev \tab character \tab stop \tab ignore, warning, message, stop \tab - \cr
   check.nlev.gtreq.5 \tab character \tab ignore \tab ignore, warning, message, stop \tab - \cr
   check.nlev.gtr.1 \tab character \tab stop \tab ignore, warning, message, stop \tab - \cr
   check.nobs.vs.nRE \tab character \tab stop \tab ignore, warning, message, stop \tab - \cr
   check.rankX \tab character \tab message+drop.cols \tab message+drop.cols, silent.drop.cols, warn+drop.cols, stop.deficient, ignore \tab - \cr
   check.scaleX \tab character \tab warning \tab warning, stop, silent.rescale, message+rescale, warn+rescale, ignore \tab - \cr
   check.formula.LHS \tab character \tab stop \tab ignore, warning, message, stop \tab - \cr
   check.conv.grad \tab untyped \tab "lme4::.makeCC(\"warning\", tol = 2e-3, relTol = NULL)" \tab  \tab - \cr
   check.conv.singular \tab untyped \tab "lme4::.makeCC(action = \"message\", tol = formals(lme4::isSingular)$tol)" \tab  \tab - \cr
   check.conv.hess \tab untyped \tab "lme4::.makeCC(action = \"warning\", tol = 1e-6)" \tab  \tab - \cr
   optCtrl \tab untyped \tab list() \tab  \tab - \cr
   newparams \tab untyped \tab NULL \tab  \tab - \cr
   re.form \tab untyped \tab NULL \tab  \tab - \cr
   random.only \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   allow.new.levels \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   na.action \tab untyped \tab "stats::na.pass" \tab  \tab - \cr
}
}

\section{Offset}{

If a \code{Task} contains a column with the \code{offset} role, it is automatically
incorporated during training via the \code{offset} argument in \code{\link[lme4:lmer]{lme4::lmer()}}.
No offset is applied during prediction for this learner.
}

\examples{
\dontshow{if (requireNamespace("lme4", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Define the Learner and set parameter values
learner = lrn("regr.lmer", formula = cmedv ~ (1 | town))

# Define a Task
task = tsk("boston_housing")

learner$train(task)
print(learner$model)
\dontshow{\}) # examplesIf}
}
\references{
Bates, M D (2010).
\dQuote{lme4: Mixed-effects modeling with R.}
}
\seealso{
\itemize{
\item \link[mlr3misc:Dictionary]{Dictionary} of \link[mlr3:Learner]{Learners}: \link[mlr3:mlr_learners]{mlr3::mlr_learners}.
\item \code{as.data.table(mlr_learners)} for a table of available \link[mlr3:Learner]{Learners} in the running session (depending on the loaded packages).
\item Chapter in the \href{https://mlr3book.mlr-org.com/}{mlr3book}: \url{https://mlr3book.mlr-org.com/basics.html#learners}
\item \CRANpkg{mlr3learners} for a selection of recommended learners.
\item \CRANpkg{mlr3cluster} for unsupervised clustering learners.
\item \CRANpkg{mlr3pipelines} to combine learners with pre- and postprocessing steps.
\item \CRANpkg{mlr3tuning} for tuning of hyperparameters, \CRANpkg{mlr3tuningspaces} for established default tuning spaces.
}
}
\author{
s-kganz
}
\section{Super classes}{
\code{\link[mlr3:Learner]{mlr3::Learner}} -> \code{\link[mlr3:LearnerRegr]{mlr3::LearnerRegr}} -> \code{LearnerRegrLmer}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-LearnerRegrLmer-new}{\code{LearnerRegrLmer$new()}}
\item \href{#method-LearnerRegrLmer-clone}{\code{LearnerRegrLmer$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="base_learner"><a href='../../mlr3/html/Learner.html#method-Learner-base_learner'><code>mlr3::Learner$base_learner()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="configure"><a href='../../mlr3/html/Learner.html#method-Learner-configure'><code>mlr3::Learner$configure()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="encapsulate"><a href='../../mlr3/html/Learner.html#method-Learner-encapsulate'><code>mlr3::Learner$encapsulate()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="format"><a href='../../mlr3/html/Learner.html#method-Learner-format'><code>mlr3::Learner$format()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="help"><a href='../../mlr3/html/Learner.html#method-Learner-help'><code>mlr3::Learner$help()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="predict"><a href='../../mlr3/html/Learner.html#method-Learner-predict'><code>mlr3::Learner$predict()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="predict_newdata"><a href='../../mlr3/html/Learner.html#method-Learner-predict_newdata'><code>mlr3::Learner$predict_newdata()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="print"><a href='../../mlr3/html/Learner.html#method-Learner-print'><code>mlr3::Learner$print()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="reset"><a href='../../mlr3/html/Learner.html#method-Learner-reset'><code>mlr3::Learner$reset()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="selected_features"><a href='../../mlr3/html/Learner.html#method-Learner-selected_features'><code>mlr3::Learner$selected_features()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="train"><a href='../../mlr3/html/Learner.html#method-Learner-train'><code>mlr3::Learner$train()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="LearnerRegr" data-id="predict_newdata_fast"><a href='../../mlr3/html/LearnerRegr.html#method-LearnerRegr-predict_newdata_fast'><code>mlr3::LearnerRegr$predict_newdata_fast()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerRegrLmer-new"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerRegrLmer-new}{}}}
\subsection{Method \code{new()}}{
Creates a new instance of this \link[R6:R6Class]{R6} class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerRegrLmer$new()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerRegrLmer-clone"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerRegrLmer-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerRegrLmer$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
