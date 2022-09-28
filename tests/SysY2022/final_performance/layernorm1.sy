float myAbs(float x){
    if(x<0){
        x = -x;
    }
    return x;
}

float sqrt(float x){
    float start = 0;
    float end = x;
    float mid = (start + end)/ 2;
    while(myAbs(mid*mid - x)>0.001){
        if(mid*mid > x){
            end = mid;
            mid = (mid + start)/2;
        }
        else{
            start = mid;
            mid = (mid + end)/2;
        }
    }
    return mid;
}
float a[1000][1000];
int main(){
    int n;
    int i;
    int j;
    int k;
    float sum = 0;    
    
    i = 0;
    while(i<1000)
    {
        n = getfarray(a[i]);
        if(n!=1000){
            return n;
        }
        i = i + 1;
    }

    starttime();

    k = 0;
    while(k<100)
    {
        float mean[1000];
        i = 0;
        while(i<1000){
            j = 0;
            mean[i] = 0;
            while(j<1000){
                mean[i] = mean[i] + a[i][j];
                j = j+1;
            }
            mean[i] = mean[i] / 1000;
            i = i+1;
        }
        float var[1000];
        i = 0;
        while(i<1000){
            j = 0;
            var[i] = 0;
            while(j<1000){
                var[i] = var[i] + (a[i][j] - mean[i]) * (a[i][j] - mean[i]);
                j = j+1;
            }
            var[i] = var[i] / 1000;
            var[i] = sqrt(var[i] + 0.01);
            i = i+1;
        }
        i = 0;
        while(i<1000){
            j = 0;
            while(j<1000){
                a[i][j] = (a[i][j] - mean[i])/var[i];
                sum = sum + a[i][j];
                j = j+1;
            }
            i = i+1;
        }
        k = k + 1;
    }

    i = 0;
    while(i<1000){
        j = 0;
        while(j<1000){
            sum = sum + a[i][j];
            j = j+1;
        }
        i = i+1;
    }

    stoptime();

    putfloat(sum);
    return 0;
}

