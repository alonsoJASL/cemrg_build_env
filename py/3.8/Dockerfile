FROM python:3.8-slim-bullseye
LABEL maintainer="jsolislemus <j.solislemus@kcl.ac.uk>"

RUN apt-get update --fix-missing && \
    apt-get install -y --no-install-recommends git libsm6 libxext6 libxrender-dev libgl1-mesa-glx ffmpeg \ 
	wget build-essential cmake mesa-common-dev mesa-utils freeglut3-dev ninja-build  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN git clone --branch v8.1.2 --depth 1 https://gitlab.kitware.com/vtk/vtk.git /vtk && cd /vtk &&\
    wget https://gitlab.kitware.com/vtk/vtk/uploads/cf7f517b4f647de1997c4e8cddb54de9/0001-Compatibility-for-Python-3.8.patch && \
    git apply 0001-Compatibility-for-Python-3.8.patch && \ 
    rm -rf /vtk/.git* 

RUN rm -rf /vtk/.git* && \  
   mkdir -p /vtk/build && cd /vtk/build && \ 
   cmake -GNinja \ 
   -DVTK_WHEEL_BUILD=ON \
   -DVTK_WRAP_PYTHON=ON \
   -DBUILD_TESTING=OFF \ 
   -DCMAKE_BUILD_TYPE=Release \
   -DVTK_PYTHON_VERSION=3 /vtk  

