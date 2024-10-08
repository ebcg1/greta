% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install_greta_deps.R, R/reinstallers.R
\name{install_greta_deps}
\alias{install_greta_deps}
\alias{reinstall_greta_deps}
\title{Install Python dependencies for greta}
\usage{
install_greta_deps(
  python_deps = greta_python_deps(),
  timeout = 5,
  restart = c("ask", "force", "no"),
  ...
)

reinstall_greta_deps(
  python_deps = greta_python_deps(),
  timeout = 5,
  restart = c("ask", "force", "no")
)
}
\arguments{
\item{python_deps}{object created with \code{\link[=greta_python_deps]{greta_python_deps()}} where you
specify python, TF, and TFP versions. By default these are TF 2.15.0,
TFP 0.23.0, and Python 3.10. These versions must be compatible
with each other. If they are not, \code{\link[=greta_python_deps]{greta_python_deps()}} will error with
more information and suggestions. See ?\code{\link[=greta_python_deps]{greta_python_deps()}} for more
information, and see the data object \code{greta_deps_tf_tfp}
(`?greta_deps_tf_tfp``).}

\item{timeout}{maximum time in minutes until the installation for each
installation component times out and exits. Default is 5 minutes per
installation component.}

\item{restart}{character. Restart R after installation? Default is "ask".
Other options are, "force", and "no". Using "force" will will force a
restart after installation. Using  "no" will not restart. Note that this
only restarts R during interactive sessions, and only in RStudio.}

\item{...}{Optional arguments, reserved for future expansion.}
}
\description{
This is a helper function to install Python dependencies needed. By default
these are TF 2.15.0, TFP 0.23.0, and Python 3.10. These Python modules
will be installed into a conda environment named "greta-env-tf2".
}
\details{
To see install notes or errors, there isn't an argument to specify,
instead you will need to specify and environment variable,
\code{GRETA_INSTALLATION_LOG}, with
\code{Sys.setenv('GRETA_INSTALLATION_LOG'='path/to/logfile.html')}. Or use
\code{\link[=greta_set_install_logfile]{greta_set_install_logfile()}} to set the path, e.g.,
\code{greta_set_install_logfile('path/to/logfile.html')}. You can also skip
the restarting of R and use \code{\link[=write_greta_install_log]{write_greta_install_log()}}, which
installation notes will indicate how to use if you haven't specified.

By default, if using RStudio, it will now ask you if you want to restart
the R session. If the session is not interactive, or is not in RStudio,
it will not restart. You can also override this with \code{restart = TRUE}.
}
\note{
This will automatically install Miniconda (a minimal version of the
Anaconda scientific software management system), create a 'conda'
environment for greta named 'greta-env-tf2' with required python and python
package versions, and forcibly switch over to using that conda environment.

If you don't want to use conda or the "greta-env-tf2" conda environment, you
can install these specific versions of tensorflow (version 2.6.0), and
tensorflow-probability (version 0.14.1), and ensure that the python
environment that is initialised in this R session has these versions
installed. This is now always straightforward, so we recommend installing
the python packages using \code{install_greta_deps()} for most users.
}
\examples{
\dontrun{
install_greta_deps()
}
\dontrun{
# to help troubleshoot your greta installation, this can help resolve some
# issues with installing greta dependencies
reinstall_greta_deps()
}
}
