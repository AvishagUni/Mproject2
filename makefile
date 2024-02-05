CC = gcc
CFLAGS = -Wall
TARGET = my_program
SRCS = main.c my_mat.c
OBJS = $(SRCS:.c=.o)

all: my_program

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: aclean all

clean:
	rm -f $(TARGET) $(OBJS)

