FROM continuumio/anaconda3:4.2.0

RUN conda upgrade pip -y
RUN pip install chainer
RUN conda install -c https://conda.binstar.org/menpo opencv -y

RUN wget -O - https://github.com/Itsukara/PaintsChainer/archive/master.tar.gz | tar zxf -

RUN wget http://paintschainer.preferred.tech/downloads/unet_128_standard -P /PaintsChainer-master/cgi-bin/paint_x2_unet/models
RUN wget http://paintschainer.preferred.tech/downloads/unet_512_standard -P /PaintsChainer-master/cgi-bin/paint_x2_unet/models

WORKDIR "/PaintsChainer-master"

CMD python server.py -g -1 -ho ''
