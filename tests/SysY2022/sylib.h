#ifndef __SYLIB_H_
#define __SYLIB_H_

#include <stdarg.h>
#include <stdio.h>
#include <sys/time.h>
/* Input & output functions */
int getint(), getch(), getarray(int a[]);
float getfloat();
int getfarray(float a[]);
#ifdef __cplusplus
int getfarray(float a[][270]);
#endif

void putint(int a), putch(int a), putarray(int n, int a[]);
void putfloat(float a);
void putfarray(int n, float a[]);
#ifdef __cplusplus
void putfarray(int n, float a[][270]);
#endif

void putf(char a[], ...);

/* Timing function implementation */
#define starttime() _sysy_starttime(__LINE__)
#define stoptime() _sysy_stoptime(__LINE__)

void _sysy_starttime(int lineno);
void _sysy_stoptime(int lineno);

#endif
