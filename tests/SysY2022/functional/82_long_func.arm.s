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
	mov r0, #4
	mov r2, #2
	mov r1, #1
	sub sp, sp, #80
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
.p2align 4
label2653:
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
.p2align 4
label1902:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1906
.p2align 4
label1905:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2946
.p2align 4
label1906:
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label671
	b label1909
.p2align 4
label2655:
	mov r5, r4
	movs r7, r4
	bne label1981
	b label1980
.p2align 4
label1914:
	mov r5, r3
	movs r7, r4
	bne label1918
	mov r5, r4
	movw r4, #32767
	cmp r1, r4
	bgt label670
	b label2663
.p2align 4
label1980:
	movw r4, #32767
	cmp r1, r4
	bgt label670
.p2align 4
label2663:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1906
	b label1905
.p2align 4
label671:
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
	b label2655
.p2align 4
label2068:
	movw r2, #32767
	cmp r0, r2
	bgt label763
.p2align 4
label2679:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label763:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label788
	b label6
.p2align 4
label765:
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
	b label2653
.p2align 4
label768:
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
.p2align 4
label2471:
	movs r4, r2
	mov r3, #0
	bne label815
	b label814
.p2align 4
label16:
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
	b label2471
.p2align 4
label2998:
	mov r5, r4
	movs r7, r9
	bne label2144
.p2align 4
label2695:
	movw r4, #32767
	cmp r2, r4
	bgt label756
.p2align 4
label2999:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label2069
	b label2068
.p2align 4
label745:
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
	b label2998
.p2align 4
label748:
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
	b label2695
.p2align 4
label756:
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
.p2align 4
label815:
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	cmp r7, #16
	blt label104
	b label818
.p2align 4
label2475:
	mov r5, r4
	movs r7, r4
	bne label827
.p2align 4
label826:
	movw r4, #32767
	cmp r2, r4
	bgt label70
.p2align 4
label2478:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label815
	b label814
.p2align 4
label70:
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
.p2align 4
label104:
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
	b label2475
.p2align 4
label991:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label815
	b label2750
.p2align 4
label2515:
	movw r4, #32767
	cmp r1, r4
	bgt label190
.p2align 4
label2769:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label992
	b label991
.p2align 4
label179:
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
	b label2515
.p2align 4
label182:
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
	ble label2769
.p2align 4
label190:
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
	b label2474
.p2align 4
label827:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	blt label43
	b label830
.p2align 4
label2720:
	mov r5, r4
	movs r7, r8
	bne label827
	b label2486
.p2align 4
label54:
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
	b label2720
.p2align 4
label57:
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
.p2align 4
label2486:
	movw r4, #32767
	cmp r2, r4
	bgt label70
.p2align 4
label2724:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label815
	b label814
.p2align 4
label64:
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
	b label2486
.p2align 4
label67:
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
	b label2724
.p2align 4
label830:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label54
	b label2479
.p2align 4
label43:
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
.p2align 4
label48:
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
	b label2718
.p2align 4
label2717:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
.p2align 4
label873:
	mov r5, r4
	movs r7, r8
	bne label827
	b label2486
.p2align 4
label45:
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
	b label2717
.p2align 4
label2479:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
	b label873
.p2align 4
label2718:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
	b label873
.p2align 4
label2144:
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
	b label2692
.p2align 4
label741:
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
	b label2695
.p2align 4
label744:
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
	b label2999
.p2align 4
label749:
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
	b label3006
.p2align 4
label754:
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
.p2align 4
label2692:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
.p2align 4
label2158:
	mov r5, r4
	movs r7, r9
	bne label2144
	b label2695
.p2align 4
label3006:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label745
	b label3009
.p2align 4
label750:
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
	b label2692
.p2align 4
label3009:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
	b label2158
.p2align 4
label992:
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label192
	b label995
.p2align 4
label2502:
	mov r5, r4
	movs r7, r4
	bne label1067
	b label1066
.p2align 4
label1000:
	mov r5, r3
	movs r7, r4
	bne label1004
	mov r5, r4
	movw r4, #32767
	cmp r1, r4
	bgt label190
	b label2510
.p2align 4
label1066:
	movw r4, #32767
	cmp r1, r4
	bgt label190
.p2align 4
label2510:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label992
	b label991
.p2align 4
label192:
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
	b label2502
