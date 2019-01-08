#!/system/bin/sh

################################################################################
# helper functions to allow Android init like script

function write() {
    echo -n $2 > $1
}

function copy() {
    cat $1 > $2
}
################################################################################
#if [ ! -f /data/property/persist.spectrum.profile ]; then
 #   setprop persist.spectrum.profile 0
#fi


bp="/system/build.prop"
 /sbin/busybox mount /system
/sbin/busybox mount /data
 if [ -f /system/build.prop.bak ]; 
  then
    rm -rf $bp
    cp $bp.bak $bp
  else
    cp $bp $bp.bak
fi
 echo " " >> $bp
echo "# Deep Sleep Tweak" >> $bp
echo " " >> $bp
echo "pm.sleep_mode=1" >> $bp


# I/O Scheduler


setprop pm.sleep_mode 1

