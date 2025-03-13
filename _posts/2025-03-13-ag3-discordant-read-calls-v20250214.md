---
layout: post
title:  "Ag3 discordant read calls version 20250214"
tags: data
---

A new discordant read calls version `20250214` has been released for the
Ag3 data resource. This is now the default discordant read calls version
when using the `malariagen_data` [Ag3
API](https://malariagen.github.io/malariagen-data-python/latest/Ag3.html). This
version is available for datasets up to and including Ag3.14.

To pin this cohorts analysis when accessing data:

{% highlight python %}
import malariagen_data

ag3 = malariagen_data.Ag3(
    discordant_read_calls_analysis="20250214",
)
{% endhighlight %}

This new version introduces some key changes: 

- An [error](https://github.com/malariagen/malariagen-data-python/issues/660) in the underlying data describing absence or presence of CNV alleles has been corrected for samples that were not called for CNVs. 
    - All samples in the Ag3 resource that are classified as `intermediate_gambcolu_arabiensis` on the `aim_species` field have been updated from presence `1` to absence `0`, as these intermediate samples are currently excluded from CNV calling.
    
If you need to access the previous version of the discordant read calls, you can pin it by using `20230911` as the version in the `discordant_read_calls_analysis` parameter when calling the malariagen_data API, as described on the code snippet above. 
