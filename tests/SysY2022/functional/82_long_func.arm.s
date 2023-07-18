.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r1, #2
	mov r0, #4
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
	ble label6
label787:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label593
label1897:
	and r6, r6, r3
	ands r6, r6, #1
	beq label590
	b label2746
label593:
	cmp r2, #0
	beq label1913
	b label1912
label1913:
	mov r2, r4
	mov r4, r1
	mov r5, #0
label681:
	cmp r1, #0
	beq label766
	b label2079
label2165:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label2170
	b label2169
label2807:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label681
label750:
	cmp r7, #16
	bge label2201
label2200:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2206
	b label2814
label2201:
	mov r5, r4
	movs r7, r9
	beq label763
	b label2165
label2206:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label750
label763:
	movw r4, #32767
	cmp r1, r4
	ble label765
	b label2807
label766:
	movw r1, #32767
	cmp r0, r1
	ble label768
	b label2786
label2169:
	ands r6, r10, #1
	beq label740
	ands r6, r8, #1
	bne label742
	b label2810
label742:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2170
	b label2169
label733:
	cmp r9, #16
	bge label2170
	b label2169
label2170:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label749
label2193:
	and r6, r7, r9
	ands r6, r6, #1
	beq label760
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label760:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label749
	b label2193
label2814:
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
	bge label2201
	b label2200
label740:
	ands r6, r8, #1
	beq label742
label2810:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label733
label2079:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label694
	b label2083
label749:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label750
label2083:
	and r6, r6, r7
	ands r6, r6, #1
	beq label692
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label692:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label694
	b label2083
label694:
	cmp r3, #0
	beq label2099
	movs r7, r4
	beq label2099
label2102:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label2107
	b label2106
label2107:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label2131
label2130:
	and r6, r7, r5
	ands r6, r6, #1
	beq label715
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label715
label719:
	cmp r7, #16
	bge label2150
label2149:
	and r6, r5, r8
	ands r6, r6, #1
	beq label726
	b label2803
label2150:
	mov r5, r3
	movs r7, r9
	beq label2099
	b label2102
label2106:
	ands r6, r10, #1
	beq label706
	ands r6, r8, #1
	bne label704
	b label2794
label715:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label2131
	b label2130
label2803:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label726:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2150
	b label2149
label2794:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label704:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2107
	b label2106
label706:
	ands r6, r8, #1
	beq label704
	b label2794
label2131:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label719
label2099:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label763
	b label2165
label590:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label593
	b label1897
label1912:
	mov r5, #0
	movs r2, r1
	beq label1917
	b label1916
label1917:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label681
label1916:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label603
label1920:
	and r6, r6, r3
	ands r6, r6, #1
	beq label677
	b label2752
label677:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label603
	b label1920
label603:
	cmp r8, #0
	beq label1925
	movs r7, r4
	beq label2006
	b label2005
label1925:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label606:
	cmp r7, #0
	beq label639
	b label1928
label2755:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label594
label639:
	movw r4, #32767
	cmp r2, r4
	ble label641
	b label2755
label641:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1917
	b label1916
label2006:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label606
label1928:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1933
	b label1932
label1957:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1976
	b label1975
label1976:
	mov r5, r4
	movs r7, r9
	beq label639
	b label1928
label1932:
	ands r6, r10, #1
	beq label618
	b label1936
label1933:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1957
label1956:
	and r6, r7, r9
	ands r6, r6, #1
	beq label627
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label627:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1957
	b label1956
label1975:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1981
	b label2765
label1981:
	mov r6, r9
label636:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1976
	b label1975
label2005:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label2010
	b label2009
label2010:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label661
	b label2033
label661:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	bge label2041
	b label2040
label2041:
	mov r5, r3
	movs r7, r9
	beq label2006
	b label2005
label2040:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2046
	b label2779
label2046:
	mov r6, r9
label668:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2041
	b label2040
label2033:
	and r6, r7, r5
	ands r6, r6, #1
	beq label673
	b label2778
label673:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label661
	b label2033
label2009:
	ands r6, r10, #1
	beq label655
	b label2013
label2774:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label653:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2010
	b label2009
label1936:
	ands r6, r8, #1
	bne label616
	b label2758
label618:
	ands r6, r8, #1
	beq label616
label2758:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label616:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1933
	b label1932
label2765:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label636
label2779:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label668
label2013:
	ands r6, r8, #1
	bne label653
	b label2774
label655:
	ands r6, r8, #1
	beq label653
	b label2774
label2778:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label673
label2752:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label677
label765:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label766
	b label2079
label2746:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
	b label590
label594:
	cmp r2, #0
	beq label1917
	b label1916
label2786:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label2
label768:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label6
	b label787
label6:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r4, #1
	mov r1, #2
	mov r0, r4
