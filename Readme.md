# LazyGuardian

![docker build](https://github.com/asishRye/lazyguardian/actions/workflows/docker.yml/badge.svg)

LazyGuardian is a docker image that serves jupyter notebooks (more coming) from a docker container. This is served my a flask webapp running in the container.

The docker container is prebuilt with python and some necessary packages listed [here.](https://pastebin.com/raw/82JHEZXV)

## Usage

Run the command in shell to download and spinup a container.

```bash
docker run -d -p 80:80 -p  8888:8888 kernelguardian/lazyguardian
```

## Word of advice

Use at your own risk 🤠

## License

[MIT](https://choosealicense.com/licenses/mit/)
