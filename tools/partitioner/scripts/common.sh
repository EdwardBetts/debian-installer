
DISK="$1"
[ -z "$DISK" ] && exit 1

case "$DEBIAN_FRONTEND" in
"slang")
	cfdisk $DISK
	;;
*)
	fdisk $DISK
	;;
esac

exit $?

