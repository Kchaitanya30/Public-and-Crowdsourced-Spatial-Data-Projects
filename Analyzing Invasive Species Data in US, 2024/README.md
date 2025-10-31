# Analyzing Invasive Species Data in US, 2024

This directory contains the analysis of invasive species data in the United States for the year 2024.
For this assignment, I created a free account on iNaturalist. Four invasive species were selected from the USDA’s list of invasive species: Zebra Mussel, Callery Pear, Kudzu Bug, and Wild Boar. 
The data was filtered within the United States boundary using a fixed geographic extent. I ensured that only categories with more than 50 observations were included and selected data for the year 2024.
The four selected species represent different biological types like shell, plant, insect, and mammal.
Coordinates for the US bounding box:
•	SW Lat: 24.396308
•	SW Lon: -125.000000
•	NE Lat: 49.384358
•	NE Lon: -66.934570

With all the conditions applied, I downloaded data for the four selected species and imported them into ArcGIS Pro.
The data was in CSV format containing latitude and longitude fields, which represent the spatial components. The next step was to convert the CSV files into feature layers.
To do this, I right-clicked on each CSV file and selected "XY Table to Point."
•	Input: observations-628742_Zebra_Mussel.csv
•	Output: Zebra_mussel_2024
•	Coordinate system: GCS_WGS_1984
Output description: The resulting layer is in a simple features format, using the original coordinate system from the data. If further spatial analysis such as distance measurements is required, the data should be projected into an appropriate projected coordinate system.
The same process was repeated for the other three species datasets.
Layers
1)	Zebra_mussel_2024 
Description: Zebra mussels (Dreissena polymorpha) are small, freshwater shellfish native to the Caspian and Black Seas. Identified by their “D”-shaped shells with black zigzag stripes on a cream background, they grow up to two inches long. Introduced to the U.S. via ship ballast water, they spread rapidly and reproduce prolifically, making them an invasive species in many waterways.
Source: National Agricultural Library, U.S. Department of Agriculture
Number of observations: 895

2) Callery_Pear_2024
Description: The Callery pear is an invasive tree from Asia known for its white spring flowers and thorny thickets. It spreads quickly, displacing native plants, and produces small fruits spread by birds. Wild forms often have sharp thorns and weak, easily splitting branches.
Source: National Agricultural Library, U.S. Department of Agriculture
Number of observations: 3227
3)	Kudzu_bug_2024
Description: The kudzu bug (Megacopta cribraria) is a small, olive-green, shield-shaped invasive insect from Asia. First found in Georgia in 2009, it has spread across the southeastern U.S., damaging crops and becoming a major nuisance for farmers and homeowners.
Source: National Agricultural Library, U.S. Department of Agriculture
Number of observations: 1557
4)	Wild_boar_2024
Description: Wild boars are invasive omnivores known for their destructive rooting behavior and sharp tusks. They damage soil and vegetation, threaten native wildlife, and can transmit diseases harmful to humans and animals.
Source: National Agricultural Library, U.S. Department of Agriculture
Number of observations: 1718
5)	Main.cb_2024_us_nation_20m
Description: This polygon layer outlines the geographic boundaries of the United States, including all 50 states and the District of Columbia, for national-scale mapping and analysis. Derived from the 2024 U.S. Census Bureau cartographic boundary files at a 1:20 million scale.
Source: United states census bureau
The idea was to focus specifically on the United States. However, when applying the bounding box in iNaturalist, a few observations from Canada, Mexico, and the Bahamas were also included. These records should be removed to ensure that only observations within the United States are retained.

Tool: Clip
Input: Zebra_mussel_2024 
Clip features: Main.cb_2024_us_nation_20m
Output: Zebra_mussel_2024_c1
Output description: The output displays the points that fall within the USA polygon, providing the exact observation locations.
Except for the Kudzu Bug dataset, some points from the other species fall outside the United States boundary. Therefore, a clip operation should be performed for the Wild Boar and Callery Pear datasets to retain only the points within the USA boundary.
Zebra mussel (Dreissena polymorpha):
Zebra mussels were first discovered in 1988 in Lake St. Clair, between the U.S. and Canada. They were accidentally introduced through ballast water discharged by transoceanic ships arriving from Europe. The mussel larvae (veligers) survived the voyage and colonized inland waters via connected waterways and human transport (boats, livewells, etc.).
Habitats: They live in freshwater lakes, rivers, and reservoirs, attaching to hard surfaces such as rocks, boats, docks, and native mussels.
Impact on native species: They outcompete native mussels, block water intake pipes, and disrupt ecosystems by removing plankton and altering food webs.
Most observations occur in the northeastern and midwestern U.S., especially around the Great Lakes region and connected rivers.
Cartographic principles followed for this map: The texts like title, legend and sources are not in bold or dark black color and the observations are set to 40% transparency, it shows the density, it shows dark in the areas where it overlaps, means there is huge observations in that place, from the map it is visible in the michigan near the lakes and in the new york and in the texas.


Callery pear (Pyrus calleryana):
Introduced in the early 1900s from China for its disease resistance and use as a rootstock for European pears; later planted widely as an ornamental tree in the 1960s.
Habitat: Grows in urban and suburban environments, along roadsides, fields, and disturbed areas; originally planted in landscapes, streets, and yards.
Impact on native species: It spreads rapidly, outcompetes native plants, and alters natural habitats by forming dense stands that crowd out native vegetation.











