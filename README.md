# todo-root
Fetch, build and deploy a todo app composed of five docker images
![Architecture Diagram](/svg/Docker-NginxNodeMongo.svg "Architecture Diagram")

To build the system
- create an empty directory, eg todo-root
- open a bash command line in the directory:

```
todo-root$ git clone https://github.com/roundand/todo-root.git .
todo-root$ ./build-todo.sh
```

To use, test from the command line with:
- from Bash, run: curl 127.0.0.1/todo
- from a browser, open: http://127.0.0.1/index.html
