/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: msumon <msumon@student.42vienna.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/16 23:18:23 by msumon            #+#    #+#             */
/*   Updated: 2024/01/23 12:02:27 by msumon           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/header.h"

int	main(void)
{
	char	*str;
	int		res;

	str = (char *)malloc(sizeof(char) * 100);
	str = "12345";
	ft_printf("This is testing ft_printf function.\n");
	res = ft_atoi(str);
	ft_printf("This is testing ft_atoi from libft : %d\n", res);
	return (0);
}
