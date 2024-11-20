---
layout: post
title:  "Migration to single-region GCS buckets"
tags: data
---

We are making some changes to how data is stored in the Vector Observatory (VObs).
Previously, data has been stored in multi-region Google Cloud Storage (GCS) buckets. We have now decided to migrate the data to single-region buckets located in the us-central1 region. This transition reduces our running costs without affecting data availability or performance.

To access data in the new single-region buckets, please follow the instructions below.

## If you access data via the malariagen_data Python API

Please ensure that you are only using API versions v13.0.0 or newer. If you install `malariagen_data` without specifying a version (e.g., using `pip install malariagen_data`), the latest version will automatically be installed. If you have previously installed `malariagen_data`, please run `pip install --upgrade malariagen_data` to upgrade to the latest software version.

To check the version you’re currently using in a notebook, run:
  
{% highlight python %}
import malariagen_data

malariagen_data.__version__

{% endhighlight %}


## If you access data via data directly from GCS buckets

The following bucket name changes have been implemented:

- Ag data previously stored in `gs://vo_agam_release` is now in `gs://vo_agam_release_master_us_central1`
- Af data previously stored in `gs://vo_afun_release` is now in  `gs://vo_afun_release_master_us_central1`

All data has been mirrored to the new buckets. Please update any scripts or code to use the new bucket names.


## Timeline for deprecation of multi-region buckets

**N.B., the multi-region buckets `vo_agam_release` and `vo_afun_release` will be deprecated on November 30th, 2024. Please follow the instructions above to migrate to using single-region buckets before this date.**

If you have any questions or concerns, please contact us at `support@malariagen.net`
