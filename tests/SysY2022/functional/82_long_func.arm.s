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
	sub sp, sp, #80
	mov r4, #1
	mov r1, #2
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
	bge label589
	b label1897
label2768:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label2
label764:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label6
	b label787
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
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label599
label1909:
	and r6, r6, r3
	ands r6, r6, #1
	beq label673
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label673:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label599
	b label1909
label599:
	cmp r8, #0
	beq label1914
	movs r7, r4
	beq label1914
label1917:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1922
label1921:
	ands r6, r10, #1
	beq label611
	ands r6, r8, #1
	bne label612
	b label2741
label624:
	cmp r7, #16
	bge label1965
label1964:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1970
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label631
label1965:
	mov r5, r3
	movs r7, r9
	beq label1914
	b label1917
label1970:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label624
label631:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1965
	b label1964
label603:
	cmp r9, #16
	bge label1922
	b label1921
label1922:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1946
	b label1945
label1946:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	b label624
label1945:
	and r6, r7, r5
	ands r6, r6, #1
	beq label621
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label621:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1946
	b label1945
label612:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1922
	b label1921
label2742:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label603
label611:
	ands r6, r8, #1
	beq label612
	b label2742
label2741:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label612
label1897:
	and r6, r6, r3
	ands r6, r6, #1
	beq label766
	b label2733
label766:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label589
	b label1897
label677:
	cmp r1, #0
	beq label762
	b label2068
label2785:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label677
label757:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label762
	b label2068
label762:
	movw r1, #32767
	cmp r0, r1
	ble label764
	b label2768
label2068:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label686
label2072:
	and r6, r6, r7
	ands r6, r6, #1
	beq label760
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label760:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label686
	b label2072
label686:
	cmp r3, #0
	beq label2077
	movs r7, r4
	beq label2077
label2080:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label2085
	b label2084
label2085:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label2109
	b label2108
label2109:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label2128
	b label2127
label2128:
	mov r5, r3
	movs r7, r9
	beq label2077
	b label2080
label2127:
	and r6, r5, r8
	ands r6, r6, #1
	beq label718
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label718:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2128
	b label2127
label2084:
	ands r6, r10, #1
	beq label700
	b label2088
label2108:
	and r6, r7, r5
	ands r6, r6, #1
	beq label708
	b label2779
label708:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label2109
	b label2108
label2088:
	ands r6, r8, #1
	bne label697
	b label2774
label700:
	ands r6, r8, #1
	beq label697
label2774:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label697:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2085
	b label2084
label2779:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label708
label2077:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label755
label2143:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label2148
	b label2147
label2148:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label735
	b label2151
label735:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label2159
	b label2158
label2159:
	mov r5, r4
	movs r7, r9
	beq label755
	b label2143
label755:
	movw r4, #32767
	cmp r1, r4
	ble label757
	b label2785
label2147:
	ands r6, r10, #1
	beq label753
	b label2186
label751:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2148
	b label2147
label2151:
	and r6, r7, r9
	ands r6, r6, #1
	beq label746
	b label2787
label746:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label735
	b label2151
label2158:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2164
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label742
label2164:
	mov r6, r9
label742:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2159
	b label2158
label2186:
	ands r6, r8, #1
	bne label751
label2794:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	b label751
label753:
	ands r6, r8, #1
	beq label751
	b label2794
label2787:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label746
label1914:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label668
label1980:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1985
	b label1984
label1985:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1989
	b label1988
label1989:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label2008
label2007:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2013
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label659
label2008:
	mov r5, r4
	movs r7, r9
	beq label668
	b label1980
label2013:
	mov r6, r9
label659:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2008
	b label2007
label668:
	movw r4, #32767
	cmp r2, r4
	ble label669
	b label2750
label1984:
	ands r6, r10, #1
	beq label667
	b label2023
label1988:
	and r6, r7, r9
	ands r6, r6, #1
	beq label649
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label649:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1989
	b label1988
label2023:
	ands r6, r8, #1
	bne label664
	b label2759
label667:
	ands r6, r8, #1
	beq label664
label2759:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label664:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1985
	b label1984
label2733:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
	b label766
label590:
	cmp r2, #0
	beq label1906
	b label1905
label1906:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label677
label2750:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label590
label669:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1906
	b label1905
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
label23:
	cmp r1, #0
	beq label108
	b label814
label2515:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label7
label818:
	and r6, r6, r7
	ands r6, r6, #1
	beq label106
	b label2516
label32:
	cmp r3, #0
	beq label823
	movs r7, r4
	beq label904
	b label903
label823:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label35:
	cmp r7, #0
	beq label68
	b label826
