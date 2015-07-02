#!/bin/bash
set -xe

cd /etc/nginx/sites-enabled/
cp /opt/openrov/image-customization/nginx/default default

echo "Setup a service to recreate nginx log folders on tmpfs"
cat > /etc/init.d/prepare-dirs << __EOF__
#!/bin/sh

### BEGIN INIT INFO
# Provides:          prepare-dirs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Required-Start:
# Required-Stop:
# Short-Description: Create /var/log/nginx directory on tmpfs at startup
# Description:       Create /var/log/nginx directory on tmpfs at startup. From http://www.a-netz.de/2013/02/ramdisks-for-the-raspberry/
### END INIT INFO



DIR=/var/log/nginx

#
# main()
#
case "\${1:-''}" in
  start)
    # create the /var/log/nginx needed by webserver
    if [ ! -d \${DIR} ]; then
      mkdir \${DIR}
      chmod 755 \${DIR}
    fi
    ;;
  stop)
    ;;
  restart)
   ;;
  reload|force-reload)
   ;;
  status)
   ;;
  *)
   echo "Usage: \$SELF start"
   exit 1
   ;;
esac
__EOF__

chmod 0755 /etc/init.d/prepare-dirs
update-rc.d prepare-dirs defaults 01 99

sed -i 's/# Required-Start:    $local_fs $remote_fs $network $syslog $named/# Required-Start:    $local_fs $remote_fs $network $syslog $named $prepare-dirs/g' /etc/init.d/nginx
update-rc.d nginx defaults
