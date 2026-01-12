FROM rockylinux/rockylinux:10

RUN dnf install -y epel-release && \
	dnf install -y https://zfsonlinux.org/epel/zfs-release-3-0$(rpm --eval "%{dist}").noarch.rpm && \
	dnf install -y zfs neovim && \
	dnf clean all && \
	rm -rf /var/cache/dnf

ENTRYPOINT ["/bin/bash"]
