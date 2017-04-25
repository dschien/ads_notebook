FROM jupyter/minimal-notebook

MAINTAINER Dan Schien <dschien@gmail.com>

COPY requirements.txt /opt/app/requirements.txt
WORKDIR /opt/app

RUN pip install -r requirements.txt


RUN pip install jupyter_dashboards
RUN jupyter dashboards quick-setup --sys-prefix

RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension

USER jovyan