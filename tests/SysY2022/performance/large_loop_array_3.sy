
int COUNT = 100000;

float loop(float x[], float y[], int length) {
   int i = 0;
   float accumulator = 0.0;
   while (i < length) {
       accumulator = accumulator + x[i] * y[i];
       i = i + 1;       
   }
   return accumulator;
}

int main() {
    int i = 0, j = 0;
    int len = getint();
    float x[8192];
    float y[8192];
    float total = 0.0;
    float a = 0.0;
    float b = 1.0;
    starttime();
    while ( i < COUNT) {
        if (i % 10) {
            a = 0.0;
            b = 1.0;
        } else {
            a = a + 0.1;
            b = b + 0.2;
        }
	while ( j < len) {
	    x[j] = a + j;
            y[j] = b + j;
	    j = j + 1;
	}
	total = total + loop(x, y, len);
	i = i + 1;
    }
    stoptime();
    if ((total - 18338022147751936.000000) <=0.000001 || (total - 18338022147751936.000000) >= -0.000001) {
        putint(0);
	return 0;
    }
    else {
        putint(1);
	return 1;
    }

}
