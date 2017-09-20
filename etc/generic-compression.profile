# Firejail profile for generic-compression
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include /etc/firejail/generic-compression.local
# Persistent global definitions
include /etc/firejail/globals.local


ipc-namespace
net none
no3d
nodvd
nogroups
nonewprivs
nosound
notv
novideo
protocol unix
seccomp
shell none
x11 none

private-bin sh,bash,dash,tar,gtar,compress,gzip,lzma,xz,bzip2,lbzip2,lzip,lzop,unrar,unzip,xzdec
private-dev
private-etc group,localtime,passwd

noexec ${HOME}
noexec /tmp
