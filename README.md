# The use of Git in Statisical Programming

🚧 This repository is under construction yet. 🚧

It is intended to support the working group for the use of **Git in Statistical Programming**.

If you are interested in joining, please go [here](https://advance.hub.phuse.global/wiki/spaces/WEL/pages/90472449/The+Use+of+Git+in+Statistical+Programming) to find out more!

Take a look to the [website](https://phuse-org.github.io/git-in-statistical-programming/) (made with Quarto).


# Objectives and Deliverables 

1. Principles for using Git and example workflow(s) in context of the current QC process

2. PHUSE white paper on Git for statistical programming, to cover:

- The case for Git
- Challenges in using Git
- Current QC process
- Using Git for audit trails
- How Git can work with the current QC process
- How Git is typically used outside of statistical programming and why
- What the QC process could look like when using the benefits of a typical Git framework
- Regulators’ point of view

3. Core education on Git for statistical programmers
4. Soft proposal for an alternative QC process using Git features

# R use

This repository will be using quarto. To support this, there is an renv lock file which is currently bare bones. 
(This means we can keep traceability of the R packages we are using within this repo)

```R
# reinstall environment packages
renv::restore() # to install packages required

# if you made changes to the environment (installing new packages) you can save them by:
renv::snapshot()
```

# How to Contribute

You can get involved in one of the following ways

- If you wish to join the working group please [go here](https://advance.hub.phuse.global/wiki/spaces/WEL/pages/90472449/The+Use+of+Git+in+Statistical+Programming) for the leads to reach out to them
- You can get involved in discussion via the issues
- You can propose a merge request via a fork if you see something that needs fixing

