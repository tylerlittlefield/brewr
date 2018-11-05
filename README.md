
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

## Installation

You can install brewr from github using
[`devtools`](https://github.com/r-lib/devtools) with:

``` r
devtools::install_github("tylurp/brewr")
```

## Example

Use the `brewr()` function to access all API endpoints. The endpoints
are listed in the [documentation](https://formulae.brew.sh/docs/api/).

The first argument of `brewr()` is the endpoint. Note that the leading
slash must be included as well.

``` r
library(brewr)

# Pull metrics on macOS versions
os_versions <- brewr("/analytics/os-version/30d")

# Default output is JSON
os_versions
#> {
#>   "category": "install",
#>   "total_items": 10,
#>   "start_date": "2018-10-06",
#>   "end_date": "2018-11-05",
#>   "total_count": 13160931,
#>   "items": [
#>     {
#>       "number": 1,
#>       "os_version": "macOS High Sierra (10.13)",
#>       "count": "5,804,096",
#>       "percent": "44.10"
#>     },
#>     {
#>       "number": 2,
#>       "os_version": "macOS Mojave (10.14)",
#>       "count": "5,581,662",
#>       "percent": "42.41"
#>     },
#>     {
#>       "number": 3,
#>       "os_version": "macOS Sierra (10.12)",
#>       "count": "1,100,892",
#>       "percent": "8.36"
#>     },
#>     {
#>       "number": 4,
#>       "os_version": "OS X El Capitan (10.11)",
#>       "count": "480,553",
#>       "percent": "3.65"
#>     },
#>     {
#>       "number": 5,
#>       "os_version": "OS X Yosemite (10.10)",
#>       "count": "171,433",
#>       "percent": "1.30"
#>     },
#>     {
#>       "number": 6,
#>       "os_version": "OS X Mavericks (10.9)",
#>       "count": "20,603",
#>       "percent": "0.16"
#>     },
#>     {
#>       "number": 7,
#>       "os_version": "macOS (10.15)",
#>       "count": "725",
#>       "percent": "0.01"
#>     },
#>     {
#>       "number": 8,
#>       "os_version": "Mac OS X Lion (10.7)",
#>       "count": "591",
#>       "percent": "0.00"
#>     },
#>     {
#>       "number": 9,
#>       "os_version": "OS X Mountain Lion (10.8)",
#>       "count": "255",
#>       "percent": "0.00"
#>     },
#>     {
#>       "number": 10,
#>       "os_version": "Mac OS X Snow Leopard (10.6)",
#>       "count": "121",
#>       "percent": "0.00"
#>     }
#>   ]
#> }

# Convert JSON to an R object with jsonlite
os_versions <- jsonlite::fromJSON(os_versions)
os_versions[["items"]]
#>    number                   os_version     count percent
#> 1       1    macOS High Sierra (10.13) 5,804,096   44.10
#> 2       2         macOS Mojave (10.14) 5,581,662   42.41
#> 3       3         macOS Sierra (10.12) 1,100,892    8.36
#> 4       4      OS X El Capitan (10.11)   480,553    3.65
#> 5       5        OS X Yosemite (10.10)   171,433    1.30
#> 6       6        OS X Mavericks (10.9)    20,603    0.16
#> 7       7                macOS (10.15)       725    0.01
#> 8       8         Mac OS X Lion (10.7)       591    0.00
#> 9       9    OS X Mountain Lion (10.8)       255    0.00
#> 10     10 Mac OS X Snow Leopard (10.6)       121    0.00

# Pull install metrics from the last 30 days
installs <- brewr("/analytics/install/30d")
installs <- jsonlite::fromJSON(installs)
head(installs[["items"]], 10)
#>    number  formula   count percent
#> 1       1  openssl 420,978    3.21
#> 2       2   sqlite 354,881    2.70
#> 3       3     gdbm 347,159    2.64
#> 4       4     node 309,242    2.35
#> 5       5 readline 288,241    2.19
#> 6       6   python 230,765    1.76
#> 7       7       xz 205,959    1.57
#> 8       8    icu4c 195,813    1.49
#> 9       9      git 187,486    1.43
#> 10     10  gettext 176,655    1.34
```
