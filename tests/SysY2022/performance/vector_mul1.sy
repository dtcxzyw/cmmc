int func(int i, int j) {
    return ((i+j) * (i+j+1) / 2 + i + 1);
}

float Vectordot(float v[], float u[], int n) {
    int i = 0;
    float sum = 0;
    while (i < n) {
        sum =sum+ v[i] * u[i];
        i=i+1;
    }
    return sum;
}

void mult1(float v[], float out[],int n) {
    int i = 0, j = 0;
    float sum = 0;

    while (i < n) {
        while (j < n) {
            sum =sum+ v[j] / func(i,j);
            j=j+1;
        }
        out[i] = sum;
        i=i+1;
     }
}

void mult2(float v[], float out[], int n) {
    int i = 0, j = 0;
    float sum = 0;

    while (i < n) {
        while (j < n) {
            sum =sum+ v[j] / func(j,i);
            j=j+1;
        }
        out[i] = sum;
        i=i+1;
     }
}


void mult_combin(float v[], float out[], int n, float tmp[]) {
    mult1(v, tmp, n);
    mult2(tmp, out, n);
}

float temp = 1;
float my_sqrt(float input) {
    while (temp - input / temp > 1e-6 || temp - input / temp < -1e-6){
        temp = (temp+input/temp)/2;
    }
    return temp;
}

int main() {
    int n = 100000;
    if (n <= 0) {
     n = 2000;
}
    starttime();
    float vectorA[100000], vectorB[100000], Vectortmp[100000];

    int i;
    while(i < n) {
        vectorA[i] = 1;
        i=i+1;
    }
    i = 0;
    while(i < 1000) {
        mult_combin(vectorA, vectorB, n, Vectortmp);
        mult_combin(vectorB, vectorA, n, Vectortmp);
        i=i+1;
    }
    stoptime();
    float result = my_sqrt(Vectordot(vectorA,vectorB, n) / Vectordot(vectorB,vectorB,n));
    if(result - 1.000000 <= 1e-6 && result - 1.000000 >= -1e-6){
        putint(1);
    }else{
        putint(0);
    }
    putch(10);
    return 0;
}
