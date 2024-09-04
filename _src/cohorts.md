---
layout: post
title:  "RESOURCE cohorts analysis version VERSION"
tags: data
---

A new cohorts analysis version `VERSION` has been released for the
RESOURCE data resource. This is now the default cohorts analysis version
when using the `malariagen_data` [RESOURCE
API](https://malariagen.github.io/malariagen-data-python/latest/RESOURCE.html). This
cohorts analysis is available for datasets up to and including DATASET.

Please note that the new cohorts analysis may change the values of
sample metadata columns including `taxon`, `admin1_iso`,
`admin1_name`, `admin2_name`, and derived columns beginning `cohorts_`
relative to previous cohorts analysis versions.

To pin this cohorts analysis when accessing data:

{% highlight python %}
import malariagen_data

RESVAR = malariagen_data.RESOURCE(
    cohorts_analysis="VERSION",
)
{% endhighlight %}
