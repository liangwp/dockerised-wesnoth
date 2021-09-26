FROM archlinux:latest
RUN pacman --noconfirm -Syu && \
    pacman --noconfirm -S \
                        xorg-xauth \
                        wesnoth

# RUN pacman --noconfirm -S firefox

WORKDIR /workspace

RUN useradd -m wesnoth-user
USER wesnoth-user

COPY ./temp_xcookie /home/wesnoth-user/
RUN xauth add $(cat /home/wesnoth-user/temp_xcookie) && rm /home/wesnoth-user/temp_xcookie



