# Firejail profile for cpio
# Description: A tool to copy files into or out of a cpio or tar archive
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include /etc/firejail/cpio.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /tmp/.X11-unix

noblacklist /sbin
noblacklist /usr/sbin

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
net none
no3d
nodbus
nodvd
nonewprivs
nosound
notv
novideo
seccomp
shell none
tracelog

private-dev
