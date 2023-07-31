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
	bgt label788
label6:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r1, #1
	mov r2, #2
	mov r0, r1
	b label7
label788:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label765
	b label589
label1906:
	mov r8, #0
	mov r5, #1
	mov r7, r1
	mov r6, r8
	cmp r8, #16
	bge label1909
label599:
	and r5, r5, r7
	ands r5, r5, #1
	beq label1914
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label599
	cmp r8, #0
	bne label1925
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	ble label2632
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
	beq label2068
label2069:
	mov r8, #0
	mov r5, #1
	mov r7, r2
	mov r6, r8
	cmp r8, #16
	blt label689
	cmp r8, #0
	bne label2102
	mov r6, r4
	movs r7, r4
	bne label2106
	b label2105
label683:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label788
	b label6
label2105:
	movw r4, #32767
	cmp r2, r4
	ble label2658
label700:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
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
label1914:
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label599
	cmp r8, #0
	beq label3024
label1925:
	mov r6, r3
	movs r7, r4
	beq label2631
label2006:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label669
	b label2009
label2845:
	mov r6, r3
	movs r7, r9
	bne label2006
	b label3037
label669:
	ands r5, r10, #1
	bne label670
	ands r5, r8, #1
	beq label2648
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label655
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2845
label2009:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label655
	b label2013
label3037:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1929
	b label2848
label655:
	and r5, r7, r8
	ands r5, r5, #1
	bne label656
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label655
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label665
	mov r6, r3
	cmp r9, #0
	bne label2006
	b label3037
label2848:
	movw r4, #32767
	cmp r1, r4
	bgt label611
label3039:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label2830
label666:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label665
	mov r6, r3
	movs r7, r9
	bne label2006
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label3039
label656:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label655
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label665
	mov r6, r3
	cmp r9, #0
	bne label2006
	mov r6, r4
	movs r7, r4
	bne label1929
	b label2848
label2830:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
label2013:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label665
	b label2845
label2648:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label669
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label655
	b label2013
label1929:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label617
	b label2633
label3029:
	mov r6, r4
	movs r7, r9
	bne label1929
label2643:
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label2841
label2632:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label2830
label2631:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label2632
label2068:
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label2651
label2633:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1929
	b label2643
label617:
	ands r5, r10, #1
	bne label622
	ands r5, r8, #1
	beq label2637
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	bge label2835
label628:
	and r5, r7, r8
	ands r5, r5, #1
	bne label631
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label638
	mov r6, r4
	cmp r9, #0
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
label2841:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
label3034:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
label639:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label638
	mov r6, r4
	movs r7, r9
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label3034
label2637:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1929
	b label2643
label2658:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label2068
label2091:
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label689
	cmp r8, #0
	beq label3045
label2102:
	mov r6, r3
	movs r7, r4
	beq label2657
label2183:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	bge label2186
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label761
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label2183
label2672:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label2106
label2872:
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label3060
label2222:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label757
	mov r6, r3
	movs r7, r9
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	b label2872
label2186:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label761
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label2217:
	mov r6, r3
	movs r7, r9
	bne label2183
	b label2672
label3060:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label2068
label757:
	and r5, r6, r8
	ands r5, r5, #1
	beq label2222
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label757
	mov r6, r3
	movs r7, r9
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label3060
label761:
	and r5, r7, r8
	ands r5, r5, #1
	beq label2234
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label761
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label757
	mov r6, r3
	cmp r9, #0
	bne label2183
	b label2672
label3044:
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label2658
label3045:
	mov r6, r4
	movs r7, r4
	bne label2106
	b label3044
label689:
	and r5, r5, r7
	ands r5, r5, #1
	beq label2091
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label689
	cmp r8, #0
	bne label2102
	mov r6, r4
	movs r7, r4
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label2658
label2657:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label2106
	b label2105
label2651:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
label3023:
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label2632
label3024:
	mov r6, r4
	movs r7, r4
	bne label1929
	b label3023
label2106:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label726
	b label2659
label3050:
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label2651
label718:
	and r5, r6, r8
	ands r5, r5, #1
	beq label2139
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label718
	mov r6, r4
	movs r7, r5
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label3050
label2860:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label3050
label2139:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label718
	mov r6, r4
	movs r7, r9
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label2860
label1902:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1906
	b label1905
