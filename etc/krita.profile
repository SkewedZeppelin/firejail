# Firejail profile for krita
# Description: Pixel-based image manipulation program
# This file is overwritten after every install/update
# Persistent local customizations
include krita.local
# Persistent global definitions
include globals.local

# noexec ${HOME} may break krita, see issue #1953
ignore noexec ${HOME}

noblacklist ${HOME}/.config/kritarc
noblacklist ${HOME}/.local/share/krita
noblacklist ${DOCUMENTS}
noblacklist ${PICTURES}

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

apparmor
caps.drop all
ipc-namespace
# net none
netfilter
# nodbus
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

private-cache
private-dev
private-tmp
