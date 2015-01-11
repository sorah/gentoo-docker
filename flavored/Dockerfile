FROM sorah/gentoo-docker:base
MAINTAINER her@sorah.jp

RUN CONFIG_PROTECT_MASK="/etc" emerge -v app-portage/flaggie
RUN CONFIG_PROTECT_MASK="/etc" emerge -v app-portage/layman
RUN echo 'source /var/lib/layman/make.conf' >> /etc/portage/make.conf

RUN CONFIG_PROTECT_MASK="/etc" emerge -v app-admin/sudo

RUN CONFIG_PROTECT_MASK="/etc" emerge -v sys-libs/readline
RUN CONFIG_PROTECT_MASK="/etc" emerge -v sys-libs/zlib
RUN CONFIG_PROTECT_MASK="/etc" emerge -v dev-libs/openssl
RUN CONFIG_PROTECT_MASK="/etc" emerge -v dev-libs/libffi
RUN CONFIG_PROTECT_MASK="/etc" emerge -v dev-libs/libyaml
RUN CONFIG_PROTECT_MASK="/etc" emerge -v dev-libs/libxml2
RUN CONFIG_PROTECT_MASK="/etc" emerge -v dev-libs/libxslt

RUN CONFIG_PROTECT_MASK="/etc" emerge -v sys-apps/iproute2
RUN CONFIG_PROTECT_MASK="/etc" emerge -v net-analyzer/netcat

RUN CONFIG_PROTECT_MASK="/etc" emerge -v sys-apps/less

RUN CONFIG_PROTECT_MASK="/etc" emerge -v net-misc/curl
RUN CONFIG_PROTECT_MASK="/etc" emerge -v net-dns/bind-tools

RUN CONFIG_PROTECT_MASK="/etc" emerge -v app-arch/unzip
RUN CONFIG_PROTECT_MASK="/etc" emerge -v dev-vcs/git
RUN CONFIG_PROTECT_MASK="/etc" emerge -v dev-vcs/subversion
RUN CONFIG_PROTECT_MASK="/etc" emerge -v dev-vcs/mercurial

RUN CONFIG_PROTECT_MASK="/etc" emerge -v sys-process/htop
RUN CONFIG_PROTECT_MASK="/etc" emerge -v sys-apps/dstat

RUN CONFIG_PROTECT_MASK="/etc" emerge -v app-text/tree

RUN CONFIG_PROTECT_MASK="/etc" emerge -v app-editors/vim
RUN CONFIG_PROTECT_MASK="/etc" emerge -v app-misc/jq


