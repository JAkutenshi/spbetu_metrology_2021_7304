#include <stdlib.h>
#include "Sampler.h"
const unsigned Size = 1000;
void TestLoop(int nTimes){  
    static int TestDim[Size];
    int tmp;
    int iLoop;
    while (nTimes > 0){
        nTimes --;
        iLoop = Size;
        while (iLoop > 0){
            iLoop -- ;
            tmp = TestDim[0];
            TestDim[0] = TestDim[nTimes];
            TestDim[nTimes] = tmp;
        }
    }
}
void main(){
	SAMPLE;	
	TestLoop(Size / 10); 
	SAMPLE;
	TestLoop(Size / 5); 
	SAMPLE;
	TestLoop(Size / 2);  
	SAMPLE;
	TestLoop(Size / 1); 
	SAMPLE;
}