.p2align 4
label1981:
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
.p2align 4
label2961:
	mov r5, r4
	movs r7, r9
	bne label1981
	b label2668
.p2align 4
label648:
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
	b label2961
.p2align 4
label651:
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
.p2align 4
label2668:
	movw r4, #32767
	cmp r1, r4
	bgt label670
.p2align 4
label2965:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1906
	b label1905
.p2align 4
label662:
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
	b label2969
.p2align 4
label663:
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
	b label2971
.p2align 4
label670:
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
	b label2679
.p2align 4
label1067:
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
.p2align 4
label183:
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
.p2align 4
label188:
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
	b label2779
.p2align 4
label2765:
	mov r5, r4
	movs r7, r8
	bne label1067
	b label2515
.p2align 4
label169:
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
	b label2765
.p2align 4
label172:
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
	b label2515
.p2align 4
label1093:
	mov r5, r4
	movs r7, r8
	bne label1067
	b label2515
.p2align 4
label2779:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
	b label1093
.p2align 4
label2007:
	mov r5, r4
	movs r7, r9
	bne label1981
	b label2668
.p2align 4
label2969:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label648
	b label2974
.p2align 4
label666:
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
	b label2972
.p2align 4
label2974:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
	b label2007
.p2align 4
label2972:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
	b label2007
.p2align 4
label2971:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label2007
.p2align 4
label658:
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
	b label2668
.p2align 4
label661:
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
	b label2965
.p2align 4
label1918:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label608
	b label1921
.p2align 4
label2661:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1981
	b label2957
.p2align 4
label629:
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
	b label2661
.p2align 4
label2957:
	movw r4, #32767
	cmp r1, r4
	bgt label670
	b label2663
.p2align 4
label630:
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
	b label2957
.p2align 4
label1921:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label619
	b label2657
.p2align 4
label608:
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
.p2align 4
label1004:
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label129
	b label1007
.p2align 4
label150:
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
	b label2508
.p2align 4
label2761:
	movw r4, #32767
	cmp r1, r4
	bgt label190
	b label2510
.p2align 4
label151:
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
	b label2761
.p2align 4
label2758:
	mov r5, r3
	movs r7, r8
	bne label1004
	b label2508
.p2align 4
label140:
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
	b label2758
.p2align 4
label2508:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1067
	b label2761
.p2align 4
label1007:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label140
	b label2504
.p2align 4
label129:
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
.p2align 4
label130:
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
	b label2504
.p2align 4
label1050:
	mov r5, r3
	movs r7, r8
	bne label1004
	b label2508
.p2align 4
label131:
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
	b label2504
.p2align 4
label141:
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
	b label2508
.p2align 4
label2504:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label150
	b label1050
.p2align 4
label2657:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label629
	b label1964
.p2align 4
label610:
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
	b label2657
.p2align 4
label1964:
	mov r5, r3
	movs r7, r9
	bne label1918
	b label2661
.p2align 4
label2954:
	mov r5, r3
	movs r7, r9
	bne label1918
	b label2661
.p2align 4
label619:
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
	b label2954
.p2align 4
label620:
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
	b label2661
.p2align 4
label186:
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
.p2align 4
label609:
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
	b label2657
.p2align 4
label17:
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
.p2align 4
label811:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label992
	mov r1, r3
	mov r4, r2
.p2align 4
label814:
	movw r2, #32767
	cmp r0, r2
	bgt label110
.p2align 4
label2474:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label110:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label792
	b label196
.p2align 4
label2750:
	movw r2, #32767
	cmp r0, r2
	bgt label110
	b label2474
.p2align 4
label2946:
	movw r2, #32767
	cmp r0, r2
	bgt label763
	b label2679
.p2align 4
label2069:
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	cmp r7, #16
	blt label758
	b label2072
.p2align 4
label2680:
	mov r5, r4
	movs r7, r4
	bne label2144
	b label2143
.p2align 4
label758:
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
	b label2680
.p2align 4
label2143:
	movw r4, #32767
	cmp r2, r4
	bgt label756
.p2align 4
label2691:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label2069
	b label2068
.p2align 4
label759:
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
.p2align 4
label2072:
	cmp r7, #0
	beq label2680
.p2align 4
label2077:
	mov r5, r3
	movs r7, r4
	bne label2081
	mov r5, r4
	movw r4, #32767
	cmp r2, r4
	bgt label756
	b label2691
.p2align 4
label2081:
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
.p2align 4
label716:
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
	b label2689
