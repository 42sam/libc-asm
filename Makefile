# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssachet <ssachet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/29 20:29:51 by ssachet           #+#    #+#              #
#    Updated: 2015/05/28 14:24:49 by ssachet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIBASM = libfts.a

FLAGS = -f macho64

NASM = ~/.brew/bin/nasm $(FLAGS)

SRC = 	ft_bzero.s \
		ft_isalpha.s \
		ft_islower.s \
		ft_isupper.s \
		ft_isdigit.s \
		ft_isascii.s \
		ft_tolower.s \
		ft_toupper.s \
		ft_isalnum.s \
		ft_isprint.s \
		ft_strlen.s \
		ft_abs.s \
		ft_puts.s\
		ft_toupper.s\
		ft_tolower.s\
		ft_strlen.s\
		ft_cat.s\
		ft_strdup.s\
		ft_memset.s\
		ft_memcpy.s\
		ft_memalloc.s\
		ft_putchar.s\
		ft_strcpy.s\
		ft_strncpy.s\
		ft_strnew.s\
		ft_putchar.s\
		ft_isspace.s\
		ft_putstr.s\
		ft_strcat.s\
		ft_putchar.s
		#ft_memset.s

O = $(SRC:.s=.o)

all : $(LIBASM)

$(LIBASM): $(O)
	ar rcs $(LIBASM) $(O)
	ranlib $(LIBASM)

%.o: %.s
	$(NASM) -o $@ $^

clean:
	rm -f $(O)

fclean: clean
	rm -f $(LIBASM)

re: fclean all
test: $(LIBASM)
	gcc -o test main.c $(LIBASM)

.PHONY: all clean fclean re