label2519:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label23
label68:
	movw r4, #32767
	cmp r1, r4
	ble label69
	b label2519
label69:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label108
	b label814
label904:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label35
label108:
	movw r1, #32767
	cmp r0, r1
	ble label109
	b label2515
label826:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label831
label830:
	ands r6, r10, #1
	beq label44
	b label834
label831:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label855
	b label854
label44:
	ands r6, r8, #1
	beq label46
	b label2522
label855:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label874
label873:
	and r6, r5, r8
	ands r6, r6, #1
	beq label65
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label65
label874:
	mov r5, r4
	movs r7, r9
	beq label68
	b label826
label854:
	and r6, r7, r9
	ands r6, r6, #1
	beq label55
	b label2525
label55:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label855
	b label854
label65:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label874
	b label873
label2522:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label46:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label831
	b label830
label903:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label908
	b label907
label74:
	cmp r10, #16
	bge label908
label907:
	ands r6, r9, #1
	beq label101
	b label946
label908:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label912
	b label911
label912:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label931
label930:
	and r6, r5, r8
	ands r6, r6, #1
	beq label95
	b label2538
label931:
	mov r5, r3
	movs r7, r9
	beq label904
	b label903
label946:
	ands r6, r8, #1
	bne label102
	b label2542
label2543:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label74
label101:
	ands r6, r8, #1
	beq label102
	b label2543
label95:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label931
	b label930
label911:
	and r6, r7, r9
	ands r6, r6, #1
	beq label86
	b label2536
label86:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label912
	b label911
label102:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label908
	b label907
label2525:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label55
label834:
	ands r6, r8, #1
	bne label46
	b label2522
label2538:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label95
label2536:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label86
label2542:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	b label102
label814:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label32
	b label818
label2516:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label106:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label32
	b label818
label791:
	mov r6, #1
	mov r2, r0
	mov r5, #0
	mov r3, r5
	cmp r5, #16
	bge label20
label795:
	and r6, r6, r2
	ands r6, r6, #1
	beq label18
	b label2510
label20:
	cmp r5, #0
	beq label811
	b label810
label811:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label23
label109:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label196
	b label791
label810:
	mov r5, #0
	movs r2, r1
	beq label992
label991:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label120
	b label995
label992:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label23
label120:
	cmp r8, #0
	beq label1000
	movs r7, r4
	beq label1000
label1003:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1008
	b label1007
label145:
	cmp r7, #16
	bge label1051
	b label1050
label1051:
	mov r5, r3
	movs r7, r9
	beq label1000
	b label1003
label1050:
	and r6, r5, r8
	ands r6, r6, #1
	beq label152
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label152:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1051
	b label1050
label124:
	cmp r10, #16
	bge label1008
label1007:
	ands r6, r9, #1
	beq label132
	b label1011
label1008:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1032
	b label1031
label132:
	ands r6, r8, #1
	beq label133
	b label2555
label1031:
	and r6, r7, r5
	ands r6, r6, #1
	beq label142
	b label2557
label1032:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label145
label142:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1032
	b label1031
label133:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1008
	b label1007
label1011:
	ands r6, r8, #1
	bne label133
	b label2554
label2557:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label142
label2554:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	b label133
label2555:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label124
label995:
	and r6, r6, r3
	ands r6, r6, #1
	beq label194
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label194:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label120
	b label995
label18:
	add r2, r2, r2, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r2, r2, #1
	cmp r3, #16
	bge label20
	b label795
label1000:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label189
label1066:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1071
	b label1070
label1071:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1075
label1074:
	and r6, r7, r5
	ands r6, r6, #1
	beq label170
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label170
label1075:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1094
	b label1093
label1094:
	mov r5, r4
	movs r7, r9
	beq label189
	b label1066
label189:
	movw r4, #32767
	cmp r2, r4
	ble label191
	b label2563
label1070:
	ands r6, r9, #1
	beq label187
	b label1109
label170:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1075
	b label1074
label1093:
	and r6, r5, r8
	ands r6, r6, #1
	beq label180
	b label2568
label180:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1094
	b label1093
label1109:
	ands r6, r8, #1
	bne label184
	b label1125
label187:
	ands r6, r8, #1
	beq label184
	b label1120
label1125:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1071
	b label1070
label184:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1071
	b label1070
label1120:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1071
	b label1070
label2568:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label180
label2510:
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r5, r5, r6
	b label18
label2563:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label111
label191:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label992
	b label991
label111:
	cmp r2, #0
	beq label992
	b label991
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
label201:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label1154:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	ble label398
label1533:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label404
	b label1538
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
	beq label1724
	b label1723
