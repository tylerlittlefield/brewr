
<!-- README.md is generated from README.Rmd. Please edit that file -->

# brewr

[![Travis build
status](https://travis-ci.org/tyluRp/brewr.svg?branch=master)](https://travis-ci.org/tyluRp/brewr)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/tyluRp/brewr?branch=master&svg=true)](https://ci.appveyor.com/project/tyluRp/brewr)
[![Codecov test
coverage](https://codecov.io/gh/tyluRp/brewr/branch/master/graph/badge.svg)](https://codecov.io/gh/tyluRp/brewr?branch=master)

The goal of brewr is to access Homebrews JSON API in R.

## Installation

You can install brewr from github using
[`devtools`](https://github.com/r-lib/devtools) with:

``` r
devtools::install_github("tylurp/brewr")
```

## Example

Pull :

``` r
brewr::brewr("formula/sqlite")
#> {
#>   "name": "sqlite",
#>   "full_name": "sqlite",
#>   "oldname": {},
#>   "aliases": "sqlite3",
#>   "versioned_formulae": [],
#>   "desc": "Command-line interface for SQLite",
#>   "homepage": "https://sqlite.org/",
#>   "versions": {
#>     "stable": "3.25.2",
#>     "devel": {},
#>     "head": {},
#>     "bottle": true
#>   },
#>   "revision": 0,
#>   "version_scheme": 0,
#>   "bottle": {
#>     "stable": {
#>       "rebuild": 0,
#>       "cellar": ":any",
#>       "prefix": "/usr/local",
#>       "root_url": "https://homebrew.bintray.com/bottles",
#>       "files": {
#>         "mojave": {
#>           "url": "https://homebrew.bintray.com/bottles/sqlite-3.25.2.mojave.bottle.tar.gz",
#>           "sha256": "59e23f50f8a87b151578dbd38334b49df6488ea835d3b99c0bcbe50726032b1f"
#>         },
#>         "high_sierra": {
#>           "url": "https://homebrew.bintray.com/bottles/sqlite-3.25.2.high_sierra.bottle.tar.gz",
#>           "sha256": "fad1ca79fa7b40075724127e26e06c46719651c4e6abba4bb88e173167efe186"
#>         },
#>         "sierra": {
#>           "url": "https://homebrew.bintray.com/bottles/sqlite-3.25.2.sierra.bottle.tar.gz",
#>           "sha256": "bd7a32d5ebd5a7dd74b5606d7bb9828d8ca706253991f68c3281a41d5aed0ec8"
#>         }
#>       }
#>     }
#>   },
#>   "keg_only": false,
#>   "options": [
#>     {
#>       "option": "--with-fts",
#>       "description": "Enable the FTS3 module"
#>     },
#>     {
#>       "option": "--with-fts5",
#>       "description": "Enable the FTS5 module (experimental)"
#>     },
#>     {
#>       "option": "--with-functions",
#>       "description": "Enable more math and string functions for SQL queries"
#>     },
#>     {
#>       "option": "--with-json1",
#>       "description": "Enable the JSON1 extension"
#>     }
#>   ],
#>   "build_dependencies": [],
#>   "dependencies": "readline",
#>   "recommended_dependencies": [],
#>   "optional_dependencies": [],
#>   "requirements": [],
#>   "conflicts_with": [],
#>   "caveats": "",
#>   "installed": [],
#>   "linked_keg": {},
#>   "pinned": false,
#>   "outdated": false,
#>   "analytics": {
#>     "install": {
#>       "30d": {
#>         "sqlite": 364920,
#>         "sqlite --with-functions": 212,
#>         "sqlite --with-json1": 39,
#>         "sqlite --with-fts --with-functions --with-json1": 35,
#>         "sqlite --with-functions --with-json1": 25,
#>         "sqlite --with-fts --with-fts5 --with-functions --with-json1": 13,
#>         "sqlite --with-fts5": 13,
#>         "sqlite --with-fts5 --with-functions --with-json1": 13,
#>         "sqlite --with-fts --with-functions": 12,
#>         "sqlite --with-fts5 --with-json1": 12,
#>         "sqlite --with-fts": 6,
#>         "sqlite --with-fts --with-fts5": 5,
#>         "sqlite --with-fts --with-json1": 3
#>       },
#>       "90d": {
#>         "sqlite": 1125569,
#>         "sqlite --with-functions": 913,
#>         "sqlite --with-json1": 196,
#>         "sqlite --with-fts --with-functions --with-json1": 131,
#>         "sqlite --with-fts --with-fts5 --with-functions --with-json1": 89,
#>         "sqlite --with-functions --with-json1": 82,
#>         "sqlite --with-fts --with-functions": 79,
#>         "sqlite --with-fts5 --with-functions --with-json1": 49,
#>         "sqlite --with-fts5 --with-json1": 42,
#>         "sqlite --with-fts5": 37,
#>         "sqlite --with-fts": 34,
#>         "sqlite --with-fts --with-fts5": 16,
#>         "sqlite --universal": 12,
#>         "sqlite --with-fts --with-json1": 11,
#>         "sqlite --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 7,
#>         "sqlite --with-fts5 --with-functions": 7,
#>         "sqlite --with-fts --with-fts5 --with-json1": 5,
#>         "sqlite --with-fts --with-icu4c": 5,
#>         "sqlite --with-icu4c": 4,
#>         "sqlite --with-docs --with-fts --with-fts5 --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 3,
#>         "sqlite --with-docs --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 3,
#>         "sqlite --with-fts --with-fts5 --with-functions": 3
#>       },
#>       "365d": {
#>         "sqlite": 3726278,
#>         "sqlite --with-functions": 3633,
#>         "sqlite --with-json1": 635,
#>         "sqlite --with-fts5": 199,
#>         "sqlite --with-fts5 --with-json1": 159,
#>         "sqlite --with-fts --with-functions": 153,
#>         "sqlite --with-functions --with-json1": 143,
#>         "sqlite --with-fts --with-functions --with-json1": 137,
#>         "sqlite --with-fts --with-fts5 --with-functions --with-json1": 102,
#>         "sqlite --with-icu4c": 102,
#>         "sqlite --with-fts": 89,
#>         "sqlite --with-fts5 --with-functions --with-json1": 87,
#>         "sqlite --with-docs --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 55,
#>         "sqlite --universal": 54,
#>         "sqlite --with-docs --with-fts --with-fts5 --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 53,
#>         "sqlite --with-icu4c --with-functions --with-json1": 40,
#>         "sqlite --with-unlock-notify": 40,
#>         "sqlite --with-fts --with-fts5": 39,
#>         "sqlite --with-functions --without-readline": 38,
#>         "sqlite --with-functions --with-json1 --without-readline": 36,
#>         "sqlite --with-functions --with-dbstat --with-json1": 30,
#>         "sqlite --with-docs --with-fts --with-functions": 29,
#>         "sqlite --with-icu4c --with-functions": 28,
#>         "sqlite --with-docs": 27,
#>         "sqlite --with-fts --with-json1": 27,
#>         "sqlite --with-fts5 --with-functions": 24,
#>         "sqlite --with-fts --with-icu4c --with-functions": 22,
#>         "sqlite --with-fts --with-icu4c": 21,
#>         "sqlite --with-fts --with-icu4c --with-functions --with-dbstat --with-json1 --with-session": 20,
#>         "sqlite --with-docs --with-functions --with-json1": 19,
#>         "sqlite --with-docs --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session": 17,
#>         "sqlite --with-docs --with-functions": 17,
#>         "sqlite --with-fts --with-fts5 --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session": 17,
#>         "sqlite --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session": 17,
#>         "sqlite --with-icu4c --with-json1": 17
#>       }
#>     },
#>     "install_on_request": {
#>       "30d": {
#>         "sqlite": 17087,
#>         "sqlite --with-functions": 57,
#>         "sqlite --with-fts --with-functions --with-json1": 35,
#>         "sqlite --with-json1": 35,
#>         "sqlite --with-functions --with-json1": 20,
#>         "sqlite --with-fts --with-fts5 --with-functions --with-json1": 12,
#>         "sqlite --with-fts5 --with-functions --with-json1": 11,
#>         "sqlite --with-fts --with-functions": 9,
#>         "sqlite --with-fts5": 9,
#>         "sqlite --with-fts5 --with-json1": 9,
#>         "sqlite --with-fts": 4,
#>         "sqlite --with-fts --with-fts5": 3,
#>         "sqlite --with-fts --with-json1": 3
#>       },
#>       "90d": {
#>         "sqlite": 55534,
#>         "sqlite --with-functions": 218,
#>         "sqlite --with-json1": 176,
#>         "sqlite --with-fts --with-functions --with-json1": 128,
#>         "sqlite --with-fts --with-fts5 --with-functions --with-json1": 83,
#>         "sqlite --with-functions --with-json1": 64,
#>         "sqlite --with-fts --with-functions": 42,
#>         "sqlite --with-fts5 --with-functions --with-json1": 42,
#>         "sqlite --with-fts5": 31,
#>         "sqlite --with-fts5 --with-json1": 31,
#>         "sqlite --with-fts": 24,
#>         "sqlite --with-fts --with-fts5": 13,
#>         "sqlite --with-fts --with-json1": 10,
#>         "sqlite --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 7,
#>         "sqlite --with-fts5 --with-functions": 7,
#>         "sqlite --with-fts --with-icu4c": 5,
#>         "sqlite --with-fts --with-fts5 --with-json1": 4,
#>         "sqlite --with-docs --with-fts --with-fts5 --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 3,
#>         "sqlite --with-docs --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 3,
#>         "sqlite --with-fts --with-fts5 --with-functions": 3,
#>         "sqlite --with-functions --with-json1 --without-readline": 3,
#>         "sqlite --with-icu4c": 3
#>       },
#>       "365d": {
#>         "sqlite": 154328,
#>         "sqlite --with-functions": 617,
#>         "sqlite --with-json1": 519,
#>         "sqlite --with-fts5": 162,
#>         "sqlite --with-fts --with-functions --with-json1": 129,
#>         "sqlite --with-fts5 --with-json1": 105,
#>         "sqlite --with-fts --with-fts5 --with-functions --with-json1": 94,
#>         "sqlite --with-functions --with-json1": 94,
#>         "sqlite --with-icu4c": 88,
#>         "sqlite --with-fts5 --with-functions --with-json1": 69,
#>         "sqlite --with-fts --with-functions": 61,
#>         "sqlite --with-docs --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 55,
#>         "sqlite --with-docs --with-fts --with-fts5 --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session --with-soundex": 53,
#>         "sqlite --with-fts": 45,
#>         "sqlite --with-icu4c --with-functions --with-json1": 35,
#>         "sqlite --with-unlock-notify": 34,
#>         "sqlite --with-functions --with-json1 --without-readline": 27,
#>         "sqlite --with-functions --with-dbstat --with-json1": 24,
#>         "sqlite --with-fts --with-fts5": 22,
#>         "sqlite --with-fts --with-json1": 19,
#>         "sqlite --with-fts --with-icu4c --with-functions --with-dbstat --with-json1 --with-session": 18,
#>         "sqlite --with-fts5 --with-functions": 18,
#>         "sqlite --with-docs --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session": 17,
#>         "sqlite --with-icu4c --with-json1": 17,
#>         "sqlite --with-icu4c --with-functions": 16,
#>         "sqlite --with-docs --with-fts --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session": 14,
#>         "sqlite --with-fts --with-icu4c": 14,
#>         "sqlite --with-fts --with-secure-delete --with-unlock-notify --with-icu4c --with-functions --with-dbstat --with-json1 --with-session": 14
#>       }
#>     },
#>     "build_error": {
#>       "30d": {
#>         "sqlite": 0
#>       }
#>     }
#>   }
#> }
```
