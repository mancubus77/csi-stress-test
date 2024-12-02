FROM registry.redhat.io/ubi9/ubi-init

WORKDIR /ansible

COPY . /ansible

RUN dnf -y install python3.11 python3-pip make

RUN pip3 install -r requirements.txt

RUN ansible-galaxy install -r collections/requirements.yaml

CMD ["make"]