FROM ubuntu:bionic

RUN apt update \
    && apt install -y minicom \
    && apt clean

ENV BAUD_RATE 9600
ENV BIT_MODE 8
ENV DEVICE /dev/ttyUSB0

CMD minicom --device ${DEVICE} -${BIT_MODE} --baudrate ${BAUD_RATE}
