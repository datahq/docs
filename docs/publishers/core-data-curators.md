## Core Data Curators Guide

This is a guide for curators of ["core datasets"][core-intro]. Curators collect and maintain these important and commonly-used (“core”) datasets as high-quality, easy-to-use, open [Data Packages][dp].

[dp]: http://frictionlessdata.io/data-packages/

## Quick Links

- [Discussion forum][forum] - discussion takes place here by default
  - This is the place to ask questions, get help etc - just open a new topic
- [Introduction to Core Datasets Project][core-intro]
- [Join the Core Data Curators Team][core-intro-team]
- [Packaging Queue (GitHub Issues Tracker)](https://github.com/datasets/registry/issues)
- [Publish Data Packages Howto on Frictionless Data Site][publish-howto]

[core-intro]: /publishers/core-datasets/
[core-intro-team]: /publishers/core-datasets/#curators
[forum]: http://discuss.okfn.org/category/open-knowledge-labs/core-datasets
[publish-howto]: http://frictionlessdata.io/guides/publish/

## Quick Start

1. Please take 2m to introduce yourself in the [discussion forum](http://discuss.okfn.org/t/core-data-curators-introductions/145) so that other team members can get to know you
2. Read the contributing guide below so you:
    * understand the details of the curator workflow
    * can work out where you'd like to contribute
3.  **Stop: have you read the contributing guide? The next items only make sense if you have!**
4.  Now you can dive in with one or both of:
    * Researching: start reviewing the [current queue](https://github.com/datasets/registry/issues) - add new items, comment on existing ones etc
    * Packaging:  check out the [“Ready to Package”](https://github.com/datasets/registry/labels/Status%3A%20Ready%20to%20Package) section of the queue and assign yourself (drop a comment in the issue claiming it)

## Contributor Guide

<img src="https://docs.google.com/drawings/d/1Emi_N9GTv95Z_STW7XO2PVo0ykZgbgKvT30b1tpuXqI/pub?w=1136&h=318" alt="" style="min-width: 100%; margin-left: 0px; margin-right: 0px;" />

*Fig 1: Overview of the Curation Workflow*

There are 2 areas of activity:

1. Preparing datasets as Core Data Packages - finding them, cleaning them, data-packaging them
2. Maintaining Core Data Packages - keeping them up to date with the source dataset, handling changes, responding to user queries

Each of these has sub-steps which we detail below and you can contribute in any and all of these.

Key principles of our approach are that:

* We package data rather than create it – our focus is to take source data and ensure it is of high quality and in a standard form
* We preserve a clean separation between the data source, the data package and this registry – for example, data packages are stored in git repos hosted separately (preferably github)


### Preparing Datasets as Core Data Packages

There are different areas where people can contribute:

1. Research
2. Packaging up data
3. Quality assurance
4. Final Publication into the official core datasets list

Often you will contribute in all 4 by taking a dataset all the way from a suggestion to a fully packaged data package published online.

#### 1. Research

This involves researching and selecting datasets as core datasets and adding them to the queue for packaging - no coding or data wrangling skill is needed for this

* To propose a dataset for addition you [open an issue in the Registry](https://github.com/datasets/registry/issues/new) with the details of the proposed dataset.
* Identify relevant source or sources for the dataset
  * To propose a dataset you do not have to know where to get the data from (e.g. you could suggest “US GDP” as a core dataset without yet knowing where to get the data from)
* Discuss with Queue Manager(s) (they will spot your submission and start commenting in the GitHub issue)
* If good =&gt; Shortlist for Packaging - add [Label “Status: Ready to Package”](https://github.com/datasets/registry/labels/Status%3A%20Ready%20to%20Package)

#### 2. Packaging up data

Once we have a suggested dataset marked as "ready to package" we can move to packaging it up.

How to package up data is covered in the [general publishing guide][pub].

[pub]: /doc/publish

#### 3. Quality Assurance

This involves validating and checking packaged datasets to ensure they are of high quality and ready to publish.

1. [Validate](http://data.okfn.org/tools/validate) the Data Package and [review](http://data.okfn.org/tools/view) the data in the Data Package.
2. In the review phase, you should be looking at a table with the data you have input before. That will ensure your data package is working without any issues and that it follows the same quality standards that any other package.
3. Post a validation link and a view link in the comments for the issue in the Registry related to your Data Package.

#### 4. Publishing

We have a few extra specific requirements:

* All Data Packages must (ultimately) be stored in a public GitHub repo
  * First publish to your own repository
  * Then arrange a move the repository to [github.com/datasets/ organization](https://github.com/datasets/) - as the owner of a repository you can initiate a transfer request to github.com/datasets/ which can then be approved
* Add to the [catalog list](https://github.com/datasets/registry/blob/master/catalog-list.txt) **and** the [core list](https://github.com/datasets/registry/blob/master/core-list.txt) **and** the associated csv files: [catalog-list.csv](https://github.com/datasets/registry/blob/master/data/catalog-list.csv) and [core-list.csv](https://github.com/datasets/registry/blob/master/data/core-list.csv).
* Reload [http://data.okfn.org/data/](http://data.okfn.org/data/) by visiting <http://data.okfn.org/admin/reload/>
* If you have access, tweet from the @OKFNLabs account a link to the http://data.okfn.org/data/ page for the dataset.


### Maintaining Data Packages

Many data packages package data that changes over time - for example, many time series get updated monthly or daily.

We need people to become the "maintainer" for a given dataset and keep it up to date by regularly adding in the new data.

**[List of datasets needing a maintainer][maintainer]**

[maintainer]: https://github.com/datasets/registry/labels/Status%3A%20Maintainer%20Wanted


### Core Data Assessment Criteria

For a dataset to be designated as "core" it should meet the following criteria:

* Quality - the dataset must be well structured
* Relevance and importance - the focus at present is on indicators and reference data
* Ongoing support - it should have a maintainer
* Openness - data should be <a href="http://opendefinition.org/">open data</a> and openly licensed in accordance with the <a href="http://opendefinition.org/">Open Definition</a>

----

## Guide for Managing Curators

### Intro Email for New Joiners

```
Hi,

We are delighted to welcome you to the Core Data Curators team of crack data curators.

To kick-off your core data curatorship we invite you to:

1. Introduce yourself in the forum here:

    http://discuss.okfn.org/t/core-data-curators-introductions/145/24

2. Take a look at the Core Data Curators guide:

    http://docs.datahub.io/publishers/core-data-curators

Regards,

XXX
```

