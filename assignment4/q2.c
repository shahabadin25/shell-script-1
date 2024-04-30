#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>
#define NUM_CHILDREN 10
#define RANGE_SIZE 10

//function to check if a number is prime or not

int is_prime(int num){
	if(num<=1)
	return 0;
	for(int i=2;i*i<=num;i++)
	{
	if(num%i==0)
	return 0;
	}
	return 1;
}
void print_primes(int start,int end){
for(int i=start;i<=end;i++)
{
	
		if(is_prime(i)){
		printf("%d\n",i);
		}	
	
	
}
}
int main()
{
	pid_t child_pid[NUM_CHILDREN];
	int range_start=1;
	int range_end=RANGE_SIZE;
	
	//creation of child process
	for(int i=0;i<NUM_CHILDREN;i++)
	{
		child_pid[i]=fork();
		if(child_pid[i]==0)//child process
		{
			printf("child %d: printing primes is range %d to %d\n",i+1,range_start,range_end);
			print_primes(range_start,range_end);
			exit(0);
		}
		else if(child_pid[i]<0){
		perror("fork");
		exit(1);
		}
		range_start=range_end+1;
		range_end+=RANGE_SIZE;
	}

//wait for all child processes to finish
for(int i=0;i<NUM_CHILDREN;i++)
{
		waitpid(child_pid[i],NULL,0);
}
printf("All child process have finished .\n");
return 0;
}
