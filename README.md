# Comparing csvkit and xsv for command-line data processing


## Overview

|          |                 csvkit                |                xsv                |
|----------|---------------------------------------|-----------------------------------|
| Docs     | https://csvkit.rtfd.io/               | https://docs.rs/crate/xsv         |
| Repo     | https://github.com/wireservice/csvkit | https://github.com/BurntSushi/xsv |
| Created  | March 2011                            | Sept. 2014                        |
| Language | Python                                | Rust                              |


|              |            csvkit            |                 xsv                 |
|--------------|------------------------------|-------------------------------------|
| trim columns | `csvcut -c name,state`       | `xsv select name,state`             |
| grep columns | `csvgrep -c date -r '201\d'` | `xsv search '201\d' --select date ` |
| stack files  | `csvstack data/*.csv`        | `xsv cat rows data/*.csv`           |
|              |                              |                                     |

## Installation


**csvkit**

https://csvkit.readthedocs.io/en/1.0.3/tutorial/1_getting_started.html#installing-csvkit

Install using `pip`:

```sh
$ pip install csvkit
```

You can also use `conda` if you're going the Anaconda route:

https://anaconda.org/anaconda/csvkit

```sh
$ conda install -c anaconda csvkit 
```


**xsv**

https://github.com/BurntSushi/xsv#installation

Compiled binaries for the major OSes can be downloaded here: https://github.com/BurntSushi/xsv/releases/tag/0.13.0

On MacOS, Homebrew works:

```sh
$ brew install xsv
```

Or you can install the [Rust package manager, cargo](https://doc.rust-lang.org/cargo/getting-started/installation.html), and then run:

```sh
$ cargo install xsv
```



## References and credits

Data comes from:

- [data/legislators.csv](data/current-legislators.csv): The list of members of Congress as maintained by [unitedstates/congress-legislators](https://github.com/unitedstates/congress-legislators) as of March 2019. [Original CSV](https://theunitedstates.io/congress-legislators/legislators-current.csv)
