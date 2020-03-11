#ifndef nand4_gate_TB_TEST
#define nand4_gate_TB_TEST

#include <systemc.h> 

#include <vector>

//#include <bits/stdc++.h>

#include "vector_print.h"
#include "nand4_gate.h"
using namespace std;



std::vector<int> to_binary(int n, int num_bits)
{
    std::vector<int> r;
    while (n != 0) 
    { 
        r.push_back(n % 2 == 0 ? 0 : 1);
        n /= 2; 
    }

    // fill the rest of the vetor with 0s
    for (int i = 0; i < num_bits - r.size(); i++)
    {
        //r.insert(r.begin(), 0);
        r.push_back(0);
    }
    return r;
}




void nand4_gate__tb()
{
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
    i_a = false;
    i_b = false;
    i_c = false;
    i_d = false;

    sc_start(10, SC_NS); // run sim for 10 ns

    i_a = true;
    i_b = true;
    i_c = true;
    i_d = true;

    sc_start(10, SC_NS); // run sim for 10 ns

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
    using namespace std;

    //int/* main()
    //{*/
    // Create an empty vector 
    vector<int> vect;

    vect.push_back(10);
    vect.push_back(20);
    vect.push_back(30);

    for (int x : vect)
        cout << x << " ";

    cout << vect << endl;
    




    vector<int> b_v = to_binary(4, 8);

    for (int i = 0; i < b_v.size(); i++)
    {
        cout << "index: " << i << "  " << b_v[i] << endl;
    }


    cout << "to binary vec:  " << b_v << endl;





    // last change that wont show on EDA plai_bground
    sc_close_vcd_trace_file(fp1); // close(fp1)

}
#endif  