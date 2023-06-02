FROM gcc:11.3.0

RUN apt-get update -y && apt-get upgrade -y

WORKDIR /usr/cmake/

RUN wget https://github.com/Kitware/CMake/releases/download/v3.26.4/cmake-3.26.4-linux-x86_64.sh

RUN echo Y | bash cmake-3.26.4-linux-x86_64.sh 

ENV PATH="/usr/cmake/cmake-3.26.4-linux-x86_64/bin:$PATH"

RUN rm -rf cmake-3.26.4-linux-x86_64.sh

WORKDIR /usr/workspace/