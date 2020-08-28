# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vscabell <vscabell@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/23 08:54:07 by vscabell          #+#    #+#              #
#    Updated: 2020/08/04 17:49:11 by vscabell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_itoa.c	ft_putstr_fd.c	ft_strnstr.c \
 	ft_memccpy.c ft_split.c	ft_strrchr.c \
	ft_atoi.c ft_memchr.c ft_strchr.c ft_strtrim.c \
	ft_bzero.c ft_memcmp.c ft_strdup.c ft_substr.c \
	ft_calloc.c	ft_memcpy.c	ft_strjoin.c ft_tolower.c \
	ft_isalnum.c ft_memmove.c ft_strlcat.c ft_toupper.c \
	ft_isalpha.c ft_memset.c ft_strlcpy.c \
	ft_isascii.c ft_putchar_fd.c ft_strlen.c \
	ft_isdigit.c ft_putendl_fd.c ft_strmapi.c \
	ft_isprint.c ft_putnbr_fd.c	ft_strncmp.c \
	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
	ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
	ft_lstclear.c ft_lstiter.c ft_lstmap.c \
	ft_isspace.c ft_strjoin_n_free.c ft_calloc_char.c \
	ft_itoa_base.c ft_putnbr_base_fd.c ft_swap.c

OBJ_DIR =	objs
OBJ =		$(patsubst %.c, $(OBJ_DIR)/%.o, $(SRC))

INCLUDES = .

CC = clang

CFLAGS = -Wall -Werror -Wextra -g

RM = /bin/rm -rf

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $@

$(OBJ_DIR)/%.o: %.c
	mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -I $(INCLUDES) -c $< -o $@

all: $(NAME)

clean:
	$(RM) $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus
