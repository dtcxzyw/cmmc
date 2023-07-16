.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r0, #4
	mov r1, #2
	mov r4, #1
	sub sp, sp, #80
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
label787:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label11
	b label791
label11:
	cmp r2, #0
	beq label796
	mov r5, #0
	movs r2, r1
	beq label800
	b label799
label796:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label99
label799:
	mov r3, #0
	mov r6, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label25
	b label803
label99:
	cmp r1, #0
	beq label103
	b label962
label1051:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1056
	b label1055
label2565:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label99
label161:
	cmp r7, #16
	bge label1067
label1066:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1072
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label168
label1067:
	mov r5, r4
	movs r7, r9
	beq label180
	b label1051
label1072:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label161
label168:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1067
	b label1066
label180:
	movw r4, #32767
	cmp r1, r4
	ble label181
	b label2565
label1055:
	ands r6, r10, #1
	beq label179
	b label1094
label1056:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label160
label1059:
	and r6, r7, r5
	ands r6, r6, #1
	beq label172
	b label2567
label160:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	b label161
label2567:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label172:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label160
	b label1059
label1094:
	ands r6, r8, #1
	bne label176
	b label2572
label179:
	ands r6, r8, #1
	beq label176
label2572:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label176:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1056
	b label1055
label962:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label111
	b label980
label111:
	cmp r3, #0
	beq label985
	movs r7, r4
	beq label985
label988:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label993
	b label992
label993:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1017
label1016:
	and r6, r7, r9
	ands r6, r6, #1
	beq label133
	b label2558
label992:
	ands r6, r10, #1
	beq label123
	ands r6, r8, #1
	bne label124
	b label2555
label123:
	ands r6, r8, #1
	beq label124
	b label2556
label124:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label993
	b label992
label1017:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1036
	b label1035
label1036:
	mov r5, r3
	movs r7, r9
	beq label985
	b label988
label1035:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1041
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label142
label1041:
	mov r6, r9
label142:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1036
	b label1035
label2558:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label133:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1017
	b label1016
label2556:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label993
	b label992
label2555:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label124
label980:
	and r6, r6, r7
	ands r6, r6, #1
	beq label185
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label185:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label111
	b label980
label803:
	and r6, r6, r7
	ands r6, r6, #1
	beq label22
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label22:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label25
	b label803
label985:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label180
	b label1051
label791:
	and r6, r6, r3
	ands r6, r6, #1
	beq label189
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
label189:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label11
	b label791
label181:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label103
	b label962
label25:
	cmp r3, #0
	beq label819
	movs r7, r4
	beq label900
	b label899
label819:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label28
label899:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label904
	b label903
label904:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label83
label927:
	and r6, r7, r9
	ands r6, r6, #1
	beq label95
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label95:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label83
	b label927
label903:
	ands r6, r10, #1
	beq label77
	ands r6, r8, #1
	bne label75
label2537:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label75:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label904
	b label903
label77:
	ands r6, r8, #1
	beq label75
	b label2537
label83:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label935
	b label934
label935:
	mov r5, r3
	movs r7, r9
	beq label900
	b label899
label934:
	and r6, r5, r8
	ands r6, r6, #1
	beq label90
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label90:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label935
	b label934
label28:
	cmp r7, #0
	beq label61
	b label822
label2518:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label12
label61:
	movw r4, #32767
	cmp r2, r4
	ble label63
	b label2518
label63:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label800
	b label799
label900:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label28
label822:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label827
	b label826
label48:
	cmp r7, #16
	bge label858
	b label857
label858:
	mov r5, r4
	movs r7, r9
	beq label61
	b label822
label826:
	ands r6, r10, #1
	beq label39
	b label830
label827:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label47
label850:
	and r6, r7, r9
	ands r6, r6, #1
	beq label59
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label59:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label47
	b label850
label47:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label48
label857:
	and r6, r5, r8
	ands r6, r6, #1
	beq label55
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label55:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label858
	b label857
label830:
	ands r6, r8, #1
	bne label37
	b label2521
label39:
	ands r6, r8, #1
	beq label37
label2521:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label37:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label827
	b label826
label12:
	cmp r2, #0
	beq label800
	b label799
label800:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label99
label103:
	movw r1, #32767
	cmp r0, r1
	ble label105
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label2
label105:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label191
	b label787
label191:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r4, #1
	mov r1, #2
	mov r0, r4
label192:
	cmp r0, #0
	ble label381
	b label1150
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
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	bge label1518
	b label1517
label1518:
	mov r0, #0
label577:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1513:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	ble label583
label1892:
	mov r6, #1
	mov r2, r0
	mov r5, #0
	mov r3, r5
	cmp r5, #16
	bge label593
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
	and r6, r6, r2
	ands r6, r6, #1
	beq label591
	b label2733
label593:
	cmp r5, #0
	beq label1913
	mov r5, #0
	movs r2, r1
	beq label2094
	b label2093
label1913:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label596
label2093:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label697
	b label2097
label2094:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label596
label2097:
	and r6, r6, r3
	ands r6, r6, #1
	beq label694
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label694
label697:
	cmp r8, #0
	beq label2113
	b label2112
label2113:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label700:
	cmp r7, #0
	beq label703
label2116:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label2135
	b label2134
label2135:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label722
	b label2158
label722:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label2166
label2165:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2171
	b label2793
label2166:
	mov r5, r4
	movs r7, r9
	beq label703
	b label2116
label2171:
	mov r6, r9
label729:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2166
	b label2165
label2134:
	ands r6, r9, #1
	beq label712
	ands r6, r8, #1
	bne label713
	b label2154
label713:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label2135
	b label2134
label2154:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label2135
	b label2134
label2158:
	and r6, r7, r9
	ands r6, r6, #1
	beq label733
	b label2792
label733:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label722
	b label2158
label2792:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label733
label712:
	ands r6, r8, #1
	beq label713
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label713
label2793:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label729
label694:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label697
	b label2097
label2112:
	movs r7, r4
	beq label2194
label2193:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label2198
	b label2197
label2222:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label2241
	b label2240
label2241:
	mov r5, r3
	movs r7, r9
	beq label2194
	b label2193
label2197:
	ands r6, r9, #1
	beq label746
	ands r6, r8, #1
	bne label747
	b label2802
label747:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label2198
	b label2197
label2198:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label2222
label2221:
	and r6, r7, r5
	ands r6, r6, #1
	beq label756
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label756:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label2222
	b label2221
label2240:
	and r6, r5, r8
	ands r6, r6, #1
	beq label766
	b label2809
label766:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2241
	b label2240
label2802:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	b label747
label746:
	ands r6, r8, #1
	beq label747
	b label2802
label2809:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label766
label2733:
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r5, r5, r6
label591:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label593
	b label1897
label596:
	cmp r1, #0
	beq label681
	b label1916
label2744:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label596
label647:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label681
	b label1916
label681:
	movw r1, #32767
	cmp r0, r1
	ble label683
	b label2738
label683:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label583
	b label1892
label1916:
	mov r6, #1
	mov r3, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label609
label1920:
	and r6, r6, r3
	ands r6, r6, #1
	beq label607
	b label2739
label609:
	cmp r8, #0
	beq label1936
	b label1935
label1936:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label612:
	cmp r7, #0
	beq label645
label1939:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1944
	b label1943
label1944:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1968
label1967:
	and r6, r7, r5
	ands r6, r6, #1
	beq label633
	b label2751
label636:
	cmp r7, #16
	bge label1987
	b label1986
label1987:
	mov r5, r4
	movs r7, r9
	beq label645
	b label1939
label645:
	movw r4, #32767
	cmp r1, r4
	ble label647
	b label2744
label1943:
	ands r6, r9, #1
	beq label622
	b label1947
label623:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1944
	b label1943
label1986:
	and r6, r5, r8
	ands r6, r6, #1
	beq label643
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label643:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1987
	b label1986
label2751:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label633:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1968
	b label1967
label1947:
	ands r6, r8, #1
	bne label623
	b label2747
label622:
	ands r6, r8, #1
	beq label623
label2747:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label623
label1968:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label636
label2739:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label607:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label609
	b label1920
label1935:
	movs r7, r4
	beq label2017
label2016:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label2021
	b label2020
label2017:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label612
label2021:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label667
	b label2044
label668:
	cmp r7, #16
	bge label2052
	b label2051
label2052:
	mov r5, r3
	movs r7, r9
	beq label2017
	b label2016
label2051:
	and r6, r5, r8
	ands r6, r6, #1
	beq label675
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label675:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2052
	b label2051
label2044:
	and r6, r7, r5
	ands r6, r6, #1
	beq label678
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label678
label667:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label668
label2020:
	ands r6, r9, #1
	beq label659
	ands r6, r8, #1
	bne label657
	b label2040
label2762:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
label657:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label2021
	b label2020
label659:
	ands r6, r8, #1
	beq label657
	b label2762
label2040:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label2021
	b label2020
label678:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label667
	b label2044
label684:
	cmp r2, #0
	beq label2094
	b label2093
label703:
	movw r4, #32767
	cmp r2, r4
	ble label704
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label684
label704:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label2094
	b label2093
label2194:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label700
label1150:
	mov r6, #1
	mov r2, r0
	mov r5, #0
	mov r3, r5
	cmp r5, #16
	bge label205
label1154:
	and r6, r6, r2
	ands r6, r6, #1
	beq label203
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r5, r5, r6
label203:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label205
	b label1154
