CC = gcc
TCP_SERV_OBJ = tcp_server/sock_serv.o
TCP_CLI_OBJ = tcp_client/sock_cli.o
TCP_SERV_OUT = tcp_server/server
TCP_CLI_OUT = tcp_client/client
OBJECTS = tcp_client/main.o tcp_server/main.o $(TCP_SERV_OBJ) $(TCP_CLI_OBJ)

out: $(OBJECTS)
	$(CC) -o $(TCP_SERV_OUT) tcp_server/main.o $(TCP_SERV_OBJ)
	$(CC) -o $(TCP_CLI_OUT) tcp_client/main.o $(TCP_CLI_OBJ)

clean:
	rm $(OBJECTS) $(TCP_SERV_OUT) $(TCP_CLI_OUT)