.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r1, #2
	mov r4, #1
	mov r0, #4
	sub sp, sp, #76
	mov r6, sp
	str r6, [sp, #64]
	str r4, [sp, #0]
	str r1, [r6, #4]
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
label2:
	cmp r0, #0
	ble label191
	b label787
label18:
	cmp r1, #0
	beq label103
label810:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label31
	b label814
label2513:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label2
label814:
	and r6, r6, r7
	ands r6, r6, #1
	beq label29
	b label2514
label29:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label31
	b label814
label31:
	cmp r3, #0
	beq label830
	b label829
label70:
	movw r4, #32767
	cmp r1, r4
	ble label72
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label18
label72:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label103
	b label810
label103:
	movw r1, #32767
	cmp r0, r1
	ble label104
	b label2513
label191:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r4, #1
	mov r1, #2
	mov r0, r4
	b label192
label829:
	movs r7, r4
	beq label830
label833:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label838
	b label837
label838:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label45
	b label841
label837:
	ands r6, r10, #1
	beq label62
	b label876
label2526:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label60:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label838
	b label837
label62:
	ands r6, r8, #1
	beq label60
	b label2526
label841:
	and r6, r7, r9
	ands r6, r6, #1
	beq label57
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label57:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label45
	b label841
label876:
	ands r6, r8, #1
	bne label60
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label838
	b label837
label45:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
label46:
	cmp r7, #16
	bge label849
	b label848
label849:
	mov r5, r3
	movs r7, r9
	beq label830
	b label833
label854:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label46
label848:
	and r6, r5, r8
	ands r6, r6, #1
	beq label854
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label849
	b label848
label2514:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label29
label787:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label15
	b label791
label15:
	cmp r2, #0
	beq label807
	mov r5, #0
	movs r2, r1
	beq label988
	b label987
label807:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label18
label987:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label115
	b label991
label106:
	cmp r2, #0
	beq label988
	b label987
label988:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label18
label999:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1018
	b label1017
label121:
	movw r4, #32767
	cmp r2, r4
	ble label122
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label106
label139:
	cmp r7, #16
	bge label1041
label1040:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1046
	b label2558
label1041:
	mov r5, r4
	movs r7, r9
	beq label121
	b label999
label1046:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label139
label1017:
	ands r6, r9, #1
	beq label152
	b label1056
label1018:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1022
	b label1021
label1022:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label139
label1021:
	and r6, r7, r9
	ands r6, r6, #1
	beq label135
	b label2555
label135:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1022
	b label1021
label2558:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1041
	b label1040
label2555:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label135
label1056:
	ands r6, r8, #1
	bne label150
	b label2561
label152:
	ands r6, r8, #1
	beq label150
	b label2561
label150:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1018
	b label1017
label2561:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label150
label991:
	and r6, r6, r3
	ands r6, r6, #1
	beq label189
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label189:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label115
	b label991
label115:
	cmp r8, #0
	beq label996
	movs r7, r4
	beq label1077
	b label1076
label996:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label118:
	cmp r7, #0
	beq label121
	b label999
label1077:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label118
label1076:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1081
	b label1080
label1081:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1085
label1084:
	and r6, r7, r9
	ands r6, r6, #1
	beq label169
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label169
label1085:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label172
label169:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1085
	b label1084
label172:
	cmp r7, #16
	bge label1104
	b label1103
label1104:
	mov r5, r3
	movs r7, r9
	beq label1077
	b label1076
label1103:
	and r6, r5, r8
	ands r6, r6, #1
	beq label178
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label178:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1104
	b label1103
label1080:
	ands r6, r10, #1
	beq label186
	ands r6, r8, #1
	bne label183
label2574:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label183:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1081
	b label1080
label186:
	ands r6, r8, #1
	beq label183
	b label2574
label830:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label70
label896:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label915
	b label914
label90:
	cmp r7, #16
	bge label946
label945:
	and r6, r5, r8
	ands r6, r6, #1
	beq label951
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label97
label946:
	mov r5, r4
	movs r7, r9
	beq label70
	b label896
label951:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label90
label97:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label946
	b label945
label73:
	cmp r9, #16
	bge label915
label914:
	ands r6, r10, #1
	beq label80
	b label918
label915:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label89
	b label938
label89:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label90
label938:
	and r6, r7, r9
	ands r6, r6, #1
	beq label100
	b label2540
label100:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label89
	b label938
label2540:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label100
label918:
	ands r6, r8, #1
	bne label82
	b label2537
label80:
	ands r6, r8, #1
	beq label82
	b label2537
label82:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label915
	b label914
label2537:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label73
label791:
	and r6, r6, r3
	ands r6, r6, #1
	beq label13
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
label13:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label15
	b label791
label122:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label988
	b label987
label192:
	cmp r0, #0
	ble label381
	b label1150
label2618:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label192
label381:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #68]
	cmp r0, #16
	bge label1514
	b label1513
label1514:
	mov r1, #0
	cmp r1, #16
	bge label1518
	b label1517
label1518:
	mov r0, #0
	b label386
label1513:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	ble label583
label1892:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label589
	b label1897
label583:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	cmp r0, #16
	bge label1514
	b label1513
label1897:
	and r6, r6, r3
	ands r6, r6, #1
	beq label766
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
	b label766
label589:
	cmp r2, #0
	beq label1902
	mov r5, #0
	movs r2, r1
	beq label1906
	b label1905
label1902:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label677
label1905:
	mov r3, #0
	mov r6, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label599
label1909:
	and r6, r6, r7
	ands r6, r6, #1
	beq label673
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label673
label599:
	cmp r3, #0
	beq label1914
	movs r7, r4
	beq label1995
	b label1994
label1914:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label602
label673:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label599
	b label1909
label1994:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1999
	b label1998
label662:
	cmp r7, #16
	bge label2042
label2041:
	and r6, r5, r8
	ands r6, r6, #1
	beq label669
	b label2770
label2042:
	mov r5, r3
	movs r7, r9
	beq label1995
	b label1994
label1998:
	ands r6, r9, #1
	beq label648
	ands r6, r8, #1
	bne label650
label2764:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	b label650
label648:
	ands r6, r8, #1
	beq label650
	b label2764
label650:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1999
	b label1998
label1999:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label2023
label2022:
	and r6, r7, r5
	ands r6, r6, #1
	beq label658
	b label2767
label658:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label2023
	b label2022
label2770:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label669:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2042
	b label2041
label2767:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label658
label2023:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label662
label677:
	cmp r1, #0
	beq label681
	b label2068
label725:
	cmp r7, #0
	beq label728
	b label2157
label728:
	movw r4, #32767
	cmp r1, r4
	ble label729
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label677
label2157:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label2176
	b label2175
label742:
	cmp r7, #16
	bge label2187
label2186:
	and r6, r5, r8
	ands r6, r6, #1
	beq label749
	b label2795
label2187:
	mov r5, r4
	movs r7, r9
	beq label728
	b label2157
label2176:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label741
label2179:
	and r6, r7, r9
	ands r6, r6, #1
	beq label753
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label753:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label741
	b label2179
label2175:
	ands r6, r9, #1
	beq label758
	ands r6, r8, #1
	bne label756
	b label2230
label2800:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
label756:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label2176
	b label2175
label758:
	ands r6, r8, #1
	beq label756
	b label2800
label2230:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label2176
	b label2175
label749:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2187
	b label2186
label2795:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label749
label2068:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label689
	b label2086
label689:
	cmp r3, #0
	beq label2091
	movs r7, r4
	beq label2091
label2094:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label2099
	b label2098
label2099:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label703
label2102:
	and r6, r7, r9
	ands r6, r6, #1
	beq label714
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label714
label2098:
	ands r6, r10, #1
	beq label718
	b label2137
label714:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label703
	b label2102
label2137:
	ands r6, r8, #1
	bne label720
	b label2787
label718:
	ands r6, r8, #1
	beq label720
label2787:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label720:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2099
	b label2098
label741:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label742
label2086:
	and r6, r6, r7
	ands r6, r6, #1
	beq label763
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label763:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label689
	b label2086
label703:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
label704:
	cmp r7, #16
	bge label2110
	b label2109
label2110:
	mov r5, r3
	movs r7, r9
	beq label2091
	b label2094
label2115:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label704
label2109:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2115
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2110
	b label2109
label2091:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label725
label766:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label589
	b label1897
label729:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label681
	b label2068
label602:
	cmp r7, #0
	beq label605
	b label1917
label1995:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label602
label1917:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1936
	b label1935
label1936:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label618
	b label1939
label618:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1947
label1946:
	and r6, r5, r8
	ands r6, r6, #1
	beq label625
	b label2752
label1947:
	mov r5, r4
	movs r7, r9
	beq label605
	b label1917
label608:
	cmp r10, #16
	bge label1936
label1935:
	ands r6, r9, #1
	beq label635
	b label1974
label635:
	ands r6, r8, #1
	beq label636
	b label2759
label636:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1936
	b label1935
label1939:
	and r6, r7, r5
	ands r6, r6, #1
	beq label629
	b label2751
label629:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label618
	b label1939
label625:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1947
	b label1946
label2751:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label629
label1974:
	ands r6, r8, #1
	bne label636
	b label2758
label2759:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label608
label2758:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label636
label2752:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label625
label605:
	movw r4, #32767
	cmp r2, r4
	ble label607
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label590
label607:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1906
	b label1905
label590:
	cmp r2, #0
	beq label1906
	b label1905
label1906:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label677
label1150:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label201
label1154:
	and r6, r6, r3
	ands r6, r6, #1
	beq label379
	b label2581
label201:
	cmp r2, #0
	beq label1159
	mov r5, #0
	movs r2, r1
	beq label1163
	b label1162
label1159:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label289
label1163:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label289
label379:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label201
	b label1154
label1162:
	mov r3, #0
	mov r6, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label215
label1166:
	and r6, r6, r7
	ands r6, r6, #1
	beq label213
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label213:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label215
	b label1166
label215:
	cmp r3, #0
	beq label1182
	b label1181
label1182:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label218:
	cmp r7, #0
	beq label251
label1185:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1190
label1189:
	ands r6, r9, #1
	beq label227
	ands r6, r8, #1
	bne label229
	b label2592
label1213:
	and r6, r7, r5
	ands r6, r6, #1
	beq label248
	b label2595
label237:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1221
	b label1220
label1221:
	mov r5, r4
	movs r7, r9
	beq label251
	b label1185
label251:
	movw r4, #32767
	cmp r2, r4
	ble label253
	b label2589
label1190:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label237
	b label1213
label248:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label237
	b label1213
label1220:
	and r6, r5, r8
	ands r6, r6, #1
	beq label244
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label244:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1221
	b label1220
label2592:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
label229:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1190
	b label1189
label227:
	ands r6, r8, #1
	beq label229
	b label2592
label2595:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label248
label1181:
	movs r7, r4
	beq label1263
label1262:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1267
	b label1266
label1263:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label218
label1267:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1291
	b label1290
label1291:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1310
label1309:
	and r6, r5, r8
	ands r6, r6, #1
	beq label285
	b label2614
label1310:
	mov r5, r3
	movs r7, r9
	beq label1263
	b label1262
label285:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1310
	b label1309
label1266:
	ands r6, r9, #1
	beq label266
	ands r6, r8, #1
	bne label264
	b label2607
label1290:
	and r6, r7, r5
	ands r6, r6, #1
	beq label275
	b label2612
label275:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1291
	b label1290
label2607:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
label264:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1267
	b label1266
label2614:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label285
label266:
	ands r6, r8, #1
	beq label264
	b label2607
label2612:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label275
label579:
	cmp r0, #0
	ble label583
	b label1892
label681:
	movw r1, #32767
	cmp r0, r1
	ble label682
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label579
label289:
	cmp r1, #0
	beq label374
	b label1325
label341:
	movw r4, #32767
	cmp r1, r4
	ble label342
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label289
label374:
	movw r1, #32767
	cmp r0, r1
	ble label375
	b label2618
label1325:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label302
label1329:
	and r6, r6, r7
	ands r6, r6, #1
	beq label300
	b label2619
label302:
	cmp r3, #0
	beq label1345
	movs r7, r4
	beq label1345
label1348:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1353
	b label1352
label1353:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1377
	b label1376
label1377:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1396
	b label1395
label1396:
	mov r5, r3
	movs r7, r9
	beq label1345
	b label1348
label1395:
	and r6, r5, r8
	ands r6, r6, #1
	beq label334
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label334:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1396
	b label1395
label1352:
	ands r6, r10, #1
	beq label312
	b label1356
label1376:
	and r6, r7, r9
	ands r6, r6, #1
	beq label323
	b label2629
label323:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1377
	b label1376
label2626:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label314
label312:
	ands r6, r8, #1
	beq label314
	b label2626
label314:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1353
	b label1352
label2629:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label323
label1356:
	ands r6, r8, #1
	bne label314
	b label2626
label2619:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label300:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label302
	b label1329
label1345:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label341
label1411:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1430
	b label1429
label1430:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label360
	b label1453
label360:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	bge label1461
	b label1460
label1461:
	mov r5, r4
	movs r7, r9
	beq label341
	b label1411
label1453:
	and r6, r7, r5
	ands r6, r6, #1
	beq label371
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label371:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label360
	b label1453
label1429:
	ands r6, r9, #1
	beq label353
	ands r6, r8, #1
	bne label350
	b label1449
label350:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1430
	b label1429
label353:
	ands r6, r8, #1
	beq label350
	b label1444
label1449:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1430
	b label1429
label1460:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1466
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label367
label1466:
	mov r6, r9
label367:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1461
	b label1460
label1444:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1430
	b label1429
label682:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label583
	b label1892
label342:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label374
	b label1325
label2581:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
	b label379
label2589:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label202
label253:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1163
	b label1162
label202:
	cmp r2, #0
	beq label1163
	b label1162
label1517:
	mov r2, #2
	mov r5, #1
	movs r0, r1
	ble label577
	b label1521
label386:
	add sp, sp, #76
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label2661:
	mov r0, #1
	b label386
label577:
	ldr r6, [sp, #64]
	ldr r0, [r6, r1, lsl #2]
	cmp r5, r0
	beq label578
	b label2661
label578:
	add r1, r1, #1
	cmp r1, #16
	bge label1518
	b label1517
label1521:
	mov r6, #1
	mov r3, r0
	mov r7, #0
	mov r4, r7
	cmp r7, #16
	bge label401
label1525:
	and r6, r6, r3
	ands r6, r6, #1
	beq label399
	ldr r6, [sp, #64]
	ldr r6, [r6, r4, lsl #2]
	add r7, r7, r6
label399:
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r4, #16
	bge label401
	b label1525
label401:
	cmp r7, #0
	beq label1541
	b label1540
label1541:
	mov r3, r5
	mov r5, r2
	mov r7, #0
	b label489
label1540:
	mov r7, #0
	movs r3, r2
	beq label1545
label1544:
	mov r6, #1
	mov r4, r3
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label415
	b label1548
label415:
	cmp r9, #0
	beq label1564
	b label1563
label2687:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r3, r3, r5
	ldr r5, [r6, #60]
	add r3, r3, #65536
	sub r3, r3, r5
	mov r5, r7
	mov r7, r4
	b label402
label486:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r3, r3, r5
	mov r5, r7
	mov r7, r4
	cmp r3, #0
	beq label1545
	b label1544
label1563:
	movs r8, r5
	beq label1564
label1567:
	mov r9, r8
	mov r10, r7
	mov r4, #0
	mov r11, r4
	cmp r4, #16
	bge label1572
label1571:
	ands r6, r10, #1
	beq label448
	b label1610
label1572:
	mov r10, #0
	mov r9, r10
	cmp r10, #16
	bge label1576
label1575:
	and r6, r8, r7
	ands r6, r6, #1
	beq label431
	b label2674
label1576:
	ldr r6, [sp, #64]
	movw r7, #65535
	ldr r6, [r6, #4]
	mul r9, r10, r6
	mov r10, #0
	mov r8, r10
	b label434
label431:
	add r6, r7, r7, lsr #31
	add r9, r9, #1
	asr r7, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1576
	b label1575
label434:
	cmp r8, #16
	bge label1595
	b label1594
label1595:
	mov r7, r4
	movs r8, r10
	beq label1564
	b label1567
label1594:
	and r6, r7, r9
	ands r6, r6, #1
	beq label441
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label441:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1595
	b label1594
label1610:
	ands r6, r9, #1
	bne label444
	b label2679
label448:
	ands r6, r9, #1
	beq label444
	b label1626
label2679:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r4, r4, r6
label444:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1572
	b label1571
label2674:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r10, r10, r6
	b label431
label1626:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1572
	b label1571
label1548:
	and r6, r6, r4
	ands r6, r6, #1
	beq label412
	b label2667
label412:
	add r4, r4, r4, lsr #31
	add r8, r8, #1
	mov r6, #0
	asr r4, r4, #1
	cmp r8, #16
	bge label415
	b label1548
label2667:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label412
label489:
	cmp r2, #0
	beq label574
	b label1707
label2704:
	ldr r6, [sp, #64]
	mov r5, r3
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r2
	mov r2, r7
	b label388
label574:
	movw r2, #32767
	cmp r0, r2
	ble label576
	b label2704
label1707:
	mov r6, #1
	mov r4, r2
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label498
	b label1711
label498:
	cmp r9, #0
	beq label1716
	movs r8, r5
	beq label1716
label1719:
	mov r9, r8
	mov r10, r7
	mov r4, #0
	mov r11, r4
	cmp r4, #16
	bge label1724
	b label1723
label1724:
	mov r9, #0
	mov r10, r7
	mov r7, r9
	cmp r9, #16
	bge label1748
label1747:
	and r6, r8, r10
	ands r6, r6, #1
	beq label519
	b label2714
label1723:
	ands r6, r10, #1
	beq label509
	ands r6, r9, #1
	bne label510
	b label2710
label509:
	ands r6, r9, #1
	beq label510
	b label2710
label519:
	add r6, r10, r10, lsr #31
	add r7, r7, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r7, #16
	bge label1748
	b label1747
label510:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1724
	b label1723
label2714:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label519
label502:
	cmp r11, #16
	bge label1724
	b label1723
label2710:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	b label502
label1711:
	and r6, r6, r4
	ands r6, r6, #1
	beq label571
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label571:
	add r4, r4, r4, lsr #31
	add r8, r8, #1
	mov r6, #0
	asr r4, r4, #1
	cmp r8, #16
	bge label498
	b label1711
label1748:
	ldr r6, [sp, #64]
	mov r10, #0
	movw r7, #65535
	mov r8, r10
	ldr r6, [r6, #4]
	mul r9, r9, r6
	cmp r10, #16
	bge label1767
label1766:
	and r6, r7, r9
	ands r6, r6, #1
	beq label530
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
	b label530
label1767:
	mov r7, r4
	movs r8, r10
	beq label1716
	b label1719
label530:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1767
	b label1766
label1716:
	mov r4, r7
	mov r7, r5
	movs r8, r5
	beq label567
label1782:
	mov r9, r8
	mov r10, r7
	mov r5, #0
	mov r11, r5
	cmp r5, #16
	bge label1787
	b label1786
label2721:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r2, r2, r5
	ldr r5, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r5
	mov r5, r7
	mov r7, r4
	b label489
label547:
	ldr r6, [sp, #64]
	movw r7, #65535
	ldr r6, [r6, #4]
	mul r9, r10, r6
	mov r10, #0
	mov r8, r10
	cmp r10, #16
	bge label1798
	b label1797
label1798:
	mov r7, r5
	movs r8, r10
	beq label567
	b label1782
label567:
	movw r5, #32767
	cmp r2, r5
	ble label569
	b label2721
label1786:
	ands r6, r10, #1
	beq label562
	b label1825
label1787:
	mov r10, #0
	mov r9, r10
	cmp r10, #16
	bge label547
	b label1790
label1825:
	ands r6, r9, #1
	bne label564
	b label2730
label1797:
	and r6, r7, r9
	ands r6, r6, #1
	beq label554
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label554:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1798
	b label1797
label1790:
	and r6, r8, r7
	ands r6, r6, #1
	beq label558
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r10, r10, r6
	b label558
label564:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1787
	b label1786
label558:
	add r6, r7, r7, lsr #31
	add r9, r9, #1
	asr r7, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label547
	b label1790
label562:
	ands r6, r9, #1
	beq label564
label2730:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r5, r5, r6
	b label564
label569:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r2, r2, r5
	mov r5, r7
	mov r7, r4
	cmp r2, #0
	beq label574
	b label1707
label1564:
	mov r4, r7
	mov r7, r5
	movs r8, r5
	beq label484
	b label1630
label484:
	movw r5, #32767
	cmp r3, r5
	ble label486
	b label2687
label1630:
	mov r9, r8
	mov r10, r7
	mov r5, #0
	mov r11, r5
	cmp r5, #16
	bge label1635
	b label1634
label454:
	cmp r11, #16
	bge label1635
label1634:
	ands r6, r10, #1
	beq label461
	b label1638
label1635:
	mov r9, #0
	mov r10, r7
	mov r7, r9
	cmp r9, #16
	bge label470
	b label1658
label1638:
	ands r6, r9, #1
	bne label462
label2690:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r5, r5, r6
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	b label454
label461:
	ands r6, r9, #1
	beq label462
	b label2690
label470:
	ldr r6, [sp, #64]
	mov r10, #0
	movw r7, #65535
	mov r8, r10
	ldr r6, [r6, #4]
	mul r9, r9, r6
	cmp r10, #16
	bge label1666
	b label1665
label1666:
	mov r7, r5
	movs r8, r10
	beq label484
	b label1630
label1658:
	and r6, r8, r10
	ands r6, r6, #1
	beq label481
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label481
label462:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1635
	b label1634
label1665:
	and r6, r7, r9
	ands r6, r6, #1
	beq label477
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label477:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1666
	b label1665
label481:
	add r6, r10, r10, lsr #31
	add r7, r7, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r7, #16
	bge label470
	b label1658
label402:
	cmp r3, #0
	beq label1545
	b label1544
label1545:
	mov r3, r7
	mov r5, r2
	mov r7, #0
	b label489
label388:
	cmp r0, #0
	ble label577
	b label1521
label576:
	ldr r6, [sp, #64]
	mov r5, r3
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r7
	cmp r0, #0
	ble label577
	b label1521
label375:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label381
	b label1150
label104:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label191
	b label787
