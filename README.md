# IA-Planification

[![HitCount](http://hits.dwyl.io/danaecanillas/IA-Planification.svg)](http://hits.dwyl.io/danaecanillas/IA-Planification)  [![GitHub stars](https://img.shields.io/github/stars/danaecanillas/IA-Planification.svg)](https://GitHub.com/danaecanillas/IA-Planification/stargazers/)  [![GitHub forks](https://img.shields.io/github/forks/danaecanillas/IA-Planification.svg)](https://GitHub.com/danaecanillas/IA-Planification/network/)  [![GitHub repo size in bytes](https://img.shields.io/github/repo-size/danaecanillas/IA-Planification.svg)](https://github.com/danaecanillas/IA-Planification)  [![GitHub contributors](https://img.shields.io/github/contributors/danaecanillas/IA-Planification.svg)](https://GitHub.com/danaecanillas/IA-Planification/graphs/contributors/)  

## Recommendation synthesis system for Redflix.

This project aims to plan the vsiualization of audovisual content in the Redflix platform. We have developed the planner and corresponding functionalities using [PDDL](https://en.wikipedia.org/wiki/Planning_Domain_Definition_Language).

**Authors**: Dànae Canillas, Miquel Escobar, Arnau Soler

*2020-2021 Q1 - Universitat Politècnica de Catalunya, UPC*

## Structure

The repository contains all the source code in its root directory (the `.pddl` files). It also contains the outputs generated by each extension's implemented problem in the *./outputs/* directory.

## Execution

In order to execute the implemented experiments, use the *./MFF/ff* executable. 

### Compilation

Compile the Metric-FF: Use `make` to generate the `ff` file.

Pass the domain definition as the `-o` argument and the experiment path as the `-f` argument. We also recommend using the search configuration `-s 1`. For instance, if we want to execute the Extension 3, we can run the following commands:

```bash
cd ./MFF
./ff -o ../Domain-Ext3.pddl -f ../Experiment-Ext3.pddl -s 1
```

And the output will appear on the console.

## LICENCE
MIT © Dànae/Miquel/Arnau
