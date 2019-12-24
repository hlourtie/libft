/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hlourtie <hlourtie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/07 13:57:27 by hlourtie          #+#    #+#             */
/*   Updated: 2019/10/10 18:10:11 by hlourtie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	sizenum(int n)
{
	int		size;

	size = 0;
	if (n < 0)
		size++;
	while (n)
	{
		size++;
		n /= 10;
	}
	return (size);
}

char		*ft_itoa(int n)
{
	long int	num;
	char		*ret;
	int			neg;
	size_t		len;

	len = ((n == 0) ? 1 : sizenum(n));
	num = n;
	if (!(ret = (char*)malloc(sizeof(char) * (len + 1))))
		return (NULL);
	ret[len--] = '\0';
	neg = (n < 0 ? 1 : 0);
	if (neg)
	{
		ret[0] = '-';
		num = -1 * (long int)n;
	}
	if (num == 0)
		ret[0] = '0';
	while (num)
	{
		ret[len--] = num % 10 + '0';
		num /= 10;
	}
	return (ret);
}
