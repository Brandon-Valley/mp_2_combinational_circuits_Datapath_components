#ifndef nand4_gate_TB_TEST
#define nand4_gate_TB_TEST

#include <systemc.h> 

#include<vector>
#include<cmath>

//#include <bits/stdc++.h>


#include "vector_print.h"
#include "tb_utils.h"

#include "nand4_gate.h"
using namespace std;


//
////std::vector<int> to_binary(int n, int num_bits)
////{
////    // get num_bits_needed_to_represent_n
////    int num_bits_needed_to_represent_n = num_bits;
////    if (n != 0)
////        num_bits_needed_to_represent_n = (int)log2(n) + 1;
////
////    cout << "\nn: " << n << "  num_bits_needed_to_represent_n:  " << num_bits_needed_to_represent_n << endl;
////
////    std::vector<int> r;
////
////    //// add the leading 0s
////    //for (int i = 0; i < num_bits - num_bits_needed_to_represent_n; i++)
////    //    r.push_back(0);
////
////    //// add the binary representation of n to r
////    //while (n != 0) 
////    //{ 
////    //    //r.push_back(n % 2 == 1 ? 0 : 1);
////
////    //    if (n % 2 == 0)
////    //        r.push_back(1);
////    //    else
////    //        r.push_back(0);
////
////    //    n /= 2; 
////    //}
////    int number = n;
////        //Allocate the vector with the number of digits of the number:
////    std::vector<int> digits(std::log10(number) - 1);
////
////    while (number / 10 > 0)
////    {
////        digits.insert(digits.begin(), number % 10);
////        number /= 10;
////    }
////    return digits;
////    
////
////    //// fill the rest of the vetor with 0s
////    //for (int i = 0; i < num_bits - r.size(); i++)
////    //{
////    //    //r.insert(r.begin(), 0);
////    //    r.push_back(0);
////    //}
////    //return r;
////}











void nand4_gate__tb()
{
    sc_signal<bool> i_a,
                    i_b,
                    i_c,
                    i_d,
                    o_f;

    nand4_gate DUT("nand4_gate.h");

    // port map
    DUT.i_a(i_a);
    DUT.i_b(i_b);
    DUT.i_c(i_c);
    DUT.i_d(i_d);
    DUT.o_f(o_f);

    // trace file to look at sim output
    sc_trace_file* fp1;  //create VCD file: file pointer fp1
    fp1 = sc_create_vcd_trace_file("wave1");  // open(fp1), create wave1.vcd file

    // add signals to trace file
    sc_trace(fp1, i_a, "i_a");
    sc_trace(fp1, i_b, "i_b");
    sc_trace(fp1, i_c, "i_c");
    sc_trace(fp1, i_d, "i_d");
    sc_trace(fp1, o_f, "o_f");


    /////////////////////////////////////////////////////
    //  Simulation
    /////////////////////////////////////////////////////


    int num_bits_needed_in_sim_vec = 4; // <----- SET THIS TO THE NUMBER OF INPUTS YOU NEED TO SIMULATE // !!!!!


    int num_combos_to_test = pow(num_bits_needed_in_sim_vec, 2) + 2;
    for (int i = 0; i < num_combos_to_test; i++)
    {
        cout << "running test, i = " << i << endl;
        //vector<int> sv = to_binary(i, num_bits_needed_in_sim_vec); // simulation vector
        vector<int> sv = to_binary(i, 8); // simulation vector
        cout << sv << endl;

        i_a = sv[0];
        i_b = sv[1];
        i_c = sv[2];
        i_d = sv[3];


        sc_start(10, SC_NS); // run sim for 10 ns
    }


    // last change that wont show on EDA plai_bground
    sc_close_vcd_trace_file(fp1); // close(fp1)
}
#endif  