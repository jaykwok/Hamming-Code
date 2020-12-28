# Hamming Code For C++

#### 汉明码编码/解码/Hamming Encode/Decode

#### C++标准 11及以上（本人是C++14）/C++ Standard requires newer than C++ 11(What I use is C++ 14)

将Hamming.h和Hamming.cpp放到你的项目文件夹里即可，包含进去即可食用。/Download Hamming.h and Hamming.cpp, move them to your project directory.



#### 用法举例/Usage

```c++
#include "Hamming.h"

int main() {
    Hamming hamming;

    //example/举例:
    std::vector<int> x = {1, 0, 1, 0};
    std::cout << "Raw Data is:" << std::endl;
    for (auto i: x)
        std::cout << i;

    //Hamming Encode/汉明码编码
    auto encoding = hamming.encode(x);
    std::cout << std::endl << "Encoding Result is:" << std::endl;
    for (auto i: encoding)
        std::cout << i;

    //make 1 digit wrong/故意弄错一位编码好的序列数字
    encoding[0] = 0;
    std::cout << std::endl << "Wrong Encoding Result is:" << std::endl;
    for (auto i: encoding)
        std::cout << i;

    //Hamming Decode/汉明码解码
    auto decoding = hamming.decode(encoding);
    std::cout << std::endl << "Decoding Result is:" << std::endl;
    for (auto i: decoding)
        std::cout << i;
    //Ending
    return 0;
}

```

