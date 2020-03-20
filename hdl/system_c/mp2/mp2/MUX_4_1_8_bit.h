#ifndef MUX_4_1_8_bit_H
#define MUX_4_1_8_bit_H

#include "systemc.h"

using namespace std;


SC_MODULE(MUX_4_1_8_bit__behavior) 
{
    //  Define IO Ports
    sc_in  <bool>     i_a       ;
    sc_in  <sc_lv<8>> i_sel_code;
    sc_out <sc_lv<8>> o_code    ;


    // Architecture Statement - Similar to Process Statement
    void p1()
    {
        if (i_a)
            o_code = i_sel_code;   
    }


    // Constructor
    SC_CTOR(MUX_4_1_8_bit__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_a       
                  << i_sel_code
                  ;
    }
};

#endif