#include "include/libasm.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>
int main(void){
	printf("ft_strlen = %ld\n",ft_strlen("Hello"));
	char dest[50];
	char *src = "This sentence will be copy";

	ft_strcpy(dest, src);
	printf("%s\n", dest);
	printf("comparaison de str1 et str2 : %d\n", ft_strcmp("Hello", "Hellow"));

	printf("comparaison de str1 et str2 : %d\n", strcmp("Hello", "Hellow"));
    ft_write(1, "Salut c'est write\n", ft_strlen("salut c'est write\n"));
    
    char buf[128];
    ft_write(1,"Enter a input to test ft_read :\t ",ft_strlen("Enter a input to test ft_read"));
    int bytes = ft_read(0, buf, 10);
    buf[bytes] = '\0';
    printf("Result of read : %s\n", buf);

	
	char *copy = ft_strdup("This is a string well copied\n");
	printf("result of copy : %s", copy);
	return 0;
}
