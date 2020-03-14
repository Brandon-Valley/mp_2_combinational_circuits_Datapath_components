#ifndef TB_UTILS_H
#define TB_UTILS_H

#include<vector>

#include "vector_print.h"

using namespace std;


// Given an int, returns a vecor of ints (1 or 0) of the given int in binary, with the given number of bits
// if you give an int of 1, the 1 will be in the 0th index of the returned vector
std::vector<int> to_binary(int num_to_convert_to_binary, int num_bits_in_out_vec)
{
    std::vector<int> r;

    // make binary vec of minimum size backwards (LSB at .end() and MSB at .begin())
    while (num_to_convert_to_binary > 0)
    {
        //cout << " top of loop" << endl;
        if (num_to_convert_to_binary % 2 == 0)
            r.push_back(0);
        else
            r.push_back(1);
        num_to_convert_to_binary = num_to_convert_to_binary / 2;
    }

    while (r.size() < num_bits_in_out_vec)
        r.push_back(0);

    return r;
}

#endif