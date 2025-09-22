---
layout: post
title:  "Ag3 - removal of duplicated locations"
tags: data
---

Several locations present in the metadata for Ag3 have multiple sets of coordinates. For instance, Aboisso in Côte d'Ivoire is present with the coordinates (5.442, -3.22) and (5.467, -3.20).

*What changed?*

The duplicated locations fell into two different categories:

- Locations that have the same name but represent different places. In that case, both locations are renamed to mark that they are different. The new names are the old name followed `-A` or `-B`. For instance, 'Aboisso' became 'Aboisso-A' and 'Aboisso-B'. The following locations fell into this category:
	- Aboisso
	- Banda
	- Bioko
	- Bonia
	- Brikama
	- Campo
	- Luanda
	- Monomtenga
	- Moshi
	- Muleba
	- Obuasi
	- Opeibea
	- Sare Samba Sowe
	- Sotuma Samba
	- Takoradi
	- Teshie
	- Yaounde
- Locations that are actually the same place. This is the case when the coordinates are different but within a few hundred meters. In that case, both locations are given the same set of coordinates. These locations fell into this category:
	- Bana Village
	- Chamoi
	- Essau
	- Farafenni
	- Kela
	- Pala
	- Raya-Azebo
	- Souroukoudinga
	- Tankular
	- Tibati
	- Yendi

Additionnaly, a few locations were renamed to follow the usual naming convention. These locations are:
	- 'AFAR WERER' becomes 'Afar Werer'
	- 'AREBA MINCH' becomes 'Areba Minch'
	- 'ASENDABO' becomes 'Asendabo'
	- 'ASOSSA' becomes 'Asossa'
	- 'BATU' becomes 'Batu'
	- 'DILLA' becomes 'Dilla'
	- 'GAMBELLA' becomes 'Gambella'
	- 'HARBU' becomes 'Harbu'
	- 'kemoto' becomes 'Kemoto'
	- 'METEHARA' becomes 'Metehara'
	- 'MILE 14 BUEA' becomes 'Mile 14 Buea'
	- 'MISSELLELE' becomes 'Missellele'
	- 'MOLIVE LIMBE' becomes 'Molive Limbe'
	- 'MUTENGENE ,QUARTER 9' becomes 'Mutengene, Quarter 9'
	- 'OMBE MUTENGENE' becomes 'Ombe Mutengene'
	- 'RAYA-AZEBO' becomes 'Raya-Azebo'
	- 'Sotuma samba' becomes 'Sotuma Samba'
	- 'TEMEBEN' becomes 'Temeben'
	- 'WATER TANK TIKO' becomes 'Water Tank Tiko'
	- 'WONJI' becomes 'Wonji' 

Finally, two locations 'Korabo' and 'Koraboh' represented the same place. They will now be merged into 'Koraboh'.

*Why these changes?*

The presence of duplicated locations can cause misinterpretations and make analyses more difficult. For instance, the data contains data coming from 'Banda' in Uganda and 'Banda' in Cameroon. One could easily be mislead into creating a cohort of all samples from 'Banda' that would contain all this data. On the other hand, if one were to plot all samples from Burkina Faso on a map, because 'Pala' existed with two different sets of coordinates, two different locations would be plotted. 

*What do I need to do?*

None of these changes affect cohort definitions so if your analyses use the default cohorts definitions, say 'cohort_admin_1_year', you don't need to do anything as your code should be unaffected. 

If ,in your analyses, you used one of the locations listed above that changed name, for instance in a query, you will have to update your query. For instance, `ag3.sample_metadata(sample_query="location == 'Aboisso'")` would become either `ag3.sample_metadata(sample_query="location == 'Aboisso-A'")` if you are only interested in the data coming from the first location in Aboisso, `ag3.sample_metadata(sample_query="location == 'Aboisso-B'")` if you are only interested in the data coming from the second location in Aboisso, or `ag3.sample_metadata(sample_query="location in ['Aboisso-A', 'Aboisso-B'")` if you are interested in the data coming from both of the locations in Aboisso.

Additionally, some of your plots might look a little different and have different values in the legend. For instance, `ag3.plot_pca_coords(pca_df, color="location")` will have 'Yaounde-A' and 'Yaounde-B' instead of 'Yaounde' in the legend if `pca_df` contained data from Yaounde.
