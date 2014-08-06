	.text
	.global main
	.type main, function
main:
	push {r7,lr}
	mov r0,#10
	mov r1,#12 
	bl  add1
        mov r7, r3
        pop {r7, pc}
	nop

add1:
	add r3, r0, r1
	mov pc, lr
	

