FROM hurriedreformist/gnucobol:3.1-builder

# https://open-cobol.sourceforge.io/doc/gnucobol.html#Getting-started
RUN echo 'alias compile="cobc -x -free -I src/ -o bin/hello src/hello.cob"' >> ~/.bashrc
RUN echo 'alias run="bin/hello"' >> ~/.bashrc
RUN echo 'alias compile-run="compile && run"' >> ~/.bashrc

WORKDIR /app
