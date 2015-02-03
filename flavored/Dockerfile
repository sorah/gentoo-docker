FROM quay.io/sorah/gentoo-docker:base
MAINTAINER her@sorah.jp

RUN CONFIG_PROTECT_MASK="/etc" emerge -v app-portage/flaggie app-portage/layman && \
  flaggie +ipv6 +ssl && \
  (echo 'source /var/lib/layman/make.conf' >> /etc/portage/make.conf)

RUN CONFIG_PROTECT_MASK="/etc" emerge -v \
  app-admin/syslog-ng \
  app-admin/sudo \
  sys-libs/readline \
  sys-libs/zlib \
  dev-libs/openssl \
  dev-libs/libffi \
  dev-libs/libyaml \
  dev-libs/libxml2 \
  dev-libs/libxslt \
  sys-apps/iproute2 \
  net-analyzer/netcat \
  sys-apps/less \
  net-misc/curl \
  net-dns/bind-tools \
  dev-vcs/git \
  dev-vcs/subversion \
  dev-vcs/mercurial \
  app-editors/vim \
  app-misc/jq

RUN rm -rf /var/tmp/portage/* && eclean-dist --destructive
