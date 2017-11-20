;;this code for solving the function -(x+y-2z+1)
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	Num1 DWORD  ?
	Num2 DWORD  ?
	Num3 DWORD  ?
	Message1 BYTE "Please input integer x: ",0
	Message2 BYTE "Please input integer y: ",0
	Message3 BYTE "Please input integer z: ",0
	inp BYTE 40 DUP (?)
	
	resultlb1 BYTE "the value is :",0
	result BYTE 11 DUP (?),0
.CODE
_MainProc PROC
	input Message1,inp,40
	atod inp
	mov Num1,eax
	input Message2,inp,40
	atod inp
	mov Num2,eax
	add eax,Num1
	mov Num2,eax
	input Message3,inp,40
	atod inp
	mov Num3,eax
	mov eax,Num2
	sub eax,Num3
	sub eax,Num3
	add eax,1
	mov Num3,eax
	neg Num3
	mov eax,Num3
	dtoa result,eax
	
	output resultlb1,result
	mov eax,0
	ret
_MainProc ENDP
END
;////////////////////////////////////////////////////////////////////////////////////////////////////

;program to calc the area of Rectangle

.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	len DWORD ?
	inp BYTE ?
	Message1 BYTE "Please input length : ",0
	Message2 BYTE "Please input width  : ",0
	Result BYTE 11 DUP(?),0
	resultlb1 byte "the result is : ",0
.CODE
_MainProc PROC
	input Message1,inp,4
	atod inp
	mov len,eax
	input Message2,inp,41
	atod inp
	imul eax,len              
	dtoa Result,eax          
	output resultlb1,Result
	
	mov eax,0
	ret
_MainProc ENDP
END
;//////////////////////////////////////////////////////////////////////////////////////////////////////
;this code for solving the function 2(x+y)+z

.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	Num1 DWORD  ?
	Num2 DWORD  ?
	Num3 DWORD  ?
	inp BYTE  ?
	Message1 BYTE "Please input integer x: ",0
	Message2 BYTE "Please input integer y: ",0
	Message3 BYTE "Please input integer z: ",0
	
	resultlb1 BYTE "the value is :",0
	result BYTE 11 DUP (?),0

.CODE
_MainProc PROC
	input Message1,inp,4
	atod inp
	mov Num1,eax
	input Message2,inp,4
	atod inp
	mov Num2,eax
	add eax,Num1
	imul eax,2
	mov Num2,eax
	input Message3,inp,4
	atod inp
	add Num2,eax
	mov eax,Num2
	dtoa result,eax
	output resultlb1,result

	mov eax,0
	ret
_MainProc ENDP
END
;//////////////////////////////////////////////////////////////////////////////////////////////////////

;this Code for Calc total value of the coins Entered
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA

	   Message1		BYTE	 "enter coins in  pennies   :",0
	   Message2		BYTE	 "enter coins in  nickels   :",0
	   Message3		BYTE	 "enter coins in  dimes     :",0
	   Message4		BYTE	 "enter coins in  quarters  :",0
	   Message5		BYTE	 "enter coins in  fifty-cent:",0
	   Message6		BYTE	 "enter coins in  dollar    :",0

	   pen		DWORD ?
	   nic		DWORD ?
	   dim		DWORD ?
	   qur		DWORD ?
	   fic		DWORD ?
	   dol		DWORD ?
	   str1		BYTE	40 DUP (?)
	   Res		BYTE	11 DUP (?),0
	   result1	BYTE	"number of dollars = ",0
	   result2	BYTE	"number of cents   = ",0

.CODE
_MainProc PROC
			input	Message1,str1,40
			atod	str1
			mov		pen,eax

			input	Message2,str1,40
			atod	str1
			imul	eax,5
			mov		nic,eax

			input	Message3,str1,40
			atod	str1
			imul	eax,10
			mov		dim,eax

			input	Message4,str1,40
			atod	str1
			imul	eax,25
			mov		qur,eax

			input	Message5,str1,40
			atod	str1
			imul	eax,50
			mov		fic,eax

			input	Message6,str1,40
			atod	str1
			imul	eax,100
			mov		dol,eax

			mov		eax,dol
			add		eax,fic
			add		eax,qur
			add		eax,dim
			add		eax,nic
			add		eax,pen

			mov		edx,0
			mov		ecx,100
			div		ecx

			dtoa	Res,eax
			output	result1,Res

			dtoa	Res,edx
			output	result2,Res

			mov		eax,0
			ret
