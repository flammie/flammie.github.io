# Docker

The most common and basic commands in docker world are convoluted enough that I
have to google them every single time I use them, and that's why I have them
listed here!

## build from dockerfile and run interactive shell

For my usecase, building from a `Dockerfile` is by far the most common use, but
probably this is not how it was designed to be used so you have to have many
cryptic parametres here to remember:


```shell
docker build -t "foobar:Dockerfile" .
docker run -it "foobar:Dockerfile" bash
```


