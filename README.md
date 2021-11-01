 CLaMIC
======
 Computer Laboratory Machine Information Collector
==================================================

CLaMIC is a CUI tool. As the name suggest CLaMIC is a tool by which machine information can be gathered from a large number of systems. This tool will also gather inputs from the user about the person who is using it.

 How it works
-------------

CLaMIC consists of two parts:
 - Agent: A part that has to run on the system. 
 - Server-Side: Info collector.

The CLaMIC can run either in automatic mode or semi-automatic mode. Since the outputs of dmidecode and wmic doesn't yield identical results it is necessary to parse and store the data in database.

 What does it record?
---------------------

CLaMIC records information of individual components. Eg.
1) Chassis Info / System Info
2) Motherboard
3) Processor
4) RAM
5) HDD / Storage
6) Optical Drive
7) Graphics Card (if any)
8) WiFi Card (if any)
9) Misc. H/w

All this is stored against LAB_ID/YEAR/COMP_ID/SERIAL