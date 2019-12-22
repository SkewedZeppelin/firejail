# Firejail profile for xmr-stak
# This file is overwritten after every install/update
# Persistent local customizations
include xmr-stak.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.xmr-stak

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.xmr-stak
include whitelist-var-common.inc

caps.drop all
ipc-namespace
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
private ${HOME}/.xmr-stak
private-bin xmr-stak
private-dev
private-etc Trolltech.conf,X11,alternatives,bumblebee,ca-certificates,crypto-policies,dbus-1,dconf,drirc,fonts,gconf,glvnd,gtk-2.0,gtk-3.0,hosts,host.conf,hostname,ld.so.cache,ld.so.preload,ld.so.conf,ld.so.conf.d,locale,locale.alias,locale.conf,localtime,machine-id,mime.types,nsswitch.conf,pango,passwd,pki,protocols,resolv.conf,rpc,services,ssl,xdg
#private-lib libxmrstak_opencl_backend,libxmrstak_cuda_backend
private-opt cuda
private-tmp

memory-deny-write-execute
