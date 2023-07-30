.arch armv7ve
.data
.bss
.align 8
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
radixSort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #220
	mov r7, r0
	mov r8, r1
	mov r9, r2
	str r2, [sp, #204]
	mov r6, r3
	str r0, [sp, #200]
	add r0, r2, #1
	str r1, [sp, #192]
	cmp r3, r0
	add r1, r7, #1
	mov r0, #0
	clz r1, r1
	movwle r0, #1
	lsr r1, r1, #5
	orrs r0, r0, r1
	mov r0, #0
	str r0, [sp, #128]
	str r0, [sp, #132]
	str r0, [sp, #136]
	str r0, [sp, #140]
	str r0, [sp, #144]
	str r0, [sp, #148]
	str r0, [sp, #152]
	str r0, [sp, #156]
	str r0, [sp, #160]
	str r0, [sp, #164]
	str r0, [sp, #168]
	str r0, [sp, #172]
	str r0, [sp, #176]
	str r0, [sp, #180]
	str r0, [sp, #184]
	str r0, [sp, #188]
	str r0, [sp, #64]
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #88]
	str r0, [sp, #92]
	str r0, [sp, #96]
	str r0, [sp, #100]
	str r0, [sp, #104]
	str r0, [sp, #108]
	str r0, [sp, #112]
	str r0, [sp, #116]
	str r0, [sp, #120]
	str r0, [sp, #124]
	str r0, [sp, #0]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #12]
	str r0, [sp, #16]
	str r0, [sp, #20]
	str r0, [sp, #24]
	str r0, [sp, #28]
	str r0, [sp, #32]
	str r0, [sp, #36]
	str r0, [sp, #40]
	str r0, [sp, #44]
	str r0, [sp, #48]
	str r0, [sp, #52]
	str r0, [sp, #56]
	str r0, [sp, #60]
	bne label90
	movw r0, #43692
	ldr r7, [sp, #200]
	movt r0, #65535
	sub r1, r7, #20
	sub r2, r7, #84
	sub r3, r7, #340
	add r8, r7, r0
	movw r0, #60076
	str r8, [sp, #208]
	movt r0, #65535
	add r5, r7, r0
	movw r0, #64172
	movt r0, #65535
	add r4, r7, r0
	sub r0, r7, #4
	sub r7, r7, #1
	str r7, [sp, #196]
	ldr r9, [sp, #204]
	cmp r9, r6
	bge label3
.p2align 4
label56:
	ldr r8, [sp, #192]
	ldr r10, [r8, r9, lsl #2]
	ldr r7, [sp, #200]
	cmp r7, #0
	bgt label60
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label60:
	ldr r7, [sp, #200]
	cmp r7, #4
	bgt label61
	mov r8, #0
	mov r7, r10
	add r8, r8, #1
	asr r10, r10, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label61:
	cmp r0, #16
	bgt label62
	mov r7, r10
	mov r8, #0
	add r8, r8, #4
	asr r10, r10, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label62:
	cmp r1, #64
	bgt label65
	mov r8, #0
	add r8, r8, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label65:
	cmp r2, #256
	bgt label66
	mov r7, #0
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label84:
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label87:
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label490:
	mov r7, r10
	b label87
.p2align 4
label66:
	cmp r3, #1024
	bgt label67
	mov r7, #0
	add r7, r7, #256
	cmp r3, r7
	bgt label80
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label63:
	add r8, r8, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label67:
	cmp r4, #4096
	bgt label70
	mov r7, #0
	b label68
label621:
	mov r7, #0
	b label78
label70:
	cmp r5, #16384
	ble label621
	ldr r8, [sp, #208]
	cmp r8, #262144
	bgt label447
	mov r7, #0
	add r10, r7, #65536
	cmp r8, r10
	bgt label458
	add r7, r7, #16384
	cmp r8, r7
	bgt label76
	add r7, r7, #4096
	cmp r5, r7
	bgt label78
	add r7, r7, #1024
	cmp r4, r7
	bgt label68
	add r7, r7, #256
	cmp r3, r7
	bgt label80
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label447:
	mov r7, #0
.p2align 4
label72:
	add r10, r7, #524288
	ldr r8, [sp, #208]
	add r7, r7, #262144
	cmp r8, r10
	bgt label72
	add r10, r7, #65536
	cmp r8, r10
	bgt label458
	add r7, r7, #16384
	cmp r8, r7
	bgt label76
	add r7, r7, #4096
	cmp r5, r7
	bgt label78
	add r7, r7, #1024
	cmp r4, r7
	bgt label68
	add r7, r7, #256
	cmp r3, r7
	bgt label80
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	b label916
.p2align 4
label74:
	add r10, r7, #65536
	ldr r8, [sp, #208]
	cmp r8, r10
	bgt label458
	add r7, r7, #16384
	cmp r8, r7
	bgt label76
	add r7, r7, #4096
	cmp r5, r7
	bgt label78
	add r7, r7, #1024
	cmp r4, r7
	bgt label68
	add r7, r7, #256
	cmp r3, r7
	bgt label80
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label458:
	mov r7, r10
	b label74
.p2align 4
label916:
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label82:
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label80:
	add r7, r7, #256
	cmp r3, r7
	bgt label80
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label68:
	add r7, r7, #1024
	cmp r4, r7
	bgt label68
	add r7, r7, #256
	cmp r3, r7
	bgt label80
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label78:
	add r7, r7, #4096
	cmp r5, r7
	bgt label78
	add r7, r7, #1024
	cmp r4, r7
	bgt label68
	add r7, r7, #256
	cmp r3, r7
	bgt label80
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
label3:
	ldr r9, [sp, #204]
	str r9, [sp, #128]
	ldr r6, [sp, #0]
	add r6, r9, r6
	str r6, [sp, #64]
	str r6, [sp, #132]
	ldr r7, [sp, #4]
	add r6, r6, r7
	str r6, [sp, #68]
	str r6, [sp, #136]
	ldr r7, [sp, #8]
	add r6, r6, r7
	str r6, [sp, #72]
	str r6, [sp, #140]
	ldr r7, [sp, #12]
	add r6, r6, r7
	str r6, [sp, #76]
	str r6, [sp, #144]
	ldr r7, [sp, #16]
	add r6, r6, r7
	str r6, [sp, #80]
	str r6, [sp, #148]
	ldr r7, [sp, #20]
	add r6, r6, r7
	str r6, [sp, #84]
	str r6, [sp, #152]
	ldr r7, [sp, #24]
	add r6, r6, r7
	str r6, [sp, #88]
	str r6, [sp, #156]
	ldr r7, [sp, #28]
	add r6, r6, r7
	str r6, [sp, #92]
	str r6, [sp, #160]
	ldr r7, [sp, #32]
	add r6, r6, r7
	str r6, [sp, #96]
	str r6, [sp, #164]
	ldr r7, [sp, #36]
	add r6, r6, r7
	str r6, [sp, #100]
	str r6, [sp, #168]
	ldr r7, [sp, #40]
	add r6, r6, r7
	str r6, [sp, #104]
	str r6, [sp, #172]
	ldr r7, [sp, #44]
	add r6, r6, r7
	str r6, [sp, #108]
	str r6, [sp, #176]
	ldr r7, [sp, #48]
	add r6, r6, r7
	str r6, [sp, #112]
	str r6, [sp, #180]
	ldr r7, [sp, #52]
	add r6, r6, r7
	str r6, [sp, #116]
	str r6, [sp, #184]
	ldr r7, [sp, #56]
	add r6, r6, r7
	str r6, [sp, #120]
	str r6, [sp, #188]
	ldr r7, [sp, #60]
	add r6, r6, r7
	str r6, [sp, #124]
	mov r6, #0
	cmp r6, #16
	blt label253
	mov r4, #0
	str r9, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label9
	b label90
.p2align 4
label76:
	add r7, r7, #16384
	ldr r8, [sp, #208]
	cmp r8, r7
	bgt label76
	add r7, r7, #4096
	cmp r5, r7
	bgt label78
	add r7, r7, #1024
	cmp r4, r7
	bgt label68
	add r7, r7, #256
	cmp r3, r7
	bgt label80
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label63
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label84
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label490
	and r8, r10, #15
	mov r7, sp
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
label253:
	add r8, sp, #128
	ldr r7, [r8, r6, lsl #2]
	add r9, sp, #64
	ldr r8, [r9, r6, lsl #2]
	cmp r7, r8
	blt label18
	add r6, r6, #1
	cmp r6, #16
	blt label253
	ldr r9, [sp, #204]
	mov r4, #0
	str r9, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label9
	b label90
.p2align 4
label18:
	add r8, sp, #128
	ldr r7, [r8, r6, lsl #2]
	ldr r8, [sp, #192]
	ldr r9, [r8, r7, lsl #2]
	ldr r7, [sp, #200]
	cmp r7, #0
	bgt label25
	mov r10, r9
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r7, r9, r7, lsl #4
	cmp r6, r7
	bne label24
.p2align 4
label576:
	add r8, sp, #128
	add r7, r8, r6, lsl #2
	ldr r10, [r7, #0]
	ldr r8, [sp, #192]
	str r9, [r8, r10, lsl #2]
	add r8, r10, #1
	str r8, [r7, #0]
	mov r7, r8
	add r9, sp, #64
	ldr r8, [r9, r6, lsl #2]
	cmp r7, r8
	blt label18
	add r6, r6, #1
	cmp r6, #16
	blt label253
	ldr r9, [sp, #204]
	mov r4, #0
	str r9, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label9
	b label90
.p2align 4
label24:
	add r8, sp, #128
	add r7, r8, r7, lsl #2
	ldr r10, [r7, #0]
	ldr r8, [sp, #192]
	add r11, r8, r10, lsl #2
	ldr r8, [r11, #0]
	str r9, [r11, #0]
	add r9, r10, #1
	str r9, [r7, #0]
	mov r9, r8
	ldr r7, [sp, #200]
	cmp r7, #0
	bgt label25
	mov r10, r8
	asr r7, r8, #31
	add r7, r8, r7, lsr #28
	asr r7, r7, #4
	sub r7, r8, r7, lsl #4
	cmp r6, r7
	bne label24
	b label576
.p2align 4
label25:
	ldr r7, [sp, #200]
	cmp r7, #4
	bgt label26
	mov r8, #0
	mov r7, r9
	add r8, r8, #1
	asr r10, r9, #31
	add r7, r9, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label28:
	add r8, r8, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label26:
	cmp r0, #16
	bgt label27
	mov r7, r9
	mov r8, #0
	add r8, r8, #4
	asr r10, r9, #31
	cmp r0, r8
	add r7, r9, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label27:
	cmp r1, #64
	bgt label30
	mov r8, #0
	add r8, r8, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label30:
	cmp r2, #256
	bgt label33
	mov r7, #0
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label52:
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label396:
	mov r7, r10
	b label52
.p2align 4
label49:
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label33:
	cmp r3, #1024
	bgt label36
	mov r7, #0
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label36:
	cmp r4, #4096
	bgt label37
	mov r7, #0
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label31:
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label37:
	cmp r5, #16384
	bgt label40
	mov r7, #0
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label40:
	ldr r8, [sp, #208]
	cmp r8, #262144
	bgt label363
	mov r7, #0
	add r10, r7, #65536
	cmp r8, r10
	bgt label374
	add r7, r7, #16384
	cmp r8, r7
	bgt label45
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label363:
	mov r7, #0
.p2align 4
label41:
	add r10, r7, #524288
	ldr r8, [sp, #208]
	add r7, r7, #262144
	cmp r8, r10
	bgt label41
	add r10, r7, #65536
	cmp r8, r10
	bgt label374
	add r7, r7, #16384
	cmp r8, r7
	bgt label45
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label43:
	add r10, r7, #65536
	ldr r8, [sp, #208]
	cmp r8, r10
	bgt label374
	add r7, r7, #16384
	cmp r8, r7
	bgt label45
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label374:
	mov r7, r10
	b label43
.p2align 4
label34:
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label47:
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label38:
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label305
.p2align 4
label45:
	add r7, r7, #16384
	ldr r8, [sp, #208]
	cmp r8, r7
	bgt label45
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label49
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #200]
	cmp r7, r8
	bgt label396
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
.p2align 4
label305:
	add r8, sp, #128
	add r7, r8, r6, lsl #2
	ldr r10, [r7, #0]
	ldr r8, [sp, #192]
	str r9, [r8, r10, lsl #2]
	add r8, r10, #1
	str r8, [r7, #0]
	mov r7, r8
	add r9, sp, #64
	ldr r8, [r9, r6, lsl #2]
	cmp r7, r8
	blt label18
	add r6, r6, #1
	cmp r6, #16
	blt label253
	ldr r9, [sp, #204]
	mov r4, #0
	str r9, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label9
label90:
	add sp, sp, #220
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label9:
	cmp r4, #0
	bgt label263
	add r8, sp, #128
	add r9, sp, #64
	ldr r2, [r8, r4, lsl #2]
	ldr r3, [r9, r4, lsl #2]
.p2align 4
label10:
	ldr r8, [sp, #192]
	ldr r7, [sp, #196]
	mov r0, r7
	mov r1, r8
	bl radixSort
	add r4, r4, #1
	cmp r4, #16
	blt label9
	b label90
label263:
	sub r0, r4, #1
	add r9, sp, #64
	add r8, sp, #128
	mov r7, sp
	ldr r2, [r9, r0, lsl #2]
	str r2, [r8, r4, lsl #2]
	ldr r0, [r7, r4, lsl #2]
	add r3, r2, r0
	str r3, [r9, r4, lsl #2]
	b label10
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r6, #:lower16:a
	sub sp, sp, #4
	movt r6, #:upper16:a
	mov r0, r6
	mov r4, r6
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r2, #0
	mov r1, r6
	mov r0, #8
	mov r3, r5
	bl radixSort
	cmp r5, #0
	bgt label930
	mov r4, #0
	b label937
label930:
	sub r2, r5, #4
	cmp r5, #4
	bgt label949
	mov r0, #0
	mov r3, r0
	b label934
label949:
	mov r1, #0
	mov r0, r1
label931:
	add r7, r4, r1, lsl #2
	add r6, r1, #3
	ldr r3, [r7, #0]
	ldr r8, [r7, #4]
	sdiv r9, r8, r6
	mls r8, r9, r6, r8
	mla r9, r8, r1, r8
	add r8, r1, #2
	sdiv r10, r3, r8
	mls r3, r10, r8, r3
	ldr r10, [r7, #8]
	ldr r7, [r7, #12]
	mla r9, r1, r3, r9
	add r3, r1, #4
	cmp r2, r3
	add r1, r1, #5
	sdiv r11, r10, r3
	mls r10, r11, r3, r10
	mla r8, r8, r10, r9
	sdiv r9, r7, r1
	mls r1, r9, r1, r7
	mla r1, r6, r1, r8
	add r0, r0, r1
	ble label934
	mov r1, r3
	b label931
label934:
	ldr r1, [r4, r3, lsl #2]
	add r2, r3, #2
	sdiv r6, r1, r2
	mls r1, r6, r2, r1
	mla r0, r3, r1, r0
	add r3, r3, #1
	cmp r5, r3
	bgt label934
	mov r4, r0
label937:
	mov r0, #102
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
