# ffmpeg

需要lessc, 所以需要安装npm lessc 和bower
```
docker pull node
docker run -it --name node  node /bin/bash
npm install -g bower less
npm install -g less-plugin-clean-css
apt-get install texinfo texi2html
apt-get install doxygen graphviz
```
验证其它工具
```
perl -h
pod2man -h
```
# 生成网站
Type `make` to generate the website.
Type `make clean` to remove the generated files.
生成文档
`./generate-doc.sh`
`cp docs/css/{bootstrap.min.css,style.min.css} /path/to/ffmpeg/doc/`



by elesos.com