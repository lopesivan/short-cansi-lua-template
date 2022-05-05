LDFLAGS = `pkg-config --cflags --libs luajit`

main: src/main.c
	$(CC) -o main src/main.c $(LDFLAGS)
clean:
	rm -f main
run: main
	./main

# $ pkg-config  --libs lua5.1
# -llua5.1
# $ pkg-config  --libs lua5.3
# -llua5.3
#  $ pkg-config  --libs luajit
# -lluajit-5.1
