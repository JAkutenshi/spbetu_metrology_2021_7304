#include <stdlib.h>
#include "Sampler.h"
const unsigned Size = 1000;
void TestLoop(int nTimes)
{
  static int TestDim[Size];
  int tmp;
  int iLoop;
  while (nTimes > 0)
  {
    nTimes --;
    iLoop = Size;
    while (iLoop > 0)
    {
      iLoop -- ;
      tmp = TestDim[0];
      TestDim[0] = TestDim[nTimes];
      TestDim[nTimes] = tmp;
    }
  }
} /* TestLoop */
void main()
{
	SAMPLE;	
	TestLoop(Size / 10); // 100 * 1000  повторений
	SAMPLE;
	TestLoop(Size / 5);  // 200 * 1000  повторений
	SAMPLE;
	TestLoop(Size / 2);  // 500 * 1000  повторений
	SAMPLE;
	TestLoop(Size / 1);  // 1000* 1000  повторений
	SAMPLE;
}
