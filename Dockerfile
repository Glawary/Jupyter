FROM jenkinsci/blueocean:3.10.8
ADD ../
RUN sudo pip3 install -r requirements.txt
RUN sudo jupyter-nbconvert --execute --to=html notebook1.ipynb




