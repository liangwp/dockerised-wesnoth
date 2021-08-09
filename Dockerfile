FROM archlinux:latest
RUN pacman --noconfirm -Syu && \
    pacman --noconfirm -S \
                        xorg-xauth \
                        wesnoth

# RUN pacman --noconfirm -S firefox

WORKDIR /workspace

COPY ./temp_xcookie /workspace
RUN xauth add $(cat /workspace/temp_xcookie) && rm ./temp_xcookie

