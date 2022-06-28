	PRESERVE8
	THUMB


     AREA	RESET, DATA, READONLY	  			; First 32 WORDS is VECTOR TABLE
     EXPORT 	__Vectors
					
__Vectors		

				DCD		0x20002000
				DCD		Reset_Handler

	AREA |.text|, CODE, READONLY

Reset_Handler   PROC							;Reset Handler
	GLOBAL Reset_Handler
	ENTRY

				;Fill this part
				MOVS r0, #0x00  
				MOVS r1, #0x01  
				MOVS r2, #0x02  
				MOVS r3, #0x03 
				MOVS r4, #0x04
				MOVS r5, #0x10
				MOVS r6, #0x09
				MOVS r7, #0x19
				BL leaf_example
	


leaf_example		
				SUB sp, sp, #12 
				STR r5, [sp, #8]
				STR r6, [sp, #4]
				STR r7, [sp, #0]
				ADDS r6, r0, r1
				ADDS r5, r2, r3
				SUBS r7, r6, r5
				ADDS r4, r7, #0
				LDR r5, [sp, #8]
				LDR r6, [sp, #4]
				LDR r7, [sp, #0]
				ADD sp, sp, #12
				// MOV pc, 0x00000016


	

				;Fill this part
	ENDP

	ALIGN 		4					 ; Align to a word boundary

	END
