	.text
	.global main
main:
	push {r7,lr}
	sub sp, #16
	add r7, sp, #0
	mov r3, #10
	str r3, [r7, #4]
	mov r3, #12
	str r3, [r7, #8]
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	bl  add1
	str r0, [r7,#12]
	mov r3, #0
	mov r0, r3
	add r7, r7, #16
	mov sp, r7
	pop {r7, pc}
	nop

add1:
	push {r7}
	sub sp, #12
	add r7, sp, #0
	str r0, [r7, #4]
	str r1, [r7, #0]
	ldr r2, [r7, #4]
	ldr r3, [r7, #0]
	adds r3, r2, r3
	mov r0, r3
	add r7, r7, #12
	mov sp, r7
	bx lr
	