.p2align 4
label2994:
	movw r4, #32767
	cmp r2, r4
	bgt label756
	b label2691
.p2align 4
label717:
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
	b label2994
.p2align 4
label707:
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
.p2align 4
label2689:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label2144
	b label2994
.p2align 4
label695:
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
	b label2989
.p2align 4
label699:
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
	b label2987
.p2align 4
label2989:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
	b label2127
.p2align 4
label2986:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
.p2align 4
label2127:
	mov r5, r3
	movs r7, r8
	bne label2081
	b label2689
.p2align 4
label2991:
	mov r5, r3
	movs r7, r8
	bne label2081
	b label2689
.p2align 4
label706:
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
	b label2991
.p2align 4
label696:
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
	b label2986
.p2align 4
label2987:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
	b label2127
.p2align 4
label818:
	cmp r7, #0
	beq label2475
.p2align 4
label823:
	mov r5, r3
	movs r7, r4
	bne label904
	mov r5, r4
	b label826
.p2align 4
label105:
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
.p2align 4
label904:
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label74
.p2align 4
label2737:
	movw r4, #32767
	cmp r2, r4
	bgt label70
	b label2478
.p2align 4
label94:
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
	b label2494
.p2align 4
label97:
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
	b label2737
.p2align 4
label2734:
	mov r5, r3
	movs r7, r8
	bne label904
	b label2494
.p2align 4
label84:
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
	b label2734
.p2align 4
label2494:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label827
	b label2737
.p2align 4
label74:
	cmp r9, #16
	blt label98
.p2align 4
label907:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label84
.p2align 4
label2491:
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
	b label2494
.p2align 4
label98:
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
.p2align 4
label99:
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
	b label2491
.p2align 4
label100:
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
	b label2491
.p2align 4
label85:
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
	b label2494
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
	b label2529
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
.p2align 4
label2531:
	movs r4, r2
	mov r3, #0
	bne label1194
	b label1193
.p2align 4
label214:
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
	b label2531
.p2align 4
label394:
	cmp r0, #0
	ble label398
.p2align 4
label1534:
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
.p2align 4
label1193:
	movw r2, #32767
	cmp r0, r2
	bgt label227
.p2align 4
label2534:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label1162
.p2align 4
label1282:
	movw r4, #32767
	cmp r2, r4
	bgt label303
.p2align 4
label2553:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label1194
	b label1193
.p2align 4
label2812:
	mov r5, r4
	movs r7, r8
	bne label1283
	b label2557
.p2align 4
label282:
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
	b label2812
.p2align 4
label2557:
	movw r4, #32767
	cmp r2, r4
	bgt label303
.p2align 4
label2815:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label1194
	b label1193
.p2align 4
label303:
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
.p2align 4
label1283:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label272
.p2align 4
label293:
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
	b label2815
.p2align 4
label292:
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
	b label2557
.p2align 4
label2554:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
.p2align 4
label1309:
	mov r5, r4
	movs r7, r8
	bne label1283
	b label2557
.p2align 4
label301:
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
.p2align 4
label272:
	cmp r9, #16
	bge label1286
.p2align 4
label296:
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
.p2align 4
label298:
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
	b label2554
.p2align 4
label1286:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label282
	b label2554
.p2align 4
label283:
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
	b label2557
.p2align 4
label2594:
	movs r4, r2
	mov r3, #0
	bne label1547
	b label1546
.p2align 4
label1543:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1724
	mov r1, r3
	mov r4, r2
.p2align 4
label1546:
	movw r2, #32767
	cmp r0, r2
	bgt label413
.p2align 4
label2597:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label580:
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
	b label2594
.p2align 4
label583:
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
.p2align 4
label1723:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1547
	b label2908
.p2align 4
label1724:
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label504
	cmp r8, #0
	bne label1743
.p2align 4
label2627:
	mov r5, r4
	movs r7, r4
	bne label1810
	b label1809
.p2align 4
label504:
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
	beq label2627
.p2align 4
label1743:
	mov r5, r3
	movs r7, r4
	bne label1747
	mov r5, r4
	movw r4, #32767
	cmp r1, r4
	bgt label578
	b label2638
.p2align 4
label1809:
	movw r4, #32767
	cmp r1, r4
	bgt label578
.p2align 4
label2638:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1724
	b label1723
.p2align 4
label578:
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
	b label2597
