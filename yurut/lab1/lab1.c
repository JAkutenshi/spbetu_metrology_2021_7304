{\rtf1\ansi\ansicpg1251\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww14080\viewh18000\viewkind0
\deftab708
\pard\pardeftab708\li302\ri6654\sl276\slmult1\sb1\partightenfactor0

\f0\fs24 \cf0 #include <stdio.h>\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 #include <stdbool.h>\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 #include\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 <math.h>\
\pard\pardeftab708\li302\ri4319\sl-636\sb32\partightenfactor0
\cf0 /* evaluation of the gaussian error function */\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 double\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 x, er, ec;\
\pard\pardeftab708\li302\ri-770\sl-241\partightenfactor0
\cf0 bool done;\
\pard\pardeftab708\li302\ri-770\sb73\partightenfactor0
\cf0 double\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 erf(double\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 x)\
\pard\pardeftab708\li302\ri-770\sb41\partightenfactor0
\cf0 \{\
\pard\pardeftab708\li542\ri5289\sl276\slmult1\sb40\partightenfactor0
\cf0 const double sqrtpi = 1.7724538;\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 const double t2 = 0.66666667;\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 const double t3 = 0.66666667;\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 const double t4 = 0.07619048;\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 const double t5 = 0.01693122;\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 const double t6 = 3.078403E-3;\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 const double t7 = 4.736005E-4;\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 const double t8 = 6.314673E-5;\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 const double t9 = 7.429027E-6;\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 const double t10 = 7.820028E-7;\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 const double t11 = 7.447646E-8;\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 const double t12 =\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 6.476214E-9;\
\pard\pardeftab708\ri-770\sb8\partightenfactor0

\fs27 \cf0 \
\pard\pardeftab708\li542\ri6918\sl278\slmult1\partightenfactor0

\fs24 \cf0 double x2, sum;\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 int i;\
\pard\pardeftab708\ri-770\sb2\partightenfactor0

\fs27 \cf0 \
\pard\pardeftab708\li542\ri-770\partightenfactor0

\fs24 \cf0 x2 =\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 x * x;\
\pard\pardeftab708\li542\ri-770\sb41\partightenfactor0
\cf0 sum\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 = t5 +\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 x2 * (t6\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 +\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 x2 * (t7\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 + x2 *\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 (t8 + x2 * (t9 +\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 x2\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 * (t10 + x2\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 * (t11 +\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 x2 * t12))))));\
\pard\pardeftab708\ri-770\sb3\partightenfactor0

\fs31 \cf0 \
\pard\pardeftab708\li542\ri-770\partightenfactor0

\fs24 \cf0 return\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 2.0 *\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 exp(-x2) / sqrtpi *\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 (x *\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 (1 +\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 x2 * (t2\kerning1\expnd0\expndtw3
 \kerning1\expnd0\expndtw0 +\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 x2\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 * (t3\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 + x2\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 * (t4\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 + x2\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 * sum)))));\
\pard\pardeftab708\li302\ri-770\sb41\partightenfactor0
\cf0 \}\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 /*\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 function erf\kerning1\expnd-1\expndtw-3
 \kerning1\expnd0\expndtw0 */\
\pard\pardeftab708\ri-770\sb1\partightenfactor0

\fs31 \cf0 \
\pard\pardeftab708\li302\ri-770\sb1\partightenfactor0

\fs24 \cf0 double\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 erfc(double\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 x)\
\pard\pardeftab708\li302\ri-770\sb43\partightenfactor0
\cf0 \{\
\pard\pardeftab708\li542\ri-770\sb41\partightenfactor0
\cf0 /*\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 complement\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 of\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 error\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 function\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 */\
\pard\pardeftab708\ri-770\sb1\partightenfactor0

\fs31 \cf0 \
\pard\pardeftab708\li542\ri5289\sl278\slmult1\partightenfactor0

\fs24 \cf0 const double sqrtpi = 1.7724538;\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 double x2, v, sum;\
\pard\pardeftab708\ri-770\sb2\partightenfactor0

\fs27 \cf0 \
\pard\pardeftab708\li542\ri-770\partightenfactor0

\fs24 \cf0 x2 =\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 x * x;\
\pard\pardeftab708\li542\ri-770\sb41\partightenfactor0
\cf0 v\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 =\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 1.0 / (2.0 * x2);\
\pard\pardeftab708\li542\ri-770\sb43\partightenfactor0
\cf0 sum =\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 v / (1 +\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 8 * v / (1 +\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 9 * v / (1\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 +\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 10 * v / (1 +\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 11 * v / (1 +\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 12 * v)))));\
\pard\pardeftab708\li542\ri1326\sl276\slmult1\sb41\partightenfactor0
\cf0 sum = v / (1 + 3 * v / (1 + 4 * v / (1 + 5 * v / (1 + 6 * v / (1 + 7 * sum)))));\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 return\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 1.0 / (exp(x2)\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 *\kerning1\expnd0\expndtw2
 \kerning1\expnd0\expndtw0 x * sqrtpi * (1 +\kerning1\expnd-1\expndtw-3
 \kerning1\expnd0\expndtw0 v / (1 + 2 * sum)));\
\pard\pardeftab708\li302\ri-770\sl-275\partightenfactor0
\cf0 \}\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 /*\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 function\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 ercf\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 */\
\pard\pardeftab708\ri-770\sb4\partightenfactor0

\fs31 \cf0 \
\pard\pardeftab708\li302\ri-770\partightenfactor0

\fs24 \cf0 int\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 main()\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 /*\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 main */\
\pard\pardeftab708\li302\ri-770\sb41\partightenfactor0
\cf0 \{\
\pard\pardeftab708\li542\fi-60\ri6742\sl278\slmult1\sb40\partightenfactor0
\cf0 /* system("clr");*/\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 done\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 =\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 true;\
\pard\pardeftab708\li542\fi-60\ri6942\sl276\slmult1\partightenfactor0
\cf0 /* printf("\\n");*/\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 do \{\
\pard\pardeftab708\li781\ri-770\sb73\partightenfactor0
\cf0 printf("Arg?\kerning1\expnd-1\expndtw-3
 \kerning1\expnd0\expndtw0 ");\
\pard\pardeftab708\li781\ri6516\sl276\slmult1\sb44\partightenfactor0
\cf0 scanf("%lf", &x);\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 if\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 (x <\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 0.0)\{\
\pard\pardeftab708\li1021\ri-770\sl-275\partightenfactor0
\cf0 done\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 =\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 false;\
\pard\pardeftab708\li781\ri-770\sb41\partightenfactor0
\cf0 \}\
\pard\pardeftab708\li781\ri-770\sb43\partightenfactor0
\cf0 else\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 if (x\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 ==\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 0.0)\
\pard\pardeftab708\li781\ri-770\sb41\partightenfactor0
\cf0 \{\
\pard\pardeftab708\li1021\ri-770\sb41\partightenfactor0
\cf0 er\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 =\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 0.0;\
\pard\pardeftab708\li1021\ri-770\sb40\partightenfactor0
\cf0 ec\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 =\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 1.0;\
\pard\pardeftab708\li781\ri-770\sb44\partightenfactor0
\cf0 \}\
\pard\pardeftab708\li781\ri-770\sb40\partightenfactor0
\cf0 else\
\pard\pardeftab708\li781\ri-770\sb41\partightenfactor0
\cf0 \{\
\pard\pardeftab708\li1021\ri-770\sb41\partightenfactor0
\cf0 if\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 (x <\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 1.5)\
\pard\pardeftab708\li1021\ri-770\sb44\partightenfactor0
\cf0 \{\
\pard\pardeftab708\ri-770\sb3\partightenfactor0

\fs23 \cf0 \
\pard\pardeftab708\li1261\ri6516\sl276\slmult1\sb90\partightenfactor0

\fs24 \cf0 er = erf(x);\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 ec\kerning1\expnd-2\expndtw-6
 \kerning1\expnd0\expndtw0 =\kerning1\expnd-1\expndtw-5
 \kerning1\expnd0\expndtw0 1.0\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 -\kerning1\expnd-1\expndtw-5
 \kerning1\expnd0\expndtw0 er;\
\pard\pardeftab708\li1021\ri-770\sb1\partightenfactor0
\cf0 \}\
\pard\pardeftab708\li1021\ri-770\sb41\partightenfactor0
\cf0 else\
\{\
\pard\pardeftab708\li1261\ri6516\sl278\slmult1\sb41\partightenfactor0
\cf0 ec = erfc(x);\kerning1\expnd-12\expndtw-57
 \kerning1\expnd0\expndtw0 er\kerning1\expnd-1\expndtw-5
 \kerning1\expnd0\expndtw0 =\kerning1\expnd-2\expndtw-6
 \kerning1\expnd0\expndtw0 1.0\kerning1\expnd-1\expndtw-4
 \kerning1\expnd0\expndtw0 -\kerning1\expnd-1\expndtw-4
 \kerning1\expnd0\expndtw0 ec;\
\pard\pardeftab708\li1261\ri-770\sl-272\partightenfactor0
\cf0 /* if */\
\pard\pardeftab708\li1021\ri-770\sb41\partightenfactor0
\cf0 \}\
\pard\pardeftab708\li961\ri-770\sb41\partightenfactor0
\cf0 /*\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 printf("X=\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 %8.4f,\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 Erf=\kerning1\expnd0\expndtw1
 \kerning1\expnd0\expndtw0 %12f,\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 Erfc=\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 %12f\\n",\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 x, er,\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 ec);*/\
\pard\pardeftab708\li781\ri-770\sb41\partightenfactor0
\cf0 \} /* if\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 */\
\pard\pardeftab708\li542\ri-770\sb43\partightenfactor0
\cf0 \}\kerning1\expnd-1\expndtw-3
 \kerning1\expnd0\expndtw0 while\kerning1\expnd-1\expndtw-2
 \kerning1\expnd0\expndtw0 (done);\
\pard\pardeftab708\li302\ri-770\sb41\partightenfactor0
\cf0 \}\
/*\kerning1\expnd-1\expndtw-1
 \kerning1\expnd0\expndtw0 End. */}