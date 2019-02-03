
<!-- README.md is generated from README.Rmd. Please edit that file -->

# brewr <img src="man/figures/logo.png" align="right" height=150/>

[![Travis build
status](https://travis-ci.org/tyluRp/brewr.svg?branch=master)](https://travis-ci.org/tyluRp/brewr)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/tyluRp/brewr?branch=master&svg=true)](https://ci.appveyor.com/project/tyluRp/brewr)
[![Codecov test
coverage](https://codecov.io/gh/tyluRp/brewr/branch/master/graph/badge.svg)](https://codecov.io/gh/tyluRp/brewr?branch=master)

The goal of brewr is to access [Homebrews JSON
API](https://formulae.brew.sh/docs/api/) in R.

<img src="man/figures/plot_example.png" align="center"/>

## Installation

You can install brewr from github using
[`devtools`](https://github.com/r-lib/devtools) with:

``` r
devtools::install_github("tylurp/brewr")
```

## Example

Use the `brewr()` function to access all API endpoints. The endpoints
can be found [here](https://formulae.brew.sh/analytics/).

The first argument of `brewr()` is the endpoint. Note that the leading
slash must be included as well.

``` r
library(brewr)
library(dplyr)
library(jsonlite)

# Pull metrics on macOS versions
os_versions <- brewr("/analytics/os-version/30d")

# Default output is JSON
class(os_versions)
#> [1] "json"

# Convert JSON to an R object with jsonlite
os_versions %>% 
  fromJSON() %>% 
  .$items
#>    number                   os_version      count percent
#> 1       1         macOS Mojave (10.14) 11,193,335   68.36
#> 2       2    macOS High Sierra (10.13)  3,720,380   22.72
#> 3       3         macOS Sierra (10.12)    949,361    5.80
#> 4       4      OS X El Capitan (10.11)    400,024    2.44
#> 5       5        OS X Yosemite (10.10)     90,737    0.55
#> 6       6        OS X Mavericks (10.9)     17,137    0.10
#> 7       7                macOS (10.15)      1,715    0.01
#> 8       8 Mac OS X Snow Leopard (10.6)        392    0.00
#> 9       9    OS X Mountain Lion (10.8)        373    0.00
#> 10     10         Mac OS X Lion (10.7)        368    0.00

# Pull install metrics from the last 30 days
brewr("/analytics/install/30d") %>% 
  fromJSON() %>% 
  .$items %>% 
  head(10)
#>    number  formula   count percent
#> 1       1 readline 502,756    3.06
#> 2       2  openssl 495,728    3.02
#> 3       3   python 478,566    2.91
#> 4       4   sqlite 478,056    2.91
#> 5       5     node 347,418    2.12
#> 6       6    icu4c 296,464    1.81
#> 7       7     gdbm 289,269    1.76
#> 8       8       xz 234,537    1.43
#> 9       9   libpng 219,181    1.34
#> 10     10     glib 196,391    1.20

# Pull cask installs from the last 30d
brewr("/analytics/cask-install/30d") %>% 
  fromJSON() %>% 
  .$items %>% 
  head(10)
#>    number                   cask  count percent
#> 1       1                   java 29,268    4.59
#> 2       2                  java8 26,509    4.16
#> 3       3                 docker 17,088    2.68
#> 4       4                 iterm2 16,094    2.52
#> 5       5               minikube 15,703    2.46
#> 6       6             virtualbox 14,458    2.27
#> 7       7                xquartz 12,755    2.00
#> 8       8 android-platform-tools 11,763    1.84
#> 9       9          google-chrome 11,245    1.76
#> 10     10     visual-studio-code 11,060    1.73
```

## Shiny demo

See the shiny demo app here: <https://github.com/tyluRp/brewr-shiny>
