# PFDatabase
Repository for the storage of databases generated from the PlanningFacts tool and its respective planning tasks.

More information on PlanningFacts and its download can be found at <https://github.com/AndreTGMello/PlanningFacts.git>

## About
This repository contains the files generated by the PlanningFacts tool, which is a software made to extract facts from planning tasks. Here you will be able to access its results on a series of problems from the following planning domains: Blocksworld, Depots, Freecell, Rovers and Zenotravel.

The folder PlanningTasks contais the domain and problem files in PDDL language for each of these planning tasks.

Databases folders contains two folders. FF and PF.

FF is the folder for the outputs of the FastForward algorithm (https://fai.cs.uni-saarland.de/hoffmann/ff.html) and holds two folders for each planning task. Each folder has the name and the respective outputs for each planning task solved by FF. The R at the end of the folder name indicates that these are the results for the relaxed problem. The FF outputs are kept here for comparison reasons.

The PF folder contains the outputs for the PlanningFacts software. More information about the outputs generated by this software can be found at the link above.
