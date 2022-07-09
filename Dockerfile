FROM python:bullseye
COPY requirements.txt ./
COPY notebook1.ipynb ./
RUN pip install -r requirements.txt
RUN jupyter-nbconvert --execute --to=html notebook1.ipynb





