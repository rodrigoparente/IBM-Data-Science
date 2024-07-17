# Introduction to Jupyter Notebooks and JupyterLab

**Jupyter Notebook**

 - Jupyter Notebooks originated as “iPython,” originally developed for Python programming.
 - Later, when it started supporting additional languages, it was renamed Jupyter, which stands for Julia, Python, and R.
 - A Jupyter Notebook is a browser-based application that allows you to create and share documents containing code, equations, visualizations, narrative text, links, and more;
 - Jupyter Notebook allows a Data Scientist to record their data experiments and results that others can reuse;

**JupyterLab**

 - Jupyter Lab is a browser-based application that allows you to access multiple Jupyter Notebook files, other code, and data files;
 - In addition, it extends the functionalities of Jupyter Notebooks by enabling you to work with multiple notebooks, text editors, terminals, and custom components in a flexible, integrated, and extensible manner;
 - It is compatible with several file formats like CSV, JSON, PDF, Vega, and so on;

# Jupyter Kernels

 - A notebook kernel is a computational engine that executes the code contained in a Notebook file;
 - When a Notebook document opens, the related kernel launches automatically;
 - When the Notebook is executed, the kernel performs the computation and produces the results;
 - The top right corner of the Notebook shows the name of the kernel;

# Jupyter Architecture

 - Jupyter architecture implements a two-process model with a kernel and a client;
 - The client (browser) is the interface offering the user the ability to send code to the kernel;
 - When you save the Notebook, it is sent from your browser to the Notebook server;
 - The Notebook server is responsible for saving and loading the notebooks, and the kernel executes the cells of code contained in the Notebook when the user runs them;
 - It saves the notebook file on a disk as a JSON file with a .ipynb (pronounced as dot i PI NB) extension;
 - The Jupyter architecture uses the NB convert tool to convert files to other formats;

# Anaconda Environments

 - Anaconda is an open-source distribution of the Python and R programming languages, designed specifically for data science and machine learning;
 - Anaconda comes with over 250 pre-installed packages for data science, including popular tools like Jupyter Notebook, pandas, and scikit-learn;
 - It uses the `conda` package manager, which simplifies package management and deployment;
 - Anaconda allows users to create and manage virtual environments, ensuring that different projects can have their own dependencies without conflicts;
 - It is available for Windows, macOS, and Linux, making it versatile for various operating systems;
 - Anaconda Navigator is a graphical user interface that helps you manage packages, environments, and launch applications without using the command line.

# Cloud Based Jupyter Environments

- Two popular cloud environments are: 
    - **JupyterLite**, which is a lightweight, browser-based tool built from JupyterLab components. It doesn’t need a dedicated server and supports interactive graphics and visualizations;
    - **Google Colaboratory**, which is a free, cloud-based Jupyter notebook environment that runs in the browser, with projects stored on Google Drive and GitHub. It comes with pre-installed machine learning and visualization libraries.

# Interesting Jupyter Notebooks in the Internet

- Some interesting notebooks on the internet:
    - [Exploratory data analysis](https://nbviewer.jupyter.org/github/Tanu-N-Prabhu/Python/blob/master/Exploratory_data_Analysis.ipynb)
    - [Data integration/cleansing](https://towardsdatascience.com/data-cleaning-with-python-using-pandas-library-c6f4a68ea8eb)
    - [Clustering](https://nbviewer.jupyter.org/github/temporaer/tutorial_ml_gkbionics/blob/master/2%20-%20KMeans.ipynb)
    - [Iris dataset classification](https://www.kaggle.com/lalitharajesh/iris-dataset-exploratory-data-analysis)

# Summary

 - Jupyter Notebooks, Jupyter Lab, and Anaconda;
 - Jupyter kernels and architecture;
 - Cloud based Jupyter Environments.

# Glossary