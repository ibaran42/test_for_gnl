/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ibaran <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/28 16:23:19 by ibaran            #+#    #+#             */
/*   Updated: 2018/11/28 16:27:11 by ibaran           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"
#include <fcntl.h>
#include <stdio.h>

int main (int ac, char **av)
{
	int		fd;
	char	*line;
	int		i;

	if (ac == 1)
		fd = 0;
	i = 0;
	while (++i < ac)
	{
		fd = open(av[i], O_RDONLY);
		while (get_next_line(fd, &line) == 1)
		{
			// sleep(1);
			printf("%s\n", line);
			free(line);
		}
		close(fd);
	}
}