label1543:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label407
label1723:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label508
label1727:
	and r6, r6, r3
	ands r6, r6, #1
	beq label506
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label506
label508:
	cmp r8, #0
	beq label1743
	movs r7, r4
	beq label1743
label1746:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1751
	b label1750
label1751:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1755
label1754:
	and r6, r7, r5
	ands r6, r6, #1
	beq label523
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label523:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1755
	b label1754
label1750:
	ands r6, r9, #1
	beq label539
	ands r6, r8, #1
	bne label540
	b label2711
label539:
	ands r6, r8, #1
	beq label540
	b label2712
label540:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1751
	b label1750
label1755:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	bge label1774
label1773:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1779
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label533
label1774:
	mov r5, r3
	movs r7, r9
	beq label1743
	b label1746
label1779:
	mov r6, r9
label533:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1774
	b label1773
label2711:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	b label540
label2712:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1751
	b label1750
label506:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label508
	b label1727
label407:
	cmp r1, #0
	beq label411
	b label1546
label2671:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label407
label1546:
	mov r6, #1
	mov r3, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label423
	b label1564
label460:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label411
	b label1546
label1564:
	and r6, r6, r3
	ands r6, r6, #1
	beq label420
	b label2665
label420:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label423
	b label1564
label2665:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label420
label423:
	cmp r8, #0
	beq label1580
	b label1579
label1580:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label426
label1579:
	movs r7, r4
	beq label1661
label1660:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1665
	b label1664
label426:
	cmp r7, #0
	beq label459
	b label1583
label459:
	movw r4, #32767
	cmp r1, r4
	ble label460
	b label2671
label1661:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label426
label482:
	cmp r7, #16
	bge label1696
label1695:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1701
	b label2692
label1696:
	mov r5, r3
	movs r7, r9
	beq label1661
	b label1660
label1701:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label482
label1583:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1588
label1587:
	ands r6, r10, #1
	beq label455
	b label1626
label1588:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1592
	b label1591
label1592:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
label444:
	cmp r7, #16
	bge label1611
label1610:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1616
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label451
label1611:
	mov r5, r4
	movs r7, r9
	beq label459
	b label1583
label1616:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label444
label451:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1611
	b label1610
label1626:
	ands r6, r8, #1
	bne label457
label2679:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label429
label455:
	ands r6, r8, #1
	beq label457
	b label2679
label429:
	cmp r9, #16
	bge label1588
	b label1587
label457:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1588
	b label1587
label1591:
	and r6, r7, r9
	ands r6, r6, #1
	beq label440
	b label2673
label440:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1592
	b label1591
label465:
	cmp r9, #16
	bge label1665
label1664:
	ands r6, r10, #1
	beq label472
	b label1668
label1665:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label481
	b label1688
label2687:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label465
label1688:
	and r6, r7, r9
	ands r6, r6, #1
	beq label492
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label492
label481:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label482
label492:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label481
	b label1688
label473:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1665
	b label1664
label2673:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label440
label2692:
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
	bge label1696
	b label1695
label1668:
	ands r6, r8, #1
	bne label473
	b label2687
label472:
	ands r6, r8, #1
	beq label473
	b label2687
label1743:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label577
	b label1809
label2715:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label495
label577:
	movw r4, #32767
	cmp r2, r4
	ble label579
	b label2715
label579:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1724
	b label1723
label1809:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1814
	b label1813
label564:
	cmp r7, #16
	bge label1845
label1844:
	and r6, r5, r8
	ands r6, r6, #1
	beq label571
	b label2725
label1845:
	mov r5, r4
	movs r7, r9
	beq label577
	b label1809
label1813:
	ands r6, r9, #1
	beq label557
	b label1817
label557:
	ands r6, r8, #1
	beq label554
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1814
	b label1813
label1814:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label563
label1837:
	and r6, r7, r5
	ands r6, r6, #1
	beq label575
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label575:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label563
	b label1837
label554:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1814
	b label1813
label2725:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label571:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1845
	b label1844
label1817:
	ands r6, r8, #1
	bne label554
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label554
label563:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label564
label495:
	cmp r2, #0
	beq label1724
	b label1723
label1724:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label407
label1158:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #72]
	cmp r0, #0
	ble label207
label1162:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label218
	b label1174
label207:
	ldr r6, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r6, r0, lsl #2]
	cmp r4, r0
	beq label208
	mov r0, #1
	b label201
label208:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	cmp r0, #16
	bge label1159
	b label1158
label1174:
	and r6, r6, r3
	ands r6, r6, #1
	beq label216
	b label2587
label216:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label218
	b label1174
