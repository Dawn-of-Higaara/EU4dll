EXTERN debugProc1ReturnAddress: QWORD

.CODE
debugProc1 proc
	mov rax, gs:[30h];
	mov rax, [rax+60h];

	mov byte ptr [rax+2],0;

	push rdi;
	push r12;
	push r13;
	push r14;
	push r15;
	mov eax, 17F0h; // ここで塗りつぶしているので上でraxを使える

	push debugProc1ReturnAddress;
	ret;
debugProc1 endp
END