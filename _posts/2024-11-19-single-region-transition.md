---
layout: post
title:  "Update on Data Storage"
tags: data
---

We are making schanges to how data is stored in the Vector Observatory (VObs).
Currently, data is stored in multi-region Google Cloud Storage (GCS) buckets. After evaluating accessibility needs, we’ve decided to move the data to single-region buckets located in the United States (US). This transition reduces our running costs without affecting data availability or performance.

Due to this, we are starting to roll-out some changes:

1. *If you access data via the malariagen_data API:*
  - Please ensure that you are only using API versions v13.0.0 or newer. If you install `malariagen_data` without specifying a version (e.g., using `%pip install malariagen_data`), the latest version will automatically be installed.

  - To check the version you’re currently using in a notebook, run:
  
{% highlight python %}
import malariagen_data

malariagen_data.__version__
)
{% endhighlight %}

  - *If you use Google Colab:*
      - Confirm you’re running the latest version of the API (v13.0.0 or newer).
      - If you encounter an error due to being allocated a Virtual Machine (VM) outside of the US, go to `"Runtime" > "Disconnect and delete runtime"` to allocate a new VM within the US region.

2. *If you access data via data directly from GCS buckets:*
- The following bucket name changes have been implemented:
    - Ag data previously stored in `gs://vo_agam_release` is now in `gs://vo_agam_release_master_us_central1`
    - Af data previously stored in `gs://vo_afun_release` is now in  `gs://vo_afun_release_master_us_central1`

- All data has been mirrored to the new buckets. There is no need to download any data.
- The multi-region buckets (`vo_agam_release`, `vo_agam_release`) will be deprecated by November 30th, 2024. You might need to update any scripts accessing these buckets to use the new names.
- All new data will only be available in the single-region buckets moving forward.

If you have any questions or concerns, please contact us at `support@malariagen.net`