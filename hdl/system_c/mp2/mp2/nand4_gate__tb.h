#ifndef nand4_gate_TB_TEST
#define nand4_gate_TB_TEST

#include <systemc.h>

#include "nand4_gate.h"


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

    // fp1 -> set_time_unit(100, SC_PS);  // set tracing resolution to ns

    // add signals to trace file
    sc_trace(fp1, i_a, "i_a");
    sc_trace(fp1, i_b, "i_b");
    sc_trace(fp1, i_c, "i_c");
    sc_trace(fp1, i_d, "i_d");
    sc_trace(fp1, o_f, "o_f");

    // sim
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

    // last change that wont show on EDA plai_bground
    



    sc_close_vcd_trace_file(fp1); // close(fp1)

}
#endif