label765:
	and r5, r5, r3
	ands r5, r5, #1
	beq label766
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
	b label2068
label766:
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
	b label2068
label589:
	cmp r6, #0
	bne label1902
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
label2835:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label3029
label638:
	and r5, r6, r8
	ands r5, r5, #1
	bne label639
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label638
	mov r6, r4
	movs r7, r9
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label2841
label722:
	and r5, r7, r8
	ands r5, r5, #1
	bne label723
	b label2151
label726:
	ands r5, r10, #1
	bne label727
	ands r5, r8, #1
	bne label728
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label722
label3048:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label713
label727:
	ands r5, r8, #1
	bne label2167
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label722
	b label3048
label2134:
	mov r6, r4
	movs r7, r9
	bne label2106
	b label2662
label2151:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label722
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label718
	b label2134
label2662:
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label2860
label723:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label722
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label718
	mov r6, r4
	cmp r9, #0
	bne label2106
	b label2662
label665:
	and r5, r6, r8
	ands r5, r5, #1
	bne label666
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label665
	mov r6, r3
	movs r7, r9
	bne label2006
	mov r6, r4
	movs r7, r4
	bne label1929
	b label2848
label2190:
	ands r5, r8, #1
	beq label2668
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label761
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label2183
	b label2672
label2668:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label740
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label761
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label2183
	b label2672
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1929
	b label2643
label631:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label628
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label638
	mov r6, r4
	cmp r9, #0
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label2841
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label655
	b label2013
label1909:
	cmp r8, #0
	bne label1925
	mov r6, r4
	movs r7, r4
	bne label1929
	b label3023
label2167:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label722
	b label3048
label2234:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label761
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label757
	b label2217
label7:
	cmp r0, #0
	bgt label792
	b label196
label147:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label146
	mov r6, r4
	movs r7, r9
	bne label1015
	movw r4, #32767
	cmp r2, r4
	ble label2909
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
	bgt label1534
	b label398
