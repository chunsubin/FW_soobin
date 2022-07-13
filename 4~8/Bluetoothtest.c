#include <stdio.h>

int main(){
	// fopen
	FILE * fp = fopen("/dev/rfcomm0", "r");
	
	if (fp == NULL){
		printf("Bluetooth is not connected \n");
		return 0;
	}
	
	else{
		char c;
		while(1){
			c = fgetc(fp);
			printf("%c ", c);
			if (c == 0x78 | c == 0x58)
				break;
		}
		fclose(fp);
	}

}