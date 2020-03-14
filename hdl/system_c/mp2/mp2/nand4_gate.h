#ifndef nand4_gate_H
#define nand4_gate_H

#include "systemc.h"

#include <stdio.h> 
#include <errno.h> 
#include <string.h> 
#include <stdlib.h> 

#include "_tb_master.h"
using namespace std;



SC_MODULE(nand4_gate) 
{
    //=============================//
    //  Define IO Ports
    //=============================//
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;



    void p1()
    {
        /////////////////////////////////////////////////////
        //  Equation Model
        /////////////////////////////////////////////////////
        if (MODEL == EQUATION_MODEL)
        {
            o_f.write(!(i_a.read() && i_b.read() && i_c.read() && i_d.read()));
        }

        // Module Not Found Error
        else
            print_model_not_found_error("nand4_gate", MODEL);
    }


    SC_CTOR(nand4_gate) 
    {
        SC_METHOD(p1);

        //=============================//
        //  Input Sensitivity List
        //=============================//
        sensitive << i_a
                  << i_b
                  << i_c
                  << i_d
                  ;
    }
};
#endif