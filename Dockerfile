FROM ubuntu:16.04

RUN apt update && apt -y install \
	inkscape \
	texlive \
	pstoedit \
	texlive-latex-extra  \
	pdf2svg \
	vim

#RUN groupadd -r inkscape && useradd --no-log-init -r -g inkscape inkscape
#USER inkscape

WORKDIR /home/inkscape/workspace/

# RUN ["/bin/bash"]

ENTRYPOINT ["/usr/bin/inkscape"]
