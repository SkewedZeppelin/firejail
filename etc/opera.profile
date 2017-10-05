# Firejail profile for opera
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/opera.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.cache/opera
noblacklist ${HOME}/.config/opera
noblacklist ${HOME}/.opera
noblacklist ${HOME}/.pki

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

mkdir ${HOME}/.cache/opera
mkdir ${HOME}/.config/opera
mkdir ${HOME}/.opera
mkdir ${HOME}/.pki
whitelist ${DOWNLOADS}
whitelist-noblacklisted
include /etc/firejail/whitelist-common.inc

netfilter
nodvd
notv
