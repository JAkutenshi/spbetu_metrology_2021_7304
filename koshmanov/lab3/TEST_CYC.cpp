#include "sampler.h"
#define Size 10000
int i, j, tmp, dim[Size];
void main(){
	SAMPLE;
	for (i = 0; i < Size / 10; i++){ 
		tmp = dim[0]; 
		dim[0] = dim[i]; 
		dim[i] = tmp;
	};
	SAMPLE;
	for (i = 0; i < Size / 5; i++) {
		tmp = dim[0]; 
		dim[0] = dim[i]; 
		dim[i] = tmp;
	};
	SAMPLE;
	for (i = 0; i < Size / 2; i++){ 
		tmp = dim[0]; 
		dim[0] = dim[i]; 
		dim[i] = tmp;
	};
	SAMPLE;
	for (i = 0; i < Size; i++){ 
		tmp = dim[0]; 
		dim[0] = dim[i]; 
		dim[i] = tmp; 
	};
	SAMPLE;
	for (i = 0; i < Size / 10; i++){
		tmp = dim[0]; 
		dim[0] = dim[i]; 
		dim[i] = tmp;	
	};
	SAMPLE;
	for (i = 0; i < Size / 5; i++)
	{
		tmp = dim[0]; 
		dim[0] = dim[i]; 
		dim[i] = tmp; 	
	};
	SAMPLE;
	for (i = 0; i < Size / 2; i++){
		tmp = dim[0]; 
		dim[0] = dim[i]; 
		dim[i] = tmp; 	
	};
	SAMPLE;
	for (i = 0; i < Size; i++){
		tmp = dim[0]; 
		dim[0] = dim[i]; 
		dim[i] = tmp; 	
	};
	SAMPLE;
	for (i = 0; i < Size / 10; i++){
		tmp = dim[0];
		dim[0] = dim[i];
		dim[i] = tmp; 	
	};
	SAMPLE;
	for (i = 0; i < Size / 5; i++){
		tmp = dim[0];
		dim[0] = dim[i];
		dim[i] = tmp; 	
	};
	SAMPLE;
	for (i = 0; i < Size / 2; i++){
		tmp = dim[0]; 
		dim[0] = dim[i];
		dim[i] = tmp; 	
	};
	SAMPLE;
	for (i = 0; i < Size; i++){
		tmp = dim[0];
		dim[0] = dim[i];
		dim[i] = tmp; 	
	};
		SAMPLE;
 }
