//
// Created by Jay Kwok on 2020/12/28.
//

#ifndef HAMMING_HAMMING_H
#define HAMMING_HAMMING_H
#include <iostream>
#include <vector>

class Hamming {
public:
    std::vector<int> encode(std::vector<int> x);
    std::vector<int> decode(std::vector<int> x);
};


#endif //HAMMING_HAMMING_H
