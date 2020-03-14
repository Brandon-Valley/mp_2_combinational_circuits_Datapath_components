#ifndef nand4_gate_TB_TEST
#define nand4_gate_TB_TEST

#include <systemc.h> 

#include <vector>

//#include <bits/stdc++.h>


#include "vector_print.h"
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

    while(r.size() < num_bits_in_out_vec)
        r.push_back(0);

    return r;
}





std::vector<int> get_decimal_digits(int number)
{
    //Allocate the vector with the number of digits of the number:
    std::vector<int> digits(std::log10(number) - 1);

    while (number / 10 > 0)
    {
        digits.insert(digits.begin(), number % 10);
        number /= 10;
    }

    return digits;
}

void nand4_gate__tb()
{
    vector <int> d = get_decimal_digits(5);

    cout << d << endl;







    sc_signal<bool> i_a,
                    i_b,
                    i_c,
                    i_d,
                    o_f;

    //sc_signal <sc_lv<5>> vec;


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
    //i_a = false;
    //i_b = false;
    //i_c = false;
    //i_d = false;

    //sc_start(10, SC_NS); // run sim for 10 ns

    //i_a = true;
    //i_b = true;
    //i_c = true;
    //i_d = true;

    //sc_start(10, SC_NS); // run sim for 10 ns

    //for (int i = 0; i < 3; i++)
    //{
    //    printf("TEEEEEEEEST%d\n", i);
    //    vec = i;
    //    
    //    i_a = vec[0];
    //    
    //}


 

    //for (i = 0; i < 32; ++i) {
    //    //a[i] = (value >> i) & 1;



    //    cout << "test" << endl;
    //}

    //vector<int> v;

    //int value = 8;  // assuming a 32 bit int
    //int i;

    //for (i = 0; i < 32; ++i) {
    //    v[i] = (value >> i) & 1;
    //}

    //cout << " converted vec:  " << v << endl;




    // CPP program to create an empty vector 
    // and push values one by one. 
    /*#include <bits/stdc++.h>*/ 
       

    ////int/* main()
    ////{*/
    //// Create an empty vector 
    //vector<int> vect;

    //vect.push_back(10);
    //vect.push_back(20);
    //vect.push_back(30);

    //for (int x : vect)
    //    cout << x << " ";

    //cout << vect << endl;
    //




    //vector<int> b_v = to_binary(6, 1);

    //for (int i = 0; i < b_v.size(); i++)
    //{
    //    cout << "index: " << i << "  " << b_v[i] << endl;
    //}

    ////cout << "b_v:  " << b_v << endl;


    ////cout << "to binary vec:  " << b_v << endl;

    int num_bits_needed_in_sim_vec = 4;
    int num_combos_to_test = 16;

    cout << " VVV real test VVV " << endl;
    //vector<int> sv = to_binary(1, 8); // simulation vector
    //cout << sv << endl;






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

        //i_a = true;
        //i_b = true;
        //i_c = true;
        //i_d = true;

        sc_start(10, SC_NS); // run sim for 10 ns

    }


    // last change that wont show on EDA plai_bground
    sc_close_vcd_trace_file(fp1); // close(fp1)

}
#endif  