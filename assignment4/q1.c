#include<stdio.h>
#include<sys/wait.h>
#include<unistd.h>
#include<stdlib.h>
int  main()
{
	int pid=fork();
	if(pid>0)
	{
		printf("i am a parent process\n");
		
		printf("ID: %d\n\n",getpid());
		int status;
		waitpid(pid,&status,0);//wait for child process to finish
		printf("parent process exited with status %d\n",WEXITSTATUS(status));
	}
	else if(pid==0)
	{
		printf("i am child process\n");
		printf("ID: %d\n\n",getpid());
	}
	else if(pid<0)
	{
		printf("child process creation failed");
		return 1;
	}
	
	return 0;
	
}
