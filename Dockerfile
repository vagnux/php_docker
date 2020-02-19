FROM debian
COPY pkginstall.sh /
COPY xdebug.ini /
COPY php.ini /
RUN chmod +x /pkginstall.sh
RUN /pkginstall.sh
COPY freetds.conf /etc/freetds/freetds.conf
#ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
