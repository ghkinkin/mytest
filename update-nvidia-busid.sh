#!/bin/bash
#
#
#

XCONFIG="/usr/share/X11/xorg.conf.d/xorg.conf"

OLDBUSID=`awk '/BusID/{gsub(/"/, "", $2); print $2}' ${XCONFIG}`
NEWBUSID=`nvidia-xconfig --query-gpu-info | awk '/PCI BusID/{print $4}'`

if [[ "${OLDBUSID}" == "${NEWBUSID}" ]] ; then
        echo "Nvidia BUSID not changed - nothing to do"
else
        echo "Nvidia BUSID changed from \"${OLDBUSID}\" to \"${NEWBUSID}\": Updating ${XCONFIG}"
        cp ${XCONFIG} ${XCONFIG}.old
        sed -e 's|BusID.*|BusID          '\"${NEWBUSID}\"'|' ${XCONFIG}.old > ${XCONFIG}
fi
