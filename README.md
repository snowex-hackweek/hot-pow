# Hot-Pow Thermal Project
This repository includes the hot-pow group's project work as part of SnowEx Hackweek 2021

## Files

* `.gitignore`
<br> Globally ignored files by `git` for the project.
* `environment.yml`
<br> `conda` environment description needed to run this project.
* `README.md`
<br> Description of the project (see suggested headings below)

## Folders

### `contributors`
Each team member has it's own folder under contributors, where they can work on their contribution. Having a dedicated folder for each person helps to prevent conflicts when merging with the main branch.

### `dotfiles`
Additional configuration files, such as a .bash_profile.

### `notebooks`
Notebooks that are considered delivered results for the project should go in here.

### `scripts`
Helper utilities that are shared with the team

## Project Summary

There are a wide range of existing temperature data from the SnowEx campaigns. Ranging from hand collected kinetic temperatures at snow pits, to aircraft flights using thermal imagers, to long term automated collection stations. In addition, generally coarse resolution satellite observations in the thermal infrared band also exist across the study region (Grand Mesa). In our project, we hope to gather these datasets to one place and develop interactive tools and plots showcasing the available thermal observations. Additionally, we explore some potential applications of these data sets to answer a wide range of relevant science questions. For example, how does vegetation impact thermal observations acquired at different scales?

### Project Title

Thermal Explorations

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

### The problem

There are a wide range of existing temperature data from the SnowEx campaigns hosted in various locations with various temporal and spatial resolutions as well as different temporal availability. This makes these datasets challenging to integrate and compare among one another in order to answer relevant science questions. (This is a first pass)

### Application Example

Development of an interactive tool/map which can provide information on thermal data availability (??)

### Sample data

TBA: If you already have some data to explore, briefly describe it here (size, format, how to access).

### Specific Questions

Our questions exist in two categories:

1) Data aggregation and visualization

    - What are the existing data sources? How can we access and visualize these?
    - How to integrate and compare thermal observations acquired across a wide range of methods?  

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

How would you or others traditionally try to address this problem?

### Proposed methods/tools

Building from what you learn at this hackweek, what new approaches would you like to try to implement?

### Background reading

Optional: links to manuscripts or technical documents for more in-depth analysis.

