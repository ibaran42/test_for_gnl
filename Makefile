# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ibaran <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/28 16:43:56 by ibaran            #+#    #+#              #
#    Updated: 2018/11/28 18:13:40 by ibaran           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = test_gnl
OBJ = get_next_line.o main.o
INCLUDES_FOR_GNL_C = -I libft/includes/
INCLUDES_FOR_MAIN_C = -I libft/includes/
INCLUDES_FOR_TEST_GNL = -include libft/includes/libft.h get_next_line.h
FLAGS = -Wall -Wextra -Werror
LIBRARY = -L./libft -lft

all: $(NAME)

$(NAME): $(SRCS)
	cp ./tests/main.c .
	make -C libft/ fclean && make -C libft/
	clang $(FLAGS) $(INCLUDES_FOR_GNL_C) -c get_next_line.c
	clang $(FLAGS) $(INCLUDES_FOR_MAIN_C) -c main.c
	clang -o $(NAME) $(OBJ) $(LIBRARY)
	mv main.c $(NAME) ./tests/ 

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f ./tests/$(NAME)

re: fclean all
