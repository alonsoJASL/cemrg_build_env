FROM ubuntu:18.04 

RUN apt-get update && apt-get install -y build-essential git dbus gfortran \
    cmake gcc-6 g++-6 python3 python3-pip \ 
    unzip wget \
    zlib1g-dev mesa-common-dev libglu1-mesa-dev \
    libgmp3-dev libgtk2.0-0 libmpfi-dev libmpfr-dev libtbb-dev \
    libxt-dev libtiff5-dev libfontconfig1 libxcomposite1 libxcursor1 \
    libxrender1 libxi6 libxtst6 libasound2 libnspr4 libnss3 \
    libxkbcommon-dev libxkbcommon-x11-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


