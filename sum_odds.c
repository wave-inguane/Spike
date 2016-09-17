
int sum_odds(int arr[], int length){

	int sum = 0;
	int i  = 0;

	for( ;i < length; i++)
	if(arr[i]%2 == 1)
	sum = sum + arr[i];
	
	return sum;
}