label208:
	cmp r1, #0
	beq label212
	b label1173
label212:
	movw r1, #32767
	cmp r0, r1
	ble label214
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label192
label214:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label381
	b label1150
label256:
	cmp r7, #0
	beq label259
	b label1262
label259:
	movw r4, #32767
	cmp r1, r4
	ble label260
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label208
label1262:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1281
label1280:
	ands r6, r9, #1
	beq label289
	b label1319
label272:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1292
label1291:
	and r6, r5, r8
	ands r6, r6, #1
	beq label279
	b label2608
label1292:
	mov r5, r4
	movs r7, r9
	beq label259
	b label1262
label1319:
	ands r6, r8, #1
	bne label290
	b label2614
label289:
	ands r6, r8, #1
	beq label290
	b label2615
label262:
	cmp r10, #16
	bge label1281
	b label1280
label1281:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label272
label1284:
	and r6, r7, r9
	ands r6, r6, #1
	beq label283
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label283:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label272
	b label1284
label290:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1281
	b label1280
label279:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1292
	b label1291
label2615:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label262
label2614:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label290
label2608:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label279
label1173:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label220
	b label1191
label260:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label212
	b label1173
label1191:
	and r6, r6, r7
	ands r6, r6, #1
	beq label294
	b label2589
label220:
	cmp r3, #0
	beq label1196
	movs r7, r4
	beq label1196
label1199:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1204
	b label1203
label1204:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label240
	b label1227
label240:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1235
	b label1234
label1235:
	mov r5, r3
	movs r7, r9
	beq label1196
	b label1199
label1234:
	and r6, r5, r8
	ands r6, r6, #1
	beq label248
	b label2598
label248:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1235
	b label1234
label224:
	cmp r10, #16
	bge label1204
label1203:
	ands r6, r9, #1
	beq label231
	ands r6, r8, #1
	bne label233
	b label2594
label233:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1204
	b label1203
label1227:
	and r6, r7, r9
	ands r6, r6, #1
	beq label251
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label251:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label240
	b label1227
label2598:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label248
label231:
	ands r6, r8, #1
	beq label233
label2594:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label224
label2589:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label294:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label220
	b label1191
label1196:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label256
label205:
	cmp r5, #0
	beq label1170
	mov r5, #0
	movs r2, r1
	beq label1351
	b label1350
label1170:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label208
label1350:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label305
	b label1354
label305:
	cmp r8, #0
	beq label1359
	movs r7, r4
	beq label1440
	b label1439
label1359:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label308:
	cmp r7, #0
	beq label341
	b label1362
label341:
	movw r4, #32767
	cmp r2, r4
	ble label343
	b label2622
label343:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1351
	b label1350
label1439:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1444
	b label1443
label1440:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label308
label1467:
	and r6, r7, r5
	ands r6, r6, #1
	beq label365
	b label2648
label1468:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label368
label365:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1468
	b label1467
label368:
	cmp r7, #16
	bge label1487
label1486:
	and r6, r5, r8
	ands r6, r6, #1
	beq label374
	b label2650
label1487:
	mov r5, r3
	movs r7, r9
	beq label1440
	b label1439
label1362:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1367
	b label1366
label1390:
	and r6, r7, r9
	ands r6, r6, #1
	beq label339
	b label2633
label327:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1398
	b label1397
label1398:
	mov r5, r4
	movs r7, r9
	beq label341
	b label1362
label1366:
	ands r6, r9, #1
	beq label320
	ands r6, r8, #1
	bne label317
	b label1386
label320:
	ands r6, r8, #1
	beq label317
	b label1381
label1386:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1367
	b label1366
label1367:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label327
	b label1390
label1397:
	and r6, r5, r8
	ands r6, r6, #1
	beq label334
	b label2634
label334:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1398
	b label1397
label2633:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label339:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label327
	b label1390
label317:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1367
	b label1366
label1381:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1367
	b label1366
label374:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1487
	b label1486
label347:
	cmp r10, #16
	bge label1444
label1443:
	ands r6, r9, #1
	beq label357
	b label1447
label1444:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1468
	b label1467
label1447:
	ands r6, r8, #1
	bne label355
label2644:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label347
label357:
	ands r6, r8, #1
	beq label355
	b label2644
label355:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1444
	b label1443
label2634:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label334
label2650:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label374
label2648:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label365
label1354:
	and r6, r6, r3
	ands r6, r6, #1
	beq label378
	b label2619
label378:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label305
	b label1354
label2619:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label378
label579:
	cmp r0, #0
	ble label583
	b label1892
label2738:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label579
label296:
	cmp r2, #0
	beq label1351
	b label1350
label1351:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label208
label2622:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label296
label1517:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #72]
	cmp r0, #0
	ble label575
	b label1521