label7:
	cmp r0, #0
	ble label196
	b label791
label108:
	cmp r1, #0
	beq label112
label977:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label120
	b label995
label112:
	movw r1, #32767
	cmp r0, r1
	ble label113
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label7
label995:
	and r6, r6, r7
	ands r6, r6, #1
	beq label193
	b label2552
label120:
	cmp r3, #0
	beq label1000
	movs r7, r4
	beq label1081
	b label1080
label1000:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label123:
	cmp r7, #0
	beq label156
	b label1003
label2555:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label108
label156:
	movw r4, #32767
	cmp r1, r4
	ble label157
	b label2555
label157:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label112
	b label977
label1003:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1008
	b label1007
label1008:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label142
label1031:
	and r6, r7, r9
	ands r6, r6, #1
	beq label153
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label153
label143:
	cmp r7, #16
	bge label1039
label1038:
	and r6, r5, r8
	ands r6, r6, #1
	beq label150
	b label2562
label1039:
	mov r5, r4
	movs r7, r9
	beq label156
	b label1003
label1007:
	ands r6, r10, #1
	beq label132
	ands r6, r8, #1
	bne label134
	b label2558
label132:
	ands r6, r8, #1
	beq label134
	b label2558
label153:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label142
	b label1031
label2558:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label134:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1008
	b label1007
label2562:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label150:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1039
	b label1038
label1080:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1085
	b label1084
label1081:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label123
label1084:
	ands r6, r9, #1
	beq label190
	b label1123
label1085:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1089
	b label1088
label1089:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1108
label1107:
	and r6, r5, r8
	ands r6, r6, #1
	beq label183
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label183
label1108:
	mov r5, r3
	movs r7, r9
	beq label1081
	b label1080
label183:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1108
	b label1107
label1088:
	and r6, r7, r9
	ands r6, r6, #1
	beq label174
	b label2571
label174:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1089
	b label1088
label1123:
	ands r6, r8, #1
	bne label187
	b label1139
label187:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1085
	b label1084
label190:
	ands r6, r8, #1
	beq label187
	b label1134
label1139:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1085
	b label1084
label1134:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1085
	b label1084
label2571:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label174
label142:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label143
label193:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label120
	b label995
label2552:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label193
label791:
	mov r6, #1
	mov r2, r0
	mov r5, #0
	mov r3, r5
	cmp r5, #16
	bge label20
	b label795
label113:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label196
	b label791
label795:
	and r6, r6, r2
	ands r6, r6, #1
	beq label18
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r5, r5, r6
	b label18
label20:
	cmp r5, #0
	beq label811
	mov r5, #0
	movs r2, r1
	beq label815
	b label814
label811:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label108
label814:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label34
	b label818
label34:
	cmp r8, #0
	beq label834
	movs r7, r4
	beq label834
label837:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label842
	b label841
label842:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label846
label845:
	and r6, r7, r5
	ands r6, r6, #1
	beq label49
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label49
label846:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label865
	b label864
label865:
	mov r5, r3
	movs r7, r9
	beq label834
	b label837
label864:
	and r6, r5, r8
	ands r6, r6, #1
	beq label60
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label60:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label865
	b label864
label841:
	ands r6, r9, #1
	beq label67
	ands r6, r8, #1
	bne label64
label2527:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
label64:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label842
	b label841
label67:
	ands r6, r8, #1
	beq label64
	b label2527
label49:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label846
	b label845
label818:
	and r6, r6, r3
	ands r6, r6, #1
	beq label32
	b label2515
label32:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label34
	b label818
label2515:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label32
label18:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label20
	b label795
label834:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label103
label900:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label905
	b label904
label905:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label909
label908:
	and r6, r7, r5
	ands r6, r6, #1
	beq label84
	b label2535
label909:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label928
	b label927
label928:
	mov r5, r4
	movs r7, r9
	beq label103
	b label900
label103:
	movw r4, #32767
	cmp r2, r4
	ble label104
	b label2533
label104:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label815
	b label814
label904:
	ands r6, r9, #1
	beq label98
	ands r6, r8, #1
	bne label99
	b label959
label98:
	ands r6, r8, #1
	beq label99
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label99
label959:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label905
	b label904
label84:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label909
	b label908
label99:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label905
	b label904
label927:
	and r6, r5, r8
	ands r6, r6, #1
	beq label94
	b label2538
label94:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label928
	b label927
label2535:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label84
label2538:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label94
label21:
	cmp r2, #0
	beq label815
	b label814
label815:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label108
label2533:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label21
label196:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #68]
	cmp r0, #16
	bge label1155
	b label1154
label1155:
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	bge label1159
	b label1158
label1159:
	mov r0, #0
label392:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1154:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	ble label398
	b label1533