label1154:
	mov r0, #0
	str r0, [sp, #0]
label199:
	ldr r0, [sp, #0]
	cmp r0, #16
	blt label1159
	b label1158
label390:
	add r5, sp, #8
	ldr r0, [sp, #0]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label199
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
	b label1154
label2977:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
label1015:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label154
	b label1018
label1092:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label171
	b label1095
label1099:
	ands r5, r8, #1
	beq label2514
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label192
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label1092
label2516:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1015
	b label2722
label140:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label141
label154:
	ands r5, r10, #1
	bne label158
	ands r5, r8, #1
	beq label2507
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label150
	b label140
label2722:
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2921
label188:
	and r5, r6, r8
	ands r5, r5, #1
	bne label189
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label188
	mov r6, r3
	movs r7, r9
	bne label1092
	mov r6, r4
	movs r7, r4
	bne label1015
	b label2722
label2921:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label2710
label189:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label188
	mov r6, r3
	movs r7, r5
	bne label1092
	mov r6, r4
	movs r7, r4
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2921
label2710:
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label2907
label171:
	ands r5, r10, #1
	bne label172
	b label1099
label2514:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label171
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	bge label2513
label192:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1143
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
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
	b label2516
label2513:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label188
label2917:
	mov r6, r3
	movs r7, r9
	bne label1092
	b label2516
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label192
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2917
label1126:
	mov r6, r3
	movs r7, r9
	bne label1092
	b label2516
label1143:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label192
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label188
	b label1126
label2907:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
label839:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label46
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label2683
label56:
	and r5, r6, r8
	ands r5, r5, #1
	beq label57
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label56
	mov r6, r4
	movs r7, r9
	bne label827
	movw r4, #32767
	cmp r1, r4
	ble label2887
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
	beq label977
label978:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label120
	cmp r8, #0
	beq label2705
label1011:
	mov r6, r3
	movs r7, r4
	bne label1092
	mov r6, r4
	b label1014
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
	bne label1011
	mov r6, r4
	movs r7, r4
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
label2502:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label2710
label1018:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label150
	b label140
label1029:
	mov r6, r4
	movs r7, r9
	bne label1015
	b label2503
label150:
	and r5, r7, r8
	ands r5, r5, #1
	bne label151
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label150
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label146
	b label1029
label2908:
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label2907
label2909:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label2908
label2503:
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2711
label151:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label150
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label146
	mov r6, r4
	cmp r9, #0
	bne label1015
	b label2503
label1158:
	mov r0, #0
label392:
	add sp, sp, #72
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1159:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label390
label1163:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label210
	b label1166
label307:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1163
	b label390
label2559:
	movw r2, #32767
	cmp r0, r2
	bgt label307
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label390
label210:
	and r5, r5, r3
	ands r5, r5, #1
	bne label211
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label210
	cmp r6, #0
	beq label2926
label1182:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	beq label1185
label1186:
	mov r8, #0
	mov r5, #1
	mov r7, r1
	mov r6, r8
	cmp r8, #16
	blt label296
	cmp r8, #0
	bne label1194
	mov r6, r4
	movs r7, r4
	bne label1198
	b label2730
label1185:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label1348
label1198:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label235
	b label1201
label2942:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label1185
label287:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label286
	mov r6, r3
	movs r7, r9
	bne label1275
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2942
label2730:
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2928
label296:
	and r5, r5, r7
	ands r5, r5, #1
	bne label297
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label296
	cmp r8, #0
	bne label1194
	mov r6, r4
	movs r7, r4
	bne label1198
	b label2730
label2928:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label1185
label1194:
	mov r6, r3
	movs r7, r4
	bne label1275
	b label2522
label261:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1186
	b label2532
label297:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label296
	cmp r8, #0
	bne label1194
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2928
label1349:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label314
	b label2543
label1475:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label370
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label380
	mov r6, r4
	cmp r9, #0
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
label2773:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	b label2965
label2543:
	cmp r8, #0
	beq label2755
label1382:
	mov r6, r3
	movs r7, r4
	bne label1386
	mov r6, r4
label1448:
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2557
label1386:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label346
	b label1389
label1412:
	mov r6, r3
	movs r7, r9
	bne label1386
	b label2550
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label332
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2761
label315:
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
label2557:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	b label1348
label1389:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label332
	b label1393
label2550:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1449
	b label2764
label1398:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label332
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label342
	mov r6, r3
	cmp r9, #0
	bne label1386
	mov r6, r4
	movs r7, r4
	beq label2764
label1449:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	bge label2558
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2770
label2764:
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2954
label1348:
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label2542
label332:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1398
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label332
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label342
	b label1412
label2954:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	b label1348
label342:
	and r5, r6, r8
	ands r5, r5, #1
	bne label345
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label342
	mov r6, r3
	movs r7, r9
	bne label1386
	mov r6, r4
	movs r7, r4
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2954
label1393:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label342
	b label2761
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label332
	b label1393
label2761:
	mov r6, r3
	movs r7, r9
	bne label1386
	b label2550
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label332
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2761
label2949:
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2557
label314:
	and r5, r5, r6
	ands r5, r5, #1
	bne label315
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
	b label2949
label370:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1475
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label370
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label380
	b label1489
label2965:
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label2542
label380:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1494
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label380
	mov r6, r4
	movs r7, r9
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	b label2965
label2558:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label2770:
	mov r6, r4
	movs r7, r9
	bne label1449
label2563:
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2773
label1489:
	mov r6, r4
	movs r7, r9
	bne label1449
	b label2563
label2542:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label390
label1275:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label290
	b label1278
label1287:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label276
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label2745
label286:
	and r5, r6, r8
	ands r5, r5, #1
	beq label287
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label286
	mov r6, r3
	movs r7, r9
	bne label1275
	mov r6, r4
	movs r7, r4
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2942
label2745:
	mov r6, r3
	movs r7, r9
	bne label1275
	mov r6, r4
	movs r7, r4
	bne label1198
label2747:
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2942
label235:
	ands r5, r10, #1
	bne label237
	b label1205
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	bge label2932
label246:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1230
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label246
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label256
	mov r6, r4
	cmp r9, #0
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
label2738:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label2937
label1205:
	ands r5, r8, #1
	bne label236
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label235
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label246
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1198
label2530:
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2738
label2930:
	mov r6, r4
	movs r7, r9
	bne label1198
	b label2530
label2932:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label256
	b label2930
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label246
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1198
	b label2530
label1230:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label246
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label256
	mov r6, r4
	cmp r9, #0
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2738
label2937:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label1348
label257:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label256
	mov r6, r4
	movs r7, r9
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label2937
label1278:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label276
label1282:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label286
	b label2744
label1317:
	ands r5, r8, #1
	beq label2539
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label276
	b label1282
label2744:
	mov r6, r3
	movs r7, r9
	bne label1275
label2536:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1198
	b label2747
label211:
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
	bne label1182
	movs r4, r2
	mov r3, #0
	bne label1349
	b label1348
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
	b label1185
label814:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	b label977
label815:
	mov r5, #1
	mov r6, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label102
	b label30
label2473:
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
	b label814
label977:
	movw r2, #32767
	cmp r0, r2
	ble label2494
label113:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label792
	b label196
label827:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label60
	b label830
label2683:
	mov r6, r4
	movs r7, r9
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
label2685:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label2885
label834:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label56
	b label2682
label60:
	ands r5, r10, #1
	beq label869
	ands r5, r8, #1
	beq label65
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label60
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label46
	b label834
label792:
	mov r6, #0
	mov r5, #1
	mov r4, r0
	mov r3, r6
	cmp r6, #16
	blt label16
	b label795
label2494:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
label830:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label46
	b label834
label2885:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	b label977
label2887:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label2885
label57:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label56
	mov r6, r4
	movs r7, r9
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label2885
label2682:
	mov r6, r4
	movs r7, r9
	bne label827
	b label2477
label869:
	ands r5, r8, #1
	beq label2480
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label46
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2682
label2477:
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label2685
label2705:
	mov r6, r4
	movs r7, r4
	bne label1015
label1014:
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2502
label2681:
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label2881
label823:
	mov r6, r3
	movs r7, r4
	bne label904
	b label2473
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
	b label2681
label2881:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label814
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
	b label2881
label904:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label77
	b label907
label2695:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
label2491:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label827
	b label2700
label77:
	ands r5, r10, #1
	beq label911
	ands r5, r8, #1
	bne label79
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	bge label2695
label88:
	and r5, r7, r8
	ands r5, r5, #1
	beq label936
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	b label2700
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label950:
	mov r6, r3
	movs r7, r9
	bne label904
	b label2491
label2895:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label827
	b label2700
label936:
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
	b label2895
label2700:
	movw r4, #32767
	cmp r1, r4
	bgt label67
label2898:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label814
label99:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label98
	mov r6, r3
	movs r7, r5
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label2898
label30:
	cmp r8, #0
	bne label823
	mov r6, r4
	movs r7, r4
	bne label827
	b label2681
label46:
	and r5, r7, r8
	ands r5, r5, #1
	beq label839
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label46
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label56
	mov r6, r4
	cmp r9, #0
	bne label827
	b label2477
label79:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label77
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	bge label950
label98:
	and r5, r6, r8
	ands r5, r5, #1
	bne label99
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label98
	mov r6, r3
	movs r7, r9
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	b label2700
label276:
	and r5, r7, r8
	ands r5, r5, #1
	bne label279
	b label1287
label290:
	ands r5, r10, #1
	bne label291
	b label1317
label2539:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label290
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label276
	b label1282
label279:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label276
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label286
	mov r6, r3
	cmp r9, #0
	bne label1275
	b label2536
label1534:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label404
	b label2570
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
label2971:
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label2600
label404:
	and r5, r5, r3
	ands r5, r5, #1
	bne label405
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
	b label2971
label2600:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
label405:
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
	b label2600
label2570:
	cmp r6, #0
	beq label2776
label1554:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1558
	mov r1, r3
	mov r4, r2
label1720:
	movw r2, #32767
	cmp r0, r2
	ble label2600
label502:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	ldr r2, [sp, #68]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1534
	b label398
label1558:
	mov r8, #0
	mov r5, #1
	mov r7, r1
	mov r6, r8
	cmp r8, #16
	blt label490
	b label418
label2974:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	b label2782
label426:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	ldr r4, [sp, #68]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1558
	b label2578
label491:
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label490
	cmp r8, #0
	bne label1566
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label2974
label418:
	cmp r8, #0
	bne label1566
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label2974
label2782:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label2975
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
	b label2782
label1570:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label451
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
label2785:
	mov r6, r4
	movs r7, r9
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
label2788:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	b label2981
label437:
	and r5, r7, r8
	ands r5, r5, #1
	bne label440
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label447
	b label2786
label2981:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label2975
label447:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1615
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label447
	mov r6, r4
	movs r7, r5
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	b label2981
label1647:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label465
	b label1650
label2594:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1570
	b label2796
label482:
	and r5, r6, r8
	ands r5, r5, #1
	bne label485
	b label483
label486:
	and r5, r7, r8
	ands r5, r5, #1
	beq label1698
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label486
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label482
	mov r6, r3
	cmp r9, #0
	bne label1647
	b label2594
label2992:
	ldr r4, [sp, #12]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	b label2782
label483:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label482
	mov r6, r3
	movs r7, r9
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label2992
label1681:
	mov r6, r3
	movs r7, r9
	bne label1647
	b label2594
label1698:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label486
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label482
	b label1681
label440:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
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
	b label2788
label2975:
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label2977
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2785
label1721:
	mov r8, #0
	mov r5, #1
	mov r7, r2
	mov r6, r8
	cmp r8, #16
	blt label508
	b label2601
label547:
	and r5, r6, r8
	ands r5, r5, #1
	beq label548
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label547
	mov r6, r4
	movs r7, r9
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label3012
label2998:
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label2607
label508:
	and r5, r5, r7
	ands r5, r5, #1
	bne label509
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label508
	cmp r8, #0
	bne label1754
	mov r6, r4
	movs r7, r4
	bne label1758
	b label2998
label2607:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label2807
label509:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label508
	cmp r8, #0
	bne label1754
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	ble label2607
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
label2601:
	cmp r8, #0
	beq label2803
label1754:
	mov r6, r3
	movs r7, r4
	bne label1835
	mov r6, r4
	b label1757
label2803:
	mov r6, r4
	movs r7, r4
	bne label1758
label1757:
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label2607
label2807:
	movw r2, #32767
	cmp r0, r2
	bgt label502
label3001:
	ldr r2, [sp, #12]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
label1758:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label526
	b label2608
label3012:
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label3001
label548:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label547
	mov r6, r4
	movs r7, r9
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label3012
label2608:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label537
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1758
label2616:
	movw r4, #32767
	cmp r2, r4
	bgt label520
label2818:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label3012
label526:
	ands r5, r10, #1
	beq label1779
	ands r5, r8, #1
	beq label527
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label526
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label537
	b label2814
label3009:
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label2818
label537:
	and r5, r7, r8
	ands r5, r5, #1
	bne label538
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label537
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label547
	mov r6, r4
	cmp r9, #0
	bne label1758
	b label3009
label538:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r5, r9, r5
	add r8, r8, r8, lsr #31
	add r6, r6, #1
	mov r9, r5
	add r7, r7, r7, lsr #31
	asr r8, r8, #1
	asr r7, r7, #1
	cmp r6, #16
	blt label537
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label547
	mov r6, r4
	cmp r9, #0
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label2818
label1779:
	ands r5, r8, #1
	bne label527
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label526
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label537
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r4
	bne label1758
	b label2616
label3004:
	mov r6, r4
	movs r7, r9
	bne label1758
	b label2616
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label537
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label3004
label1835:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label578
	b label1838
label577:
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label574
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label570
	mov r6, r3
	cmp r9, #0
	bne label1835
	b label2619
label578:
	ands r5, r10, #1
	bne label583
	b label1877
label1884:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label578
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label574
	b label564
label1838:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label574
label564:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label570
	mov r6, r3
	cmp r9, #0
	bne label1835
label2619:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1758
	b label2822
label570:
	and r5, r6, r8
	ands r5, r5, #1
	bne label573
	b label571
label574:
	and r5, r7, r8
	ands r5, r5, #1
	bne label577
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label574
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label570
	mov r6, r3
	cmp r9, #0
	bne label1835
	b label2619
label3015:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label2807
label571:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label570
	mov r6, r3
	movs r7, r9
	bne label1835
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label3015
label490:
	and r5, r5, r7
	ands r5, r5, #1
	beq label491
	add r5, sp, #8
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r7, r7, lsr #31
	add r6, r6, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label490
	cmp r8, #0
	bne label1566
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label2974
label465:
	ands r5, r10, #1
	beq label1654
	ands r5, r8, #1
	beq label470
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label465
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label486
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label1647
	b label2594
label16:
	and r5, r5, r4
	ands r5, r5, #1
	bne label17
	add r4, r4, r4, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r4, r4, #1
	cmp r3, #16
	blt label16
	cmp r6, #0
	bne label811
	movs r4, r2
	mov r3, #0
	bne label978
	b label977
label17:
	add r5, sp, #8
	ldr r5, [r5, r3, lsl #2]
	add r6, r6, r5
	add r4, r4, r4, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r4, r4, #1
	cmp r3, #16
	blt label16
	cmp r6, #0
	beq label2678
label811:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label815
	b label814
label141:
	cmp r7, #16
	bge label1029
label146:
	and r5, r6, r8
	ands r5, r5, #1
	beq label147
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label146
	mov r6, r4
	movs r7, r9
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label2908
label256:
	and r5, r6, r8
	ands r5, r5, #1
	bne label257
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label256
	mov r6, r4
	movs r7, r9
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2738
label795:
	cmp r6, #0
	bne label811
	movs r4, r2
	mov r3, #0
	bne label978
	b label977
label1654:
	ands r5, r8, #1
	beq label2589
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label486
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label1647
	b label2594
label2589:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label465
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label486
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label1647
	b label2594
label485:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label482
	mov r6, r3
	movs r7, r9
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label2992
label1877:
	ands r5, r8, #1
	beq label1884
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label574
	b label564
label573:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label570
	mov r6, r3
	movs r7, r9
	bne label1835
	mov r6, r4
	movs r7, r4
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label3015
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label574
	b label564
label358:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	ldr r4, [sp, #68]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1349
	b label2559
label1494:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label380
	mov r6, r4
	movs r7, r9
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2773
label1505:
	ands r5, r8, #1
	beq label1512
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2770
label1512:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label384
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2770
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label276
	b label1282
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
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label150
	b label140
label1166:
	cmp r6, #0
	bne label1182
	movs r4, r2
	mov r3, #0
	bne label1349
	b label1348
label345:
	add r5, sp, #8
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label342
	mov r6, r3
	movs r7, r9
	bne label1386
	mov r6, r4
	movs r7, r4
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2954
label2786:
	mov r6, r4
	movs r7, r9
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label2788
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
	b label2502
label455:
	ands r5, r8, #1
	bne label1638
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
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2785
label1615:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	blt label447
	mov r6, r4
	movs r7, r9
	bne label1570
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label2788
label1201:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label246
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2930
label2507:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label154
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label150
	b label140
label2926:
	movs r4, r2
	mov r3, #0
	bne label1349
	b label1348
label2678:
	movs r4, r2
	mov r3, #0
	bne label978
	b label977
label907:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label88
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label950
label2776:
	movs r4, r2
	mov r3, #0
	bne label1721
	b label1720
label2814:
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label547
	mov r6, r4
	cmp r9, #0
	bne label1758
	b label2616
label2480:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label60
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label46
	b label834
label1638:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label2785
label1650:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label486
	ldr r5, [sp, #12]
	movw r6, #65535
	mul r8, r9, r5
	movs r7, r9
	mov r6, r3
	bne label1647
	b label2594
label2755:
	mov r6, r4
	movs r7, r4
	bne label1449
	b label1448
label2532:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label1348
label1905:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
label2796:
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label2992
label2659:
	mov r9, #0
	mov r8, r6
	mov r6, r9
	cmp r9, #16
	blt label722
	b label3048
label1529:
	mov r0, #1
	b label392
label1095:
	mov r8, r6
	mov r9, #0
	mov r6, r9
	cmp r9, #16
	blt label192
	b label2513
label2711:
	ldr r4, [sp, #12]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label2908
label2822:
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label3015
label713:
	cmp r7, #16
	blt label718
	b label2134
