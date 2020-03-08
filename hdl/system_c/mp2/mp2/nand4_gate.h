#ifndef nand4_gate_H
#define nand4_gate_H

#include "systemc.h"
#include "_tb_master.h"

SC_MODULE(nand4_gate) {
    sc_in <bool> X, Y;
    sc_out <bool> F1;




    void p1()
    {



        if (MODEL == "b")
        {
            F1.write(!(X.read() || Y.read()));
        }
        else
        {
            printf("  ERROR:  MODEL from _tb_master.h not recognized by nand4_gate.h, MODEL:  %s \n", MODEL);
        }


    }

    SC_CTOR(nand4_gate) {
        SC_METHOD(p1);
        sensitive << X << Y;
    }
};
#endif