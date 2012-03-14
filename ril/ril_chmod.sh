#!/system/bin/sh

   chmod 0666 /dev/ttyACM0
   chmod 0666 /dev/ttyACM1
   chmod 0666 /dev/ttyACM2

   chmod 0666 /dev/socket/rild
   chown radio /dev/socket/rild
   chgrp radio /dev/socket/rild

