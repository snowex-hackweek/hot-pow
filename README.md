# Hot-Pow
### Investigating SnowEx Temperature Observations at Grand Mesa, Colorado, Winter 2019-2020
This repository includes the hot-pow group's project work as part of SnowEx Hackweek 2021

## Files

* `.gitignore`
<br> Globally ignored files by `git` for the project.
* `environment.yml`
<br> `conda` environment description needed to run this project.
* `README.md`
<br> Project description and details.

## Folders

### `contributors`
Each team member has it's own folder under contributors, where they can work on their contribution. Having a dedicated folder for each person helps to prevent conflicts when merging with the main branch.

### `dotfiles`
Additional configuration files, such as a .bash_profile.

### `notebooks`
Notebooks or other deliverables showcasing project results.

### `scripts`
Helper utilities that are shared with the team

## Project Summary

There are a wide range of existing temperature data from the SnowEx campaigns. Ranging from hand collected kinetic temperatures at snow pits, to aircraft flights using thermal imagers, to long term automated collection stations. In addition, coarse resolution satellite observations and model reanalysis products provie additional temperature data sets across the study region (Grand Mesa). In our project, we hope to gather these datasets to one place and develop interactive tools and plots showcasing the available thermal observations. Additionally, we explore some potential applications of these data sets to answer a wide range of relevant science questions. For example, how does ERA5 reanalysis compare to met sites and snow pit data on Grand Mesa?

### Project Title

Investigating SnowEx Temperature Observations at Grand Mesa, Colorado, Winter 2019-2020

### Collaborators on this project

| Name  | Time Zone | Personal Goals / Can help with | Role
| ------------- | ------------- | ------------- | ------------- |
| Dillon Ragar  | MST UTC-6  | 2 yrs python experience (mostly Pandas)  / SNOBAL model / want to learn geospatial libraries  |  |
| Jewell Lund  | MST UTC -6  | Bring in Sentinel-1 / Offer pit data for March - May / excited to get experience with data integration  |  |
| Zachary Miller  | MST UTC -6  | Learning Py / mapping profile data over space/time  |  |
| Jeremy Johnston  | EST UTC -4  | Project Lead, Python, UAV Thermal, Snowpit Data and Met Sites  | Project Lead |
| Friedrich Knuth  | PST UTC -7  | Pull in ERA5 / data vis / Python / Git / Jupyter   | Data Science Helper |
| Giulia Mazzotti  | CEST UTC +2  | Learning Python, thermal IR data mining / can help processing Lidar data into a Canopy height/cover map |  |
| Steven Pestana  | PST UTC -7  | Data Science Helper / learn to use the various temperature validation datasets from snowex2020  | Data Science Helper |
| Wenge Ni-Meister  | EST UTC -4  |  |  |
| Aji John  |  |  |  |

### The problem

There are a wide range of existing temperature data from the SnowEx campaigns hosted in various locations with various temporal and spatial resolutions as well as different temporal availability. This makes these datasets challenging to integrate and compare among one another in order to answer relevant science questions.

### Application Example

Comparing pit data with met station temperatures from the Mesa by vegetation and snow depth class:
![image](https://user-images.githubusercontent.com/24480835/125893733-505af65a-c1a6-4cd3-a5ea-98dc8f443415.png)


### Sample data

Snow pit data set accessed from the snowexsql database:
![image](https://user-images.githubusercontent.com/24480835/125893970-d569e9c9-f83a-4998-87c0-c18de639981e.png)

All pit location measured surface temperatures from the IOP (light blues indicate colder temperatures):
![image](https://user-images.githubusercontent.com/24480835/125894721-86145433-0d72-44b6-b144-c1854651e815.png)

Snow pits overlayed with Airborne IR:
![image](https://user-images.githubusercontent.com/24480835/125894447-dd78668d-9f6a-4bfe-942d-8886b4a533d1.png)


### Specific Questions

Our questions exist in two categories:

1) Data aggregation and visualization

    - What are the existing data sources? How can we access and visualize these?
    - How to integrate and compare thermal observations acquired across a wide range of methods?
    - How can we pull in additional datasets to extend the snow pit timeseries? Add additional met stations?  

2) Science Questions

    - How do in situ measurements compare with airborne and spaceborne measurements of snow surface temperatures?
        - How much variability exists within vegetation classes? 
    - How do snow surface temperatures compare with temperatures at depth?
        - Does this vary with canopy cover? Snow depth class? Liquid water content?
    - How do vegetation shadows affect the temperature of the snowpack?
        - Can we use Lidar data to derive a shadow fraction within a given area?
        - Do projected shadows using Lidar data match what is observed in thermal IR and visible imagery?
    - How does canopy cover over a snow pit relate to how well the airplane’s thermal IR images could see snow temperature? 
        - Can we separate out these results by cover class (i.e. no vegetation, sparse, and dense covers - as defined in the original SnowEx sampling plan)
    - Are climate variables provided by the coarse ERA5 dataset  (9 km grid cells) useful in predicting snowpack evolution?
        - How does 1 big ERA5 pixel compare to “average” measurements taken all across Grand Mesa?


### Existing methods

Few direct comparisons between snow pit temperatures, ground observing sites, airborne Thermal IR observations, and large scale reanalysis temperatures exist. However, the use of GIS tools and georeferenced data has been critical to acheiving multi-scale data evaluations in the past. The power of these tools for multi-scale data analyses have been reiterated (in Python) in many of the great tutorials from the SnowEx Hackweek.

#### Sampling a Raster at points using rasterio
![image](https://user-images.githubusercontent.com/24480835/125897147-271f29f2-d8eb-4ad7-914b-d55e221cf808.png)

### Proposed methods/tools

- Data overlays using geopandas and rasterio
- Spatial layer joins and data cropping
- Timeseries analyses

#### and more!!

### Background reading

Applications and descriptions of these airborne IR data for snow remote sensing:
- https://doi.org/10.1109/IGARSS.2017.8127228
- https://westernsnowconference.org/files/PDFs/2016Keenan.pdf
- https://doi.org/10.1016/j.rse.2018.03.001
- https://doi.org/10.1029/2019WR025699

Surface Temperature Multiscale Monitoring
https://www.mdpi.com/2072-4292/11/9/1007

Multi-scale Albedo Comparisons
https://www.mdpi.com/2072-4292/9/2/110