_MainProc ENDP
 END
 ;///////////////////////////////////////////////////////////////////////////////////////////////////////
 ;EX_6  Write a complete 80x86 assembly language program to prompt for four pairs of grades and weighting factors.
 ;Each weighting factor indicates how many times the corresponding grade is to be counted in the sum. The weighted sum is  
 ;Display the weighted sum, the sum of the weights, and the weighted average (WeightedSum/SumOfWeights).
 ;A sample run might look like 
 ;grade 1?  88
 ;weight 1?  1
 ;grade 2?  77
 ;weight 2?  2
 ;grade 3?  94
 ;weight 3?  1
 ;grade 4?  85
 ;weight 4?  3 
     ;weighted sum:   591     ;sum of weights:  7        ;weighted average:    84  
 .586                 
.MODEL FLAT            
INCLUDE io.h
.STACK 4096             

.DATA                   
  
		Message1	BYTE	"Enter  Grade1  ",0
		Message2	BYTE	"Enter  weight1 ",0
		Message3	BYTE	"Enter  Grade2  ",0
		Message4	BYTE	"Enter  weight2 ",0
		Message5	BYTE	"Enter  Grade3  ",0
		Message6	BYTE	"Enter  weight3 ",0
		Message7	BYTE	"Enter  Grade4  ",0
		Message8	BYTE	"Enter  weight4 ",0

		Wsum	    BYTE	" weightedsum       =",0
		sum	      BYTE	" sum of weights    =",0
		avg       BYTE	" the average       =",0
	
	  grade		  DWORD   4 DUP(?),0
	  weigh	    DWORD   4 DUP(?),0
    res1      DWORD          ?,0
	  res2      DWORD          ?,0
	  res3      DWORD          ?,0


.CODE                      
_MainProc PROC

		input	Message1,grade,4
		input	Message2,weigh,4
		input	Message3,grade+4,4
		input	Message4,weigh+4,4
		input	Message5,grade+8,4
		input	Message6,weigh+8,4
		input	Message7,grade+12,4
		input	Message8,weigh+12,4

		atod	grade
		mov		grade ,eax
		atod	weigh
		mov		weigh,eax
		mul		grade
		mov		grade,eax			;grade=grade1* weigh1

		atod    grade+4
		mov		grade+4,eax
		atod	weigh+4
		add		weigh,eax          ;
		mul		grade+4
		add		grade,eax           ;grade=grade1* weigh1+grade2* weigh2

		atod	grade+8
		mov		grade+8,eax
		atod	weigh+8
		add		weigh,eax           ;
		mul		grade+8
		add		grade,eax           ;grade=grade1* weigh1+grade2* weigh2+grade3* weigh3       

		atod	grade+12
		mov		grade+12,eax
		atod	weigh+12
		add		weigh,eax
		mul		grade+12
		add		grade,eax            ;grade=grade1* weigh1+grade2* weigh2+grade3* weigh3 +grade4* weigh4

		mov     eax,grade
		dtoa	res1,eax
		output  Wsum,res1 

		mov		eax,weigh
		dtoa	res2,eax
		output  sum,res2

	    mov		eax,grade
		mov		edx,0
		div		weigh
		dtoa	res3,eax
		output  avg,res3

		mov		eax,0                
		ret
_MainProc ENDP          

END
;/////////////////////////////////////////////////////////////////////////////////////////////////////////
;Ex_5 Write a complete 80x86 assembly language program to prompt for four grades and then display the sum 
;and the average (sum/4) of the grades 

;P5 AVG and SUM
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
		num1	DWORD ?
		num2	DWORD ?
		num3	DWORD ?
		num4	DWORD ?
		mesg1	BYTE	"enter the number 1 : ",0
		mesg2	BYTE	"enter the number 2 : ",0
		mesg3	BYTE	"enter the number 3 : ",0
		mesg4	BYTE	"enter the number 4 : ",0
	    inp		BYTE	40 DUP (?)
		result1 BYTE	" the sum is : ",0
		result2 BYTE	" the avg is : ",0
		res1	BYTE	11 DUP(?)
		res2	BYTE	11 DUP(?)

.CODE
_MainProc PROC
		input	mesg1,inp,40
		atod	inp
		mov		num1,eax
		input	mesg2,inp,40
		atod	inp
		add		eax,num1
		mov		num1,eax
		input	mesg3,inp,40
		atod	inp
		add		eax,num1
		mov		num1,eax
		input	mesg3,inp,40
		atod	inp
		add		eax,num1
		dtoa	res1,eax
		output  result1 ,res1
		add		num2,eax
		mov		num1,eax
		mov		eax,num2
		mov		edx,0
		mov		ecx,4
		div		ecx
		;mov	num3,edx
		;add	eax,num3
		dtoa	res2,eax
		output	result2,res2
	    mov		eax,0
		ret
_MainProc ENDP
    END
