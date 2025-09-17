#include "include/libasm.h"
#include <stdio.h>
#include <string.h>
int main(void){
	printf("ft_strlen = %ld\n",ft_strlen("Hello"));
	char dest[50];
	char *src = "This sentence will be copy";

	ft_strcpy(dest, src);
	printf("%s\n", dest);
	printf("comparaison de str1 et str2 : %d\n", ft_strcmp("Hello", "Hellow"));

	printf("comparaison de str1 et str2 : %d\n", strcmp("Hello", "Hellow"));
	return 0;
}
