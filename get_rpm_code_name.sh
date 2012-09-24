#! /bin/sh -x

LSB_RELEASE=/usr/bin/lsb_release
[ ! -x $LSB_RELEASE ] && echo unknown && exit

ID=`$LSB_RELEASE --short --id`

case $ID in
CentOS)
	RELEASE=`$LSB_RELEASE --short --release | cut -d. -f1`
	DIST=$ID$RELEASE
	;;
Fedora)
	RELEASE=`$LSB_RELEASE --short --release`
	DIST=$ID$RELEASE
	;;
*)
	DIST=unknown
	;;
esac

echo $DIST