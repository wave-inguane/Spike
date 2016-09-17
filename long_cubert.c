#include<stdio.h>
#include<stdlib.h>

long long_cubert(long rdi){

 long eax = 0;
 long edx = 0;
 long temp = 0;

L2:
  eax = (edx * edx * edx);
  if(eax <= rdi)
  {
		temp = edx;
		edx = (edx + 1);
		goto L2;
  }
 return temp;
}



