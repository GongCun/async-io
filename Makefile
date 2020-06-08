CC = gcc
CFLAGS = -g -Wall
LIBS = -levent
PROG = select
TEMPFILES = core core.* *.o temp.* *.out *~

all: $(PROG)

select: select.c
	$(CC) $(CFLAGS) -o $@ $^

event: event.c
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f $(TEMPFILES) $(PROG)

