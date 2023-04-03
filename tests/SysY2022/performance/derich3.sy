int w = 512;
int h = 270;
float imgIn[512][270];
float imgOut[512][270];
float my_y1[512][270];
float my_y2[512][270];
float alpha = 0.25;

float newExp(float x)
{
    x = 1.0 + x / 256;
    x = x * x;
    x = x * x;
    x = x * x;
    x = x * x;
    x = x * x;
    x = x * x;
    x = x * x;
    x = x * x;
    return x;
}

float newPow(float num, int n)
{
    if (n < 0)
        return 1.0 / newPow(num, -n);
    else if (n == 0)
        return 1.0;
    else if (n > 0)
        return num * newPow(num, n - 1);
}

void kernel_deriche(int w, int h, float alpha, float imgIn[][270],
                    float imgOut[][270], float y1[][270], float y2[][270])
{
    int i, j;
    float xm1, tm1, ym1, ym2;
    float xp1, xp2;
    float tp1, tp2;
    float yp1, yp2;

    float k;
    float a1, a2, a3, a4, a5, a6, a7, a8;
    float b1, b2, c1, c2;

    k = (1.0 - newExp(-alpha)) * (1.0 - newExp(-alpha)) /
        (1.0 + 2.0 * alpha * newExp(-alpha) - newExp(2.0 * alpha));
    a1 = k;
    a5 = k;
    a6 = k * newExp(-alpha) * (alpha - 1.0);
    a2 = a6;
    a7 = k * newExp(-alpha) * (alpha + 1.0);
    a3 = a7;
    a8 = -k * newExp(-2.0 * alpha);
    a4 = a8;
    b1 = newPow(2.0, -alpha);
    b2 = -newExp(-2.0 * alpha);
    c1 = 1;
    c2 = 1;
    i = 0;
    while (i < w)
    {
        ym1 = 0.0;
        ym2 = 0.0;
        xm1 = 0.0;
        j = 0;
        while (j < h)
        {
            y1[i][j] = a1 * imgIn[i][j] + a2 * xm1 + b1 * ym1 + b2 * ym2;
            xm1 = imgIn[i][j];
            ym2 = ym1;
            ym1 = y1[i][j];
            j = j + 1;
        }
        i = i + 1;
    }
    i = 0;
    while (i < w)
    {
        yp1 = 0.0;
        yp2 = 0.0;
        xp1 = 0.0;
        xp2 = 0.0;
        j = h - 1;
        while (j >= 0)
        {
            y2[i][j] = a3 * xp1 + a4 * xp2 + b1 * yp1 + b2 * yp2;
            xp2 = xp1;
            xp1 = imgIn[i][j];
            yp2 = yp1;
            yp1 = y2[i][j];
            j = j - 1;
        }
        i = i + 1;
    }
    i = 0;
    while (i < w) {
    	j = 0;
        while (j < h)
        {
            imgOut[i][j] = c1 * (y1[i][j] + y2[i][j]);
            j = j + 1;
        }
        i = i + 1;
    }
    j = 0;
    while (j < h)
    {
        tm1 = 0.0;
        ym1 = 0.0;
        ym2 = 0.0;
        i = 0;
        while (i < w)
        {
            y1[i][j] = a5 * imgOut[i][j] + a6 * tm1 + b1 * ym1 + b2 * ym2;
            tm1 = imgOut[i][j];
            ym2 = ym1;
            ym1 = y1[i][j];
            i = i + 1;
        }
        j = j + 1;
    }
    j = 0;
    while (j < h)
    {
        tp1 = 0.0;
        tp2 = 0.0;
        yp1 = 0.0;
        yp2 = 0.0;
        i = w - 1;
        while (i >= 0)
        {
            y2[i][j] = a7 * tp1 + a8 * tp2 + b1 * yp1 + b2 * yp2;
            tp2 = tp1;
            tp1 = imgOut[i][j];
            yp2 = yp1;
            yp1 = y2[i][j];
            i = i - 1;
        }
        j = j + 1;
    }
    i = 0;
    while (i < w) {
    	j = 0;
        while (j < h) {
            imgOut[i][j] = c2 * (y1[i][j] + y2[i][j]);
            j = j + 1;
        }
        i = i + 1;
    }
}

int main()
{
    getfarray(imgIn);
    starttime();
    kernel_deriche(w, h, alpha, imgIn, imgOut, my_y1, my_y2);
    stoptime();
    putfarray(w * h, imgOut);
    return 0;
}