.p2align 4
label1810:
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
.p2align 4
label2639:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label569
	b label1844
.p2align 4
label552:
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
	b label2931
.p2align 4
label553:
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
	b label2639
.p2align 4
label556:
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
.p2align 4
label2931:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label569
.p2align 4
label1844:
	mov r5, r4
	movs r7, r8
	bne label1810
.p2align 4
label2646:
	movw r4, #32767
	cmp r1, r4
	bgt label578
.p2align 4
label2934:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1724
	b label1723
.p2align 4
label574:
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
	b label2646
.p2align 4
label2933:
	mov r5, r4
	movs r7, r8
	bne label1810
	b label2646
.p2align 4
label573:
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
	bge label2933
.p2align 4
label569:
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
	b label2646
.p2align 4
label570:
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
	b label2934
.p2align 4
label1747:
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label512
.p2align 4
label2633:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1810
	b label2918
.p2align 4
label532:
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
	b label2633
.p2align 4
label535:
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
.p2align 4
label2918:
	movw r4, #32767
	cmp r1, r4
	bgt label578
	b label2638
.p2align 4
label512:
	cmp r9, #16
	blt label536
.p2align 4
label1750:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label522
	b label2629
.p2align 4
label536:
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
.p2align 4
label537:
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
.p2align 4
label2629:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label532
	b label1773
.p2align 4
label538:
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
	b label2629
.p2align 4
label2914:
	mov r5, r3
	movs r7, r9
	bne label1747
	b label2633
.p2align 4
label522:
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
	b label2914
.p2align 4
label525:
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
	b label2633
.p2align 4
label1773:
	mov r5, r3
	movs r7, r9
	bne label1747
	b label2633
.p2align 4
label2908:
	movw r2, #32767
	cmp r0, r2
	bgt label413
	b label2597
.p2align 4
label2538:
	mov r5, r4
	movs r7, r4
	bne label1283
	b label1282
.p2align 4
label1216:
	mov r5, r3
	movs r7, r4
	bne label1220
	mov r5, r4
	movw r4, #32767
	cmp r2, r4
	bgt label303
	b label2553
.p2align 4
label305:
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
	b label2538
.p2align 4
label308:
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
.p2align 4
label1220:
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
.p2align 4
label1234:
	mov r5, r3
	movs r7, r8
	bne label1220
	b label2543
.p2align 4
label261:
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
	b label2804
.p2align 4
label2797:
	mov r5, r3
	movs r7, r8
	bne label1220
.p2align 4
label2543:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1283
	b label2798
.p2align 4
label257:
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
	b label2797
.p2align 4
label260:
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
	b label2543
.p2align 4
label2798:
	movw r4, #32767
	cmp r2, r4
	bgt label303
	b label2553
.p2align 4
label254:
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
	b label2798
.p2align 4
label253:
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
	b label2543
.p2align 4
label2804:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label257
	b label2809
.p2align 4
label264:
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
	b label2807
.p2align 4
label2809:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label253
	b label1234
.p2align 4
label2807:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label253
	b label1234
.p2align 4
label266:
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
.p2align 4
label1547:
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
.p2align 4
label2601:
	mov r5, r4
	movs r7, r4
	bne label1584
	b label1583
.p2align 4
label419:
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
	b label2601
.p2align 4
label422:
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
.p2align 4
label1580:
	mov r5, r3
	movs r7, r4
	bne label1661
	mov r5, r4
.p2align 4
label1583:
	movw r4, #32767
	cmp r2, r4
	bgt label461
.p2align 4
label2605:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label1547
	b label1546
.p2align 4
label1661:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label470
	b label1664
.p2align 4
label2902:
	movw r4, #32767
	cmp r2, r4
	bgt label461
	b label2605
.p2align 4
label488:
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
	beq label2902
.p2align 4
label1584:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label429
.p2align 4
label2876:
	mov r5, r4
	movs r7, r9
	bne label1584
	b label2610
.p2align 4
label439:
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
	b label2876
.p2align 4
label442:
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
.p2align 4
label2610:
	movw r4, #32767
	cmp r2, r4
	bgt label461
.p2align 4
label2880:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	cmp r2, #0
	bne label1547
	b label1546
.p2align 4
label449:
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
	b label2610
.p2align 4
label429:
	cmp r9, #16
	bge label1587
.p2align 4
label453:
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
.p2align 4
label456:
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
	b label2606
