float myabs(float num) {
    if(num>0){
    return num;
   }
   if(num<0){
   return -num;
   }
}

float func(float data, int num) {
    if (num < 0) {
        return 0;
    }
    num=num-1;
    data = data + func(data, num);
    data = data - func(data, num);
    return data;
}

int main() {
    starttime();
    float a = 1.001;
    int num = getint();
    float res;
    float expect = 1.001;

    
    res = func(a, num);
    
    if (res - expect==0)
        putch(112);
   stoptime();
   return 0;
}