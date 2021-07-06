;Brandon Jonathan Brown
;2-D Game
.386
.MODEL FLAT ; Flat memory model
.STACK 4096 ; 4096 bytes


INCLUDE io.inc


; Exit function
ExitProcess PROTO NEAR32 stdcall, dwExitCode:DWORD

.DATA
newline	byte 10,0
arrsize dword 5 dup(?)
space byte " ",0
square byte "X",0
player byte "C",0
strSentence	BYTE 1 DUP (0) 
Sentence BYTE 50 DUP (0)
column dword 1
row dword 1

.CODE

_board PROC NEAR32
push ebp 
mov	ebp,esp  
push eax 
push ebx 
push ecx 
push edx 
pushfd 
mov ebx,[ebp+8]
mov esi,[ebp+12]
mov ecx,10
OutterLoop:
mov edx,10
InnerLoop:
cmp edx,ebx
je Point
jmp zero
Point:
cmp ecx,esi
je pointer
jmp null
pointer:
lea ebx,player
mov eax,ebx
push eax
call OutputStr
null:
zero:
lea eax,square
push eax
call OutputStr
add eax,4
lea eax,space
push eax
call OutputStr
dec edx
cmp edx,0
jne InnerLoop
jmp InnerLoopEnd
InnerLoopEnd:
lea eax,newline
push eax
call OutputStr
dec ecx
cmp ecx,0
jne OutterLoop
jmp OutterLoopEnd
OutterLoopEnd:
popfd 
pop	edx 
pop	ecx 
pop	ebx 
pop	eax 
mov	esp,ebp
pop	ebp
ret	8 
_board ENDP


_start:


DONE:
push eax
push ebx
call _board

Begin:
push 50
lea ebx,strSentence
push ebx
call InputStr

mov bl,[ebx]

cmp bl,"d"
je _VKRIGHT

cmp bl,"a"
je _VKLEFT

cmp bl,"w"
je _VKUP

cmp bl,"q"
je Over

cmp bl,"s"
je _VKDOWN
jmp DONE

_VKLEFT:
mov eax,row
mov ebx,column
inc column
jmp DONE

_VKRIGHT:
mov eax,row
mov ebx,column
dec column
jmp DONE

_VKDOWN:
mov eax,row
mov ebx,column
dec row
jmp DONE

_VKUP:
mov eax,row
mov ebx,column
inc row
jmp DONE

jmp Begin
Over:


INVOKE ExitProcess, 0
Public _start
END