# Firejail profile for gwenview
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/gwenview.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.config/gwenviewrc
noblacklist ${HOME}/.config/org.kde.gwenviewrc
noblacklist ${HOME}/.kde/share/apps/gwenview
noblacklist ${HOME}/.kde/share/config/gwenviewrc
noblacklist ${HOME}/.kde4/share/apps/gwenview
noblacklist ${HOME}/.kde4/share/config/gwenviewrc
noblacklist ${HOME}/.local/share/gwenview
noblacklist ${HOME}/.local/share/org.kde.gwenview

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

include /etc/firejail/whitelist-var-common.inc

caps.drop all
nodvd
nogroups
nonewprivs
noroot
notv
novideo
protocol unix
seccomp
shell none
tracelog

private-bin gwenview,kbuildsycoca4,gimp,gimp-2.8
private-dev
# private-etc X11

# memory-deny-write-execute
noexec ${HOME}
noexec /tmp