label398:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	cmp r0, #16
	bge label1155
	b label1154
label1533:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label404
	b label1538
label497:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label398
	b label1533
label1538:
	and r6, r6, r3
	ands r6, r6, #1
	beq label581
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
label581:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label404
	b label1538
label404:
	cmp r2, #0
	beq label1543
	mov r5, #0
	movs r2, r1
	beq label1547
	b label1546
label1543:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label492
label405:
	cmp r2, #0
	beq label1547
label1546:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label418
	b label1550
label1547:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label492
label2690:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label405
label488:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1547
	b label1546
label1550:
	and r6, r6, r3
	ands r6, r6, #1
	beq label415
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label415
label418:
	cmp r8, #0
	beq label1566
	movs r7, r4
	beq label1566
label1569:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1574
label1573:
	ands r6, r9, #1
	beq label449
	b label1612
label1574:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1578
label1577:
	and r6, r7, r5
	ands r6, r6, #1
	beq label434
	b label2680
label1612:
	ands r6, r8, #1
	bne label450
	b label2686
label450:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1574
	b label1573
label1578:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	bge label1597
label1596:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1602
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label443
label1597:
	mov r5, r3
	movs r7, r9
	beq label1566
	b label1569
label1602:
	mov r6, r9
label443:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1597
	b label1596
label2680:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label434:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1578
	b label1577
label2686:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1574
	b label1573
label449:
	ands r6, r8, #1
	beq label450
	b label2686
label415:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label418
	b label1550
label492:
	cmp r1, #0
	beq label496
label1709:
	mov r6, #1
	mov r3, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label504
label1727:
	and r6, r6, r3
	ands r6, r6, #1
	beq label577
	b label2708
label504:
	cmp r8, #0
	beq label1732
	movs r7, r4
	beq label1732
label1735:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1740
label1739:
	ands r6, r10, #1
	beq label537
	b label1778
label1740:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label518
label1743:
	and r6, r7, r9
	ands r6, r6, #1
	beq label529
	b label2712
label518:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label519
label1778:
	ands r6, r8, #1
	bne label534
	b label2718
label519:
	cmp r7, #16
	bge label1751
label1750:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1756
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label526
label1751:
	mov r5, r3
	movs r7, r9
	beq label1732
	b label1735
label1756:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label519
label526:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1751
	b label1750
label529:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label518
	b label1743
label2718:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label534:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1740
	b label1739
label2712:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label529
label537:
	ands r6, r8, #1
	beq label534
	b label2718
label577:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label504
	b label1727
label2708:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label577
label1732:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label573
label1798:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1803
	b label1802
label1803:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1807
	b label1806
label558:
	cmp r7, #16
	bge label1826
label1825:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1831
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label565
label1826:
	mov r5, r4
	movs r7, r9
	beq label573
	b label1798
label1831:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label558
label565:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1826
	b label1825
label573:
	movw r4, #32767
	cmp r1, r4
	ble label575
	b label2724
label1802:
	ands r6, r10, #1
	beq label571
	b label1841
label568:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1803
	b label1802
label571:
	ands r6, r8, #1
	beq label568
	b label1852
label1806:
	and r6, r7, r9
	ands r6, r6, #1
	beq label554
	b label2726
label554:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1807
	b label1806
label1841:
	ands r6, r8, #1
	bne label568
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1803
	b label1802
label1852:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1803
	b label1802
label2726:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label554
label1807:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label558
label2724:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label492
label575:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label496
	b label1709
label1566:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label487
	b label1632
label487:
	movw r4, #32767
	cmp r2, r4
	ble label488
	b label2690
label1632:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1637
	b label1636
label1637:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label473
label1660:
	and r6, r7, r5
	ands r6, r6, #1
	beq label484
	b label2697
label474:
	cmp r7, #16
	bge label1668
label1667:
	and r6, r5, r8
	ands r6, r6, #1
	beq label481
	b label2698
label1668:
	mov r5, r4
	movs r7, r9
	beq label487
	b label1632
label457:
	cmp r10, #16
	bge label1637
label1636:
	ands r6, r9, #1
	beq label467
	ands r6, r8, #1
	bne label465
label2693:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label457
label467:
	ands r6, r8, #1
	beq label465
	b label2693
label465:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1637
	b label1636
label484:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label473
	b label1660
label2698:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label481:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1668
	b label1667
label2697:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label484
label473:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label474
label394:
	cmp r0, #0
	ble label398
	b label1533
label496:
	movw r1, #32767
	cmp r0, r1
	ble label497
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label394
label1158:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #72]
	cmp r0, #0
	ble label390
	b label1162
label2590:
	mov r0, #1
	b label392
label390:
	ldr r6, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r6, r0, lsl #2]
	cmp r4, r0
	beq label391
	b label2590
