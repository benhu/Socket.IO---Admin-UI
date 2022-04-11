Socket.IO Admin UI
==
This project aim to build a Docker image of Socket.IO Admin UI, no more.

# How to build it
To build your own image just run:
```bash
docker build . -t doctor/who --rm
```
Pro tip: replace `doctor/who` with a name you like !

# How to run it
Just run like this:
```bash
docker run -p 8080:80 -d doctor/who
```
Image will expose port 80, just translate it to another port if you don't want to use 80.\
This image don't expose any sensitive data, get in mind that you need to secure your socket.io server, and if you use https (highly recommended), you need to expose this image in https too.\
More informations here: [https://socket.io/docs/v4/admin-ui/]
