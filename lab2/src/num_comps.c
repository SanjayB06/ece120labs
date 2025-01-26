#include <stdio.h>
int main() {
    int val1 = -22;
    int val2 = 33;
    int res;
    unsigned int val1a = -22;
    unsigned int val2a = 33;
    unsigned int resA;
    float val1b = -22;
    float val2b = 33;
    float resB;
    double val1c = -22;
    double val2c = 33;
    double resC;
    res = val1 * val2;
    resA = val1a * val2a;
    resB = val1b * val2b;
    resC = val1c * val2c;
    printf("%d\n", res);
    printf("%u\n",resA);
    printf("%f\n",resB);
    printf("%f\n",resC);

    int val3 = 12;
    int val4 = 3;
    int res1;
    unsigned int val3a = 12;
    unsigned int val4a = 3;
    unsigned int res1A;
    float val3b = 12;
    float val4b = 3;
    float res1B;
    double val3c = 12;
    double val4c = 3;
    double res1C;
    res1 = val3 / val4;
    res1A = val3a / val4a;
    res1B = val3b / val4b;
    res1C = val3c / val4c;
    printf("%d\n ",res1);
    printf("%u\n",res1A);
    printf("%f\n",res1B);
    printf("%f\n",res1C);

    int val5 = 10;
    int val6 = 3;
    int res2;
    unsigned int val5a = 10;
    unsigned int val6a = 3;
    unsigned res2a;
    float val5b =10;
    float val6b = 3;
    float res2b;
    double val5c = 10;
    double val6c = 3;
    double res2c;
    res2 = val5 / val6;
    res2a = val5a / val6a;
    res2b = val5b / val6b;
    res2c = val5c / val6c;
    printf("%d\n",res2);
    printf("%u\n",res2a);
    printf("%f\n",res2b);
    printf("%f\n",res2c);

    int val7 = 12;
    int val8 = 3;
    int val9 = -11;
    int res3;
    int res4;
    res3 = val7 % val8;
    res4 = val9 % val8;
    printf("%d\n",res3);
    printf("%d\n",res4);


    return 0;
}




