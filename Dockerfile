FROM python:3.11-slim AS base

WORKDIR /opt/project

VOLUME /opt/project

RUN apt-get update && apt-get -y install libgl1

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libxkbcommon-x11-0 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-randr0 \
    libxcb-render-util0 \
    libxcb-render0 \
    libxcb-shape0 \
    libxcb-sync1 \
    libxcb-xfixes0 \
    libxcb-xinerama0 \
    libxcb-xkb1 \
    libxcb1 \
    libxrender1 \
    libxi6 \
    libdbus-1-3 \
    libxcb-cursor0 \
    libegl1

RUN apt-get update && apt-get install -y libfontconfig1

RUN apt-get update && apt-get install -y libglib2.0-0

FROM base as builder

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

FROM base as designer

RUN pip install pyqt6-tools~=6.4
