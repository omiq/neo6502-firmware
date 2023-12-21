// ***************************************************************************************
// ***************************************************************************************
//
//      Name :      main.c
//      Author :    Paul Robson (paul@robsons.org.uk)
//      Date :      20th November 2023
//      Reviewed :  No
//      Purpose :   Main program.
//
// ***************************************************************************************
// ***************************************************************************************

#include "common.h"
#include "system/processor.h"

int main() {
    DSPReset();                                                                 // Initialises everything.
    while (1) CPUExecute();                                                     // Doesn't have to loop but can.
}

// ***************************************************************************************
//
//      Date        Revision
//      ====        ========
//
// ***************************************************************************************

