/*
 * AssemblerApplication1.asm
 *
 *  Created: 2/9/2019 3:40:36 PM
 *   Author: Matija Tomljenovic
 */ 


 ldi r18,0x77 //higher end byte of multiplicand
 ldi r19,0x5b //lower end byte of multiplicand

 ldi r20,0x7b //multiplier to be used
 

 ldi r22,0 //register that will store lower end byte of anwser
 ldi r23,0 //register used to store the middle byte of anwser
 ldi r24,0 //register used to store higher end byte of anwser

 mul r19,r20 //multiplication to multiply lower end bytes
 mov r26,r0  //copy the lower end byte of result into r26
 mov r27,r1  //copy the lower end byte of result into r27

 mul r18,r20 //multiplication to multiply higher end byte
 mov r28,r0  //copy the higher end byte of result into r28
 mov r29,r1  //copy the higher end byte of result into r29

 add r22,r26  //add the lower bytes of the result and store into r22
 add r23,r27  //add the middle bytes of the result and store into r23
 add r23,r28  //add the high bytes of the result and store into r23
 add r24,r29  //add the last byte of result and sore into r24

 done:
  break
 


 
 










