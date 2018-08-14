# Firejail profile for hedgewars
# Description: Turn-based strategy artillery game similiar to Worms
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/hedgewars.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.hedgewars

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-interpreters.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

mkdir     ${HOME}/.hedgewars
whitelist ${HOME}/.hedgewars
include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
seccomp
tracelog

disable-mnt
private-dev
private-tmp
