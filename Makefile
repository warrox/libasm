NAME    = libasm.a
SRCS    = $(wildcard srcs/*.s)
OBJS    = $(patsubst srcs/%.s,objs/%.o,$(SRCS))
CC      = gcc
NASM    = nasm
NASMFLAGS = -f elf64
CFLAGS  = -Wall -Wextra -Werror

all: $(NAME) main

$(NAME): $(OBJS)
		ar rcs $@ $^

objs/%.o: srcs/%.s | objs
		$(NASM) $(NASMFLAGS) $< -o $@

objs:
		mkdir -p objs

main: main.c $(NAME)
		$(CC) $(CFLAGS) main.c -L. -lasm -o $@

clean:
		rm -rf objs

fclean: clean
		rm -f $(NAME) main

re: fclean all

.PHONY: all clean fclean re
