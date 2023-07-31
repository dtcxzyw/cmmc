.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r2, #2
	mov r0, #4
	mov r1, #1
	sub sp, sp, #72
	str r1, [sp, #8]
	str r2, [sp, #12]
	str r0, [sp, #16]
	mov r0, #8
	str r0, [sp, #20]
	mov r0, #16
	str r0, [sp, #24]
	mov r0, #32
	str r0, [sp, #28]
	mov r0, #64
	str r0, [sp, #32]
	mov r0, #128
	str r0, [sp, #36]
	mov r0, #256
	str r0, [sp, #40]
	mov r0, #512
	str r0, [sp, #44]
	mov r0, #1024
	str r0, [sp, #48]
	mov r0, #2048
	str r0, [sp, #52]
	mov r0, #4096
	str r0, [sp, #56]
	mov r0, #8192
	str r0, [sp, #60]
	mov r0, #16384
	str r0, [sp, #64]
	mov r0, #32768
	str r0, [sp, #68]
	mov r0, #0
	cmp r0, #0
	ble label6
label788:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	bge label589
.p2align 4
label765:
	and r5, r5, r3
	ands r5, r5, #1
	bne label768
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label765
	cmp r6, #0
	bne label1902
	movs r4, r2
	mov r3, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label1909:
	cmp r7, #0
	beq label2629
.p2align 4
label1925:
	mov r6, r3
	movs r7, r4
	bne label2006
	mov r6, r4
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	beq label3036
.p2align 4
label2069:
	mov r7, #0
	mov r5, #1
	mov r8, r2
	mov r6, r7
	cmp r7, #16
	blt label689
	cmp r7, #0
	beq label2856
.p2align 4
label2102:
	mov r6, r3
	movs r7, r4
	bne label2183
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label3059
.p2align 4
label2106:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label726
	b label2659
.p2align 4
label700:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label2069
	b label2660
.p2align 4
label3062:
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label3260
.p2align 4
label718:
	and r5, r6, r8
	ands r5, r5, #1
	bne label719
	b label2139
.p2align 4
label723:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label722
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label718
	mov r6, r4
	cmp r9, #0
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label3062
.p2align 4
label2659:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label722
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label718
	mov r6, r4
	cmp r9, #0
	bne label2106
.p2align 4
label2662:
	movw r4, #32767
	cmp r2, r4
	bgt label700
.p2align 4
label2862:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label3062
.p2align 4
label722:
	and r5, r7, r9
	ands r5, r5, #1
	bne label723
	b label2151
.p2align 4
label726:
	ands r5, r10, #1
	bne label727
	b label2162
.p2align 4
label2665:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	b label2866
.p2align 4
label727:
	ands r5, r8, #1
	beq label728
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label722
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label718
.p2align 4
label2134:
	mov r6, r4
	movs r7, r9
	bne label2106
	b label2662
.p2align 4
label2866:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label722
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label718
	b label2134
.p2align 4
label689:
	and r5, r5, r8
	ands r5, r5, #1
	beq label2091
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label689
	cmp r7, #0
	bne label2102
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label3259
.p2align 4
label3260:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label2139:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label718
	mov r6, r4
	movs r7, r9
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label3260
.p2align 4
label719:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label718
	mov r6, r4
	movs r7, r9
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label2183:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	b label735
.p2align 4
label2190:
	ands r5, r8, #1
	beq label2668
.p2align 4
label745:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label740
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label761
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	mov r6, r3
	cmp r8, #0
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
.p2align 4
label3072:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label3273
.p2align 4
label2668:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label740
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label761
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	mov r6, r3
	cmp r8, #0
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label3072
.p2align 4
label2186:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label2667
.p2align 4
label761:
	and r5, r7, r6
	ands r5, r5, #1
	beq label2234
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label761
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	mov r6, r3
	cmp r8, #0
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label3072
.p2align 4
label2874:
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label3072
.p2align 4
label2234:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label761
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	mov r6, r3
	cmp r8, #0
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	b label2874
.p2align 4
label3273:
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label3464
.p2align 4
label2222:
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label757
	mov r6, r3
	movs r7, r8
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label3273
.p2align 4
label3464:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label757:
	and r5, r6, r9
	ands r5, r5, #1
	beq label2222
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label757
	mov r6, r3
	movs r7, r8
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label3464
.p2align 4
label2667:
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	mov r6, r3
	cmp r8, #0
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label3072
.p2align 4
label735:
	cmp r9, #16
	bge label2186
.p2align 4
label740:
	ands r5, r10, #1
	beq label2190
	ands r5, r8, #1
	beq label745
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label740
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label761
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	mov r6, r3
	cmp r8, #0
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label3072
.p2align 4
label2856:
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
.p2align 4
label3059:
	movw r2, #32767
	cmp r0, r2
	bgt label683
.p2align 4
label3259:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label3449:
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label3259
.p2align 4
label2091:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label689
	cmp r7, #0
	bne label2102
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label3449
.p2align 4
label2151:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label722
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label718
	mov r6, r4
	cmp r9, #0
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label2862
.p2align 4
label2006:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label669
	b label2009
.p2align 4
label3247:
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label3440
.p2align 4
label669:
	ands r5, r10, #1
	bne label670
	ands r5, r8, #1
	beq label2648
.p2align 4
label671:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label669
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label655
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r3
	bne label2006
	mov r6, r4
	movs r7, r4
	beq label3247
.p2align 4
label1929:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label617
	b label2633
.p2align 4
label1950:
	ands r5, r8, #1
	bne label618
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label3040
.p2align 4
label628:
	and r5, r7, r9
	ands r5, r5, #1
	beq label629
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label638
	mov r6, r4
	cmp r8, #0
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label3244
.p2align 4
label2633:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r7, r8
	b label3235
.p2align 4
label3244:
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label3437
.p2align 4
label638:
	and r5, r6, r9
	ands r5, r5, #1
	bne label639
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label638
	mov r6, r4
	movs r7, r8
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label3244
.p2align 4
label617:
	ands r5, r10, #1
	bne label622
	b label1950
.p2align 4
label618:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	b label2638
.p2align 4
label622:
	ands r5, r8, #1
	beq label618
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label3046
.p2align 4
label3049:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1929
	b label3247
.p2align 4
label2648:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label669
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label655
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r3
	bne label2006
	b label3049
.p2align 4
label3440:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label3249
.p2align 4
label2018:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label655
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label665
	mov r6, r3
	cmp r8, #0
	bne label2006
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label3440
label6:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r1, #1
	mov r2, #2
	mov r0, r1
	b label7
.p2align 4
label3235:
	mov r6, r4
	movs r7, r8
	bne label1929
	movw r4, #32767
	cmp r1, r4
	ble label2843
.p2align 4
label611:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label3437:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label639:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label638
	mov r6, r4
	movs r7, r8
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label3437
.p2align 4
label2009:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label2013
.p2align 4
label655:
	and r5, r7, r9
	ands r5, r5, #1
	beq label2018
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label655
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label665
	mov r6, r3
	cmp r8, #0
	bne label2006
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label3249
.p2align 4
label3442:
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label3234
.p2align 4
label665:
	and r5, r6, r9
	ands r5, r5, #1
	beq label2037
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label665
	mov r6, r3
	movs r7, r8
	bne label2006
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label3442
.p2align 4
label629:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label638
	mov r6, r4
	cmp r8, #0
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label3244
.p2align 4
label2629:
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label3426
.p2align 4
label590:
	cmp r1, #0
	beq label1905
.p2align 4
label1906:
	mov r7, #0
	mov r5, #1
	mov r8, r1
	mov r6, r7
	cmp r7, #16
	bge label1909
.p2align 4
label599:
	and r5, r5, r8
	ands r5, r5, #1
	beq label1914
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label599
	cmp r7, #0
	bne label1925
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label3036
.p2align 4
label2638:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label3046
.p2align 4
label3249:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label3442
.p2align 4
label2037:
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label665
	mov r6, r3
	movs r7, r8
	bne label2006
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label3249
.p2align 4
label3426:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label3036
.p2align 4
label1914:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label599
	cmp r7, #0
	bne label1925
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label3426
.p2align 4
label3040:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label638
	mov r6, r4
	cmp r8, #0
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
.p2align 4
label3046:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label3244
.p2align 4
label2162:
	ands r5, r8, #1
	beq label2665
.p2align 4
label728:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label722
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label718
	b label2134
.p2align 4
label670:
	ands r5, r8, #1
	beq label671
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label669
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label655
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r3
	bne label2006
	b label3049
.p2align 4
label3036:
	movw r2, #32767
	cmp r0, r2
	bgt label683
.p2align 4
label3234:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label7:
	cmp r0, #0
	ble label196
label792:
	mov r4, #0
	mov r5, #1
	mov r6, r0
	mov r3, r4
	cmp r4, #16
	bge label795
.p2align 4
label16:
	and r5, r5, r6
	ands r5, r5, #1
	bne label17
	add r5, r6, r6, lsr #31
	add r3, r3, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label16
	cmp r4, #0
	bne label811
	movs r4, r2
	mov r3, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
label196:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #4]
	cmp r0, #16
	bge label1154
label1155:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label398
.p2align 4
label1534:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label404
	cmp r6, #0
	beq label2777
.p2align 4
label1554:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	beq label1557
.p2align 4
label1558:
	mov r7, #0
	mov r5, #1
	mov r8, r1
	mov r6, r7
	cmp r7, #16
	blt label490
	b label418
.p2align 4
label3379:
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3183
.p2align 4
label426:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1558
	b label2578
.p2align 4
label490:
	and r5, r5, r8
	ands r5, r5, #1
	bne label493
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label490
	cmp r7, #0
	bne label1566
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label3379
.p2align 4
label440:
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label447
	mov r6, r4
	cmp r9, #0
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	beq label3189
.p2align 4
label1721:
	mov r7, #0
	mov r5, #1
	mov r8, r2
	mov r6, r7
	cmp r7, #16
	blt label508
	cmp r7, #0
	beq label2805
.p2align 4
label1754:
	mov r6, r3
	movs r7, r4
	bne label1835
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label2809
.p2align 4
label1758:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label526
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label537
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
	mov r6, r4
	cmp r8, #0
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label3020
.p2align 4
label526:
	ands r5, r10, #1
	bne label531
	b label1779
.p2align 4
label2612:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label526
	b label2813
.p2align 4
label531:
	ands r5, r8, #1
	beq label527
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label526
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label537
	b label2816
.p2align 4
label3412:
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3221
.p2align 4
label537:
	and r5, r7, r6
	ands r5, r5, #1
	bne label538
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label537
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
	mov r6, r4
	cmp r8, #0
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label3412
.p2align 4
label1779:
	ands r5, r8, #1
	beq label2612
.p2align 4
label527:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label526
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label537
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	bge label3215
.p2align 4
label547:
	and r5, r6, r9
	ands r5, r5, #1
	bne label550
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label547
	mov r6, r4
	movs r7, r8
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label508:
	and r5, r5, r8
	ands r5, r5, #1
	beq label1743
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label508
	cmp r7, #0
	bne label1754
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	ble label3210
.p2align 4
label520:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label3403:
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3009
.p2align 4
label1743:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label508
	cmp r7, #0
	bne label1754
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label3403
.p2align 4
label398:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #16
	blt label1155
	b label2571
.p2align 4
label550:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label547
	mov r6, r4
	movs r7, r8
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label2816:
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
	mov r6, r4
	cmp r8, #0
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
.p2align 4
label3020:
	movw r2, #32767
	cmp r0, r2
	bgt label502
.p2align 4
label3221:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label2805:
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
.p2align 4
label2809:
	movw r2, #32767
	cmp r0, r2
	bgt label502
.p2align 4
label3009:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label1835:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	b label554
.p2align 4
label577:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label574
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label570
	mov r6, r3
	cmp r8, #0
	bne label1835
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label3023
.p2align 4
label1838:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label564
.p2align 4
label574:
	and r5, r7, r9
	ands r5, r5, #1
	bne label577
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label574
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label570
	mov r6, r3
	cmp r8, #0
	bne label1835
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label3023
.p2align 4
label2813:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label537
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
	mov r6, r4
	cmp r8, #0
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label3020
.p2align 4
label564:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label1849
.p2align 4
label570:
	and r5, r6, r9
	ands r5, r5, #1
	beq label571
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label570
	mov r6, r3
	movs r7, r8
	bne label1835
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3418
.p2align 4
label571:
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label570
	mov r6, r3
	movs r7, r8
	bne label1835
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3418
.p2align 4
label3407:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label3020
.p2align 4
label3215:
	mov r6, r4
	movs r7, r8
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label3407
.p2align 4
label2824:
	movw r4, #32767
	cmp r2, r4
	bgt label520
.p2align 4
label3023:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
.p2align 4
label3418:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label502:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1534
	b label398
.p2align 4
label538:
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label537
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
	mov r6, r4
	cmp r8, #0
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3221
.p2align 4
label554:
	cmp r9, #16
	bge label1838
.p2align 4
label578:
	ands r5, r10, #1
	bne label583
	ands r5, r8, #1
	bne label582
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label578
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label574
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r3
	bne label1835
.p2align 4
label2619:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1758
	b label2824
.p2align 4
label2627:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label574
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r3
	bne label1835
	b label2619
.p2align 4
label437:
	and r5, r7, r6
	ands r5, r5, #1
	bne label440
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label447
	b label2788
.p2align 4
label3384:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label447:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1615
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label447
	mov r6, r4
	movs r7, r9
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3384
.p2align 4
label1570:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label451
	b label2576
.p2align 4
label3187:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	b label3382
.p2align 4
label1638:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label3187
.p2align 4
label3189:
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3384
.p2align 4
label1615:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label447
	mov r6, r4
	movs r7, r9
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label3189
.p2align 4
label418:
	cmp r7, #0
	beq label1565
.p2align 4
label1566:
	mov r6, r3
	movs r7, r4
	bne label1647
	mov r6, r4
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
.p2align 4
label3183:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label1647:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	b label460
.p2align 4
label483:
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label482
	mov r6, r3
	movs r7, r8
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label3395
.p2align 4
label460:
	cmp r9, #16
	bge label1650
.p2align 4
label465:
	ands r5, r10, #1
	bne label468
	ands r5, r8, #1
	bne label470
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label465
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label486
	b label2996
.p2align 4
label2798:
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label3000
.p2align 4
label482:
	and r5, r6, r9
	ands r5, r5, #1
	bne label485
	b label483
.p2align 4
label486:
	and r5, r7, r6
	ands r5, r5, #1
	bne label487
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label486
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	mov r6, r3
	cmp r8, #0
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	b label2798
.p2align 4
label2996:
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	mov r6, r3
	cmp r8, #0
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label3000
.p2align 4
label487:
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label486
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	mov r6, r3
	cmp r8, #0
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label3000
.p2align 4
label451:
	ands r5, r10, #1
	bne label455
	ands r5, r8, #1
	bne label456
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	b label2585
.p2align 4
label455:
	ands r5, r8, #1
	bne label1638
.p2align 4
label456:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label3187
.p2align 4
label2585:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label3187
.p2align 4
label1565:
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label3379
.p2align 4
label493:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label490
	cmp r7, #0
	bne label1566
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label3379
.p2align 4
label1650:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label486
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	mov r6, r3
	cmp r8, #0
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label3000
.p2align 4
label2576:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label3187
.p2align 4
label2788:
	mov r6, r4
	movs r7, r9
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label3189
.p2align 4
label468:
	ands r5, r8, #1
	bne label1662
.p2align 4
label470:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label465
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label486
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	mov r6, r3
	cmp r8, #0
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
.p2align 4
label3000:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label3395
.p2align 4
label1662:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label465
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label486
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	mov r6, r3
	cmp r8, #0
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label3000
.p2align 4
label3395:
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3183
.p2align 4
label485:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label482
	mov r6, r3
	movs r7, r8
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label3395
.p2align 4
label582:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label578
	b label2627
.p2align 4
label583:
	ands r5, r8, #1
	beq label582
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label578
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label574
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r3
	bne label1835
	b label2619
.p2align 4
label113:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label792
	b label196
.p2align 4
label140:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label1029
.p2align 4
label146:
	and r5, r6, r9
	ands r5, r5, #1
	bne label149
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label146
	mov r6, r4
	movs r7, r8
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label130:
	cmp r9, #16
	blt label154
	b label1018
.p2align 4
label1029:
	mov r6, r4
	movs r7, r8
	bne label1015
	b label2502
.p2align 4
label154:
	ands r5, r10, #1
	bne label158
	ands r5, r8, #1
	bne label155
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label154
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label150
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r7, r8
	b label1029
.p2align 4
label2502:
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2711
.p2align 4
label155:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label154
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label150
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r4
	bne label1015
	b label2502
.p2align 4
label1018:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label150
	b label140
.p2align 4
label2711:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label2912
.p2align 4
label150:
	and r5, r7, r9
	ands r5, r5, #1
	bne label151
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label150
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label146
	mov r6, r4
	cmp r8, #0
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2711
.p2align 4
label1015:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	b label130
.p2align 4
label158:
	ands r5, r8, #1
	beq label155
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label154
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label150
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	movs r7, r8
	mov r6, r4
	bne label1015
	b label2502
.p2align 4
label1557:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label3210:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3009
.p2align 4
label2578:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label2777:
	movs r4, r2
	mov r3, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label404:
	and r5, r5, r3
	ands r5, r5, #1
	beq label1543
	add r5, sp, #8
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label404
	cmp r6, #0
	bne label1554
	movs r4, r2
	mov r3, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label1543:
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label404
	cmp r6, #0
	bne label1554
	movs r4, r2
	mov r3, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label120:
	and r5, r5, r6
	ands r5, r5, #1
	bne label123
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label120
	cmp r8, #0
	beq label2707
.p2align 4
label1011:
	mov r6, r3
	movs r7, r4
	bne label1092
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	ble label2501
.p2align 4
label162:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label123:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label120
	cmp r8, #0
	bne label1011
	mov r6, r4
	movs r7, r4
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label2911
.p2align 4
label1092:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	b label166
.p2align 4
label174:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label171
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label192
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label1092
	mov r6, r4
	movs r7, r4
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2925
.p2align 4
label172:
	ands r5, r8, #1
	beq label174
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label171
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label192
	b label2923
.p2align 4
label2722:
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2925
.p2align 4
label192:
	and r5, r7, r6
	ands r5, r5, #1
	bne label193
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label192
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label188
	mov r6, r3
	cmp r9, #0
	bne label1092
	mov r6, r4
	movs r7, r4
	bne label1015
	b label2722
.p2align 4
label3316:
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2925
.p2align 4
label2923:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label188
	mov r6, r3
	cmp r9, #0
	bne label1092
	mov r6, r4
	movs r7, r4
	bne label1015
	b label3316
.p2align 4
label166:
	cmp r9, #16
	blt label171
	b label1095
.p2align 4
label3116:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1015
	b label3316
.p2align 4
label171:
	ands r5, r10, #1
	bne label172
	ands r5, r8, #1
	bne label174
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label171
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label192
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label1092
	b label3116
.p2align 4
label2707:
	mov r6, r4
	movs r7, r4
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label2911
.p2align 4
label3320:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label188:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1131
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label188
	mov r6, r3
	movs r7, r9
	bne label1092
	mov r6, r4
	movs r7, r4
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label3320
.p2align 4
label3120:
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label3320
.p2align 4
label1131:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label188
	mov r6, r3
	movs r7, r9
	bne label1092
	mov r6, r4
	movs r7, r4
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label3120
.p2align 4
label2889:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	mov r1, r3
	movs r4, r2
	mov r3, #0
	beq label3288
.p2align 4
label978:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label120
	cmp r8, #0
	bne label1011
	mov r6, r4
	movs r7, r4
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
.p2align 4
label2710:
	movw r2, #32767
	cmp r0, r2
	bgt label113
.p2align 4
label2911:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label193:
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label192
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label188
	mov r6, r3
	cmp r9, #0
	bne label1092
	mov r6, r4
	movs r7, r4
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2925
.p2align 4
label149:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label146
	mov r6, r4
	movs r7, r8
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label2912:
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label3110
.p2align 4
label151:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label150
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label146
	mov r6, r4
	cmp r8, #0
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label2912
.p2align 4
label1154:
	mov r0, #0
	str r0, [sp, #0]
	cmp r0, #16
	bge label2518
label1159:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label1162
label1163:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	bge label1166
.p2align 4
label210:
	and r5, r5, r3
	ands r5, r5, #1
	beq label1171
	add r5, sp, #8
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label210
	cmp r6, #0
	beq label2727
.p2align 4
label1182:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	beq label1185
.p2align 4
label1186:
	mov r7, #0
	mov r5, #1
	mov r8, r1
	mov r6, r7
	cmp r7, #16
	blt label296
	b label224
.p2align 4
label3129:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label3329
.p2align 4
label296:
	and r5, r5, r8
	ands r5, r5, #1
	bne label297
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label296
	cmp r7, #0
	bne label1194
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label3129
.p2align 4
label1185:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	beq label2729
.p2align 4
label1349:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label314
	cmp r8, #0
	bne label1382
	mov r6, r4
	movs r7, r4
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
.p2align 4
label3166:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label3365
.p2align 4
label1449:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label384
	b label2558
.p2align 4
label1505:
	ands r5, r8, #1
	bne label388
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label384
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	mov r6, r4
	cmp r8, #0
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label3169
.p2align 4
label3369:
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	b label2519
.p2align 4
label380:
	and r5, r6, r9
	ands r5, r5, #1
	beq label1494
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label380
	mov r6, r4
	movs r7, r8
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label3369
.p2align 4
label370:
	and r5, r7, r6
	ands r5, r5, #1
	bne label373
	b label371
.p2align 4
label384:
	ands r5, r10, #1
	beq label1505
	ands r5, r8, #1
	beq label388
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label384
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	mov r6, r4
	cmp r8, #0
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label3169
.p2align 4
label373:
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label370
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	mov r6, r4
	cmp r8, #0
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
.p2align 4
label3171:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label3369
.p2align 4
label1371:
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label314
	cmp r8, #0
	beq label2956
.p2align 4
label1382:
	mov r6, r3
	movs r7, r4
	bne label1386
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label3365
.p2align 4
label1386:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label346
	b label1389
.p2align 4
label3158:
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label3357
.p2align 4
label346:
	ands r5, r10, #1
	beq label1428
	ands r5, r8, #1
	beq label347
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label346
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label332
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	mov r6, r3
	cmp r8, #0
	bne label1386
	mov r6, r4
	movs r7, r4
	bne label1449
	b label3158
.p2align 4
label1389:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1393
.p2align 4
label332:
	and r5, r7, r6
	ands r5, r5, #1
	bne label335
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label332
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	mov r6, r3
	cmp r8, #0
	bne label1386
	mov r6, r4
	movs r7, r4
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	b label3160
.p2align 4
label3353:
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3166
.p2align 4
label2956:
	mov r6, r4
	movs r7, r4
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	b label3353
.p2align 4
label335:
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label332
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	mov r6, r3
	cmp r8, #0
	bne label1386
	mov r6, r4
	movs r7, r4
	bne label1449
	movw r4, #32767
	cmp r2, r4
	ble label2961
.p2align 4
label358:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	b label2519
.p2align 4
label314:
	and r5, r5, r6
	ands r5, r5, #1
	beq label1371
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label314
	cmp r8, #0
	bne label1382
	mov r6, r4
	movs r7, r4
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3166
.p2align 4
label388:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label384
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	mov r6, r4
	cmp r8, #0
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label3169
.p2align 4
label371:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label370
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	mov r6, r4
	cmp r8, #0
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3171
.p2align 4
label2558:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	mov r6, r4
	cmp r8, #0
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
.p2align 4
label3169:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3171
.p2align 4
label342:
	and r5, r6, r9
	ands r5, r5, #1
	bne label345
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label342
	mov r6, r3
	movs r7, r8
	bne label1386
	mov r6, r4
	movs r7, r4
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3359
.p2align 4
label345:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label342
	mov r6, r3
	movs r7, r8
	bne label1386
	mov r6, r4
	movs r7, r4
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3359
.p2align 4
label1494:
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label380
	mov r6, r4
	movs r7, r8
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3171
.p2align 4
label2959:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1449
	b label3158
.p2align 4
label1428:
	ands r5, r8, #1
	bne label347
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label346
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label332
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	mov r6, r3
	cmp r8, #0
	bne label1386
	b label2959
.p2align 4
label230:
	cmp r9, #16
	bge label1201
.p2align 4
label235:
	ands r5, r10, #1
	bne label237
	ands r5, r8, #1
	bne label236
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label235
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label246
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label256
	mov r6, r4
	cmp r8, #0
	bne label1198
	movw r4, #32767
	cmp r1, r4
	ble label3335
.p2align 4
label261:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	b label2519
.p2align 4
label1198:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	b label230
.p2align 4
label247:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label246
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	bge label2736
.p2align 4
label256:
	and r5, r6, r9
	ands r5, r5, #1
	bne label257
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label256
	mov r6, r4
	movs r7, r8
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label3138
.p2align 4
label3128:
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	b label2519
.p2align 4
label237:
	ands r5, r8, #1
	beq label236
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label235
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label2733
.p2align 4
label246:
	and r5, r7, r6
	ands r5, r5, #1
	beq label247
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label246
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label256
	mov r6, r4
	cmp r8, #0
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
.p2align 4
label3138:
	movw r2, #32767
	cmp r0, r2
	bgt label307
.p2align 4
label3338:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label3128
.p2align 4
label224:
	cmp r7, #0
	bne label1194
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label3129
.p2align 4
label3329:
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3330
.p2align 4
label1194:
	mov r6, r3
	movs r7, r4
	bne label1275
	b label2522
.p2align 4
label297:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label296
	cmp r7, #0
	bne label1194
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label3329
.p2align 4
label2522:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
.p2align 4
label3330:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label3128
.p2align 4
label1201:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label246
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label256
	mov r6, r4
	cmp r8, #0
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
.p2align 4
label3331:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label2942
.p2align 4
label1275:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	b label266
.p2align 4
label3344:
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3330
.p2align 4
label289:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label286
	mov r6, r3
	movs r7, r8
	bne label1275
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label3344
.p2align 4
label286:
	and r5, r6, r9
	ands r5, r5, #1
	bne label289
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label286
	mov r6, r3
	movs r7, r8
	bne label1275
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label3344
.p2align 4
label257:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label256
	mov r6, r4
	movs r7, r8
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label3338
.p2align 4
label2736:
	mov r6, r4
	movs r7, r8
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label3138
.p2align 4
label2733:
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label256
	mov r6, r4
	cmp r8, #0
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label2942
.p2align 4
label236:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label235
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label246
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label256
	mov r6, r4
	cmp r8, #0
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label3331
.p2align 4
label347:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label346
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label332
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	mov r6, r3
	cmp r8, #0
	bne label1386
	mov r6, r4
	movs r7, r4
	bne label1449
	b label3158
.p2align 4
label266:
	cmp r9, #16
	bge label1278
.p2align 4
label290:
	ands r5, r10, #1
	bne label291
	ands r5, r8, #1
	beq label2539
.p2align 4
label292:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label290
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label276
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label286
	mov r6, r3
	cmp r8, #0
	bne label1275
.p2align 4
label2946:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1198
	b label3142
.p2align 4
label2539:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label290
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label276
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label286
	mov r6, r3
	cmp r8, #0
	bne label1275
	b label2946
.p2align 4
label1278:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1282
.p2align 4
label276:
	and r5, r7, r6
	ands r5, r5, #1
	bne label279
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label276
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label286
	mov r6, r3
	cmp r8, #0
	bne label1275
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
.p2align 4
label3144:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label3344
.p2align 4
label279:
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label276
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label286
	mov r6, r3
	cmp r8, #0
	bne label1275
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label3144
.p2align 4
label3142:
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label3144
.p2align 4
label795:
	cmp r4, #0
	beq label2470
.p2align 4
label811:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	beq label814
.p2align 4
label815:
	mov r5, #1
	mov r6, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label102
	b label30
.p2align 4
label3082:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	b label3283
.p2align 4
label823:
	mov r6, r3
	movs r7, r4
	bne label904
	b label2472
.p2align 4
label102:
	and r5, r5, r6
	ands r5, r5, #1
	bne label103
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label102
	cmp r8, #0
	bne label823
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label3082
.p2align 4
label827:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	bge label830
.p2align 4
label60:
	ands r5, r10, #1
	bne label61
	ands r5, r8, #1
	bne label65
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label60
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label46
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
	mov r6, r4
	cmp r8, #0
	bne label827
.p2align 4
label2886:
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label3084
.p2align 4
label56:
	and r5, r6, r9
	ands r5, r5, #1
	bne label59
	b label57
.p2align 4
label61:
	ands r5, r8, #1
	beq label65
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label60
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label46
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
	mov r6, r4
	cmp r8, #0
	bne label827
	b label2886
.p2align 4
label830:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label834
.p2align 4
label46:
	and r5, r7, r6
	ands r5, r5, #1
	beq label47
	add r5, sp, #8
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label46
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
	mov r6, r4
	cmp r8, #0
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	b label3086
.p2align 4
label2472:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
.p2align 4
label3284:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label57:
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label56
	mov r6, r4
	movs r7, r8
	bne label827
	movw r4, #32767
	cmp r1, r4
	ble label2889
.p2align 4
label67:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label815
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label59:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label56
	mov r6, r4
	movs r7, r8
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label3287
.p2align 4
label47:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label46
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
	mov r6, r4
	cmp r8, #0
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	b label3086
.p2align 4
label904:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	b label72
.p2align 4
label79:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label77
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
.p2align 4
label2902:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label3101
.p2align 4
label3301:
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label3284
.p2align 4
label98:
	and r5, r6, r8
	ands r5, r5, #1
	beq label955
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label98
	mov r6, r3
	movs r7, r9
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	b label3301
.p2align 4
label3283:
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label3284
.p2align 4
label103:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label102
	cmp r8, #0
	bne label823
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	b label3283
.p2align 4
label72:
	cmp r9, #16
	bge label907
.p2align 4
label77:
	ands r5, r10, #1
	beq label911
	ands r5, r8, #1
	bne label79
.p2align 4
label81:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label77
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label2902
.p2align 4
label907:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label2902
.p2align 4
label955:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label98
	mov r6, r3
	movs r7, r9
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label3101
.p2align 4
label911:
	ands r5, r8, #1
	bne label81
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label77
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label2895
.p2align 4
label88:
	and r5, r7, r9
	ands r5, r5, #1
	beq label936
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
.p2align 4
label3101:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	b label3301
.p2align 4
label2895:
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label2902
.p2align 4
label3084:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label3285
.p2align 4
label65:
	add r5, sp, #8
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label60
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label46
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
	mov r6, r4
	cmp r8, #0
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label3084
.p2align 4
label3298:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label3101
.p2align 4
label936:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label3298
.p2align 4
label30:
	cmp r8, #0
	bne label823
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label3082
.p2align 4
label291:
	ands r5, r8, #1
	beq label292
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label290
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label276
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label286
	mov r6, r3
	cmp r8, #0
	bne label1275
	b label2946
.p2align 4
label3357:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
.p2align 4
label3160:
	movw r2, #32767
	cmp r0, r2
	bgt label307
.p2align 4
label3359:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
.p2align 4
label3365:
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	b label2519
.p2align 4
label3285:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
.p2align 4
label3086:
	movw r2, #32767
	cmp r0, r2
	bgt label113
.p2align 4
label3287:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label2729:
	movw r2, #32767
	cmp r0, r2
	ble label2932
.p2align 4
label307:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1163
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	b label2519
.p2align 4
label1166:
	cmp r6, #0
	bne label1182
	movs r4, r2
	mov r3, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
.p2align 4
label3325:
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	b label2519
.p2align 4
label1171:
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label210
	cmp r6, #0
	bne label1182
	movs r4, r2
	mov r3, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label3325
.p2align 4
label2727:
	movs r4, r2
	mov r3, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	b label2519
.p2align 4
label3335:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
.p2align 4
label2942:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label3138
.p2align 4
label1393:
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	mov r6, r3
	cmp r8, #0
	bne label1386
	b label2959
.p2align 4
label3288:
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label3287
.p2align 4
label2470:
	movs r4, r2
	mov r3, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label814:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label17:
	add r5, sp, #8
	ldr r5, [r5, r3, lsl #2]
	add r4, r4, r5
	add r5, r6, r6, lsr #31
	add r3, r3, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label16
	cmp r4, #0
	bne label811
	movs r4, r2
	mov r3, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label1905:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	ble label3032
.p2align 4
label683:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label788
	b label6
.p2align 4
label1902:
	mov r4, r1
	mov r3, #0
	mov r1, r2
	b label590
.p2align 4
label768:
	add r5, sp, #8
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label765
	cmp r6, #0
	bne label1902
	movs r4, r2
	mov r3, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label589:
	cmp r6, #0
	bne label1902
	movs r4, r2
	mov r3, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label2660:
	movw r2, #32767
	cmp r0, r2
	bgt label683
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label3382:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label3189
.p2align 4
label1095:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label192
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label1092
	b label3116
.p2align 4
label834:
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
	mov r6, r4
	cmp r8, #0
	bne label827
	b label2886
.p2align 4
label1282:
	ldr r5, [sp, #12]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label286
	mov r6, r3
	cmp r8, #0
	bne label1275
	b label2946
.p2align 4
label2013:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label665
	mov r6, r3
	cmp r8, #0
	bne label2006
	b label3049
.p2align 4
label1162:
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	beq label2519
label1529:
	mov r0, #1
label392:
	add sp, sp, #72
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label2925:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label3120
.p2align 4
label2843:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label3046
.p2align 4
label2518:
	mov r0, #0
	b label392
.p2align 4
label2571:
	mov r0, #0
	str r0, [sp, #0]
	cmp r0, #16
	blt label1159
	b label2518
label2519:
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label199
.p2align 4
label3110:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label3032:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
label199:
	ldr r0, [sp, #0]
	cmp r0, #16
	blt label1159
	b label2518
.p2align 4
label2501:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label2710
.p2align 4
label2961:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	b label3160
.p2align 4
label1849:
	mov r6, r3
	movs r7, r8
	bne label1835
	b label2619
.p2align 4
label2932:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label3128
