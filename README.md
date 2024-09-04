# vobs-updates

Minisite with technical and scientific updates from the Malaria Vector
Genome Observatory. Deployed to:

https://malariagen.github.io/vobs-updates/


## Author notes


### Python API (malariagen_data) releases

There is a script and templates to make it easier to create a new
update for a malariagen_data release. Usage:

```
$ _src/malariagen-data-release.sh LEVEL DATE VERSION
```

* `LEVEL` is either "major", "minor" or "micro"
* `DATE` is the release date in YYYY-MM-DD format
* `VERSION` is the version number in X.Y.Z format


### Cohorts analysis releases

There is a script and template to make it easier to create a new
update for a cohorts analysis release. Usage:

```
$ _src/cohorts.sh DATE RESOURCE VERSION DATASET
```

* `DATE` is the date the analysis was released in YYYY-MM-DD format
* `RESOURCE` is either "Ag3" or "Af1"
* `VERSION` is the analysis version
* `DATASET` is the latest dataset that the analysis includes, e.g., "Ag3.10"


### Research updates (papers and preprints)

There is a script and templates to make it easier to create a new
update for a paper or preprint. Usage:

```
$ _src/research.sh DATE "AUTHORS" SLUG "URL" "JOURNAL" "TITLE" TEMPLATE
```

* `DATE` is the publication date in YYYY-MM-DD format
* `AUTHORS` is the authors, e.g., "Smith et al."
* `SLUG` is a string for the post's URL, e.g., "smith-resistance"
* `URL` is the DOI URL of the paper or preprint
* `JOURNAL` is the name of the journal or preprint server
* `TITLE` is the paper title
* `TEMPLATE` is either "preprint" or "paper"


### Authoring posts via Jupyter notebooks

Most posts should be short and simple and so can be authored as
markdown files.

If however you want to write a post with some code examples and/or
code outputs and would find it easier to write the post as a Jupyter
notebook, please follow the approach described
[here](https://alimanfoo.github.io/2024/08/20/jupyter-blogging.html)
(except notebooks are under a directory called "_src" rather than
"src").
