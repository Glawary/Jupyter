FROM jenkins/jnlp-agent-python3:latest
ADD * ./
RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN jupyter-nbconvert --execute --to=html notebook1.ipynb





