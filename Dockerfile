FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get install -y fuse
RUN apt-get install -y libidn11 wget libglu1-mesa libgconf-2-4 libfontconfig1 libkeyutils1
RUN wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage -O /opt/appimagetool
RUN chmod +x /opt/appimagetool
RUN cd /opt/; /opt/appimagetool --appimage-extract
RUN mv /opt/squashfs-root /opt/appimagetool.AppDir
RUN ln -s /opt/appimagetool.AppDir/AppRun /usr/local/bin/appimagetool

COPY UaExpert.AppImage .
EXPOSE 6000
CMD ./UaExpert.AppImage --appimage-extract-and-run
