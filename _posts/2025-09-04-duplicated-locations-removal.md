---
layout: post
title:  "Ag3 - removal of duplicated locations"
tags: data
---

Several locations present in the metadata for Ag3 have multiple sets of coordinates. For instance, Aboisso in Côte d'Ivoire is present with the coordinates (5.442, -3.22) and (5.467, -3.20).

The duplicated locations fell into two different categories:

- Locations that have the same name but represent different places. In that case, both locations are renamed to mark that they are different. The new names are the old name followed `_A` or `_B`. For instance, 'Aboisso' became 'Aboisso_A' and 'Aboisso_B'. The following locations fell into this category:
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
	- Raya-Azebo
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
	- 'RAYA-AZEBO' becomes 'Raya-Azebo'
	- 'Sotuma samba' becomes 'Sotuma Samba'
	- 'TEMEBEN' becomes 'Temeben'
	- 'WONJI' becomes 'Wonji' 

Finally, two locations 'Korabo' and 'Koraboh' represented the same place. They will now be merged into 'Keraboh'.

None of these changes affect cohort definitions but some code querying locations may have to be adjusted to reflect them.
