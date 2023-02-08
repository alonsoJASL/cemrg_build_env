FROM ubuntu:20.04 

ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone 

RUN apt update && apt install -y build-essential git dbus gfortran \
    cmake gcc-9 g++-9 python3 python3-pip \ 
    unzip wget doxygen \
    zlib1g-dev mesa-common-dev libglu1-mesa-dev \
    libgmp3-dev libgtk2.0-0 libmpfi-dev libmpfr-dev libtbb-dev \
    libxt-dev libtiff5-dev libfontconfig1 libxcomposite1 libxcursor1 \
    libxrender1 libxi6 libxtst6 libasound2 libnspr4 libnss3 \
    libxkbcommon-dev libxkbcommon-x11-dev && \
    apt clean && rm -rf /var/lib/apt/lists/*


