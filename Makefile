CC = gcc
CFLAGS = -g -Wall
PROG = select
TEMPFILES = core core.* *.o temp.* *.out *~

all: $(PROG)

$(PROG): %: %.c
        $(CC) $(CFLAGS) -o $@ $^

clean:
        rm -f $(TEMPFILES) $(PROG)

