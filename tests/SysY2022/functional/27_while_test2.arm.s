.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4 }
	mov r0, #5
	mov r1, #6
	mov r3, #7
	mov r2, #10
	cmp r0, #20
	bge label44
.p2align 4
label7:
	add r0, r0, #3
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label18:
	add r3, r2, #48
	cmp r3, #8
	blt label19
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label16:
	cmp r2, #20
	blt label17
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label17:
	add r3, r2, #12
	cmp r3, #20
	blt label18
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label19:
	add r3, r2, #192
	cmn r3, #40
	blt label20
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label20:
	add r3, r2, #768
	cmn r3, #232
	blt label21
	add r2, r2, #192
	cmn r2, #232
	blt label32
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label36:
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label21:
	add r3, r2, #3072
	cmn r3, #1000
	blt label22
	add r2, r2, #768
	cmn r2, #1000
	blt label30
	add r2, r2, #192
	cmn r2, #232
	blt label32
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label34:
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label38:
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
label44:
	add r2, r2, r3
	add r1, r1, r2
	add r0, r0, r1
	pop { r4 }
	bx lr
.p2align 4
label22:
	add r3, r2, #12288
	movw r4, #61464
	movt r4, #65535
	cmp r3, r4
	blt label23
	add r2, r2, #3072
	movw r3, #61464
	movt r3, #65535
	cmp r2, r3
	blt label28
	add r2, r2, #768
	cmn r2, #1000
	blt label30
	add r2, r2, #192
	cmn r2, #232
	blt label32
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label32:
	add r2, r2, #192
	cmn r2, #232
	blt label32
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label12:
	add r1, r1, #1
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
.p2align 4
label179:
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label23:
	add r3, r2, #49152
	movw r4, #49176
	movt r4, #65535
	cmp r3, r4
	blt label26
	add r2, r2, #12288
	movw r3, #49176
	movt r3, #65535
	cmp r2, r3
	blt label24
	add r2, r2, #3072
	movw r3, #61464
	movt r3, #65535
	cmp r2, r3
	blt label28
	add r2, r2, #768
	cmn r2, #1000
	blt label30
	add r2, r2, #192
	cmn r2, #232
	blt label32
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	b label179
.p2align 4
label24:
	add r2, r2, #12288
	movw r3, #49176
	movt r3, #65535
	cmp r2, r3
	blt label24
	add r2, r2, #3072
	movw r3, #61464
	movt r3, #65535
	cmp r2, r3
	blt label28
	add r2, r2, #768
	cmn r2, #1000
	blt label30
	add r2, r2, #192
	cmn r2, #232
	blt label32
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label322:
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label30:
	add r2, r2, #768
	cmn r2, #1000
	blt label30
	add r2, r2, #192
	cmn r2, #232
	blt label32
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label28:
	add r2, r2, #3072
	movw r3, #61464
	movt r3, #65535
	cmp r2, r3
	blt label28
	add r2, r2, #768
	cmn r2, #1000
	blt label30
	add r2, r2, #192
	cmn r2, #232
	blt label32
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label44
.p2align 4
label26:
	add r3, r2, #98304
	movw r4, #49176
	add r2, r2, #49152
	movt r4, #65535
	cmp r3, r4
	blt label26
	add r2, r2, #12288
	movw r3, #49176
	movt r3, #65535
	cmp r2, r3
	blt label24
	add r2, r2, #3072
	movw r3, #61464
	movt r3, #65535
	cmp r2, r3
	blt label28
	add r2, r2, #768
	cmn r2, #1000
	blt label30
	add r2, r2, #192
	cmn r2, #232
	blt label32
	add r2, r2, #48
	cmn r2, #40
	blt label34
	add r2, r2, #12
	cmp r2, #8
	blt label36
	add r2, r2, #3
	cmp r2, #20
	blt label38
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	b label322
