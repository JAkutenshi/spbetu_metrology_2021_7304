1	#include <stdlib.h>
2	#include "Sampler.h"
3	#define Size 100004	
4	int i, tmp, dim[Size];
5
6	void main()
7	{
8	SAMPLE;
9	for(i=0;i<Size/10;i++){ tmp=dim[0]; dim[0]=dim[i]; dim[i]=tmp; };
10	SAMPLE;
11	for(i=0;i<Size/5;i++){ tmp=dim[0]; dim[0]=dim[i]; dim[i]=tmp; };
12	SAMPLE;
13	for(i=0;i<Size/2;i++){ tmp=dim[0]; dim[0]=dim[i]; dim[i]=tmp; };
14	SAMPLE;
15	for(i=0;i<Size;i++) { tmp=dim[0]; dim[0]=dim[i]; dim[i]=tmp; };
16	SAMPLE;
17	for(i=0;i<Size/10;i++)
18	{ tmp=dim[0]; dim[0]=dim[i]; dim[i]=tmp; };
19	SAMPLE;
20	for(i=0;i<Size/5;i++)
21	{ tmp=dim[0]; dim[0]=dim[i]; dim[i]=tmp; }
22	SAMPLE;
23	for(i=0;i<Size/2;i++)
24	{ tmp=dim[0]; dim[0]=dim[i]; dim[i]=tmp; };
25	SAMPLE;
26	for(i=0;i<Size;i++)
27	{ tmp=dim[0]; dim[0]=dim[i]; dim[i]=tmp; };
28	SAMPLE;
29	for(i=0;i<Size/10;i++)
30	{ tmp=dim[0];
31	dim[0]=dim[i];
32	dim[i]=tmp;
33	};
34	SAMPLE;
35	for(i=0;i<Size/5;i++)
36	{ tmp=dim[0];
37	dim[0]=dim[i];
38	dim[i]=tmp;
39	};
40	SAMPLE;
41	for(i=0;i<Size/2;i++)
42	{ tmp=dim[0];
43	dim[0]=dim[i];
44	dim[i]=tmp;
45	};
46	SAMPLE;
47	for(i=0;i<Size;i++)
48	{ tmp=dim[0];
49	dim[0]=dim[i];
50	dim[i]=tmp;
51	};
52	SAMPLE; }