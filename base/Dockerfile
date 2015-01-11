FROM quay.io/sorah/gentoo-stage3:latest
MAINTAINER her@sorah.jp

RUN echo 'GENTOO_MIRRORS="http://distfiles.gentoo.org/"' >> /etc/portage/make.conf
RUN mkdir -p /usr/portage
RUN chown -R portage:portage /usr/portage
RUN emerge-webrsync
RUN eselect news read new
