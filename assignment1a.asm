/*
 * AssemblerApplication1.asm
 *
 *  Created: 2/8/2019 5:45:34 PM
 *   Author: Matija Tomljenovic
 */ 

 .org 0x000

 ldi r25,0x05 //register to store 16bit number
 ldi r24,0xDC //register to store 16bit number


 ldi r20,0 //register used to store the 24bit result
 ldi r19,0 //register used to store the 16bit multiplicand
 ldi r18,0 //register used to store the 16bit multiplicand

 ldi r22,5 //register used to store the multiplier and counter to decriment
 ldi r27,0 //used to compare the decrimented value for loop branching


start:        //start loop used for addition
 add r18,r24  //addition performed for the 16bit multiplicand and stored into r18
 adc r19,r25  //carry addition performed for the 16bit multiplicand and stored into r19
 adc r20,r27  //carry addition performed to sore the 24bit result

 dec r22     //decriment used to control loop
 cp r22,r27  //compare used for comparing the decrimented multiplier and 0 stored in r27
 brne start  //branch used to repeat loop untill r22 and r27 are equal.

done:        //used to extit loop once decriment reaches 0
 jmp done
 