label218:
	cmp r2, #0
	beq label1190
	b label1189
label1190:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label221
label394:
	cmp r0, #0
	ble label398
	b label1533
label411:
	movw r1, #32767
	cmp r0, r1
	ble label412
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label394
label1189:
	mov r5, #0
	movs r2, r1
	beq label1371
label1370:
	mov r3, #0
	mov r6, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label322
	b label1374
label392:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1371
	b label1370
label1374:
	and r6, r6, r7
	ands r6, r6, #1
	beq label319
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label319
label322:
	cmp r3, #0
	beq label1390
	b label1389
label319:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label322
	b label1374
label1389:
	movs r7, r4
	beq label1390
label1393:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1398
label1397:
	ands r6, r10, #1
	beq label332
	b label1401
label1398:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label342
	b label1421
label1401:
	ands r6, r8, #1
	bne label335
	b label2634
label343:
	cmp r7, #16
	bge label1429
	b label1428
label1429:
	mov r5, r3
	movs r7, r9
	beq label1390
	b label1393
label1428:
	and r6, r5, r8
	ands r6, r6, #1
	beq label350
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label350:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1429
	b label1428
label1421:
	and r6, r7, r9
	ands r6, r6, #1
	beq label353
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label353
label342:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label343
label335:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1398
	b label1397
label353:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label342
	b label1421
label332:
	ands r6, r8, #1
	beq label335
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label335
label2634:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1398
	b label1397
label203:
	cmp r0, #0
	ble label207
	b label1162
label221:
	cmp r1, #0
	beq label225
	b label1193
label225:
	movw r1, #32767
	cmp r0, r1
	ble label226
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label203
label1193:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label233
label1211:
	and r6, r6, r7
	ands r6, r6, #1
	beq label306
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label306:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label233
	b label1211
label233:
	cmp r3, #0
	beq label1216
	movs r7, r4
	beq label1216
label1219:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1224
	b label1223
label1224:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label247
	b label1227
label248:
	cmp r7, #16
	bge label1235
label1234:
	and r6, r5, r8
	ands r6, r6, #1
	beq label255
	b label2599
label1235:
	mov r5, r3
	movs r7, r9
	beq label1216
	b label1219
label1227:
	and r6, r7, r9
	ands r6, r6, #1
	beq label258
	b label2598
label1223:
	ands r6, r10, #1
	beq label265
	ands r6, r8, #1
	bne label262
label2604:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label262:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1224
	b label1223
label258:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label247
	b label1227
label2599:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label255:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1235
	b label1234
label2598:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label258
label265:
	ands r6, r8, #1
	beq label262
	b label2604
label247:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label248
label1216:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label302
	b label1282
label302:
	movw r4, #32767
	cmp r1, r4
	ble label304
	b label2611
label1282:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1287
	b label1286
label1287:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1291
	b label1290
label287:
	cmp r7, #16
	bge label1310
label1309:
	and r6, r5, r8
	ands r6, r6, #1
	beq label294
	b label2615
label1310:
	mov r5, r4
	movs r7, r9
	beq label302
	b label1282
label294:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1310
	b label1309
label1290:
	and r6, r7, r9
	ands r6, r6, #1
	beq label284
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label284:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1291
	b label1290
label1286:
	ands r6, r10, #1
	beq label297
	ands r6, r8, #1
	bne label299
	b label2618
label299:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1287
	b label1286
label2615:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label294
label297:
	ands r6, r8, #1
	beq label299
label2618:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	b label299
label1291:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label287
label2611:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label221
label304:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label225
	b label1193
label1390:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label391
	b label1456
label391:
	movw r4, #32767
	cmp r2, r4
	ble label392
	b label2643
label1456:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1461
label1460:
	ands r6, r9, #1
	beq label368
	b label1464
label1461:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label377
	b label1484
label1464:
	ands r6, r8, #1
	bne label370
label2646:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label361
label368:
	ands r6, r8, #1
	beq label370
	b label2646
label377:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	bge label1492
	b label1491
label1492:
	mov r5, r4
	movs r7, r9
	beq label391
	b label1456
label1484:
	and r6, r7, r5
	ands r6, r6, #1
	beq label388
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label388
label370:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1461
	b label1460
label361:
	cmp r10, #16
	bge label1461
	b label1460
label1491:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1497
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label384
label1497:
	mov r6, r9
label384:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1492
	b label1491
label388:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label377
	b label1484
label2587:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
	b label216
label412:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label398
	b label1533
label309:
	cmp r2, #0
	beq label1371
	b label1370
label1371:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label221
label2643:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label309
label226:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label207
	b label1162
