---
layout: post
title:  "Ag3 - removal of additional duplicated locations"
tags: data
---

Several locations present in the metadata for Ag3 have multiple sets of coordinates. For instance, Madina in Ghana is present with the coordinates (5.668, -0.219), (5.678, -0.203) and (5.683, -0.166).

*What changed?*

The duplicated locations fell into two different categories:

- Locations that have the same name but represent different places. In that case, all locations are renamed to mark that they are different. The new names are the old name followed `-A`, `-B` or `-C`. For instance, 'Madina' became 'Madina-A', 'Madina-B', and 'Madina-C'. Madina is the only location that fell into this category.
- Locations that are actually the same place. This is the case when the coordinates are different but within a few hundred meters. In that case, both locations are given the same set of coordinates. These locations fell into this category:
	- Bana
	- Pala
    
More details about why duplicated locations can be a problem and what needs to be done can be found in [Ag3 - removal of duplicated locations](https://malariagen.github.io/vobs-updates/2025/09/04/duplicated-locations-removal.html).