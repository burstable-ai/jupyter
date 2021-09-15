![brainome logo](./images/brainome_logo.png)
# Running the notebook tutorials
Interactive Jupyter notebooks running Brainome to measure your data and create ML classifiers.

## Browser Snapshot
This collection of notebooks can be viewed as a [jupyter{book}](https://jupyterbook.org/file-types/notebooks.html?highlight=notebooks#) HTML snapshot at [https://jupyter.brainome.ai](https://jupyter.brainome.ai) _(under construction)_

## On Google Colab
_Requires a google account._

Brainome runs on the popular [Google Colab](https://colab.research.google.com/notebooks/intro.ipynb#recent=true)

### How To...
* Open and log into  https://colab.research.google.com
* Select File menu | Open notebook
* Select GitHub tab
* Search for brainome/jupyter
* Select brainome_index.ipynt to run a notebook instance.

## Locally using docker
_Requires git and a docker host_
### How To...
From a command line terminal:

`git clone git@github.com:brainome/jupyter.git`

`cd jupyter`

`docker-compose up --build`