// ***************************************************************************************
// ***************************************************************************************
//
//      Name :      sound.h
//      Authors :   Paul Robson (paul@robsons.org.uk)
//      Date :      21st November 2023
//      Reviewed :  No
//      Purpose :   Audio support for Neo6502
//
// ***************************************************************************************
// ***************************************************************************************

#ifndef _SOUND_H
#define _SOUND_H

int SNDInitialise(void);
void SNDSetFrequency(uint8_t channel,uint16_t frequency,bool isNoise);
void SNDQuiet(uint8_t channel);
void SNDSync(void);

#endif

