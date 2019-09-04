FROM ubuntu:18.04

RUN apt-get update \
&& apt-get install -y --no-install-recommends software-properties-common \
&& add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable \
&& apt-get install -y --no-install-recommends build-essential gdal-bin git python3 python3-dev python3-pip python3-virtualenv \
&& apt-get remove -y software-properties-common \
&& apt-get clean -y \
&& apt-get autoremove -y \
&& rm -rf /var/lib/apt/lists/*

CMD gdalinfo --version && gdalinfo --formats && ogrinfo --formats
