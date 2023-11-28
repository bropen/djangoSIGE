FROM alpine:3.11
RUN mkdir -p /opt/djangoSIGE/
WORKDIR /opt/djangoSIGE/
COPY requirements.txt /opt/djangoSIGE/

RUN apk add --no-cache libffi-dev \ 
    libressl-dev \ 
    py3-cffi  \ 
    zlib-dev  \ 
    gcc  \ 
    jpeg-dev \ 
    linux-headers  \ 
    libxml2-dev  \ 
    libxslt-dev \ 
    musl-dev  \ 
    python3-dev \ 
    python3 \ 
    py3-pip \ 
    postgresql-dev \
    tzdata

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt 
RUN pip3 install gunicorn psycopg2
