.. Learn Command-Line CSV Tools documentation master file, created by
   sphinx-quickstart on Fri Mar 15 17:47:37 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to Learn Command-Line CSV Tools's documentation!
========================================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   content/installation


Why learning to work with data from the command-line (e.g. csvkit/xsv) is the best thing you can do for yourself no matter how good/bad/overwhelmed you think you already are at Excel/SQL/RStudio/Jupyter/pandas ffs why do we learn all that fancy syntax and GUIs and encumber our soft delicate brains when we could be doing data work like they did it in the awesome 80s but with way less effort and much better looking laptops

.. code-block:: shell

    cat fec-contribs.csv \
    | csvgrep -c committee_name -r 'BETO|CRUZ' \
    | csvgrep -c contributor_employer -r 'FACEBOOK|APPLE|AMAZON|NETFLIX|GOOGLE' \
    > senate-faangs.csv

.. image:: content/images/csvkit-filter-texas-senate-fec.gif


.. image:: content/images/senate-faangs-csv-crop.png" alt="senate-faangs-csv-crop.png









Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
