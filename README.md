# sorah's gentoo dockerfiles

### Family

#### stage3

- quay.io/sorah/gentoo-stage3:YYYYMMDD - only stage3 (`docker import`, `./stage3.sh`)

#### base

- quay.io/sorah/gentoo-docker:base - portage synced

#### flavored

- quay.io/sorah/gentoo-flavored

This Dockerfile couldn't be built on quay.io, so I've built on my machines.

The following packages have set up:

- app-portage/flaggie
- app-portage/layman
- app-admin/syslog-ng
- app-admin/sudo
- sys-libs/readline
- sys-libs/zlib
- dev-libs/openssl
- dev-libs/libffi
- dev-libs/libyaml
- dev-libs/libxml2
- dev-libs/libxslt
- sys-apps/iproute2
- net-analyzer/netcat
- sys-apps/less
- net-misc/curl
- net-dns/bind-tools
- app-arch/unzip
- dev-vcs/git
- dev-vcs/subversion
- dev-vcs/mercurial
- sys-process/htop
- sys-apps/dstat
- app-editors/vim
- app-misc/jq


## License

The MIT License (MIT)

Copyright (c) 2015 Shota Fukumori (sora_h)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
