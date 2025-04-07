# The use of Git in Statisical Programming

🚧 This repository is under construction yet. 🚧

It is intended to support the working group for the use of **Git in Statistical Programming**.

If you are interested in joining, please go [here](https://advance.hub.phuse.global/wiki/spaces/WEL/pages/90472449/The+Use+of+Git+in+Statistical+Programming) to find out more!

Take a look to the [website](https://phuse-org.github.io/git-in-statistical-programming/) (made with Quarto).


## 1.  Objectives and Deliverables 

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

## 2. How to Contribute

You can get involved in one of the following ways

2.1 - If you wish to join the working group please [go here](https://advance.hub.phuse.global/wiki/spaces/WEL/pages/90472449/The+Use+of+Git+in+Statistical+Programming) for the leads to reach out to them

2.2 - You can get involved in discussion via the issues

2.3 - You can propose a merge request via a fork if you see something that needs fixing


### 2.3. Using Git, to propose changes!


<details>

<summary>2.3.1 About cloning, branching and pushing</summary>

Basic steps to get into this "Git world"

0- Ensure you have installed Git, and you use the terminal to go to your favorite directory. 

1- Clone the repo from your terminal `git clone https://github.com/phuse-org/git-in-statistical-programming.git`

2- Create a branch with your username `git checkout -b yourname_dev` All the changes and contributions will be done here

3- once this is done, add changes to stage `git add .`

4- once this is done, commit the changes with a message `git commit -m " i did this change (your summary of the changes)"

5- finally push the changes! `git push origin yourname_dev`

6- if you go now to the repo https://github.com/phuse-org/git-in-statistical-programming.git you will see at the top a message saying your changes has been pushed into your named branch.

7- if you want your changes being in the "main" branch (default page), you have to create a merge request. (green button top right saying "compare & pull request")



💡NOTE: If you like to use your Chat GPT to teach you more about these steps, use it. No fear to break anything!
💡NOTE2: There is a wonderful tutorial in [Coursera] (https://www.coursera.org/learn/making-data-science-work-for-clinical-reporting#modules) to practise on your own how to do these steps. Very easy and well explained (and you get a certification 🎓 at the end!)

</details>



<details>

<summary>2.3.2 About R</summary>


This repository will be using quarto. To support this repository, there is an **renv lock** file which is currently bare bones. 
(This means we can keep traceability of the R packages we are using within this repo)

```R
# reinstall environment packages
renv::restore() # to install packages required

# if you made changes to the environment (installing new packages) you can save them by:
renv::snapshot()

```

For the poster it would be nice to have some stats in a jupyter or Rmarkdown about issues around Git (or some charts explaining key points). 
To start with, 

0 - after you have clones the repo in your laptop

1 - you are in your branch

```sh
# in terminal, within your project directory
#create your own git branch:
git checkout -b yourname_dev
# or switch to your branch
git switch yourname_dev
```

2- A folder called **"script_ideas"** will be the SANDBOX with your scripts/ collaborative scripts/pictures to get some charts/numbers around this topic (for the paper or poster, or to discuss in our meetings). 

</details>


