# todo-root
Fetch, build and deploy a todo app composed of three docker images

To build the system
- create an empty directory, eg todo-root
- open a bash command line in the directory:

```
todo-root$ git clone git@github.com:roundand/todo-root.git .
todo-root$ build-todo.sh
```

To use, test from the command line with:
- from Bash, run: curl 127.0.0.1/todo
- from a browser, open: http://127.0.0.1/index.html
