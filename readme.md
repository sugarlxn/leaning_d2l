# leaning-d2l
这是李沐大神的机器学习课程[动手学深度学习](https://zh-v2.d2l.ai/index.html)的学习空间，里面包括学习过程中配置的环境、编写的代码以及实验结果。

# 环境配置
使用docker来构建运行环境，[Dockerfile](./Dockerfile)，制作的容器可正常使用，大家可以参考我的Dockerfile配置自行构建

Docker使用方法可以参考:[docker](https://docs.docker.com/)

# 启动容器
[run_container.sh](./run_container.sh)

# setup 
start jupyter notebook
```shell
jupyter notebook --notebook-dir=/leaning_d2l --ip="*" --port=8888 --allow-root
```