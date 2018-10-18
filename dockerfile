FROM ermaker/keras-jupyter


RUN pip install tensorflow --upgrade \
 
 && pip install np_utils

VOLUME /notebook


WORKDIR /notebook


EXPOSE 8888


CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=