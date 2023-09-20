## Windows

### An attempt was made to access a socket in a way forbidden by its access permissions.

#### Details

Starting some of the services fails with:

> docker: Error response from daemon: Ports are not available: exposing port TCP 0.0.0.0:55432 -> 0.0.0.0:0: listen tcp 0.0.0.0:55432: bind: An attempt was made to access a socket in a way forbidden by its access permissions.

### Solution

> net stop hns\
net start hns

Source: https://stackoverflow.com/questions/10461257/an-attempt-was-made-to-access-a-socket-in-a-way-forbidden-by-its-access-permissi
