#include <systemc.h>

#include "nand4_gate__tb.h"
#include "or4_gate__tb.h"



int sc_main(int argc, char* argv[])
{
    //nand4_gate__tb();
    or4_gate__tb();

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

