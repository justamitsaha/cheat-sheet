FROM debian
#copies the content inside content directory recursively same as COPY /content
COPY content /home 
#copies only the file
COPY sample1.txt /tmp
CMD [ "bin/bash" ]

#docker build . -t my_debian
#docker run -i --name my_os:1 my_debian