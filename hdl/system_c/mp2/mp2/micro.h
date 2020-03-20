#ifndef micro_H
#define micro_H

#include "systemc.h"

using namespace std;


SC_MODULE(micro__behavior) 
{
    //  Define IO Ports
    sc_in  <bool>     i_en  ;
    sc_in  <sc_lv<4>> i_code;
    sc_out <bool>     o_A   ;
    sc_out <bool>     o_L   ;
    sc_out <bool>     o_B   ;





    // Architecture Statement - Similar to Process Statement
    void p1()
    {

        //if (i_en)
        //{
        //    if (i_sel_code.read() == "00")  o_code = i_code_0;
        //    if (i_sel_code.read() == "01")  o_code = i_code_1;
        //    if (i_sel_code.read() == "10")  o_code = i_code_2;
        //    if (i_sel_code.read() == "11")  o_code = i_code_3;
        //}
        //else
        //    o_code = "00000000";

        o_A = "1";
        o_L = "0";
        o_B = "1";


    }


    // Constructor
    SC_CTOR(micro__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_en  
                  << i_code
                  << o_A   
                  << o_L   
                  << o_B   
                  ;
    }
};

#endif