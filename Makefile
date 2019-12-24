# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: henrylourtie <henrylourtie@student.42.f    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/10 18:46:09 by hlourtie          #+#    #+#              #
#    Updated: 2019/12/24 14:39:37 by henrylourti      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	:= libft.a

CC		:= gcc
C_FLAGS	:= -Wall -Wextra -Werror
C_FILES:= ft_atoi.c\
					ft_bzero.c\
					ft_calloc.c\
					ft_isalnum.c\
					ft_isalpha.c\
					ft_isascii.c\
					ft_isdigit.c\
					ft_isprint.c\
					ft_itoa.c\
					ft_memccpy.c\
					ft_memchr.c\
					ft_memcmp.c\
					ft_memcpy.c\
					ft_memmove.c\
					ft_memset.c\
					ft_putchar_fd.c\
					ft_putendl_fd.c\
					ft_putnbr_fd.c\
					ft_putstr_fd.c\
					ft_split.c\
					ft_strchr.c\
					ft_strdup.c\
					ft_strjoin.c\
					ft_strlcat.c\
					ft_strlcpy.c\
					ft_strlen.c\
					ft_strmapi.c\
					ft_strncmp.c\
					ft_strnstr.c\
					ft_strrchr.c\
					ft_strtrim.c\
					ft_substr.c\
					ft_tolower.c\
					ft_toupper.c\
					ft_strjoin_free.c\
					ft_strndup.c\
					get_next_line.c\
					ft_lstadd_back.c\
					ft_lstadd_front.c\
					ft_lstclear.c\
					ft_lstdelone.c\
					ft_lstiter.c\
					ft_lstlast.c\
					ft_lstmap.c\
					ft_lstnew.c\
					ft_lstsize.c\
					ft_sizenum.c\

INC := libft.h

SOURCES	:= $(C_FILES)
INCUDES	:= $(addprefix -I , $(INC))
OBJECTS	:= $(patsubst %.c, %.o, $(C_FILES))


all: $(NAME)

%.o : %.c
	@$(CC) $(C_FLAGS) -c $< -o $@ $(INCUDES)

$(NAME) : $(OBJECTS)
	@ar -rc $@ $(OBJECTS)
	@ranlib $@
	

fclean : clean
	@rm -rf $(NAME)

clean :
	@rm -rf $(OBJECTS)

re : fclean all

.PHONY : re fclean clean