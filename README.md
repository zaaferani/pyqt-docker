## PyQT Docker

For use PyQT in docker container can use this example

### Run the Docker Container with GUI Support 🚀
To run the Docker container with GUI support, you’ll need to configure X11 server access:

#### Allow connections to X server
```bash
xhost +local:docker
```

### Run
```bash
docker-compose up app
```

### Run PyQT Designer
```bash
docker-compose up designer
```

#### Close Connection to X Server (After Usage)
Once you’re done using the GUI application, close the connection to the X server:
```bash
xhost -local:docker
```

## Pycharm Interpreter

You can use this docker container as a Pycharm interpreter.

[Configure an interpreter using Docker in Pycharm](https://www.jetbrains.com/help/pycharm/using-docker-as-a-remote-interpreter.html)