# Firejail profile for enchant
# Description: Wrapper for various spell checker engines
# This file is overwritten after every install/update
# Persistent local customizations
include enchant.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/enchant

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-usr-share-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog
x11 none

private-bin enchant,enchant-*
private-cache
private-dev
private-etc alternatives,ld.so.cache,ld.so.preload,ld.so.conf,ld.so.conf.d,locale,locale.alias,locale.conf,localtime,mime.types,passwd,xdg
private-lib
private-tmp

memory-deny-write-execute
