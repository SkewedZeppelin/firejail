# Firejail profile for pinta
# Description: Drawing/editing program modeled after Paint.NET. It's goal is to provide a simplified alternative to GIMP for casual users
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/pinta.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.config/Pinta
noblacklist ${DOCUMENTS}
noblacklist ${PICTURES}

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-interpreters.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-xdg.inc

caps.drop all
ipc-namespace
net none
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none

private-dev
private-cache
private-tmp

noexec ${HOME}
noexec /tmp
