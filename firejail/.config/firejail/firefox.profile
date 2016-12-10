noblacklist ~/.mozilla
noblacklist ~/.cache/mozilla

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc

caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
tracelog

mkdir ~/.mozilla
whitelist ~/.mozilla
mkdir ~/.cache/mozilla/firefox
whitelist ~/.cache/mozilla/firefox
whitelist ~/dwhelper
whitelist ~/.pentadactylrc
whitelist ~/.pentadactyl
whitelist ~/.pki

# allowed _payload_ home directories
whitelist ~/downloads
whitelist ~/webarchive
whitelist ~/share

include /etc/firejail/whitelist-common.inc
