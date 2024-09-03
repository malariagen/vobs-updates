# vobs-updates

Minisite with technical and scientific updates from the Malaria Vector
Genome Observatory. Deployed to:

https://malariagen.github.io/vobs-updates/

## Author notes

### Python API (malariagen_data) releases

There is a script and templates to make it easer to create a new
update for a malariagen_data release. Usage:

```
$ _src/malariagen-data-release.sh LEVEL YYYY-MM-DD X.Y.Z
```

...where `LEVEL` is either "major", "minor" or "micro"; `YYYY-MM-DD`
is the release date; and `X.Y.Z` is the version number.

### Authoring posts via Jupyter notebooks

Most posts should be short and simple and so can be authored as
markdown files.

If however you want to write a post with some code examples and would
find it easier to write the post as a Jupyter notebook, please follow
the approach described
[here](https://alimanfoo.github.io/2024/08/20/jupyter-blogging.html).
