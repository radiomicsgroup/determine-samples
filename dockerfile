# Determined Image Depends on CPU or GPU
ARG DET_BASEIMAGE
# Radiomix custom image version(default same version as the main image)
ARG RADIOMIX_VERSION

FROM $DET_BASEIMAGE

ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/Madrid" LANG=C.UTF-8 LC_ALL=C.UTF-8 \
    RADIOMIX_VERSION=$RADIOMIX_VERSION APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn \ 
    CODEVERSION=4.21.1 GOVERSION=1.22.0 DOCKER_COMPOSE_VERSION=2.24.6

# Copy install scripts
ADD scripts/ /tmp/

# Custom Configuration and package install
RUN apt-get update && \
   DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata && \
   ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
   DEBIAN_FRONTEND="noninteractive" apt-get install -y --fix-missing \ 
   apt-transport-https \
   aria2 \
   autoconf \
   automake \
   autotools-dev \
   axel \
   bat \
   build-essential \
   ca-certificates \
   cmake \
   cifs-utils \
   curl \
   csh \
   diffutils \
   dirmngr \
   docker.io \
   dos2unix \
   doxygen \
   ffmpeg \
   fish \
   fonts-noto \
   fonts-roboto \
   fzf \
   g++ \
   gcc \
   gettext \
   gfortran \
   git \
   git-extras \
   git-lfs \
   git-secrets \
   git-repair \
   gnupg \
   gnupg2 \
   googler \
   graphviz \
   ibverbs-providers \
   icdiff \
   imagemagick \
   jq \
   lftp \
   julia \
   libavcodec-dev \
   libavformat-dev \
   libbz2-dev \
   libboost-system-dev \
   libboost-dev \
   libboost-date-time-dev \
   libboost-filesystem-dev \
   libboost-iostreams-dev \
   libboost-python-dev \
   libboost-regex-dev \     
   libboost-test-dev  \
   libedit-dev \
   libgmp3-dev \
   libmpfr-dev \
   libffi-dev \
   libfftw3-dev \
   libfontconfig \
   libglu1 \
   libglu1-mesa \
   libgmp-dev \
   libibverbs1 \
   libjpeg-dev \
   libjsoncpp-dev \
   liblzma-dev \
   libmpfr-dev \
   libncurses5 \
   libnss3 \
   libopencv-dev \
   libopenexr-dev \
   libpng-dev \
   libpulse-dev \
   libreadline-dev \
   libsm6 \
   libsqlite3-dev \
   libssl-dev \
   libswscale-dev \
   libtiff5-dev \
   libtiff-dev \
   libwebp-dev \
   libxext6 \
   libxrender-dev \
   lzma \
   m4 \
   make \
   mc \
   nano \
   net-tools \
   neovim \
   ncdu \
   ncftp \
   nnn \
   nvtop \
   htop \
   octave \
   openssl \
   p7zip-full \
   pandoc \
   python3-dev \
   python3-opencv \
   rar \
   rsync \
   s6 \
   screen \
   sqlite3 \
   texinfo \
   tig \
   tldr \
   tmate \
   tmux \
   tree \
   unrar \
   unzip \
   vim \
   wget \
   xauth \
   xvfb \
   zip \
   zlib1g-dev  

RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
   dpkg -i packages-microsoft-prod.deb && rm packages-microsoft-prod.deb && \
   apt update && \
   DEBIAN_FRONTEND="noninteractive" apt-get install -y --fix-missing \
   dotnet-sdk-8.0 \
   libfontconfig1-dev \
   libfreetype-dev \
   libfreetype6 \
   libfreetype6-dev \
   libpng-dev \
   libharfbuzz-dev \
   libfribidi-dev \
   libtiff-dev \
   libssl-dev \
   libcurl4-openssl-dev \
   libxml2-dev \
   libmariadb-dev \
   liblapack-dev \
   libblas-dev \
   unixodbc-dev 
   # install fonts
   RUN wget https://github.com/coder/code-server/releases/download/v${CODEVERSION}/code-server_${CODEVERSION}_amd64.deb && \   
   dpkg -i code-server_${CODEVERSION}_amd64.deb && rm code-server_${CODEVERSION}_amd64.deb && \
   curl -OL https://golang.org/dl/go${GOVERSION}.linux-amd64.tar.gz && tar -C /usr/local -xvf go${GOVERSION}.linux-amd64.tar.gz && \
   rm go${GOVERSION}.linux-amd64.tar.gz && \
   curl -SL https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose && \
   chmod +x /usr/local/bin/docker-compose && \
   wget https://github.com/earthly/earthly/releases/latest/download/earthly-linux-amd64 -O /usr/local/bin/earthly && chmod +x /usr/local/bin/earthly && \ 
   /usr/local/bin/earthly bootstrap --with-autocomplete && \
   echo "****** Install Fonts ******" && \
   echo "****** Install Fira Font ******" && \
   wget https://fonts.google.com/download?family=Fira%20Sans -O /tmp/fira.zip && \
   unzip -o -d /tmp/fira /tmp/fira.zip && cp -r /tmp/fira /usr/share/fonts/truetype/ && rm -Rf /tmp/fira /tmp/fira.zip && \  
   echo "****** Install Roboto Font ******" && \
   wget https://fonts.google.com/download?family=Roboto -O /tmp/fira.zip && \
   unzip -o -d /tmp/fira /tmp/fira.zip && cp -r /tmp/fira /usr/share/fonts/truetype/ && rm -Rf /tmp/fira /tmp/fira.zip && \  
   echo "****** Install Montserrat Font ******" && \
   wget https://fonts.google.com/download?family=Montserrat -O /tmp/fira.zip && \
   unzip -o -d /tmp/fira /tmp/fira.zip && cp -r /tmp/fira /usr/share/fonts/truetype/ && rm -Rf /tmp/fira /tmp/fira.zip && \  
   echo "****** Install Lato Font ******" && \
   wget https://fonts.google.com/download?family=Lato -O /tmp/fira.zip && \
   unzip -o -d /tmp/fira /tmp/fira.zip && cp -r /tmp/fira /usr/share/fonts/truetype/ && rm -Rf /tmp/fira /tmp/fira.zip && \  
   echo "****** Install Ubuntu Font ******" && \
   wget https://fonts.google.com/download?family=Ubuntu -O /tmp/fira.zip && \
   unzip -o -d /tmp/fira /tmp/fira.zip && cp -r /tmp/fira /usr/share/fonts/truetype/ && rm -Rf /tmp/fira /tmp/fira.zip && \  
   echo "****** Install Lora Font ******" && \
   wget https://fonts.google.com/download?family=Lora -O /tmp/fira.zip && \
   unzip -o -d /tmp/fira /tmp/fira.zip && cp -r /tmp/fira /usr/share/fonts/truetype/ && rm -Rf /tmp/fira /tmp/fira.zip && \  
   echo "****** Install Source Code Pro Font ******" && \
   wget https://fonts.google.com/download?family=Source%20Code%20Pro -O /tmp/fira.zip && \
   unzip -o -d /tmp/fira /tmp/fira.zip && cp -r /tmp/fira /usr/share/fonts/truetype/ && rm -Rf /tmp/fira /tmp/fira.zip && \  
   echo "****** Install IBM Plex Sans Font ******" && \
   wget https://fonts.google.com/download?family=IBM%20Plex%20Sans -O /tmp/fira.zip && \
   unzip -o -d /tmp/fira /tmp/fira.zip && cp -r /tmp/fira /usr/share/fonts/truetype/ && rm -Rf /tmp/fira /tmp/fira.zip && \
   echo "****** Install Helvetica Neue Font ******" && \
   wget https://github.com/ifvictr/helvetica-neue/archive/refs/heads/master.zip -O /tmp/fira.zip && \
   unzip -o -d /tmp/fira /tmp/fira.zip && cp -r /tmp/fira/helvetica-neue-master/ /usr/share/fonts/truetype/ && rm -Rf /tmp/fira /tmp/fira.zip && \
   bash /tmp/dua_cli.sh && \
   bash /tmp/duf_cli.sh && \
   bash /tmp/exa_cli.sh && \
   bash /tmp/github_cli.sh  && \
   bash /tmp/lazygit_cli.sh && \
   bash /tmp/minio_cli.sh && \
   bash /tmp/rustup-init.sh -y --profile complete 
   
# Update PATH and disable dotnet telemetry
ENV PATH="$HOME/.cargo/bin:/opt/ants-2.5.0/bin:/usr/local/go/bin:$PATH" DOTNET_CLI_TELEMETRY_OPTOUT=1
# Slack notification URL
ENV SLACK_URL=SLACK_URL

# Copy notify script
ADD init/ /usr/bin/

# Btop and ANTs
RUN chmod +x /usr/bin/btop-install/install.sh && cd /usr/bin/btop-install && ./install.sh && cd && rm -Rf /usr/bin/btop-install/ && \
   wget https://github.com/ANTsX/ANTs/releases/download/v2.5.0/ants-2.5.0-ubuntu-20.04-X64-gcc.zip && \
   unzip -o -d /opt  ants-2.5.0-ubuntu-20.04-X64-gcc.zip && chmod +x /opt/ants-2.5.0/bin/* && rm ants-2.5.0-ubuntu-20.04-X64-gcc.zip


RUN dos2unix /usr/bin/notify && chmod +x /usr/bin/notify && \
   dos2unix /usr/bin/parallel && chmod +x /usr/bin/parallel && \
   rm -r /tmp/* && \
   rm -rf /var/lib/apt/lists/* && \
   echo 'echo AgentID = "$DET_AGENT_ID" '  >> ~/.bashrc
