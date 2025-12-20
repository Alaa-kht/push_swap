# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mrida <mrida@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/12/13 00:31:45 by mrida             #+#    #+#              #
#    Updated: 2025/12/13 00:34:11 by mrida            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = push_swap.a
CC = cc
FLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

SRC =
OBJ = $(SRC:.c=.o)
INCLUDES = -I. -I./libft

BONUS_OBJ = $(BONUS_SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)

%.o: %.c ft_printf.h
	@$(CC) $(FLAGS) $(INCLUDES) -c $< -o $@

clean:
	@$(RM) $(OBJ)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
