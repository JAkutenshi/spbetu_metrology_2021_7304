1	#include "Sample.h"


2	const unsigned Size = 1000;
3
4
5	void TestLoop(int nTimes)  
6	{
7	static int TestDim[Size];
8	int tmp;
9	int iLoop;
10
11	while (nTimes > 0) 
12	{
13	nTimes --; 
14
15	iLoop = Size;
16	while (iLoop > 0) 
17	{
18	iLoop -- ;
19	tmp = TestDim[0];
20	TestDim[0] = TestDim[nTimes];
21	TestDim[nTimes] = tmp; 
22	}
23	}
24	} /* TestLoop */ 
25
26
27	void main()
28	{
29	SAMPLE;
30	TestLoop(Size / 10); // 100 * 1000
31	SAMPLE;
32	TestLoop(Size / 5);  // 200 * 1000
33	SAMPLE;
34	TestLoop(Size / 2);  // 500 * 1000
35	SAMPLE;	
36	TestLoop(Size / 1); // 1000 * 1000
37	SAMPLE;
38	}