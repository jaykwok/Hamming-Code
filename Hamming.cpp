//
// Created by Jay Kwok on 2020/12/28.
//

#include "Hamming.h"
//hamming encode 汉明码编码
std::vector<int> Hamming::encode(std::vector<int> x) {
    //计算校验码长度
    int k = x.size();
    int r = 1;
    while (r + k + 1 > pow(2, r)) {
        r++;
    }

    //定义编码长度
    int n = r + k;

    //汉明码编码:采用偶校验
    std::vector<int> x_encoding(n,0);

    //判断是否为底为2的幂整函数的值域内，即判断当前是否为插入校验码的位置
    auto is2n = [](int N) { if ((N & (N - 1)) == 0 && N > 0) return 1; else return 0; };

    //n=k+r->r=n-k
    int j = 0;//作为信息码的下标

    //填充信息码
    for (auto i = 1; i <= n; i++) {
        if (is2n(i))
            continue;
        x_encoding[i - 1] = x[j];
        j++;
    }

    //确定校验码的值
    std::vector<int> sum(r,0);//存放偶校验的相同位数字一样的数的和
    int temp = 1;//用于确定相同数位的数字
    for (auto i = 0; i < r; i++) {
        for (j = 0; j < n; j++) {
            //对于j转换为2进制，第i+1位都为1的数分为一个组，并求和判断奇偶
            if (temp & (j + 1)) {
                sum[i] = sum[i] + x_encoding[j];
            }
        }
        temp = temp << 1;

        //如果为和为奇数，则校验码为1，否则为0
        if (sum[i] & 1) {
            x_encoding[pow(2, i) - 1] = 1;
        }
    }

    //返回为列向量
    return x_encoding;
}


//hamming decode 汉明码解码
std::vector<int> Hamming::decode(std::vector<int> x){
    //汉明码解码
    int n = x.size();//编码长度

    //判断待解码信号序列长度是否大于2
    if (n <= 2)
        std::cout << "Encoding Signal error, check the length!" << std::endl;

    //求出不大于n的最大的2的r次幂的数，即求出校验码长度r的2的r-1次方。
    auto max2r = [](int N) {
        int r = N - 1;
        r |= r >> 1;
        r |= r >> 2;
        r |= r >> 4;
        r |= r >> 8;
        r |= r >> 16;
        return (r + 1 == N) ? N : (r + 1) >> 1;
    };
    //校验码的最大位数
    int rmax = max2r(n);
    //校验码位数-1
    int r = (int) (log2(rmax)) + 1;
    //确定信息码的长度
    int k = n - r;

    //通过校验码纠错
    std::vector<int> sum(r,0);//存放偶校验的相同位数字一样的数的和
    int temp = 1;//用于确定相同数位的数字
    for (auto i = 0; i < r; i++) {
        for (auto j = 0; j < n; j++) {
            //对于j转换为2进制，第i+1位都为1的数分为一个组，并求和
            if (temp & (j + 1)) {
                sum[i] = sum[i] + x[j];
            }
        }

        if (sum[i] & 1)
            sum[i] = 1;
        else
            sum[i] = 0;
        //比较的位向左移一位
        temp = temp << 1;
    }

    //定义二进制转换为十进制函数
    auto binary2decimal = [&sum](int r) {
        auto pos = 0;
        for (auto i = 0; i < r; i++) {
            auto temp = sum[i] << i;
            pos = pos | temp;
        }
        return pos;
    };

    //通过与1异或进行纠错
    auto pos = binary2decimal(r);
    if (pos)
        x[pos - 1] ^= 1;

    //初始化信息码
    std::vector<int>x_decoding(k,0);

    //判断是否为底为2的幂整函数的值域内，即判断当前是否为插入校验码的位置
    auto is2n = [](int N) { if ((N & (N - 1)) == 0 && N > 0) return 1; else return 0; };

    auto j = 0;//信息码下标
    //填充信息码
    for (auto i = 1; i <= n; i++) {
        if (is2n(i))
            continue;
        x_decoding[j] = x[i - 1];
        j++;
    }

    //返回为列向量
    return x_decoding;
}