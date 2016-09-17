#include<stdio.h>
#include<stdlib.h>

int is_little_endian();

int main(){
		printf("Result =  %d\n" , is_little_endian());
}

int is_little_endian(){
		int x = 1;//return 1 if little endian
		return (int)(* (char *) &x);
}
