#include "Hamming.h"

int main() {
    Hamming hamming;

    //example/举例:
    std::vector<int>x={1,0,1,0};
    std::cout<<"Raw Data is:"<<std::endl;
    for (auto i: x)
        std::cout<<i;

    //Hamming Encode/汉明码编码
    auto encoding=hamming.encode(x);
    std::cout<<std::endl<<"Encoding Result is:"<<std::endl;
    for (auto i: encoding)
        std::cout<<i;

    //make 1 digit wrong/故意弄错一位编码好的序列数字
    encoding[0]=0;
    std::cout<<std::endl<<"Wrong Encoding Result is:"<<std::endl;
    for (auto i: encoding)
        std::cout<<i;

    //Hamming Decode/汉明码解码
    auto decoding=hamming.decode(encoding);
    std::cout<<std::endl<<"Decoding Result is:"<<std::endl;
    for (auto i: decoding)
        std::cout<<i;
    //Ending
    return 0;
}
