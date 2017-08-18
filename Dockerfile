# build with `docker build -t dockername:tag .`
# run with `docker run -p 8888:8888 dockername:tag`
# open http://localhost:8888 in browser
FROM jupyter/base-notebook

USER root
RUN /bin/bash -c "conda create --yes -n py27 python=2.7; source activate py27; conda install --yes notebook ipykernel; ipython kernel install"
RUN rm -rfv /opt/conda/share/jupyter/kernels/python3/

COPY . /home/jovyan
RUN chown -R jovyan:users /home/jovyan

# config to run without authentication
USER jovyan
RUN mkdir /home/jovyan/.jupyter >> /dev/null || echo ""
RUN echo "c.NotebookApp.token = u''" >> /home/jovyan/.jupyter/jupyter_notebook_config.py

