#ifndef nand4_gate_H
#define nand4_gate_H

#include "systemc.h"

#include "nand2_gate.h"
using namespace std;


/////////////////////////////////////////////////////
//  Equation Model
/////////////////////////////////////////////////////
SC_MODULE(nand4__equation) 
{
    //  Define IO Ports
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;


    //=======================================================//
    // Architecture Statement - Similar to Process Statement
    //=======================================================//
    void p1()
    {
        o_f.write(!(i_a.read() && i_b.read() && i_c.read() && i_d.read()));
    }


    // Constructor
    SC_CTOR(nand4__equation) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_a
                  << i_b
                  << i_c
                  << i_d
                  ;
    }
};



/////////////////////////////////////////////////////
//  Behavior Model
/////////////////////////////////////////////////////
SC_MODULE(nand4__behavior) 
{
    //  Define IO Ports
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;


    //=======================================================//
    // Architecture Statement - Similar to Process Statement
    //=======================================================//
    void p1()
    {
        if (i_a.read() && i_b.read() && i_c.read() && i_d.read())
            o_f.write(0);
        else
            o_f.write(1);
    }


    // Constructor
    SC_CTOR(nand4__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_a
                  << i_b
                  << i_c
                  << i_d
                  ;
    }
};



///////////////////////////////////////////////////////
////  Component Model - Self
///////////////////////////////////////////////////////
SC_MODULE(nand4_cmpnt_self) 
{
    //=============================//
    //  Define IO Ports
    //=============================//
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;

    //=============================//
    //  Component Instances
    //=============================//
    nand2_gate nand2_0;
    //nand2_gate nand2_1;
    //nand2_gate nand2_2;
    //nand2_gate nand2_3;
    //nand2_gate nand2_4;

    // Internal Signals
    sc_signal <bool> fi0;

    // Constructor
    SC_CTOR(nand4_cmpnt_self) : nand2_0("NAND2_0")
    {
        //nand2_0.i_a(i_a);
        //nand2_0.i_b(i_b);
        //nand2_0.o_f(o_f);
        nand2_0(i_a, i_b, o_f);
    }

};






#endif



        ///////////////////////////////////////////////////////
        ////  Component Model - Self
        ///////////////////////////////////////////////////////
        //else if (MODEL == COMPONENT_MODEL_SELF)
        //{
        //    //nand2_gate nand2_0, nand2_1;
        //    ////nand2_gate nand2_1;
        //    ////nand2_gate nand2_2;
        //    ////nand2_gate nand2_3;
        //    ////nand2_gate nand2_4;

        //    //SC_CTOR(nand4_gate) : nand2_0("n0")
        //    //{
        //    //    nand2_0.i_a(i_a);
        //    //    nand2_0.i_b(i_b);
        //    //    nand2_0.o_f(o_f);
        //    //}


        //}


        //// Module Not Found Error
        //else
        //{
        //    //model_not_found = true;

        //    print_model_not_found_error("nand4_gate", MODEL);
        //    assertm(2+2==5, "Stop the program");
        //    //static_assert(!model_not_found,"yay");




        //}
            
//    }
//
//
//};
//#endif





        ///////////////////////////////////////////////////////
        ////  Behavior Model
        ///////////////////////////////////////////////////////
        //else if (MODEL == BEHAVIOR_MODEL)
        //{
        //    if (i_a.read() && i_b.read() && i_c.read() && i_d.read())
        //        o_f.write(0);
        //    else
        //        o_f.write(1);

        //    //SC_CTOR(nand4_gate) 
        //    //{
        //    //    SC_METHOD(p1);

        //    //    //=============================//
        //    //    //  Input Sensitivity List
        //    //    //=============================//
        //    //    sensitive << i_a
        //    //        << i_b
        //    //        << i_c
        //    //        << i_d
        //    //        ;
        //    //}
        //}
















//
//
//
//
//
//
//
//
//
//
//
//
//
//#ifndef nand4_gate_H
//#define nand4_gate_H
//
//#include "systemc.h"
//
//#include <cassert>
//
//// Use (void) to silent unused warnings.
//#define assertm(exp, msg) assert(((void)msg, exp))
//
//
//#include "_tb_master.h"
//#include "nand2_gate.h"
//using namespace std;
//
//
///////////////////////////////////////////////////////
////  Equation Model
///////////////////////////////////////////////////////
//SC_MODULE(nand4__equation) 
//{
//    //=============================//
//    //  Define IO Ports
//    //=============================//
//    sc_in  <bool> i_a;
//    sc_in  <bool> i_b;
//    sc_in  <bool> i_c;
//    sc_in  <bool> i_d;
//    sc_out <bool> o_f;
//
//    nand2_gate nand2_0;
//    //nand2_gate nand2_1;
//    //nand2_gate nand2_2;
//    //nand2_gate nand2_3;
//    //nand2_gate nand2_4;
//
//    sc_signal <bool> fi0;
//
//    SC_CTOR(nand4_gate) : nand2_0("NAND2_0")
//    {
//        nand2_0.i_a(i_a);
//        nand2_0.i_b(i_b);
//        nand2_0.o_f(o_f);
//    }
//
//    //bool model_not_found = false;
//
//    void p1()
//    {
//        /////////////////////////////////////////////////////
//        //  Equation Model
//        /////////////////////////////////////////////////////
//        if (MODEL == EQUATION_MODEL)
//        {
//            o_f.write(!(i_a.read() && i_b.read() && i_c.read() && i_d.read()));
//        }
//
//
//        /////////////////////////////////////////////////////
//        //  Behavior Model
//        /////////////////////////////////////////////////////
//        else if (MODEL == BEHAVIOR_MODEL)
//        {
//            if (i_a.read() && i_b.read() && i_c.read() && i_d.read())
//                o_f.write(0);
//            else
//                o_f.write(1);
//
//            //SC_CTOR(nand4_gate) 
//            //{
//            //    SC_METHOD(p1);
//
//            //    //=============================//
//            //    //  Input Sensitivity List
//            //    //=============================//
//            //    sensitive << i_a
//            //        << i_b
//            //        << i_c
//            //        << i_d
//            //        ;
//            //}
//        }
//
//
//        /////////////////////////////////////////////////////
//        //  Component Model - Self
//        /////////////////////////////////////////////////////
//        else if (MODEL == COMPONENT_MODEL_SELF)
//        {
//            //nand2_gate nand2_0, nand2_1;
//            ////nand2_gate nand2_1;
//            ////nand2_gate nand2_2;
//            ////nand2_gate nand2_3;
//            ////nand2_gate nand2_4;
//
//            //SC_CTOR(nand4_gate) : nand2_0("n0")
//            //{
//            //    nand2_0.i_a(i_a);
//            //    nand2_0.i_b(i_b);
//            //    nand2_0.o_f(o_f);
//            //}
//
//
//        }
//
//
//        // Module Not Found Error
//        else
//        {
//            //model_not_found = true;
//
//            print_model_not_found_error("nand4_gate", MODEL);
//            assertm(2+2==5, "Stop the program");
//            //static_assert(!model_not_found,"yay");
//
//
//
//
//        }
//
//    }
//
//
//    //SC_CTOR(nand4_gate) 
//    //{
//    //    SC_METHOD(p1);
//
//    //    //=============================//
//    //    //  Input Sensitivity List
//    //    //=============================//
//    //    sensitive << i_a
//    //              << i_b
//    //              << i_c
//    //              << i_d
//    //              ;
//    //}
//};
//#endif