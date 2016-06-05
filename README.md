# todo-root
Fetch, build and deploy a todo app composed of six docker images, exposing two of them via host ports 80 (todo-web) and 80801 (mongo-ui).
![Architecture Diagram](/img/Docker-NginxNodeMongo.png "Architecture Diagram")

The web client and server use socket.io so when two clients are viewing the same list (currently there is only one list!) updates from either are automatically pushed to the other.

To build the system
- install docker and docker-compose
- create an empty directory, eg todo-root
- open a bash command line in the directory:

```
todo-root$ git clone https://github.com/roundand/todo-root.git .
todo-root$ sudo ./build-todo.sh # sudo needed unless you've prevoously done: sudo usermod -aG docker <yourUserId>
```

To use, test from the command line with:
- from Bash, run: curl 127.0.0.1/todo
- from a browser, open the ReactJS UI: http://127.0.0.1/index.html

To run Automated Tests
- start as usual, with `docker-compose up -d`
- check container names for the todo-server instances with `docker ps`
- assuming that one of the todo-servers is named *demo_todoserver1*, run

```
~/demo$ docker exec demo_todoserver1 npm test
```
