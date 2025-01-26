; This program calculates X! (X factorial). It can calculate
;   different numbers (4!, 6!, etc.) by changing the value of the first memory
;   location at the bottom of the code. 
;   The program does not account for zero or negative numbers as input.
 
; Register functions
; R0 - always x0
; R1 - multiplication results
; R2 - always -1
; R3 - counter for outer loop
; R4 - counter for inner loop
; R5 - current sum
 
            .ORIG x3000
            AND R0, R0, x0000   	; Set R0 to 0
	    AND R5, R5, x0000   	; Set R5 to 0
	    LDI    R1, INPUT           ; Load INPUT into R2 using label
            LD    R2,x000D            ; Load -1 into R2 from below
            ADD   R3,R1,R2            ; R3 contains input number -1
            ADD   R3,R3,R2            ; R3 contains input number -2
                                      ;   (initializes outer count)
OUTERLOOP   ADD   R4,R0,R3            ; Copy outer count into inner count
 
; This loop multiplies via addition (6x5 = 6+6+6+6+6 = 30,
;   30x4 = 30+30+30+30 = 120, etc)
INNERLOOP   ADD   R5,R5,R1            ; Increment sum
            ADD   R4,R4,R2            ; Decrement inner count
            BRzp  INNERLOOP           ; Branch to inner loop if inner count
                                      ;   is positive or zero
            ADD   R1,R0,R5            ; R1 now contains sum result from inner loop
            LD    R5,x0004            ; Clear R5 (previous sum) to 0
            ADD   R3,R3,R2            ; Decrement outer count
            BRzp  OUTERLOOP           ; Branch to outer loop if outer count
                                      ;   is positive or zero
 
            STI  R1,  RESULT            ; factorial result is stored in the memory location (x30FF)
            HALT
 
           .FILL  x0000               ; Can be used to initialize registers
           .FILL  xFFFF               ; 2's complement of 1 (i.e. -1)
INPUT      .FILL  x4000
RESULT     .FILL  x30FF               ; At program completion, the result is stored here 
	   .END
