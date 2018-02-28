FROM fedora:27

ENV APP_ENV "developer"

RUN set -xe \
&& mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.backup \
&& mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.backup \
&& curl -o /etc/yum.repos.d/fedora.repo http://mirrors.aliyun.com/repo/fedora.repo \
&& curl -o /etc/yum.repos.d/fedora-updates.repo http://mirrors.aliyun.com/repo/fedora-updates.repo \
# && dnf makecache \
&& dnf install -y wget vim tmux langpacks-zh_CN php-cli php-fpm php-gd composer git \
&& dnf clean all \
&& mkdir -p /app

COPY config/ssh /root/.ssh
COPY config/vim /root/.vim
COPY config/tmux /root/.tmux
COPY config/vimrc /root/.vimrc
COPY config/tmux.conf /root/.tmux.conf
COPY config/bashrc /etc/bashrc

WORKDIR /app

CMD ["bash"]
