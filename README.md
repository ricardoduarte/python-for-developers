Python for Developers
=====================
First edition
-------------
This book is geared toward those who already have programming knowledge. It covers topics that include: creation of user interfaces, computer graphics, internet applications, distributed systems, among other issues.

Foreword
--------
Dynamic languages were seen in the past only as scripting languages, used to automate small tasks, but with the passing of time, they grew, matured and conquered their place in the market, to the point of calling the attention of the major providers of technology.

Several factors contributed to this change, such as the internet, open source software and agile development methodologies. The internet has enabled the sharing of information in a way unprecedented in history, which made possible the growth of open source software. Dynamic languages are usually open source and share the same features and in some cases, the same goals.

Among the dynamic languages, Python stands out as one of the most popular and powerful. There is a lively community of language users in the world, and this is reflected in active mailing lists and many tools available in open source.

Learning a new programming language means learning to think differently. And learning a dynamic language represents an even harder paradigm shift for those people who have spent years developing in static languages.

The e-book "Python para Desenvolvedores" ("Python for Developers") aimed to fill a gap, which was the lack of free courseware in Portuguese about the Python programming language. The work was adopted as support material for several universities in Brazil, served as a reference for academic papers and has been downloaded over 100,000 times from its official website.

This e-book was originally written in Portuguese and was translated by a small group of volunteers who do not speak English natively, so we ask for help from those who know the English language better, to refine the work, which we believe is a meaningful contribution to the Python users around the world.

Visit the e-book website: [http://ricardoduarte.github.io/python-for-developers/](http://ricardoduarte.github.io/python-for-developers/)

Run in docker
-------------
There is a dockerfile prepared to ease the deployment of the notebook.

To build and run the container run the following commands

```
docker build -t python-for-developers:latest .
docker run -itp 8888:8888 python-for-developers:latest
```

After this the notebook will be available at `http://localhost:8888` with the token printed to the terminal.
