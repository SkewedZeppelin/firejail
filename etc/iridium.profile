# Firejail profile for iridium
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/iridium.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.cache/iridium
noblacklist ${HOME}/.config/iridium

include /etc/firejail/disable-common.inc
# chromium/iridium is distributed with a perl script on Arch
# include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

mkdir ${HOME}/.cache/iridium
mkdir ${HOME}/.config/iridium
mkdir ${HOME}/.pki
whitelist ${DOWNLOADS}
whitelist ${HOME}/.pki
whitelist-noblacklisted
include /etc/firejail/whitelist-common.inc

netfilter
nodvd
notv
