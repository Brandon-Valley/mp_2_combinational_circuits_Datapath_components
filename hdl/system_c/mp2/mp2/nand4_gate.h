#ifndef nand4_gate_H
#define nand4_gate_H

#include "systemc.h"
#include "_tb_master.h"


#include <stdio.h> 
#include <errno.h> 
#include <string.h> 
#include <stdlib.h> 



SC_MODULE(nand4_gate) {
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;

    void p1()
    {
        /////////////////////////////////////////////////////
        //  Exception Model
        /////////////////////////////////////////////////////
        if (MODEL == EQUATION_MODEL)
        {
            o_f.write(!(i_a.read() && i_b.read() && i_c.read() && i_d.read()));
        }

        // Error
        else  {  printf("  ERROR:  MODEL from _tb_master.h not recognized by nand4_gate.h\n");  }


    }

    SC_CTOR(nand4_gate) {
        SC_METHOD(p1);
        sensitive << i_a << i_b << i_c << i_d;
    }
};
#endif