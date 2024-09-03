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