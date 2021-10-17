FROM scratch
ADD ubuntu-impish-oci-amd64-root.tar.gz /
RUN apt-get update && apt-get install binfmt-support qemu-user-static debootstrap -y
ADD fs-cook $HOME/fs-cook/
CMD ["bash"]
