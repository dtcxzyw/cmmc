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
	mov r1, #1
	sub sp, sp, #80
	mov r0, #4
	mov r6, sp
	str r6, [sp, #64]
	str r1, [sp, #0]
	str r2, [r6, #4]
	str r0, [r6, #8]
	mov r0, #8
	str r0, [r6, #12]
	mov r0, #16
	str r0, [r6, #16]
	mov r0, #32
	str r0, [r6, #20]
	mov r0, #64
	str r0, [r6, #24]
	mov r0, #128
	str r0, [r6, #28]
	mov r0, #256
	str r0, [r6, #32]
	mov r0, #512
	str r0, [r6, #36]
	mov r0, #1024
	str r0, [r6, #40]
	mov r0, #2048
	str r0, [r6, #44]
	mov r0, #4096
	str r0, [r6, #48]
	mov r0, #8192
	str r0, [r6, #52]
	mov r0, #16384
	str r0, [r6, #56]
	mov r0, #32768
	str r0, [r6, #60]
	mov r0, #0
	cmp r0, #0
	ble label6
label788:
	mov r4, #0
	mov r6, #1
	mov r5, r0
	mov r3, r4
	cmp r4, #16
	blt label765
	b label1897
label2592:
.p2align 4
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
label1902:
.p2align 4
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1906
label1905:
.p2align 4
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2885
label1906:
.p2align 4
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label671
	b label1909
label2594:
.p2align 4
	mov r5, r4
	movs r7, r4
	bne label1981
	b label1980
label1914:
.p2align 4
	mov r5, r3
	movs r7, r4
	bne label1918
	mov r5, r4
	movw r4, #32767
	cmp r1, r4
	bgt label670
	b label2602
label1980:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label670
label2602:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1906
	b label1905
label671:
.p2align 4
	and r6, r6, r5
	ands r6, r6, #1
	bne label672
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label671
	cmp r8, #0
	bne label1914
	b label2594
label2068:
.p2align 4
	movw r2, #32767
	cmp r0, r2
	bgt label763
label2618:
.p2align 4
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
label763:
.p2align 4
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label788
	b label6
label765:
.p2align 4
	and r6, r6, r5
	ands r6, r6, #1
	bne label768
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label765
	cmp r4, #0
	bne label1902
	b label2592
label768:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r4, r4, r6
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label765
	cmp r4, #0
	bne label1902
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
label6:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r1, #1
	mov r2, #2
	movs r0, r1
	ble label196
label792:
	mov r6, #1
	mov r3, r0
	mov r5, #0
	mov r4, r5
	cmp r5, #16
	blt label16
	cmp r5, #0
	bne label811
label2410:
.p2align 4
	movs r4, r2
	mov r3, #0
	bne label815
	b label814
label16:
.p2align 4
	and r6, r6, r3
	ands r6, r6, #1
	bne label17
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label16
	cmp r5, #0
	bne label811
	b label2410
label2937:
.p2align 4
	mov r5, r4
	movs r7, r9
	bne label2144
label2634:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label756
label2938:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label2069
	b label2068
label745:
.p2align 4
	and r6, r7, r9
	ands r6, r6, #1
	bne label748
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label745
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
	b label2937
label748:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label745
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
	mov r5, r4
	cmp r9, #0
	bne label2144
	b label2634
label756:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r5
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label763
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
label815:
.p2align 4
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	cmp r7, #16
	blt label104
	b label818
label2414:
.p2align 4
	mov r5, r4
	movs r7, r4
	bne label827
label826:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label70
label2417:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label815
	b label814
label70:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r5
	bne label815
	movw r2, #32767
	cmp r0, r2
	bgt label110
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
label104:
.p2align 4
	and r6, r6, r8
	ands r6, r6, #1
	bne label105
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label104
	cmp r7, #0
	bne label823
	b label2414
label991:
.p2align 4
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label815
	b label2689
label2454:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label190
label2708:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label992
	b label991
label179:
.p2align 4
	and r6, r5, r9
	ands r6, r6, #1
	bne label182
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label179
	mov r5, r4
	movs r7, r8
	bne label1067
	b label2454
label182:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label179
	mov r5, r4
	movs r7, r8
	bne label1067
	movw r4, #32767
	cmp r1, r4
	ble label2708
label190:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r5
	bne label992
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label815
	movw r2, #32767
	cmp r0, r2
	bgt label110
	b label2413
label827:
.p2align 4
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	blt label43
	b label830
label2659:
.p2align 4
	mov r5, r4
	movs r7, r8
	bne label827
	b label2425
label54:
.p2align 4
	and r6, r7, r9
	ands r6, r6, #1
	bne label57
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label54
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
	b label2659
label57:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label54
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
	mov r5, r4
	cmp r8, #0
	bne label827
label2425:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label70
label2663:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label815
	b label814
label64:
.p2align 4
	and r6, r5, r9
	ands r6, r6, #1
	bne label67
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label64
	mov r5, r4
	movs r7, r8
	bne label827
	b label2425
label67:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label64
	mov r5, r4
	movs r7, r8
	bne label827
	movw r4, #32767
	cmp r2, r4
	bgt label70
	b label2663
label830:
.p2align 4
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label54
	b label2418
label43:
.p2align 4
	ands r6, r10, #1
	bne label48
	ands r6, r8, #1
	bne label45
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label43
	b label830
label48:
.p2align 4
	ands r6, r8, #1
	beq label45
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label43
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label54
	b label2657
label2656:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
label873:
.p2align 4
	mov r5, r4
	movs r7, r8
	bne label827
	b label2425
label45:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label43
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label54
	b label2656
label2418:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
	b label873
label2657:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
	b label873
label2144:
.p2align 4
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	blt label749
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label745
	b label2631
label741:
.p2align 4
	and r6, r5, r8
	ands r6, r6, #1
	bne label744
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label741
	mov r5, r4
	movs r7, r9
	bne label2144
	b label2634
label744:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label741
	mov r5, r4
	movs r7, r9
	bne label2144
	movw r4, #32767
	cmp r2, r4
	bgt label756
	b label2938
label749:
.p2align 4
	ands r6, r10, #1
	bne label750
	ands r6, r8, #1
	bne label754
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label749
	b label2945
label754:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label749
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label745
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
	b label2158
label2631:
.p2align 4
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
label2158:
.p2align 4
	mov r5, r4
	movs r7, r9
	bne label2144
	b label2634
label2945:
.p2align 4
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label745
	b label2948
label750:
.p2align 4
	ands r6, r8, #1
	beq label754
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label749
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label745
	b label2631
label2948:
.p2align 4
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
	b label2158
label992:
.p2align 4
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label192
	b label995
label2441:
.p2align 4
	mov r5, r4
	movs r7, r4
	bne label1067
	b label1066
label1000:
.p2align 4
	mov r5, r3
	movs r7, r4
	bne label1004
	mov r5, r4
	movw r4, #32767
	cmp r1, r4
	bgt label190
	b label2449
label1066:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label190
label2449:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label992
	b label991
label192:
.p2align 4
	and r6, r6, r5
	ands r6, r6, #1
	bne label193
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label192
	cmp r8, #0
	bne label1000
	b label2441
label1981:
.p2align 4
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	blt label662
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label648
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
	b label2007
label2900:
.p2align 4
	mov r5, r4
	movs r7, r9
	bne label1981
	b label2607
label648:
.p2align 4
	and r6, r7, r9
	ands r6, r6, #1
	bne label651
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label648
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
	b label2900
label651:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label648
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
	mov r5, r4
	cmp r9, #0
	bne label1981
label2607:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label670
label2904:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1906
	b label1905
label662:
.p2align 4
	ands r6, r10, #1
	bne label666
	ands r6, r8, #1
	bne label663
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label662
	b label2908
label663:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label662
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label648
	b label2910
label670:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r5
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label763
	b label2618
label1067:
.p2align 4
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label183
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label169
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
	b label1093
label183:
.p2align 4
	ands r6, r10, #1
	bne label188
	ands r6, r8, #1
	bne label186
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label183
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label169
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
	b label1093
label188:
.p2align 4
	ands r6, r8, #1
	beq label186
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label183
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label169
	b label2718
label2704:
.p2align 4
	mov r5, r4
	movs r7, r8
	bne label1067
	b label2454
label169:
.p2align 4
	and r6, r7, r5
	ands r6, r6, #1
	bne label172
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label169
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
	b label2704
label172:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label169
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
	mov r5, r4
	cmp r8, #0
	bne label1067
	b label2454
label1093:
.p2align 4
	mov r5, r4
	movs r7, r8
	bne label1067
	b label2454
label2718:
.p2align 4
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
	b label1093
label2007:
.p2align 4
	mov r5, r4
	movs r7, r9
	bne label1981
	b label2607
label2908:
.p2align 4
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label648
	b label2913
label666:
.p2align 4
	ands r6, r8, #1
	beq label663
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label662
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label648
	b label2911
label2913:
.p2align 4
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
	b label2007
label2911:
.p2align 4
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
	b label2007
label2910:
.p2align 4
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label2007
label658:
.p2align 4
	and r6, r5, r8
	ands r6, r6, #1
	bne label661
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label658
	mov r5, r4
	movs r7, r9
	bne label1981
	b label2607
label661:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label658
	mov r5, r4
	movs r7, r9
	bne label1981
	movw r4, #32767
	cmp r1, r4
	bgt label670
	b label2904
label1918:
.p2align 4
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label608
	b label1921
label2600:
.p2align 4
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1981
	b label2896
label629:
.p2align 4
	and r6, r5, r8
	ands r6, r6, #1
	bne label630
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label629
	mov r5, r3
	movs r7, r9
	bne label1918
	b label2600
label2896:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label670
	b label2602
label630:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label629
	mov r5, r3
	movs r7, r9
	bne label1918
	mov r5, r4
	movs r7, r4
	bne label1981
	b label2896
label1921:
.p2align 4
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label619
	b label2596
label608:
.p2align 4
	ands r6, r10, #1
	bne label609
	ands r6, r8, #1
	bne label610
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label608
	b label1921
label1004:
.p2align 4
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label129
	b label1007
label150:
.p2align 4
	and r6, r5, r9
	ands r6, r6, #1
	bne label151
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label150
	mov r5, r3
	movs r7, r8
	bne label1004
	b label2447
label2700:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label190
	b label2449
label151:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label150
	mov r5, r3
	movs r7, r8
	bne label1004
	mov r5, r4
	movs r7, r4
	bne label1067
	b label2700
label2697:
.p2align 4
	mov r5, r3
	movs r7, r8
	bne label1004
	b label2447
label140:
.p2align 4
	and r6, r7, r5
	ands r6, r6, #1
	bne label141
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label140
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label150
	b label2697
label2447:
.p2align 4
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1067
	b label2700
label1007:
.p2align 4
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label140
	b label2443
label129:
.p2align 4
	ands r6, r10, #1
	bne label130
	ands r6, r8, #1
	bne label131
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label129
	b label1007
label130:
.p2align 4
	ands r6, r8, #1
	beq label131
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label129
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label140
	b label2443
label1050:
.p2align 4
	mov r5, r3
	movs r7, r8
	bne label1004
	b label2447
label131:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label129
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label140
	b label2443
label141:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label140
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label150
	mov r5, r3
	cmp r8, #0
	bne label1004
	b label2447
label2443:
.p2align 4
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label150
	b label1050
label2596:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label629
	b label1964
label610:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label608
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label619
	b label2596
label1964:
.p2align 4
	mov r5, r3
	movs r7, r9
	bne label1918
	b label2600
label2893:
.p2align 4
	mov r5, r3
	movs r7, r9
	bne label1918
	b label2600
label619:
.p2align 4
	and r6, r7, r5
	ands r6, r6, #1
	bne label620
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label619
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label629
	b label2893
label620:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label619
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label629
	mov r5, r3
	cmp r9, #0
	bne label1918
	b label2600
label186:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label183
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label169
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
	b label1093
label609:
.p2align 4
	ands r6, r8, #1
	beq label610
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label608
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label619
	b label2596
label17:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r4, lsl #2]
	add r5, r5, r6
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label16
	cmp r5, #0
	bne label811
	movs r4, r2
	mov r3, #0
	bne label815
	b label814
label811:
.p2align 4
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label992
	mov r1, r3
	mov r4, r2
label814:
.p2align 4
	movw r2, #32767
	cmp r0, r2
	bgt label110
label2413:
.p2align 4
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
label110:
.p2align 4
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label792
	b label196
label2689:
.p2align 4
	movw r2, #32767
	cmp r0, r2
	bgt label110
	b label2413
label2885:
.p2align 4
	movw r2, #32767
	cmp r0, r2
	bgt label763
	b label2618
label2069:
.p2align 4
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	cmp r7, #16
	blt label758
	b label2072
label2619:
.p2align 4
	mov r5, r4
	movs r7, r4
	bne label2144
	b label2143
label758:
.p2align 4
	and r6, r6, r8
	ands r6, r6, #1
	bne label759
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label758
	cmp r7, #0
	bne label2077
	b label2619
label2143:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label756
label2630:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label2069
	b label2068
label759:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label758
	cmp r7, #0
	bne label2077
	mov r5, r4
	movs r7, r4
	bne label2144
	b label2143
label2072:
.p2align 4
	cmp r7, #0
	beq label2619
label2077:
.p2align 4
	mov r5, r3
	movs r7, r4
	bne label2081
	mov r5, r4
	movw r4, #32767
	cmp r2, r4
	bgt label756
	b label2630
label2081:
.p2align 4
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label695
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label706
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	bge label2127
label716:
.p2align 4
	and r6, r5, r9
	ands r6, r6, #1
	bne label717
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label716
	mov r5, r3
	movs r7, r8
	bne label2081
	b label2628
label2933:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label756
	b label2630
label717:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label716
	mov r5, r3
	movs r7, r8
	bne label2081
	mov r5, r4
	movs r7, r4
	bne label2144
	b label2933
label707:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label706
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
	mov r5, r3
	cmp r8, #0
	bne label2081
label2628:
.p2align 4
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label2144
	b label2933
label695:
.p2align 4
	ands r6, r10, #1
	bne label699
	ands r6, r8, #1
	bne label696
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label695
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label706
	b label2928
label699:
.p2align 4
	ands r6, r8, #1
	beq label696
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label695
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label706
	b label2926
label2928:
.p2align 4
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
	b label2127
label2925:
.p2align 4
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
label2127:
.p2align 4
	mov r5, r3
	movs r7, r8
	bne label2081
	b label2628
label2930:
.p2align 4
	mov r5, r3
	movs r7, r8
	bne label2081
	b label2628
label706:
.p2align 4
	and r6, r7, r5
	ands r6, r6, #1
	bne label707
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label706
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
	b label2930
label696:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label695
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label706
	b label2925
label2926:
.p2align 4
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
	b label2127
label818:
.p2align 4
	cmp r7, #0
	beq label2414
label823:
.p2align 4
	mov r5, r3
	movs r7, r4
	bne label904
	mov r5, r4
	b label826
label105:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label104
	cmp r7, #0
	bne label823
	mov r5, r4
	movs r7, r4
	bne label827
	b label826
label904:
.p2align 4
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label74
label2676:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label70
	b label2417
label94:
.p2align 4
	and r6, r5, r9
	ands r6, r6, #1
	bne label97
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label94
	mov r5, r3
	movs r7, r8
	bne label904
	b label2433
label97:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label94
	mov r5, r3
	movs r7, r8
	bne label904
	mov r5, r4
	movs r7, r4
	bne label827
	b label2676
label2673:
.p2align 4
	mov r5, r3
	movs r7, r8
	bne label904
	b label2433
label84:
.p2align 4
	and r6, r7, r9
	ands r6, r6, #1
	bne label85
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label84
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label94
	b label2673
label2433:
.p2align 4
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label827
	b label2676
label74:
.p2align 4
	cmp r9, #16
	blt label98
label907:
.p2align 4
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label84
label2430:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label94
	mov r5, r3
	cmp r8, #0
	bne label904
	b label2433
label98:
.p2align 4
	ands r6, r10, #1
	bne label99
	ands r6, r8, #1
	bne label100
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label98
	b label907
label99:
.p2align 4
	ands r6, r8, #1
	beq label100
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label98
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label84
	b label2430
label100:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label98
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label84
	b label2430
label85:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label84
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label94
	mov r5, r3
	cmp r8, #0
	bne label904
	b label2433
label196:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #68]
	cmp r0, #16
	blt label1155
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	blt label1159
	b label2468
label1155:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #68]
	b label394
label1159:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #72]
	cmp r0, #0
	ble label1162
label1163:
	mov r4, #0
	mov r6, #1
	mov r5, r0
	mov r3, r4
	cmp r4, #16
	blt label214
	cmp r4, #0
	bne label1190
label2470:
.p2align 4
	movs r4, r2
	mov r3, #0
	bne label1194
	b label1193
label214:
.p2align 4
	and r6, r6, r5
	ands r6, r6, #1
	bne label215
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label214
	cmp r4, #0
	bne label1190
	b label2470
label394:
.p2align 4
	cmp r0, #0
	ble label398
label1534:
.p2align 4
	mov r4, #0
	mov r6, #1
	mov r5, r0
	mov r3, r4
	cmp r4, #16
	blt label580
	cmp r4, #0
	bne label1543
	movs r4, r2
	mov r3, #0
	bne label1547
	b label1546
label1193:
.p2align 4
	movw r2, #32767
	cmp r0, r2
	bgt label227
label2473:
.p2align 4
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label1162
label1282:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label303
label2492:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label1194
	b label1193
label2751:
.p2align 4
	mov r5, r4
	movs r7, r8
	bne label1283
	b label2496
label282:
.p2align 4
	and r6, r7, r9
	ands r6, r6, #1
	bne label283
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label282
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
	b label2751
label2496:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label303
label2754:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label1194
	b label1193
label303:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r5
	bne label1194
	movw r2, #32767
	cmp r0, r2
	bgt label227
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label1162
label1283:
.p2align 4
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label272
label293:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label292
	mov r5, r4
	movs r7, r8
	bne label1283
	movw r4, #32767
	cmp r2, r4
	bgt label303
	b label2754
label292:
.p2align 4
	and r6, r5, r9
	ands r6, r6, #1
	bne label293
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label292
	mov r5, r4
	movs r7, r8
	bne label1283
	b label2496
label2493:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
label1309:
.p2align 4
	mov r5, r4
	movs r7, r8
	bne label1283
	b label2496
label301:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label296
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label282
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r7, r8
	b label1309
label272:
.p2align 4
	cmp r9, #16
	bge label1286
label296:
.p2align 4
	ands r6, r10, #1
	bne label298
	ands r6, r8, #1
	bne label301
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label296
	b label1286
label298:
.p2align 4
	ands r6, r8, #1
	beq label301
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label296
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label282
	b label2493
label1286:
.p2align 4
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label282
	b label2493
label283:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label282
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
	mov r5, r4
	cmp r8, #0
	bne label1283
	b label2496
label2533:
.p2align 4
	movs r4, r2
	mov r3, #0
	bne label1547
	b label1546
label1543:
.p2align 4
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1724
	mov r1, r3
	mov r4, r2
label1546:
.p2align 4
	movw r2, #32767
	cmp r0, r2
	bgt label413
label2536:
.p2align 4
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
label580:
.p2align 4
	and r6, r6, r5
	ands r6, r6, #1
	bne label583
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label580
	cmp r4, #0
	bne label1543
	b label2533
label583:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r4, r4, r6
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label580
	cmp r4, #0
	bne label1543
	movs r4, r2
	mov r3, #0
	bne label1547
	b label1546
label1723:
.p2align 4
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1547
	b label2847
label1724:
.p2align 4
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label504
	cmp r8, #0
	bne label1743
label2566:
.p2align 4
	mov r5, r4
	movs r7, r4
	bne label1810
	b label1809
label504:
.p2align 4
	and r6, r6, r5
	ands r6, r6, #1
	bne label505
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label504
	cmp r8, #0
	beq label2566
label1743:
.p2align 4
	mov r5, r3
	movs r7, r4
	bne label1747
	mov r5, r4
	movw r4, #32767
	cmp r1, r4
	bgt label578
	b label2577
label1809:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label578
label2577:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1724
	b label1723
label578:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r5
	bne label1724
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1547
	movw r2, #32767
	cmp r0, r2
	bgt label413
	b label2536
label1810:
.p2align 4
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label552
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label573
label2578:
.p2align 4
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label569
	b label1844
label552:
.p2align 4
	ands r6, r10, #1
	bne label553
	ands r6, r8, #1
	bne label556
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label552
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label573
	b label2870
label553:
.p2align 4
	ands r6, r8, #1
	beq label556
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label552
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label573
	b label2578
label556:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label552
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label573
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label569
	b label1844
label2870:
.p2align 4
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label569
label1844:
.p2align 4
	mov r5, r4
	movs r7, r8
	bne label1810
label2585:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label578
label2873:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1724
	b label1723
label574:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label573
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label569
	mov r5, r4
	cmp r8, #0
	bne label1810
	b label2585
label2872:
.p2align 4
	mov r5, r4
	movs r7, r8
	bne label1810
	b label2585
label573:
.p2align 4
	and r6, r7, r5
	ands r6, r6, #1
	bne label574
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label573
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	bge label2872
label569:
.p2align 4
	and r6, r5, r9
	ands r6, r6, #1
	bne label570
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label569
	mov r5, r4
	movs r7, r8
	bne label1810
	b label2585
label570:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label569
	mov r5, r4
	movs r7, r8
	bne label1810
	movw r4, #32767
	cmp r1, r4
	bgt label578
	b label2873
label1747:
.p2align 4
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label512
label2572:
.p2align 4
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1810
	b label2857
label532:
.p2align 4
	and r6, r5, r8
	ands r6, r6, #1
	bne label535
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label532
	mov r5, r3
	movs r7, r9
	bne label1747
	b label2572
label535:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label532
	mov r5, r3
	movs r7, r9
	bne label1747
	mov r5, r4
	movs r7, r4
	bne label1810
label2857:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label578
	b label2577
label512:
.p2align 4
	cmp r9, #16
	blt label536
label1750:
.p2align 4
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label522
	b label2568
label536:
.p2align 4
	ands r6, r10, #1
	bne label537
	ands r6, r8, #1
	bne label538
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label536
	b label1750
label537:
.p2align 4
	ands r6, r8, #1
	beq label538
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label536
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label522
label2568:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label532
	b label1773
label538:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label536
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label522
	b label2568
label2853:
.p2align 4
	mov r5, r3
	movs r7, r9
	bne label1747
	b label2572
label522:
.p2align 4
	and r6, r7, r5
	ands r6, r6, #1
	bne label525
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label522
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label532
	b label2853
label525:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label522
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label532
	mov r5, r3
	cmp r9, #0
	bne label1747
	b label2572
label1773:
.p2align 4
	mov r5, r3
	movs r7, r9
	bne label1747
	b label2572
label2847:
.p2align 4
	movw r2, #32767
	cmp r0, r2
	bgt label413
	b label2536
label2477:
.p2align 4
	mov r5, r4
	movs r7, r4
	bne label1283
	b label1282
label1216:
.p2align 4
	mov r5, r3
	movs r7, r4
	bne label1220
	mov r5, r4
	movw r4, #32767
	cmp r2, r4
	bgt label303
	b label2492
label305:
.p2align 4
	and r6, r6, r8
	ands r6, r6, #1
	bne label308
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label305
	cmp r7, #0
	bne label1216
	b label2477
label308:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label305
	cmp r7, #0
	bne label1216
	mov r5, r4
	movs r7, r4
	bne label1283
	b label1282
label1220:
.p2align 4
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label261
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label257
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r7, r8
label1234:
.p2align 4
	mov r5, r3
	movs r7, r8
	bne label1220
	b label2482
label261:
.p2align 4
	ands r6, r10, #1
	bne label264
	ands r6, r8, #1
	bne label266
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label261
	b label2743
label2736:
.p2align 4
	mov r5, r3
	movs r7, r8
	bne label1220
label2482:
.p2align 4
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1283
	b label2737
label257:
.p2align 4
	and r6, r7, r9
	ands r6, r6, #1
	bne label260
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label257
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label253
	b label2736
label260:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label257
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label253
	mov r5, r3
	cmp r8, #0
	bne label1220
	b label2482
label2737:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label303
	b label2492
label254:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label253
	mov r5, r3
	movs r7, r8
	bne label1220
	mov r5, r4
	movs r7, r4
	bne label1283
	b label2737
label253:
.p2align 4
	and r6, r5, r9
	ands r6, r6, #1
	bne label254
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label253
	mov r5, r3
	movs r7, r8
	bne label1220
	b label2482
label2743:
.p2align 4
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label257
	b label2748
label264:
.p2align 4
	ands r6, r8, #1
	beq label266
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label261
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label257
	b label2746
label2748:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label253
	b label1234
label2746:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label253
	b label1234
label266:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label261
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label257
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r7, r8
	b label1234
label1547:
.p2align 4
	mov r6, #1
	mov r5, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label419
	cmp r8, #0
	bne label1580
	mov r5, r4
	movs r7, r4
	bne label1584
	b label1583
label2540:
.p2align 4
	mov r5, r4
	movs r7, r4
	bne label1584
	b label1583
label419:
.p2align 4
	and r6, r6, r5
	ands r6, r6, #1
	bne label422
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label419
	cmp r8, #0
	bne label1580
	b label2540
label422:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label419
	cmp r8, #0
	bne label1580
	mov r5, r4
	movs r7, r4
	bne label1584
	b label1583
label1580:
.p2align 4
	mov r5, r3
	movs r7, r4
	bne label1661
	mov r5, r4
label1583:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label461
label2544:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label1547
	b label1546
label1661:
.p2align 4
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label470
	b label1664
label2841:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label461
	b label2544
label488:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label487
	mov r5, r3
	movs r7, r9
	bne label1661
	mov r5, r4
	movs r7, r4
	beq label2841
label1584:
.p2align 4
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label429
label2815:
.p2align 4
	mov r5, r4
	movs r7, r9
	bne label1584
	b label2549
label439:
.p2align 4
	and r6, r7, r9
	ands r6, r6, #1
	bne label442
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label439
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label449
	b label2815
label442:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label439
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label449
	mov r5, r4
	cmp r9, #0
	bne label1584
label2549:
.p2align 4
	movw r4, #32767
	cmp r2, r4
	bgt label461
label2819:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label1547
	b label1546
label449:
.p2align 4
	and r6, r5, r8
	ands r6, r6, #1
	bne label450
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label449
	mov r5, r4
	movs r7, r9
	bne label1584
	b label2549
label429:
.p2align 4
	cmp r9, #16
	bge label1587
label453:
.p2align 4
	ands r6, r10, #1
	bne label456
	ands r6, r8, #1
	bne label454
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label453
	b label1587
label456:
.p2align 4
	ands r6, r8, #1
	beq label454
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label453
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label439
	b label2545
label1587:
.p2align 4
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label439
	b label2545
label454:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label453
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label439
label2545:
.p2align 4
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label449
	mov r5, r4
	cmp r9, #0
	bne label1584
	b label2549
label450:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label449
	mov r5, r4
	movs r7, r9
	bne label1584
	movw r4, #32767
	cmp r2, r4
	ble label2819
label461:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r5
	bne label1547
	movw r2, #32767
	cmp r0, r2
	bgt label413
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
label1664:
.p2align 4
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label491
	b label2556
label470:
.p2align 4
	ands r6, r10, #1
	bne label475
	ands r6, r8, #1
	bne label471
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label470
	b label1664
label471:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label470
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label491
	b label2556
label475:
.p2align 4
	ands r6, r8, #1
	beq label471
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label470
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label491
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label487
label1695:
.p2align 4
	mov r5, r3
	movs r7, r9
	bne label1661
label2562:
.p2align 4
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1584
	b label2841
label2840:
.p2align 4
	mov r5, r3
	movs r7, r9
	bne label1661
	b label2562
label491:
.p2align 4
	and r6, r7, r9
	ands r6, r6, #1
	bne label494
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label491
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label487
	b label2840
label494:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label491
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label487
	mov r5, r3
	cmp r9, #0
	bne label1661
	b label2562
label487:
.p2align 4
	and r6, r5, r8
	ands r6, r6, #1
	bne label488
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label487
	mov r5, r3
	movs r7, r9
	bne label1661
	b label2562
label2556:
.p2align 4
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label487
	b label1695
label413:
.p2align 4
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1534
	b label398
label505:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label504
	cmp r8, #0
	bne label1743
	mov r5, r4
	movs r7, r4
	bne label1810
	b label1809
label227:
.p2align 4
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1163
	ldr r0, [sp, #72]
	ldr r0, [r6, r0, lsl #2]
	cmp r1, r0
	bne label1170
	b label2469
label2768:
.p2align 4
	movw r2, #32767
	cmp r0, r2
	bgt label227
	b label2473
label1370:
.p2align 4
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1194
	b label2768
label1371:
.p2align 4
	mov r7, #0
	mov r6, #1
	mov r8, r1
	mov r5, r7
	cmp r7, #16
	blt label318
	cmp r7, #0
	bne label1390
label2506:
.p2align 4
	mov r5, r4
	movs r7, r4
	bne label1457
	b label1456
label318:
.p2align 4
	and r6, r6, r8
	ands r6, r6, #1
	bne label321
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label318
	cmp r7, #0
	bne label1390
	b label2506
label321:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label318
	cmp r7, #0
	bne label1390
	mov r5, r4
	movs r7, r4
	bne label1457
	b label1456
label1390:
.p2align 4
	mov r5, r3
	movs r7, r4
	bne label1394
	mov r5, r4
	movw r4, #32767
	cmp r1, r4
	bgt label393
	b label2518
label1456:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label393
label2518:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1371
	b label1370
label1457:
.p2align 4
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label366
label1460:
.p2align 4
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label387
label2519:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label383
	b label1491
label366:
.p2align 4
	ands r6, r10, #1
	bne label369
	ands r6, r8, #1
	bne label367
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label366
	b label1460
label369:
.p2align 4
	ands r6, r8, #1
	beq label367
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label366
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label387
	b label2519
label1491:
.p2align 4
	mov r5, r4
	movs r7, r9
	bne label1457
label2524:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label393
label2793:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1371
	b label1370
label383:
.p2align 4
	and r6, r5, r8
	ands r6, r6, #1
	bne label386
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label383
	mov r5, r4
	movs r7, r9
	bne label1457
	b label2524
label386:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label383
	mov r5, r4
	movs r7, r9
	bne label1457
	movw r4, #32767
	cmp r1, r4
	bgt label393
	b label2793
label2792:
.p2align 4
	mov r5, r4
	movs r7, r9
	bne label1457
	b label2524
label387:
.p2align 4
	and r6, r7, r5
	ands r6, r6, #1
	bne label390
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label387
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label383
	b label2792
label390:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label387
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label383
	mov r5, r4
	cmp r9, #0
	bne label1457
	b label2524
label393:
.p2align 4
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r5
	bne label1371
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1194
	movw r2, #32767
	cmp r0, r2
	bgt label227
	b label2473
label1394:
.p2align 4
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label331
	b label1397
label2779:
.p2align 4
	mov r5, r3
	movs r7, r8
	bne label1394
label2514:
.p2align 4
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1457
	b label2780
label352:
.p2align 4
	and r6, r7, r9
	ands r6, r6, #1
	bne label355
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label352
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label348
	b label2779
label355:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label352
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label348
	mov r5, r3
	cmp r8, #0
	bne label1394
	b label2514
label2780:
.p2align 4
	movw r4, #32767
	cmp r1, r4
	bgt label393
	b label2518
label349:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label348
	mov r5, r3
	movs r7, r8
	bne label1394
	mov r5, r4
	movs r7, r4
	bne label1457
	b label2780
label331:
.p2align 4
	ands r6, r10, #1
	bne label334
	ands r6, r8, #1
	bne label333
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label331
	b label1397
label334:
.p2align 4
	ands r6, r8, #1
	beq label333
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label331
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label352
label2509:
.p2align 4
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label348
	b label1428
label333:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label331
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label352
	b label2509
label1428:
.p2align 4
	mov r5, r3
	movs r7, r8
	bne label1394
	b label2514
label348:
.p2align 4
	and r6, r5, r9
	ands r6, r6, #1
	bne label349
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label348
	mov r5, r3
	movs r7, r8
	bne label1394
	b label2514
label1397:
.p2align 4
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label352
	b label2509
label367:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label366
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label387
	b label2519
label2468:
.p2align 4
	mov r0, #0
label201:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label398:
.p2align 4
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	cmp r0, #16
	blt label1155
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	blt label1159
	b label2468
label1194:
.p2align 4
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	cmp r7, #16
	blt label305
	cmp r7, #0
	bne label1216
	mov r5, r4
	movs r7, r4
	bne label1283
	b label1282
label199:
	ldr r0, [sp, #72]
	cmp r0, #16
	blt label1159
	b label2468
label1162:
.p2align 4
	ldr r6, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r6, r0, lsl #2]
	cmp r1, r0
	bne label1170
label2469:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	b label199
label995:
.p2align 4
	cmp r8, #0
	bne label1000
	b label2441
label193:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label192
	cmp r8, #0
	bne label1000
	mov r5, r4
	movs r7, r4
	bne label1067
	b label1066
label1909:
.p2align 4
	cmp r8, #0
	bne label1914
	b label2594
label672:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label671
	cmp r8, #0
	bne label1914
	mov r5, r4
	movs r7, r4
	bne label1981
	b label1980
label215:
.p2align 4
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r4, r4, r6
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label214
	cmp r4, #0
	bne label1190
	movs r4, r2
	mov r3, #0
	bne label1194
	b label1193
label1190:
.p2align 4
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1371
	mov r1, r3
	mov r4, r2
	b label1193
label1897:
.p2align 4
	cmp r4, #0
	bne label1902
	b label2592
label1170:
	mov r0, #1
	b label201
