#!/bin/bash
for i in {3050..4959}
do
	echo '30'$i
	OUT="$(./UNIty.sh '30'$i | grep title)"
	echo "${OUT}"
	if [ "${OUT}" == '<title>Logged In</title>' ]
	then
		break
	fi
done