Observation from map: Most widespread across the Mid-Atlantic, eastern U.S, southern regions such as Pennsylvania, Ohio, Tennessee, and Georgia and some parts in California. The species’ presence decreases toward the Great Plains and is rare in the western states, with only scattered records in places like Texas and California. This pattern reflects its history as an ornamental tree that escaped cultivation, spreading mainly through urban and suburban landscapes and along roadsides and disturbed areas, driven largely by human activity rather than natural dispersal.
As they overshadow the native species, people should be encouraged to remove them if they are in the early stages.





Wild boar (Sus scrofa): 
They were first introduced in the 1500s by Spanish explorer Hernando DeSoto in the southeastern U.S. Later, Eurasian wild boar were brought in during the early 1900s for hunting, and interbreeding created hybrid populations.
Habitats: forests, grasslands, wetlands, and agricultural lands, favoring areas with dense cover, water sources, and food availability.
Impacts: They damage crops and ecosystems, compete with native wildlife, spread disease, and cause soil erosion through rooting and wallowing behavior.



Observations: The map shows that wild boar concentrated mainly in the southern United States, with the highest densities in Texas, Louisiana, Mississippi, Alabama, Georgia, and Florida. There are also notable populations in Arkansas, Oklahoma, and parts of Tennessee and South Carolina.
Smaller clusters appear in California and along the West Coast, there are very few observations north of the Midwest, indicating that the species is mostly limited by colder climates.
35% Transparency is used for the symbols, to better reveal areas of overlapping points and population clustering.
It is mentioned that the growth is largely due to illegal human translocation and escapes from hunting preserves.


Kudzu bug (Megacopta cribraria):
It was first detected in 2009 in Georgia, likely introduced accidentally from Japan or China, possibly by a single female carried on an international flight to Atlanta.
Habitat: They live in warm, humid regions, feeding mainly on legume plants such as kudzu and soybeans, and are found in both rural agricultural areas and urban environments where they gather on light-colored surfaces.
Impact: They damage soybean crops, causing yield losses up to 60%, and nuisance infest homes. However, they also reduce kudzu growth by about 30%, providing some ecological benefit.
 


Observations: The map shows that Kudzu bugs are concentrated mainly in the southeastern United States, with the highest densities in Georgia, South Carolina, Alabama, and North Carolina. Moderate clusters extend into Tennessee, Mississippi, and Virginia, while smaller, scattered observations appear in Arkansas, Louisiana, and eastern Texas.
Indicating the species preference for warm, humid climates and abundant legume hosts like kudzu and soybeans. The clustered pattern reflects both agricultural regions and transport corridors, showing that human movement and plant distribution have strongly influenced the spread of this invasive insect.


How are observations reported to iNaturalist, and what are the pros and cons?
•	It provides real-time information along with the location of the observation.
•	It offers species information that is voluntarily contributed by users.
•	If the data appears incorrect, other observers can suggest edits or corrections.
•	It is helpful for tracking species and supports early detection of invasions.
•	The information may not always reflect ground reality. For example, wild boars are known to inhabit 45 states according to Wild Pig Info, but they were reported in only a few states in 2024. Some data may be missing or underreported.
•	Data can sometimes be misleading due to misidentification. For instance, the Kudzu Bug is very small, and not everyone can identify it accurately. Farmers need education and awareness to improve reporting accuracy.


Recommendations for agencies to reduce environmental harm:
•	Can be used to check where the spread and take appropriate action
•	There is a need for more public participation, to know what invasive species are and provide help to sources where they can find whether the species is invasive and provide information how to report.
•	Apologies, for the mistake I know I have mentioned that this research is specifically for the US but I missed Alaska and Hawaii. I realized it after the project, I will make sure to check for that area and add it to the map.








References: 
Carnegie Museum of Natural History. (2019, October 11). Callery pear. Carnegie Museum of Natural History. https://carnegiemnh.org/october-11-1979-callery-pear/
Census Bureau. (2024). Cartographic boundary shapefiles - Nation (2024) [Shapefile]. U.S. Census Bureau. https://www.census.gov/geographies/mapping-files/time-series/geo/cartographic-boundary.html
Louisiana Native Plant Society. (n.d.). Callery pear. https://www.lnps.org/callery-pear/
Mississippi State University Extension. (n.d.). History of wild pigs in the United States. Wild Pig Info. https://www.wildpiginfo.msstate.edu/about/history.php
National Invasive Species Information Center. (n.d.). Callery pear (Pyrus calleryana). U.S. Department of Agriculture. https://www.invasivespeciesinfo.gov/terrestrial/plants/callery-pear
National Invasive Species Information Center. (n.d.). Kudzu bug (Megacopta cribraria). U.S. Department of Agriculture. https://www.invasivespeciesinfo.gov/terrestrial/invertebrates/kudzu-bug
National Invasive Species Information Center. (n.d.). Wild boar (Sus scrofa). U.S. Department of Agriculture. https://www.invasivespeciesinfo.gov/terrestrial/vertebrates/wild-boar
National Invasive Species Information Center. (n.d.). Zebra mussel (Dreissena polymorpha). U.S. Department of Agriculture. https://www.invasivespeciesinfo.gov/aquatic/invertebrates/zebra-mussel
National Park Service. (n.d.). Zebra mussels. U.S. Department of the Interior. https://www.nps.gov/articles/zebra-mussels.htm
South Carolina Educational Television. (2018). Everything you need to know about kudzu and the kudzu bug. https://www.scetv.org/stories/2018/everything-you-need-know-about-kudzu-and-kudzu-bug
Wikipedia contributors. (n.d.). Megacopta cribraria. In Wikipedia, The Free Encyclopedia. Retrieved October 2025, from https://en.wikipedia.org/wiki/Megacopta_cribraria
