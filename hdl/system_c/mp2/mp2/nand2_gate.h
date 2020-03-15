
#ifndef nand2_gate_H
#define nand2_gate_H

#include "systemc.h"
 

SC_MODULE(nand2_gate) {                            
    sc_in  <bool> i_a;                        
    sc_in  <bool> i_b;                        
    sc_out <bool> o_f;                         


    void p1() 
    {
        o_f.write(!(i_a.read() || i_b.read()));
    }

    SC_CTOR(nand2_gate) 
    {
        SC_METHOD(p1);
        sensitive << i_a
                  << i_b
                  ;
    }
};
#endif









