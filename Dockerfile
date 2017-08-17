# build with `docker build -t dockername:tag .`
# run with `docker run -p 8888:8888 dockername:tag`
# open http://localhost:8888 in browser
FROM debian

RUN apt-get update && apt-get install -y python python-pip
RUN pip install jupyter

RUN mkdir /var/www
COPY . /var/www
WORKDIR /var/www

# config to run without authentication
RUN mkdir /root/.jupyter
RUN echo "c.NotebookApp.token = u''" >> /root/.jupyter/jupyter_notebook_config.py

CMD ["jupyter-notebook", "--no-browser", "--ip=0.0.0.0", "--allow-root"] # to prevent listening on IPv6

