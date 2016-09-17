int harshad(int n){
	int x  = 0;
	int sum = 0;
	int m = n;

	while(n > 0){
	    	sum = sum + (n%10);
	    	x = n/10;
	    	n = x;
	}
	    
     if((m%sum )== 0)
	return 1;
	   
     return 0;	
}