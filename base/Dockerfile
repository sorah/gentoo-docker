FROM quay.io/sorah/gentoo-stage3:latest
MAINTAINER her@sorah.jp

RUN echo 'GENTOO_MIRRORS="http://distfiles.gentoo.org/"' >> /etc/portage/make.conf
ADD dockemerge /usr/bin/dockemerge
RUN dockemerge --unmerge -v \
      virtual/man sys-apps/man-pages sys-apps/man-pages-posix sys-apps/man-db \
      virtual/udev sys-fs/udev sys-fs/udev-init-scripts virtual/dev-manager \
      sys-apps/hwids
RUN USE="python_targets_python2_7 -python_targets_python3_3 -python_targets_python3_4 -python3" dockemerge -v sys-apps/portage && \
    dockemerge --depclean -v '>=dev-lang/python-3.0'