label391:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	cmp r0, #16
	bge label1159
	b label1158
label1162:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label214
label1166:
	and r6, r6, r3
	ands r6, r6, #1
	beq label211
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
	b label211
label214:
	cmp r2, #0
	beq label1182
	b label1181
label211:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label214
	b label1166
label1181:
	mov r5, #0
	movs r2, r1
	beq label1186
	b label1185
label1182:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label302
label1185:
	mov r3, #0
	mov r6, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label228
label1189:
	and r6, r6, r7
	ands r6, r6, #1
	beq label225
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label225
label228:
	cmp r3, #0
	beq label1205
	b label1204
label1205:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label231
label225:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label228
	b label1189
label1204:
	movs r7, r4
	beq label1286
	b label1285
label231:
	cmp r7, #0
	beq label264
	b label1208
label1286:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label231
label1208:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1213
	b label1212
label250:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	bge label1244
	b label1243
label1244:
	mov r5, r4
	movs r7, r9
	beq label264
	b label1208
label264:
	movw r4, #32767
	cmp r2, r4
	ble label265
	b label2603
label1212:
	ands r6, r9, #1
	beq label241
	ands r6, r8, #1
	bne label243
	b label2606
label241:
	ands r6, r8, #1
	beq label243
	b label2606
label243:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1213
	b label1212
label234:
	cmp r10, #16
	bge label1213
	b label1212
label1213:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label250
label1236:
	and r6, r7, r5
	ands r6, r6, #1
	beq label261
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label261
label1243:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1249
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label257
label1249:
	mov r6, r9
label257:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1244
	b label1243
label261:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label250
	b label1236
label1285:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1290
label1289:
	ands r6, r10, #1
	beq label276
	ands r6, r8, #1
	bne label278
	b label2621
label1313:
	and r6, r7, r9
	ands r6, r6, #1
	beq label297
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label297
label286:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1321
	b label1320
label1321:
	mov r5, r3
	movs r7, r9
	beq label1286
	b label1285
label1320:
	and r6, r5, r8
	ands r6, r6, #1
	beq label293
	b label2625
label293:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1321
	b label1320
label1290:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label286
	b label1313
label278:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1290
	b label1289
label297:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label286
	b label1313
label2606:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label234
label2625:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label293
label276:
	ands r6, r8, #1
	beq label278
label2621:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label278
label302:
	cmp r1, #0
	beq label387
	b label1348
label2632:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label201
label387:
	movw r1, #32767
	cmp r0, r1
	ble label389
	b label2632
label389:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label390
	b label1162
label1348:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label311
label1352:
	and r6, r6, r7
	ands r6, r6, #1
	beq label384
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label384
label311:
	cmp r3, #0
	beq label1357
	movs r7, r4
	beq label1438
	b label1437
label1357:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label314
label1437:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1442
	b label1441
label1442:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label363
label1445:
	and r6, r7, r9
	ands r6, r6, #1
	beq label374
	b label2651
label374:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label363
	b label1445
label1441:
	ands r6, r10, #1
	beq label382
	b label1480
label382:
	ands r6, r8, #1
	beq label379
	b label1496
label379:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1442
	b label1441
label2651:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label374
label1496:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1442
	b label1441
label1480:
	ands r6, r8, #1
	bne label379
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label379
label384:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label311
	b label1352
label363:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1453
label1452:
	and r6, r5, r8
	ands r6, r6, #1
	beq label371
	b label2652
label1453:
	mov r5, r3
	movs r7, r9
	beq label1438
	b label1437
label2652:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label371:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1453
	b label1452
label314:
	cmp r7, #0
	beq label347
	b label1360
label347:
	movw r4, #32767
	cmp r1, r4
	ble label349
	b label2636
label349:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label387
	b label1348
label1438:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label314
label1360:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1365
	b label1364
label328:
	cmp r7, #16
	bge label1376
label1375:
	and r6, r5, r8
	ands r6, r6, #1
	beq label335
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label335
label1376:
	mov r5, r4
	movs r7, r9
	beq label347
	b label1360
label1364:
	ands r6, r10, #1
	beq label342
	b label1403
label1365:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label327
	b label1368
label1403:
	ands r6, r8, #1
	bne label344
	b label2644
label1368:
	and r6, r7, r9
	ands r6, r6, #1
	beq label338
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label338:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label327
	b label1368
label344:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1365
	b label1364
label335:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1376
	b label1375
label342:
	ands r6, r8, #1
	beq label344
label2644:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	b label344
label327:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label328
label2636:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label302
label265:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1186
	b label1185
label215:
	cmp r2, #0
	beq label1186
	b label1185
label1186:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label302
label2603:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label215
label201:
	cmp r0, #0
	ble label390
	b label1162
