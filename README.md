
Vector AutoRegressive (VAR) models are often used in macroeconomics and finance. Although VAR models allow to model a large number of variable at the same time, they quickly become high-dimensional or even infeasible to be estimated using traditional techniques. This puts limitations on their usefulness, as one would usually like to model a rather large number of series together (1) to take into account all information, and (2) because it is often unreasonable to assume that variables are exogenous - at least in finance and macroeconomics.

This repository contains an interactive notebook explaining the R-library `bigtime` whose' goal it is to solve the problems traditional techniques have when estimating high-dimensional VAR models. The notebook is written for a wide audience and assumes only basic knowledge of VAR models, which can also be obtained by reading this [notebook](https://github.com/enweg/SnT_VARS).

The notebook can be read by either using this link [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/enweg/SnT_BigTime/main?urlpath=shiny/App/) or by downloading the repository, opening it in RStudio and running the *start_app.R* script. The latter will open a new tab in the default browser. If the first option is chosen, please be patient. Loading the notebook can sometimes take quite some time.

For comments, corrections, or questions, please open an issue in this repository. 

The code for `bigtime` can be found at [github](https://github.com/ineswilms/bigtime)