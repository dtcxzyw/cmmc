int a[1000][1000];
int b[1000][1000];
int c[1000][1000];
const int MAX = 2147483647;

int main(){
    int n;
    int i;
    int j;
    int k;
    int sum = 0;

    i = 0;
    while(i<1000)
    {
        n = getarray(a[i]);
        if(n!=1000){
            return n;
        }
        i = i + 1;
    }

    starttime();

    i = 0;
    while(i<1000){
        j = 0;
        while(j<1000){
            b[i][j] = a[j][i];
            j = j+1;
        }
        i = i+1;
    }

    i = 0;
    while(i<1000){
        j = 0;
        while(j<1000){
            k = 0;
            int temp = 0;
            while(k<1000){
                temp = temp + a[i][k]*b[k][j];
                k = k+1;
            }
            c[i][j] = temp;
            j = j+1;
        }
        i = i+1;
    }

    i = 0;
    while(i<1000){
        j = 0;
        int temp = MAX;
        while(j<1000){
            if(c[i][j]<temp)
            {
                temp = c[i][j];
            }
            j = j+1;
        }
        j = 0;
        while(j<1000){
            c[i][j] = temp;
            j = j+1;
        }
        i = i+1;
    }

    i = 0;
    while(i<1000){
        j = 0;
        int temp = MAX;
        while(j<1000){
            c[i][j] = -c[j][i];
            j = j+1;
        }
        i = i+1;
    }

    i = 0;
    while(i<1000){
        j = 0;
        int temp = MAX;
        while(j<1000){
            sum = sum + c[i][j];
            j = j+1;
        }
        i = i+1;
    }

    stoptime();

    putint(sum);
    return 0;
}

