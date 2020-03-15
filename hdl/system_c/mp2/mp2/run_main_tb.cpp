

#include <systemc.h>

#include <cassert>

// Use (void) to silent unused warnings.
#define assertm(exp, msg) assert(((void)msg, exp))

#include "_tb_master.h"

//#include "nand2_gate_tb_test.h"
#include "nand4_gate__tb.h"
#include "nand4__cmpnt_self.h"



int sc_main(int argc, char* argv[])
{
    


    
    if (TB_TO_RUN == "nand4_gate") {  nand4_gate__tb();  }

    


    else 
    { 
        cout << "ERROR:  the given TB_TO_RUN from _tb_master.h does not match any in run_main_tb.cpp  TB_TO_RUN:  " << TB_TO_RUN << endl;
        assertm(2+2==5, "Stop the program");
    }


    return 0;

}




//#include <iostream>
//// uncomment to disable assert()
//// #define NDEBUG
//#include <cassert>
//
//// Use (void) to silent unused warnings.
//#define assertm(exp, msg) assert(((void)msg, exp))
//using namespace std;
//
//int main()
//{
//    int i = 5;
//
//    if (i == 6)
//        cout << "yay, the program was a success!" << endl;
//    assertm(2+2==5, "I want this error to work like the first one");
//
//}


//
//#include <iostream>
//
//using namespace std;
//const int i = 1;
//int main()
//{
//	cout << "hi <=" << endl;
//	//int i = 1;
//	//static_assert(i == 0,"Swap requires copying");
//	static_assert((i == 0),"Swap requires copying");
//}

