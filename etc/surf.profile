# Firejail profile for surf
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/surf.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.surf

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

mkdir ${HOME}/.surf
whitelist ${DOWNLOADS}
whitelist-noblacklisted
include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
nodvd
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog

private-bin ls,surf,sh,dash,bash,curl,dmenu,printf,sed,sleep,st,stterm,xargs,xprop
private-dev
private-etc passwd,group,hosts,resolv.conf,fonts,ssl
private-tmp

noexec ${HOME}
noexec /tmp