.p2align 4
label1587:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label439
	b label2606
.p2align 4
label454:
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
.p2align 4
label2606:
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
	b label2610
.p2align 4
label450:
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
	ble label2880
.p2align 4
label461:
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
.p2align 4
label1664:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label491
	b label2617
.p2align 4
label470:
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
.p2align 4
label471:
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
	b label2617
.p2align 4
label475:
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
.p2align 4
label1695:
	mov r5, r3
	movs r7, r9
	bne label1661
.p2align 4
label2623:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1584
	b label2902
.p2align 4
label2901:
	mov r5, r3
	movs r7, r9
	bne label1661
	b label2623
.p2align 4
label491:
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
	b label2901
.p2align 4
label494:
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
	b label2623
.p2align 4
label487:
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
	b label2623
.p2align 4
label2617:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label487
	b label1695
.p2align 4
label413:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1534
	b label398
.p2align 4
label505:
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
.p2align 4
label227:
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
	b label2530
.p2align 4
label2829:
	movw r2, #32767
	cmp r0, r2
	bgt label227
	b label2534
.p2align 4
label1370:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1194
	b label2829
.p2align 4
label1371:
	mov r7, #0
	mov r6, #1
	mov r8, r1
	mov r5, r7
	cmp r7, #16
	blt label318
	cmp r7, #0
	bne label1390
.p2align 4
label2567:
	mov r5, r4
	movs r7, r4
	bne label1457
	b label1456
.p2align 4
label318:
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
	b label2567
.p2align 4
label321:
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
.p2align 4
label1390:
	mov r5, r3
	movs r7, r4
	bne label1394
	mov r5, r4
	movw r4, #32767
	cmp r1, r4
	bgt label393
	b label2579
.p2align 4
label1456:
	movw r4, #32767
	cmp r1, r4
	bgt label393
.p2align 4
label2579:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1371
	b label1370
.p2align 4
label1457:
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label366
.p2align 4
label1460:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label387
.p2align 4
label2580:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label383
	b label1491
.p2align 4
label366:
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
.p2align 4
label369:
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
	b label2580
.p2align 4
label1491:
	mov r5, r4
	movs r7, r9
	bne label1457
.p2align 4
label2585:
	movw r4, #32767
	cmp r1, r4
	bgt label393
.p2align 4
label2854:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	cmp r1, #0
	bne label1371
	b label1370
.p2align 4
label383:
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
	b label2585
.p2align 4
label386:
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
	b label2854
.p2align 4
label2853:
	mov r5, r4
	movs r7, r9
	bne label1457
	b label2585
.p2align 4
label387:
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
	b label2853
.p2align 4
label390:
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
	b label2585
.p2align 4
label393:
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
	b label2534
.p2align 4
label1394:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label331
	b label1397
.p2align 4
label2840:
	mov r5, r3
	movs r7, r8
	bne label1394
.p2align 4
label2575:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1457
	b label2841
.p2align 4
label352:
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
	b label2840
.p2align 4
label355:
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
	b label2575
.p2align 4
label2841:
	movw r4, #32767
	cmp r1, r4
	bgt label393
	b label2579
.p2align 4
label349:
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
	b label2841
.p2align 4
label331:
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
.p2align 4
label334:
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
.p2align 4
label2570:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label348
	b label1428
.p2align 4
label333:
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
	b label2570
.p2align 4
label1428:
	mov r5, r3
	movs r7, r8
	bne label1394
	b label2575
.p2align 4
label348:
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
	b label2575
.p2align 4
label1397:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label352
	b label2570
.p2align 4
label367:
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
	b label2580
.p2align 4
label2529:
	mov r0, #0
label201:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label398:
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
	b label2529
.p2align 4
label1194:
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
	b label2529
.p2align 4
label1162:
	ldr r6, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r6, r0, lsl #2]
	cmp r1, r0
	bne label1170
label2530:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	b label199
.p2align 4
label995:
	cmp r8, #0
	bne label1000
	b label2502
.p2align 4
label193:
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
.p2align 4
label1909:
	cmp r8, #0
	bne label1914
	b label2655
.p2align 4
label672:
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
.p2align 4
label215:
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
.p2align 4
label1190:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1371
	mov r1, r3
	mov r4, r2
	b label1193
.p2align 4
label1897:
	cmp r4, #0
	bne label1902
	b label2653
label1170:
	mov r0, #1
	b label201
