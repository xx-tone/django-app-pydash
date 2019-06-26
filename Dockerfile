FROM python:3.6-stretch
ADD . /usr/src/app 
WORKDIR /usr/src/app 
RUN pip install django==2.0.12 --index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install gunicorn==19.3.0 --index-url https://pypi.tuna.tsinghua.edu.cn/simple
CMD ['/usr/local/bin/gunicorn', 'website.wsgi:application, '-w', '2', '-b', ':8077']