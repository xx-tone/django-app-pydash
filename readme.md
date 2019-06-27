## [老版本](./README.rst)

# Docker 安装

- python:3.6 - django-2.0.12


## DockerImage 
- 

### 运行
`docker run -itd --name=pydash --net=host actanble/django-pydash-demo`


## 自己安装
`docker build -t actanble/django-pydash-demo .`
`docker run -itd --net=host --name=pydash actanble/django-pydash-demo`
`docker run -itd --net=host -v $(pwd):/usr/src/app --name=pydash actanble/django-pydash-demo`


### Dockerfile 

```
FROM python:3.6
ADD . /usr/src/app 
WORKDIR /usr/src/app 
USER root 
EXPOSE 8077
RUN pip install django==2.0.12 --index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install gunicorn==19.3.0 --index-url https://pypi.tuna.tsinghua.edu.cn/simple
CMD /usr/local/bin/gunicorn  example.wsgi:application -w 2 -b :8077
```

## 不足
- 当前GET_IP异常
