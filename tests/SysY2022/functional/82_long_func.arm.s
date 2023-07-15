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
	mov r4, #1
	sub sp, sp, #80
	mov r1, #2
	mov r5, sp
	str r5, [sp, #64]
	str r4, [sp, #0]
	str r1, [r5, #4]
	str r0, [r5, #8]
	mov r0, #8
	str r0, [r5, #12]
	mov r0, #16
	str r0, [r5, #16]
	mov r0, #32
	str r0, [r5, #20]
	mov r0, #64
	str r0, [r5, #24]
	mov r0, #128
	str r0, [r5, #28]
	mov r0, #256
	str r0, [r5, #32]
	mov r0, #512
	str r0, [r5, #36]
	mov r0, #1024
	str r0, [r5, #40]
	mov r0, #2048
	str r0, [r5, #44]
	mov r0, #4096
	str r0, [r5, #48]
	mov r0, #8192
	str r0, [r5, #52]
	mov r0, #16384
	str r0, [r5, #56]
	mov r0, #32768
	str r0, [r5, #60]
	mov r0, #0
label2:
	cmp r0, #0
	ble label6
	b label803
label699:
	movw r1, #32767
	cmp r0, r1
	ble label700
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	ldr r1, [r5, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r6
	b label2
label700:
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	mov r1, r6
	cmp r0, #0
	ble label6
label803:
	mov r2, #0
	mov r5, #1
	mov r3, r0
	mov r6, r2
	cmp r2, #16
	bge label605
label1961:
	and r5, r5, r3
	ands r5, r5, #1
	beq label603
	b label2828
label605:
	cmp r2, #0
	beq label1977
	b label1976
label1977:
	mov r2, r4
	mov r4, r1
	mov r6, #0
label695:
	cmp r1, #0
	beq label699
label2151:
	mov r3, #0
	mov r5, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label711
	b label2169
label751:
	movw r4, #32767
	cmp r1, r4
	ble label753
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r6
	mov r6, r3
	b label695
label753:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	beq label699
	b label2151
label2169:
	and r5, r5, r7
	ands r5, r5, #1
	beq label709
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r3, r3, r5
label709:
	add r5, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r8, #16
	bge label711
	b label2169
label711:
	cmp r3, #0
	beq label2185
	movs r7, r4
	beq label2185
label2188:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	bge label2193
label2192:
	ands r5, r10, #1
	beq label725
	ands r5, r8, #1
	bne label723
	b label2877
label725:
	ands r5, r8, #1
	beq label723
	b label2877
label733:
	cmp r7, #16
	bge label2228
label2227:
	and r5, r6, r8
	ands r5, r5, #1
	beq label2233
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	b label740
label2228:
	mov r6, r3
	movs r7, r9
	beq label2185
	b label2188
label2233:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	b label733
label740:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label2228
	b label2227
label2193:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label732
label2220:
	and r5, r7, r9
	ands r5, r5, #1
	beq label744
	b label2882
label744:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label732
	b label2220
label732:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	b label733
label2877:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
label723:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label2193
	b label2192
label2882:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label744
label1976:
	mov r6, #0
	movs r2, r1
	beq label1981
label1980:
	mov r3, #0
	mov r5, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label619
	b label1984
label619:
	cmp r3, #0
	beq label2000
	b label1999
label2000:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label622
label606:
	cmp r2, #0
	beq label1981
	b label1980
label1981:
	mov r2, r6
	mov r4, r1
	mov r6, #0
	b label695
label2003:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	bge label2022
	b label2021
label625:
	movw r4, #32767
	cmp r2, r4
	ble label627
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r6
	mov r6, r3
	b label606
label627:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	beq label1981
	b label1980
label650:
	cmp r7, #16
	bge label2069
	b label2068
label2069:
	mov r6, r4
	movs r7, r9
	beq label625
	b label2003
label2021:
	ands r5, r10, #1
	beq label638
	b label2025
label2022:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label2050
	b label2049
label2025:
	ands r5, r8, #1
	bne label636
label2843:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
label636:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label2022
	b label2021
label638:
	ands r5, r8, #1
	beq label636
	b label2843
label2050:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	b label650
label2049:
	and r5, r7, r9
	ands r5, r5, #1
	beq label647
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
label647:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label2050
	b label2049
label2068:
	and r5, r6, r8
	ands r5, r5, #1
	beq label657
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
label657:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label2069
	b label2068
label1984:
	and r5, r5, r7
	ands r5, r5, #1
	beq label616
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r3, r3, r5
label616:
	add r5, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r8, #16
	bge label619
	b label1984
label1999:
	movs r7, r4
	beq label2085
	b label2084
label622:
	cmp r7, #0
	beq label625
	b label2003
label2085:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label622
label2084:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	bge label2089
label2088:
	ands r5, r10, #1
	beq label668
	ands r5, r8, #1
	bne label670
	b label2856
label679:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label2124
	b label2123
label2124:
	mov r6, r3
	movs r7, r9
	beq label2085
	b label2084
label2123:
	and r5, r6, r8
	ands r5, r5, #1
	beq label686
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
label686:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label2124
	b label2123
label2089:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label679
label2116:
	and r5, r7, r9
	ands r5, r5, #1
	beq label690
	b label2860
label690:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label679
	b label2116
label670:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label2089
	b label2088
label668:
	ands r5, r8, #1
	beq label670
	b label2856
label2860:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label690
label2856:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	b label670
label2185:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label751
label2255:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	bge label2274
	b label2273
label2302:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label2321
	b label2320
label2321:
	mov r6, r4
	movs r7, r9
	beq label751
	b label2255
label2273:
	ands r5, r10, #1
	beq label764
	b label2277
label2892:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
label760:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label2274
	b label2273
label2274:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label2302
label2301:
	and r5, r7, r6
	ands r5, r5, #1
	beq label773
	b label2899
label773:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label2302
	b label2301
label2320:
	and r5, r6, r8
	ands r5, r5, #1
	beq label2326
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	b label782
label2326:
	mov r5, r9
label782:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label2321
	b label2320
label2899:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	b label773
label2277:
	ands r5, r8, #1
	bne label760
	b label2892
label764:
	ands r5, r8, #1
	beq label760
	b label2892
label2828:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r2, r2, r5
label603:
	add r3, r3, r3, lsr #31
	add r6, r6, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r6, #16
	bge label605
	b label1961
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
	ble label200
	b label807
label106:
	cmp r1, #0
	beq label110
	b label990
label110:
	movw r1, #32767
	cmp r0, r1
	ble label111
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	ldr r1, [r5, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r6
	b label7
label1008:
	and r5, r5, r7
	ands r5, r5, #1
	beq label194
	b label2633
label118:
	cmp r3, #0
	beq label1013
	movs r7, r4
	beq label1098
	b label1097
label1013:
	mov r3, r6
	mov r6, r4
	mov r7, r4
label121:
	cmp r7, #0
	beq label124
	b label1016
label124:
	movw r4, #32767
	cmp r1, r4
	ble label125
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r6
	mov r6, r3
	b label106
label1097:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1102
	b label1101
label1102:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label1106
label1105:
	and r5, r7, r9
	ands r5, r5, #1
	beq label172
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label172
label200:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #68]
	cmp r0, #16
	bge label1187
	b label1186
label1187:
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	bge label1191
	b label1190
label1191:
	mov r0, #0
label205:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1186:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	ble label595
	b label1581
label402:
	cmp r0, #0
	ble label595
	b label1581
label505:
	cmp r1, #0
	beq label509
	b label1775
label509:
	movw r1, #32767
	cmp r0, r1
	ble label511
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	ldr r1, [r5, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r6
	b label402
label511:
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	mov r1, r6
	cmp r0, #0
	ble label595
	b label1581
label1801:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1820
	b label1819
label523:
	movw r4, #32767
	cmp r1, r4
	ble label524
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r6
	mov r6, r3
	b label505
label524:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	beq label509
	b label1775
label543:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1855
	b label1854
label1855:
	mov r6, r4
	movs r7, r9
	beq label523
	b label1801
label595:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	cmp r0, #16
	bge label1187
	b label1186
label1819:
	ands r5, r9, #1
	beq label536
	b label1823
label1820:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label543
label1847:
	and r5, r7, r6
	ands r5, r5, #1
	beq label554
	b label2804
label554:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label543
	b label1847
label1854:
	and r5, r6, r8
	ands r5, r5, #1
	beq label550
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
label550:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1855
	b label1854
label1823:
	ands r5, r8, #1
	bne label532
label2797:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
label532:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1820
	b label1819
label536:
	ands r5, r8, #1
	beq label532
	b label2797
label2804:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	b label554
label1775:
	mov r5, #1
	mov r3, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label517
label1793:
	and r5, r5, r3
	ands r5, r5, #1
	beq label593
	b label2790
label517:
	cmp r8, #0
	beq label1798
	movs r7, r4
	beq label1883
	b label1882
label1798:
	mov r3, r6
	mov r6, r4
	mov r7, r4
label520:
	cmp r7, #0
	beq label523
	b label1801
label1882:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1887
label1886:
	ands r5, r9, #1
	beq label587
	b label1925
label1887:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label570
label1890:
	and r5, r7, r6
	ands r5, r5, #1
	beq label582
	b label2813
label2819:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
label585:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1887
	b label1886
label587:
	ands r5, r8, #1
	beq label585
	b label2819
label570:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1898
label1897:
	and r5, r6, r8
	ands r5, r5, #1
	beq label577
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label577
label1898:
	mov r6, r3
	movs r7, r9
	beq label1883
	b label1882
label577:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1898
	b label1897
label2813:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
label582:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label570
	b label1890
label1925:
	ands r5, r8, #1
	bne label585
	b label2819
label1016:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1035
	b label1034
label1039:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label1058
	b label1057
label1058:
	mov r6, r4
	movs r7, r9
	beq label124
	b label1016
label1035:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label1039
label1038:
	and r5, r7, r9
	ands r5, r5, #1
	beq label138
	b label2639
label1034:
	ands r5, r9, #1
	beq label156
	b label1073
label138:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label1039
	b label1038
label1057:
	and r5, r6, r8
	ands r5, r5, #1
	beq label148
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
label148:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1058
	b label1057
label2790:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
label593:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label517
	b label1793
label1101:
	ands r5, r9, #1
	beq label186
	ands r5, r8, #1
	bne label190
	b label2662
label190:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1102
	b label1101
label172:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label1106
	b label1105
label2639:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label138
label1073:
	ands r5, r8, #1
	bne label152
	b label2646
label156:
	ands r5, r8, #1
	beq label152
label2646:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
label152:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1035
	b label1034
label186:
	ands r5, r8, #1
	beq label190
label2662:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
	b label190
label1581:
	mov r5, #1
	mov r2, r0
	mov r6, #0
	mov r3, r6
	cmp r6, #16
	bge label415
label1585:
	and r5, r5, r2
	ands r5, r5, #1
	beq label412
	b label2750
label990:
	mov r3, #0
	mov r5, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label118
	b label1008
label125:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	beq label110
	b label990
label412:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label415
	b label1585
label2633:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r3, r3, r5
label194:
	add r5, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r5, #1
	mov r5, #0
	cmp r8, #16
	bge label118
	b label1008
label1883:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label520
label2750:
	ldr r5, [sp, #64]
	ldr r5, [r5, r3, lsl #2]
	add r6, r6, r5
	b label412
label1106:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label1125
	b label1124
label1125:
	mov r6, r3
	movs r7, r9
	beq label1098
	b label1097
label1124:
	and r5, r6, r8
	ands r5, r5, #1
	beq label182
	b label2658
label182:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1125
	b label1124
label2658:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label182
label807:
	mov r5, #1
	mov r2, r0
	mov r6, #0
	mov r3, r6
	cmp r6, #16
	bge label16
	b label811
label16:
	cmp r6, #0
	beq label816
	mov r6, #0
	movs r2, r1
	beq label820
	b label819
label816:
	mov r2, r4
	mov r4, r1
	mov r6, #0
	b label106
label819:
	mov r5, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label30
label823:
	and r5, r5, r3
	ands r5, r5, #1
	beq label28
	b label2593
label30:
	cmp r8, #0
	beq label839
	b label838
label17:
	cmp r2, #0
	beq label820
	b label819
label820:
	mov r2, r6
	mov r4, r1
	mov r6, #0
	b label106
label909:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label928
	b label927
label70:
	movw r4, #32767
	cmp r2, r4
	ble label71
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r6
	mov r6, r3
	b label17
label71:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	beq label820
	b label819
label928:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label932
label931:
	and r5, r7, r9
	ands r5, r5, #1
	beq label84
	b label2616
label932:
	ldr r5, [sp, #64]
	mov r9, #0
	movw r6, #65535
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label951
	b label950
label951:
	mov r6, r4
	movs r7, r9
	beq label70
	b label909
label927:
	ands r5, r9, #1
	beq label100
	b label966
label84:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label932
	b label931
label950:
	and r5, r6, r8
	ands r5, r5, #1
	beq label94
	b label2619
label94:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label951
	b label950
label838:
	movs r7, r4
	beq label839
label842:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label847
	b label846
label847:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label875
	b label874
label846:
	ands r5, r9, #1
	beq label42
	ands r5, r8, #1
	bne label40
label2600:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
label40:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label847
	b label846
label42:
	ands r5, r8, #1
	beq label40
	b label2600
label874:
	and r5, r7, r6
	ands r5, r5, #1
	beq label53
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	b label53
label875:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label56
label53:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label875
	b label874
label56:
	cmp r7, #16
	bge label894
label893:
	and r5, r6, r8
	ands r5, r5, #1
	beq label63
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label63
label894:
	mov r6, r3
	movs r7, r9
	beq label839
	b label842
label966:
	ands r5, r8, #1
	bne label98
label2623:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
	b label98
label100:
	ands r5, r8, #1
	beq label98
	b label2623
label98:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label928
	b label927
label2616:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label84
label2619:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label94
label63:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label894
	b label893
label2593:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
label28:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label30
	b label823
label415:
	cmp r6, #0
	beq label1601
	b label1600
label1601:
	mov r2, r4
	mov r4, r1
	mov r6, #0
	b label505
label1600:
	mov r6, #0
	movs r2, r1
	beq label1605
label1604:
	mov r5, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label425
	b label1608
label425:
	cmp r8, #0
	beq label1613
	movs r7, r4
	beq label1613
label1616:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1621
	b label1620
label444:
	cmp r7, #16
	bge label1644
	b label1643
label1644:
	mov r6, r3
	movs r7, r9
	beq label1613
	b label1616
label1621:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1625
	b label1624
label1620:
	ands r5, r9, #1
	beq label454
	ands r5, r8, #1
	bne label458
label2765:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
	b label458
label454:
	ands r5, r8, #1
	beq label458
	b label2765
label458:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1621
	b label1620
label1624:
	and r5, r7, r6
	ands r5, r5, #1
	beq label441
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
label441:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label1625
	b label1624
label1643:
	and r5, r6, r8
	ands r5, r5, #1
	beq label451
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
label451:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1644
	b label1643
label1608:
	and r5, r5, r3
	ands r5, r5, #1
	beq label500
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
label500:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label425
	b label1608
label1625:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label444
label416:
	cmp r2, #0
	beq label1605
	b label1604
label1605:
	mov r2, r6
	mov r4, r1
	mov r6, #0
	b label505
label465:
	movw r4, #32767
	cmp r2, r4
	ble label466
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r6
	mov r6, r3
	b label416
label1613:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label465
label1683:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1702
label1701:
	ands r5, r9, #1
	beq label476
	ands r5, r8, #1
	bne label474
label2772:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
label474:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1702
	b label1701
label476:
	ands r5, r8, #1
	beq label474
	b label2772
label485:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label1737
label1736:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1742
	b label2780
label1737:
	mov r6, r4
	movs r7, r9
	beq label465
	b label1683
label1702:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label485
label1729:
	and r5, r7, r9
	ands r5, r5, #1
	beq label497
	b label2779
label497:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label485
	b label1729
label2780:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	b label492
label1742:
	mov r5, r9
label492:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label1737
	b label1736
label2779:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label497
label466:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	beq label1605
	b label1604
label811:
	and r5, r5, r2
	ands r5, r5, #1
	beq label197
	b label2590
label197:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label16
	b label811
label1098:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label121
label839:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label70
	b label909
label2590:
	ldr r5, [sp, #64]
	ldr r5, [r5, r3, lsl #2]
	add r6, r6, r5
	b label197
label1190:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #72]
	cmp r0, #0
	ble label400
	b label1194
label2670:
	mov r0, #1
	b label205
label400:
	ldr r5, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r5, r0, lsl #2]
	cmp r4, r0
	beq label401
	b label2670
label401:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	cmp r0, #16
	bge label1191
	b label1190
label1194:
	mov r5, #1
	mov r2, r0
	mov r6, #0
	mov r3, r6
	cmp r6, #16
	bge label220
	b label1198
label220:
	cmp r6, #0
	beq label1214
	b label1213
label1214:
	mov r2, r4
	mov r4, r1
	mov r6, #0
	b label223
label207:
	cmp r0, #0
	ble label400
	b label1194
label223:
	cmp r1, #0
	beq label227
	b label1217
label227:
	movw r1, #32767
	cmp r0, r1
	ble label228
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	ldr r1, [r5, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r6
	b label207
label1243:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	bge label1262
	b label1261
label241:
	movw r4, #32767
	cmp r1, r4
	ble label242
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r6
	mov r6, r3
	b label223
label1262:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label1290
	b label1289
label266:
	cmp r7, #16
	bge label1309
label1308:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1314
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	b label273
label1309:
	mov r6, r4
	movs r7, r9
	beq label241
	b label1243
label1314:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	b label266
label273:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label1309
	b label1308
label1289:
	and r5, r7, r9
	ands r5, r5, #1
	beq label262
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	b label262
label1261:
	ands r5, r10, #1
	beq label250
	ands r5, r8, #1
	bne label252
label2685:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	b label252
label262:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label1290
	b label1289
label252:
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	bge label1262
	b label1261
label250:
	ands r5, r8, #1
	beq label252
	b label2685
label1217:
	mov r5, #1
	mov r3, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label235
label1235:
	and r5, r5, r3
	ands r5, r5, #1
	beq label311
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	b label311
label242:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	mov r6, r3
	cmp r1, #0
	beq label227
	b label1217
label235:
	cmp r8, #0
	beq label1240
	movs r7, r4
	beq label1325
	b label1324
label1240:
	mov r3, r6
	mov r6, r4
	mov r7, r4
label238:
	cmp r7, #0
	beq label241
	b label1243
label1324:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1329
	b label1328
label1325:
	mov r3, r6
	mov r6, r4
	mov r7, r4
	b label238
label1328:
	ands r5, r9, #1
	beq label286
	b label1332
label286:
	ands r5, r8, #1
	beq label284
	b label2698
label1329:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label295
label1356:
	and r5, r7, r6
	ands r5, r5, #1
	beq label306
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
label306:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label295
	b label1356
label284:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1329
	b label1328
label1332:
	ands r5, r8, #1
	bne label284
label2698:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
	b label284
label1290:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	b label266
label311:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label235
	b label1235
label295:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1364
label1363:
	and r5, r6, r8
	ands r5, r5, #1
	beq label303
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	b label303
label1364:
	mov r6, r3
	movs r7, r9
	beq label1325
	b label1324
label303:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1364
	b label1363
label1198:
	and r5, r5, r2
	ands r5, r5, #1
	beq label218
	ldr r5, [sp, #64]
	ldr r5, [r5, r3, lsl #2]
	add r6, r6, r5
label218:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r5, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label220
	b label1198
label1213:
	mov r6, #0
	movs r2, r1
	beq label1403
label1402:
	mov r5, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label322
	b label1406
label1481:
	mov r8, r7
	mov r9, r6
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1500
	b label1499
label362:
	movw r4, #32767
	cmp r2, r4
	ble label364
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r6
	mov r6, r3
	b label313
label364:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	mov r6, r3
	cmp r2, #0
	beq label1403
	b label1402
label387:
	cmp r7, #16
	bge label1547
	b label1546
label1547:
	mov r6, r4
	movs r7, r9
	beq label362
	b label1481
label1499:
	ands r5, r9, #1
	beq label375
	ands r5, r8, #1
	bne label371
label2735:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r4, r4, r5
label371:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1500
	b label1499
label375:
	ands r5, r8, #1
	beq label371
	b label2735
label1500:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1528
label1527:
	and r5, r7, r6
	ands r5, r5, #1
	beq label384
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	b label384
label1546:
	and r5, r6, r8
	ands r5, r5, #1
	beq label394
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
label394:
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	bge label1547
	b label1546
label384:
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	bge label1528
	b label1527
label1406:
	and r5, r5, r3
	ands r5, r5, #1
	beq label398
	b label2713
label322:
	cmp r8, #0
	beq label1411
	movs r7, r4
	beq label1411
label1414:
	mov r8, r7
	mov r9, r6
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1419
	b label1418
label398:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label322
	b label1406
label1418:
	ands r5, r9, #1
	beq label334
	b label1422
label1419:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	bge label1447
	b label1446
label1422:
	ands r5, r8, #1
	bne label332
label2718:
	ldr r5, [sp, #64]
	ldr r5, [r5, r10, lsl #2]
	add r3, r3, r5
label332:
	add r5, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r10, #16
	bge label1419
	b label1418
label334:
	ands r5, r8, #1
	beq label332
	b label2718
label1447:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
label348:
	cmp r7, #16
	bge label1466
label1465:
	and r5, r6, r8
	ands r5, r5, #1
	beq label1471
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r5, r9, r5
	b label355
label1466:
	mov r6, r3
	movs r7, r9
	beq label1411
	b label1414
label1471:
	mov r5, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	b label348
label355:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r5
	add r6, r6, r6, lsr #31
	asr r8, r8, #1
	asr r6, r6, #1
	cmp r7, #16
	bge label1466
	b label1465
label1446:
	and r5, r7, r9
	ands r5, r5, #1
	beq label345
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
label345:
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	bge label1447
	b label1446
label1528:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	b label387
label2713:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	b label398
label1411:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	beq label362
	b label1481
label313:
	cmp r2, #0
	beq label1403
	b label1402
label1403:
	mov r2, r6
	mov r4, r1
	mov r6, #0
	b label223
label228:
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	mov r1, r6
	cmp r0, #0
	ble label400
	b label1194
label111:
	ldr r5, [sp, #64]
	mov r4, r2
	ldr r1, [r5, #4]
	sdiv r0, r0, r1
	mov r1, r6
	cmp r0, #0
	ble label200
	b label807