label576:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	cmp r0, #16
	bge label1518
	b label1517
label1521:
	mov r6, #1
	mov r2, r0
	mov r5, #0
	mov r3, r5
	cmp r5, #16
	bge label395
	b label1525
label386:
	cmp r0, #0
	ble label575
	b label1521
label2659:
	mov r0, #1
	b label577
label398:
	cmp r1, #0
	beq label402
	b label1533
label402:
	movw r1, #32767
	cmp r0, r1
	ble label404
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label386
label404:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label575
	b label1521
label416:
	movw r4, #32767
	cmp r1, r4
	ble label417
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label398
label575:
	ldr r6, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r6, r0, lsl #2]
	cmp r4, r0
	beq label576
	b label2659
label1533:
	mov r6, #1
	mov r3, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label410
label1551:
	and r6, r6, r3
	ands r6, r6, #1
	beq label484
	b label2665
label484:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label410
	b label1551
label410:
	cmp r8, #0
	beq label1556
	movs r7, r4
	beq label1637
	b label1636
label1556:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label413:
	cmp r7, #0
	beq label416
	b label1559
label1636:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1641
label1640:
	ands r6, r9, #1
	beq label477
	ands r6, r8, #1
	bne label480
	b label2690
label1559:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1578
	b label1577
label1578:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1602
	b label1601
label1602:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1621
	b label1620
label1621:
	mov r5, r4
	movs r7, r9
	beq label416
	b label1559
label1620:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1626
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label446
label1626:
	mov r6, r9
label446:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1621
	b label1620
label1601:
	and r6, r7, r9
	ands r6, r6, #1
	beq label436
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label436:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1602
	b label1601
label1577:
	ands r6, r10, #1
	beq label426
	ands r6, r8, #1
	bne label427
	b label2672
label427:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1578
	b label1577
label452:
	cmp r10, #16
	bge label1641
	b label1640
label1641:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label462
	b label1644
label426:
	ands r6, r8, #1
	beq label427
label2672:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	b label427
label1644:
	and r6, r7, r5
	ands r6, r6, #1
	beq label474
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label474:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label462
	b label1644
label480:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1641
	b label1640
label477:
	ands r6, r8, #1
	beq label480
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	b label480
label2690:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label452
label462:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1652
label1651:
	and r6, r5, r8
	ands r6, r6, #1
	beq label470
	b label2686
label1652:
	mov r5, r3
	movs r7, r9
	beq label1637
	b label1636
label2686:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label470:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1652
	b label1651
label2665:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label484
label1525:
	and r6, r6, r2
	ands r6, r6, #1
	beq label572
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r5, r5, r6
label572:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label395
	b label1525
label417:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label402
	b label1533
label1637:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label413
label395:
	cmp r5, #0
	beq label1530
	mov r5, #0
	movs r2, r1
	beq label1711
	b label1710
label1530:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label398
label1711:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label398
label1710:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label499
	b label1714
label1730:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label538
	b label1796
label538:
	movw r4, #32767
	cmp r2, r4
	ble label540
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label486
label540:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1711
	b label1710
label1796:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1815
	b label1814
label1815:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label551
	b label1818
label551:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1826
	b label1825
label1826:
	mov r5, r4
	movs r7, r9
	beq label538
	b label1796
label1814:
	ands r6, r9, #1
	beq label569
	ands r6, r8, #1
	bne label567
label2723:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
label567:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1815
	b label1814
label1818:
	and r6, r7, r5
	ands r6, r6, #1
	beq label562
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label562:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label551
	b label1818
label1825:
	and r6, r5, r8
	ands r6, r6, #1
	beq label558
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label558:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1826
	b label1825
label569:
	ands r6, r8, #1
	beq label567
	b label2723
label1714:
	and r6, r6, r3
	ands r6, r6, #1
	beq label496
	b label2694
label499:
	cmp r8, #0
	beq label1730
	b label1729
label496:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label499
	b label1714
label1729:
	movs r7, r4
	beq label1730
label1733:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1738
	b label1737
label524:
	cmp r7, #16
	bge label1781
label1780:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1786
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label531
label1781:
	mov r5, r3
	movs r7, r9
	beq label1730
	b label1733
label1786:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label524
label531:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1781
	b label1780
label1737:
	ands r6, r9, #1
	beq label513
	ands r6, r8, #1
	bne label510
label2702:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
label510:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1738
	b label1737
label513:
	ands r6, r8, #1
	beq label510
	b label2702
label1738:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1762
label1761:
	and r6, r7, r9
	ands r6, r6, #1
	beq label521
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label521
label1762:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label524
label521:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1762
	b label1761
label2694:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label496
label486:
	cmp r2, #0
	beq label1711
	b label1710
