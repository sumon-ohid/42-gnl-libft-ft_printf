SRCS		= srcs/main.c \

OBJS		= $(SRCS:.c=.o)
CC			= cc
CFLAGS		= -Wall -Werror -Wextra -g
NAME		= executable
LIBFT		= ./libft-plus/libft/
GNL			= ./libft-plus/get_next_line/
FTPRINTF	= ./libft-plus/ft_printf/
HEADERS		= -I libft -I get_next_line -I ft_printf

# Color codes
GREEN		= $(shell tput -Txterm setaf 2)
BLUE		= $(shell tput -Txterm setaf 4)
PURPLE		= $(shell tput -Txterm setaf 5)

all: $(NAME)

%.o : %.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
	@$(MAKE) --no-print-directory -C $(LIBFT) all
	@$(MAKE) --no-print-directory -C $(GNL) all
	@$(MAKE) --no-print-directory -C $(FTPRINTF) all
	@$(CC) $(CFLAGS) $(OBJS) $(HEADERS) $(LIBFT)libft.a $(GNL)gnl.a $(FTPRINTF)libftprintf.a -o $(NAME)
	@echo ${GREEN} ======== $(NAME) created ========

clean:
	@$(MAKE) --no-print-directory -C $(LIBFT) clean
	@$(MAKE) --no-print-directory -C $(FTPRINTF) clean
	@$(MAKE) --no-print-directory -C $(GNL) clean
	@rm -f $(OBJS)
	@echo ======== Cleaned! ========
		
fclean: 
	@$(MAKE) --no-print-directory -C $(LIBFT) fclean
	@$(MAKE) --no-print-directory -C $(FTPRINTF) fclean
	@$(MAKE) --no-print-directory -C $(GNL) fclean
	@rm -f $(NAME)
	@rm -f $(OBJS)
	@echo ======== Super Cleaned! ========
	
re: fclean all

.PHONY: all libft gnl ftprintf clean fclean re
