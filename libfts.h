/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ssachet <ssachet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/19 18:18:05 by ssachet           #+#    #+#             */
/*   Updated: 2015/06/12 22:57:20 by ssachet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H
# include <ctype.h>

void	ft_bzero(void *s, size_t n);
void	ft_cat(int fd);
int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_islower(int c);
int		ft_isspace(int c);
int		ft_isprint(int c);
int		ft_isupper(int c);
void	*ft_memalloc(size_t size);
void	*ft_memcpy(void *s1, const void *s2, size_t n);
void	*ft_memalloc(size_t size);
void	*ft_memset(void *b, int c, size_t n);
void	ft_putchar(int c);
void	*ft_putstr(char *s1);
char	*ft_strcpy(char *s1, const char *s2);
char	*ft_strcat(char *s1, const char *s2);
char	*ft_strdup(const char *s1);
char	*ft_strncpy(char *s1, const char *s2, size_t n);
char	*ft_strnew(size_t size);
int		ft_tolower(int c);
int		ft_toupper(int c);
int		ft_toupper(int c);
size_t	ft_strlen(const char *s);
int		ft_puts(const char *s1);
int		ft_abs(int n);
#endif
