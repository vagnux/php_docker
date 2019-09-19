FROM ubuntu
COPY pkginstall.sh /
COPY xdebug.ini /
RUN chmod +x /pkginstall.sh
RUN /pkginstall.sh
COPY freetds.conf /etc/freetds/freetds.conf
#ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
