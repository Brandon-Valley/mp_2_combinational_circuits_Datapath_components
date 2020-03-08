

#include <systemc.h>

#include "_tb_master.h"

#include "nand2_tb_test.h"
#include "nand4_gate__tb.h"



int sc_main(int argc, char* argv[])
{


    if      (TB_TO_RUN == "nand2") {  nand2_tb();  }
    else if (TB_TO_RUN == "nand4_gate") {  nand4_gate__tb();  }

    


    else { printf("ERROR:  the given TB_TO_RUN from _tb_master.h does not match any in run_main_tb.cpp"); }


    return 0;

}

