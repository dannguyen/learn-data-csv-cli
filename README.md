# Comparing csvkit and xsv for command-line data processing


**Table of contents**


* [Overview](#overview)
* [Installation](#installation)
* [Common features](#common-features)
 * [Fixing and standardizing the data formats](#fixing-and-standardizing-the-data-formats)
    * [Converting tab delimiters](#converting-tab-delimiters)
    * [Forcing every field to be quoted](#forcing-every-field-to-be-quoted)
* [References and credits](#references-and-credits)




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

## Common features


### Fixing and standardizing the data formats

A common task is to tidy up and standardize a delimited file. This can include converting non-comma delimiters (e.g. tabs, or pipes) into commas. And converting to a quoting-style. csvkit's dedicated utility is [csvformat](https://csvkit.readthedocs.io/en/latest/scripts/csvformat.html) is the dedicated tool. For **xsv**, the subcommand is **fmt**


#### Converting tab delimiters


```sh
#### csvkit
$ csvformat -t data.tsv

#### xsv
$ xsv fmt -d "\t" data.tsv
```







#### Forcing every field to be quoted


csvkit:

`csvformat -U 1 data.csv`

xsv:

`xsv fmt --quote-always data.csv`







## References and credits

Data comes from:

- [data/legislators.csv](data/current-legislators.csv): The list of members of Congress as maintained by [unitedstates/congress-legislators](https://github.com/unitedstates/congress-legislators) as of March 2019. [Original CSV](https://theunitedstates.io/congress-legislators/legislators-current.csv)
- [data/fec-candidates.csv](data/fec-candidates.csv): Candidates registered with the FEC for the 2017-2018 campaign cycle
    - [Landing page](https://www.fec.gov/data/browse-data/?tab=candidates)
    - [Documentation](https://www.fec.gov/campaign-finance-data/candidate-summary-file-description/)
    - [Direct link to CSV](https://www.fec.gov/files/bulk-downloads/2018/candidate_summary_2018.csv)
- [data/fec-disbursements.csv]
    - [Direct link to filtered view](https://www.fec.gov/data/disbursements/?two_year_transaction_period=2018&data_type=processed&min_date=01%2F01%2F2017&max_date=12%2F31%2F2018&min_amount=10000)
- [data/nypd-stops-2018.csv]
    - https://www1.nyc.gov/site/nypd/stats/reports-analysis/stopfrisk.page
