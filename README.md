# RevBayes Intro in BIOL 531 Macroevolution (UI/WSU)
**Email**: oschwery [at] uky.edu


## Preparation:
1. [Download](https://revbayes.github.io/download) and install the latest version of RevBayes suitable for your system. If you download the executable, you just have to unzip the folder and move it to where you want it.
2. For visualizing results, either:
   1. Install [FigTree](https://github.com/rambaut/figtree/releases) and [Tracer](https://github.com/beast-dev/tracer/releases/tag/v1.7.2), and/or
   2. Install the R package [RevGadgets](https://cran.r-project.org/web/packages/RevGadgets/index.html), which contains a lot of post-processing tools and ways to make nicer plots.
3. Have whatever editor ready you like to use to write code in (you could even use RStudio, if you use VScode, there's a RevBayes [syntax](https://marketplace.visualstudio.com/items?itemName=Benjamin-So.revSyntax) highlighter available).

To try whether the install worked: 
1. Open your favourite command-line console (e.g., Command Prompt, PowerShell, ..., whatever is standard on your operating system)2
2. Navigate to where you installed RevBayes to and move to the directory that contains the `rb` executable (probably `.../revbayes-v.1.3.2/bin/`).
3. If you type the command `rb`, RevBayes should start in the console, stating its version number etc.

(FigTree and Tracer are standalone Java-based apps, so you can just click on the executables to start them).


## Optional Reading:
[Should all be open-access]
- Introduction of the graphical modeling concept: [Höhna, Heath, Boussau, Landis, Ronquist, Huelsenbeck (2014) Probabilistic Graphical Model Representation in Phylogenetics, Systematic Biology, 63 (5)](https://academic.oup.com/sysbio/article/63/5/753/2847897)
- Introduction of the RevBayes software and Rev language: [Höhna, Landis, Heath, Boussau, Lartillot, Moore, Huelsenbeck, Ronquist (2016) RevBayes: Bayesian Phylogenetic Inference Using Graphical Models and an Interactive Model-Specification Language, Systematic Biology, 65 (4)](https://academic.oup.com/sysbio/article/65/4/726/1753608)

