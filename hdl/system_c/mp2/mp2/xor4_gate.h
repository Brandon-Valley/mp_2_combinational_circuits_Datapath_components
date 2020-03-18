#ifndef xor4_gate_H
#define xor4_gate_H

#include "systemc.h"

using namespace std;


/////////////////////////////////////////////////////
//  Equation Model
/////////////////////////////////////////////////////
SC_MODULE(xor4__equation) 
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
        o_f.write( (i_a.read() ^ i_b.read()) ^ (i_c.read() ^ i_d.read()) );
    }


    // Constructor
    SC_CTOR(xor4__equation) 
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
SC_MODULE(xor4__behavior) 
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
    SC_CTOR(xor4__behavior) 
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
//  Component Model - Self
///////////////////////////////////////////////////////
#include "xor2_gate.h"

SC_MODULE(xor4_cmpnt_self) 
{
    //  Define IO Ports
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;

    //  Component Instances
    xor2_gate xor2_1;
    xor2_gate xor2_2;
    xor2_gate xor2_3;
    xor2_gate xor2_4;
    xor2_gate xor2_5;

    //  Internal Signals
    sc_signal <bool> fi1;
    sc_signal <bool> fi2;
    sc_signal <bool> fi3;
    sc_signal <bool> fi4;

    // Constructor
    SC_CTOR(xor4_cmpnt_self) : 
                                xor2_1("G1"),
                                xor2_2("G2"),
                                xor2_3("G3"),
                                xor2_4("G4"),
                                xor2_5("G5")
    {
        xor2_1(i_a, i_b, fi1);
        xor2_2(fi1, fi1, fi2); // NOT
        xor2_3(i_c, i_d, fi3);
        xor2_4(fi3, fi3, fi4); // NOT
        xor2_5(fi2, fi4, o_f);
    }
};



///////////////////////////////////////////////////////
//  Component Model - Primitive
///////////////////////////////////////////////////////
#include  "and2_gate.h"
#include  "not1_gate.h"

SC_MODULE(xor4_cmpnt_prim) 
{
    //  Define IO Ports
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;

    //  Component Instances
    and2_gate and2_1;
    and2_gate and2_2;
    and2_gate and2_3;
    not1_gate not1_1;

    //  Internal Signals
    sc_signal <bool> fi1;
    sc_signal <bool> fi2;
    sc_signal <bool> fi3;

    // Constructor
    SC_CTOR(xor4_cmpnt_prim) : 
                                 and2_1("G11"),
                                 and2_2("G22"),
                                 and2_3("G33"),
                                 not1_1("G44")
    {
        and2_1(i_a, i_b, fi1);
        and2_2(i_c, i_d, fi2);
        and2_3(fi1, fi2, fi3);
        not1_1(fi3,      o_f);
    }
};




#endif#pragma once
