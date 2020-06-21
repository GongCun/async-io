CC = gcc
CFLAGS = -ggdb -Wall -O0
LIBS = -levent_core
PROG = select event bufferevent
TEMPFILES = core core.* *.o temp.* *.out *~

all: $(PROG)

select: select.c
	$(CC) $(CFLAGS) -o $@ $^

event: event.c
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

bufferevent: bufferevent.c
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f $(TEMPFILES) $(PROG)

