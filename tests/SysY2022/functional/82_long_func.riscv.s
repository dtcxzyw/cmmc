.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
	li a0, 4
	li a1, 8
	li a2, 64
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 48
	sd s2, 16(sp)
	li s2, 1
	sd s3, 24(sp)
	li s3, 2
	sd s0, 32(sp)
	li s0, 16
	sd s4, 40(sp)
	sw s2, 48(sp)
	sw s3, 52(sp)
	sw a0, 56(sp)
	li a0, 32
	sw a1, 60(sp)
	li a1, 128
	sw s0, 64(sp)
	sw a0, 68(sp)
	li a0, 256
	sw a2, 72(sp)
	lui a2, 2
	sw a1, 76(sp)
	li a1, 512
	sw a0, 80(sp)
	li a0, 1024
	sw a1, 84(sp)
	slli a1, a0, 1
	sw a0, 88(sp)
	lui a0, 1
	sw a1, 92(sp)
	lui a1, 4
	sw a0, 96(sp)
	lui a0, 8
	sw a2, 100(sp)
	mv a2, s3
	sw a1, 104(sp)
	mv a1, zero
	sw a0, 108(sp)
	mv a0, s2
label2:
	ble a1, zero, label191
label788:
	mv t0, s2
	mv a3, a1
	mv a5, zero
	mv a4, zero
	blt zero, s0, label11
	j label791
label2677:
	lw a4, 52(sp)
	mv a2, a3
	divw a1, a1, a4
	j label2
label974:
	mv t1, zero
	mv t2, s2
	mv t0, a2
	mv a5, zero
	blt zero, s0, label184
	j label112
label1048:
	li a4, 32767
	ble a2, a4, label2686
label152:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label974
	li a2, 32767
	bgt a1, a2, label189
	j label2677
label103:
	bne a2, zero, label974
	j label973
label2686:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	j label103
label2691:
	li a4, 32767
	bgt a2, a4, label152
	j label2686
label174:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label175
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label174
	j label1089
label175:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label174
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1049
	j label2691
label981:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1049
	j label1048
label982:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label986
	j label985
label184:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label185
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label184
	j label112
label185:
	sh2add t2, a5, s1
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label184
	bne t1, zero, label982
	j label981
label986:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label140
	j label989
label1000:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label986
label2678:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1049
	j label1048
label132:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label133
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label132
	j label1000
label133:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label132
	mv a5, a3
	mv t0, t2
	bne t2, zero, label986
	j label2678
label989:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label136
	j label126
label140:
	andi t4, t3, 1
	bne t4, zero, label141
	andi t4, t1, 1
	bne t4, zero, label145
	j label2682
label141:
	andi t4, t1, 1
	bne t4, zero, label142
label145:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label140
	j label989
label126:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label132
	j label1000
label136:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label139
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	blt a5, s0, label136
	j label126
label139:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	blt a5, s0, label136
	j label126
label142:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label140
	j label989
label1049:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label178
	j label2687
label1089:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1049
	j label2691
label2687:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label164
	j label1070
label178:
	andi t4, t3, 1
	bne t4, zero, label179
	andi t4, t1, 1
	bne t4, zero, label180
	j label2693
label179:
	andi t4, t1, 1
	bne t4, zero, label1110
label180:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label178
	j label2687
label164:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label165
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label164
	j label1070
label165:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label164
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label174
	j label1089
label1070:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label174
	j label1089
label2693:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label178
	j label2687
label1110:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label178
	j label2687
label2682:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label140
	j label989
label2653:
	mv a4, a2
	mv a3, zero
	j label103
label11:
	and t0, t0, a3
	andi t1, t0, 1
	bne t1, zero, label14
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	blt a4, s0, label11
	j label2654
label14:
	sh2add t1, a4, s1
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	blt a4, s0, label11
	bne a5, zero, label807
	j label2653
label112:
	bne t1, zero, label982
	j label981
label810:
	mv a0, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label974
label973:
	li a2, 32767
	ble a1, a2, label2677
label189:
	lw a2, 52(sp)
	lui a5, 16
	lw a4, 108(sp)
	divw a1, a1, a2
	addw a2, a1, a5
	subw a1, a2, a4
	mv a2, a3
	bgt a1, zero, label788
	j label191
label2654:
	beq a5, zero, label2653
label807:
	mv a4, a0
	mv a3, zero
	mv a0, a2
label16:
	beq a0, zero, label810
label811:
	mv t1, zero
	mv t2, s2
	mv t0, a0
	mv a5, zero
	blt zero, s0, label97
	j label25
label2657:
	lw t0, 52(sp)
	mv a4, a5
	divw a0, a0, t0
	j label16
label2663:
	li a4, 32767
	bgt a0, a4, label62
	j label2657
label57:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label58
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label57
	j label869
label58:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label57
	mv a5, a4
	mv t0, t2
	beq t2, zero, label2663
label823:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label36
	j label826
label869:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label823
	j label2663
label2658:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label52
label36:
	andi t4, t3, 1
	bne t4, zero, label37
	andi t4, t1, 1
	bne t4, zero, label38
	j label2659
label37:
	andi t4, t1, 1
	bne t4, zero, label835
label38:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label36
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label47
	j label2658
label52:
	blt t0, s0, label57
	j label869
label47:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label48
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label47
	j label850
label48:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label47
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label57
	j label869
label818:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label823
	j label822
label97:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label100
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label97
	j label2675
label100:
	sh2add t3, a5, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label97
	bne t1, zero, label819
	j label818
label850:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label57
	j label869
label826:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label47
	j label2658
label835:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label36
	j label826
label2659:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label36
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label47
	j label2658
label2675:
	bne t1, zero, label819
	j label818
label25:
	beq t1, zero, label818
label819:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label900
	mv a5, a4
	j label822
label900:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label91
	j label903
label2667:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label823
	j label822
label2668:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label900
	j label2667
label903:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label87
	j label77
label91:
	andi t4, t3, 1
	beq t4, zero, label942
	andi t4, t1, 1
	bne t4, zero, label93
label96:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label91
	j label903
label87:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label88
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label87
	j label77
label88:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label87
	j label77
label93:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label91
	j label903
label942:
	andi t4, t1, 1
	bne t4, zero, label96
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label91
	j label903
label77:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	bge zero, s0, label914
label83:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label86
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label83
	j label2668
label86:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label83
	mv a5, a3
	mv t0, t2
	bne t2, zero, label900
	j label2667
label822:
	li a4, 32767
	ble a0, a4, label2657
label62:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a0, a0, a4
	addw a4, a0, t1
	subw a0, a4, t0
	mv a4, a5
	bne a0, zero, label811
	mv a0, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label974
	j label973
label191:
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	mv a1, s2
	mv a2, s3
label192:
	ble a0, zero, label381
label1151:
	mv a5, zero
	mv t0, s2
	mv a4, a0
	mv a3, zero
	blt zero, s0, label377
	j label201
label2720:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	j label192
label294:
	lw a2, 52(sp)
	lui a5, 16
	lw a4, 108(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label1151
	j label381
label2735:
	li a2, 32767
	bgt a0, a2, label294
	j label2720
label1158:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1326
	j label1325
label1159:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	j label202
label377:
	and t1, t0, a4
	andi t0, t1, 1
	bne t0, zero, label378
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	blt a3, s0, label377
	j label201
label378:
	sh2add t1, a3, s1
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	blt a3, s0, label377
	bne a5, zero, label1159
	j label1158
label1326:
	mv t2, s2
	mv a5, a2
	mv t1, zero
	mv t0, zero
	blt zero, s0, label373
	j label2721
label1352:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label331
	j label1355
label2727:
	li a4, 32767
	bgt a2, a4, label339
	j label2725
label327:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label330
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	blt t0, s0, label327
	j label2728
label330:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	blt t0, s0, label327
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1352
	j label2727
label339:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label1326
	li a2, 32767
	bgt a0, a2, label294
	j label2720
label331:
	andi t4, t3, 1
	bne t4, zero, label336
	andi t4, t1, 1
	beq t4, zero, label1401
label335:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label331
	j label1355
label336:
	andi t4, t1, 1
	beq t4, zero, label335
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label331
	j label1355
label1401:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label331
label1355:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	bge zero, s0, label1359
label317:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label318
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label317
	j label1359
label318:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label317
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label327
	j label1378
label1347:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1352
	j label1351
label373:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label374
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	blt t0, s0, label373
	j label301
label374:
	sh2add t3, t0, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	blt t0, s0, label373
	bne t1, zero, label1348
	j label1347
label1359:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label327
	j label1378
label202:
	beq a1, zero, label1162
label1163:
	mv t2, s2
	mv a5, a1
	mv t1, zero
	mv t0, zero
	blt zero, s0, label211
	j label1166
label2707:
	lw t0, 52(sp)
	mv a4, a5
	divw a1, a1, t0
	j label202
label2715:
	li a4, 32767
	bgt a1, a4, label285
	j label2707
label2716:
	mv a5, a4
	mv t0, t2
	beq t2, zero, label2715
label1249:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label259
	j label1252
label280:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label283
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label280
	j label2716
label283:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label280
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1249
	j label2715
label2708:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label275
label259:
	andi t4, t3, 1
	bne t4, zero, label264
	andi t4, t1, 1
	beq t4, zero, label2709
label260:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label259
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label270
	j label2708
label275:
	blt t0, s0, label280
	j label1295
label270:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label273
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label270
	j label2713
label273:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label270
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label280
	j label1295
label264:
	andi t4, t1, 1
	beq t4, zero, label260
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label259
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label270
	j label2708
label211:
	and t2, t2, a5
	andi t3, t2, 1
	bne t3, zero, label212
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	blt t0, s0, label211
	j label1166
label212:
	sh2add t3, t0, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	blt t0, s0, label211
	beq t1, zero, label2698
label1182:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1186
	mv a5, a4
	j label1248
label1186:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	blt zero, s0, label243
	j label1189
label2701:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1249
	j label1248
label239:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label242
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label239
	j label2702
label242:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label239
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1186
	j label2701
label1189:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label229
	j label1193
label243:
	andi t4, t3, 1
	bne t4, zero, label248
	andi t4, t1, 1
	beq t4, zero, label245
label247:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label243
	j label1189
label229:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label230
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label229
	j label1193
label230:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label229
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label239
	j label1212
label245:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label243
	j label1189
label248:
	andi t4, t1, 1
	beq t4, zero, label247
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label243
	j label1189
label1193:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label239
	j label1212
label2709:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label259
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label270
	j label2708
label1378:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1352
	j label2727
label2725:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	bne a2, zero, label1326
	j label2735
label301:
	bne t1, zero, label1348
	j label1347
label2728:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1352
	j label2727
label2698:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1249
label1248:
	li a4, 32767
	ble a1, a4, label2707
label285:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label1163
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1326
	j label1325
label1166:
	bne t1, zero, label1182
	j label2698
label2713:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label280
label1295:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1249
	j label2715
label1212:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1186
	j label2701
label2702:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1186
	j label2701
label1348:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1429
	mv a5, a4
	j label1351
label1429:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	blt zero, s0, label367
	j label1432
label2737:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1352
	j label1351
label2738:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1429
	j label2737
label1432:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label363
	j label353
label367:
	andi t4, t3, 1
	bne t4, zero, label369
	andi t4, t1, 1
	bne t4, zero, label370
	j label1475
label369:
	andi t4, t1, 1
	bne t4, zero, label1480
label370:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label367
	j label1432
label353:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label359
	j label1443
label363:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label364
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label363
	j label353
label364:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label363
	j label353
label359:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label362
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label359
	j label2738
label362:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label359
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1429
	j label2737
label1475:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label367
	j label1432
label1480:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label367
	j label1432
label1351:
	li a4, 32767
	bgt a2, a4, label339
	j label2725
label2721:
	bne t1, zero, label1348
	j label1347
label201:
	bne a5, zero, label1159
	j label1158
label381:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	blt s3, s0, label1514
label1513:
	mv a0, zero
	j label384
label1514:
	mv a2, s3
	mv a1, s2
	mv a0, s4
	bgt s4, zero, label1893
	j label583
label384:
	bge a0, s0, label1517
	mv a3, s3
	mv a2, s2
	mv a1, a0
	j label388
label583:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	blt s4, s0, label1514
	j label1513
label388:
	ble a1, zero, label577
label1522:
	mv t1, s2
	mv a4, a1
	mv t0, zero
	mv a5, zero
	blt zero, s0, label397
	j label1525
label2749:
	lw a5, 52(sp)
	mv a3, a4
	divw a1, a1, a5
	j label388
label1545:
	mv t3, s2
	mv t0, a3
	mv t2, zero
	mv t1, zero
	blt zero, s0, label488
	j label2750
label1571:
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
	blt zero, s0, label427
	j label1574
label2758:
	li a5, 32767
	bgt a3, a5, label454
	j label2754
label444:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label447
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t1, s0, label444
	j label2759
label447:
	sh2add t4, t1, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t1, s0, label444
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1571
	j label2758
label454:
	lw a5, 52(sp)
	lui t2, 16
	lw t1, 108(sp)
	divw a3, a3, a5
	addw a5, a3, t2
	subw a3, a5, t1
	mv a5, t0
	bne a3, zero, label1545
	li a3, 32767
	bgt a1, a3, label409
	j label2749
label427:
	andi t5, t4, 1
	bne t5, zero, label429
	andi t5, t2, 1
	bne t5, zero, label432
	j label1582
label429:
	andi t5, t2, 1
	bne t5, zero, label430
label432:
	sh2add t5, t3, s1
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	blt t3, s0, label427
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label448
label2755:
	lw t0, 52(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, s0, label444
	j label1605
label448:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label451
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t0, s0, label448
	j label2755
label451:
	sh2add t4, t0, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t0, s0, label448
	j label2755
label430:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	blt t3, s0, label427
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label448
	j label2755
label1566:
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1571
	j label1570
label488:
	and t3, t3, t0
	andi t4, t3, 1
	bne t4, zero, label489
	srliw t4, t0, 31
	addiw t1, t1, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	mv t3, zero
	blt t1, s0, label488
	j label416
label489:
	sh2add t4, t1, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t0, 31
	addiw t1, t1, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	mv t3, zero
	blt t1, s0, label488
	bne t2, zero, label1567
	j label1566
label1574:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label448
	j label2755
label1582:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	blt t3, s0, label427
	j label1574
label397:
	and t2, t1, a4
	andi t1, t2, 1
	bne t1, zero, label400
	srliw t2, a4, 31
	addiw a5, a5, 1
	add t1, a4, t2
	sraiw a4, t1, 1
	mv t1, zero
	blt a5, s0, label397
	j label2746
label400:
	sh2add t2, a5, s1
	lw t1, 0(t2)
	addw t0, t0, t1
	srliw t2, a4, 31
	addiw a5, a5, 1
	add t1, a4, t2
	sraiw a4, t1, 1
	mv t1, zero
	blt a5, s0, label397
	beq t0, zero, label2745
label1541:
	mv a5, a2
	mv a4, zero
	mv a2, a3
	bne a3, zero, label1722
	mv a2, zero
	mv a5, a3
	j label404
label1722:
	mv t2, zero
	mv t3, s2
	mv t1, a2
	mv t0, zero
	blt zero, s0, label573
	j label501
label1733:
	li a5, 32767
	ble a2, a5, label2776
label538:
	lw a5, 52(sp)
	lui t2, 16
	lw t1, 108(sp)
	divw a2, a2, a5
	addw a5, a2, t2
	subw a2, a5, t1
	mv a5, t0
	bne a2, zero, label1722
	mv a2, a4
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1545
	j label1544
label492:
	bne a2, zero, label1722
	j label1721
label2776:
	lw t1, 52(sp)
	mv a5, t0
	divw a2, a2, t1
	j label492
label2783:
	li a5, 32767
	bgt a2, a5, label538
	j label2776
label533:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label534
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t1, s0, label533
	j label1780
label534:
	sh2add t5, t1, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t1, s0, label533
	mv t0, a5
	mv t1, t3
	beq t3, zero, label2783
label1734:
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	blt zero, s0, label512
	j label1737
label1780:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1734
	j label2783
label512:
	andi t5, t4, 1
	bne t5, zero, label517
	andi t5, t2, 1
	beq t5, zero, label2778
label513:
	sh2add t5, t3, s1
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label512
	j label2779
label517:
	andi t5, t2, 1
	beq t5, zero, label513
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label512
	mv t2, t0
	mv t3, zero
	mv t0, zero
	bge zero, s0, label2777
label523:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label524
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t0, s0, label523
	j label1761
label524:
	sh2add t4, t0, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t0, s0, label523
	lw t1, 52(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	blt zero, s0, label533
	j label1780
label573:
	and t4, t3, t1
	andi t3, t4, 1
	bne t3, zero, label576
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	blt t0, s0, label573
	j label2793
label576:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	blt t0, s0, label573
	bne t2, zero, label1730
	j label1729
label1761:
	lw t1, 52(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	blt zero, s0, label533
	j label1780
label2778:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label512
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label523
	j label2777
label2754:
	lw t1, 52(sp)
	mv a5, t0
	divw a3, a3, t1
	bne a3, zero, label1545
	j label2763
label416:
	bne t2, zero, label1567
	j label1566
label2777:
	lw t1, 52(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	j label528
label2779:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label523
	j label2777
label528:
	blt t1, s0, label533
	j label1780
label2759:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1571
	j label2758
label1893:
	mv t0, s2
	mv a3, a0
	mv a5, zero
	mv a4, zero
	blt zero, s0, label765
	j label2795
label1905:
	li a2, 32767
	ble a0, a2, label2798
label597:
	lw a2, 52(sp)
	lui a5, 16
	lw a4, 108(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label1893
	j label583
label579:
	bgt a0, zero, label1893
	j label583
label2798:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	j label579
label1906:
	mv t1, zero
	mv t2, s2
	mv t0, a2
	mv a5, zero
	blt zero, s0, label604
	j label2799
label2812:
	li a4, 32767
	bgt a2, a4, label678
	j label2811
label663:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label664
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label663
	j label2020
label664:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label663
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2006
	j label2812
label678:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label1906
	li a2, 32767
	bgt a0, a2, label597
	j label2798
label2006:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label671
	j label2009
label2020:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2006
	j label2812
label2009:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label667
	j label657
label671:
	andi t4, t3, 1
	bne t4, zero, label676
	andi t4, t1, 1
	beq t4, zero, label2816
label672:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label671
	j label2009
label667:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label670
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label667
	j label657
label670:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label667
	j label657
label676:
	andi t4, t1, 1
	beq t4, zero, label672
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label671
	j label2009
label657:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label663
	j label2020
label2990:
	mv a5, a4
	mv t0, a4
	j label644
label604:
	and t2, t2, t0
	andi t3, t2, 1
	bne t3, zero, label607
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label604
	j label2803
label607:
	sh2add t3, a5, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label604
	bne t1, zero, label1939
	j label2990
label644:
	bne t0, zero, label2006
label2005:
	li a4, 32767
	bgt a2, a4, label678
	j label2811
label2816:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label671
	j label2009
label765:
	and t2, t0, a3
	andi t0, t2, 1
	bne t0, zero, label768
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	blt a4, s0, label765
	j label2846
label768:
	sh2add t1, a4, s1
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	blt a4, s0, label765
	bne a5, zero, label1902
label1901:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1906
	j label1905
label1902:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	beq a2, zero, label2797
label2083:
	mv t1, zero
	mv t2, s2
	mv t0, a1
	mv a5, zero
	blt zero, s0, label761
	j label2090
label2091:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label2095
	mv a5, a4
	j label2157
label2846:
	bne a5, zero, label1902
	j label1901
label2095:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label698
	j label2098
label2829:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2095
label2828:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label2158
	j label2157
label715:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label718
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	blt t0, s0, label715
	j label2829
label718:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	blt t0, s0, label715
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2095
	j label2828
label698:
	andi t4, t3, 1
	bne t4, zero, label702
	andi t4, t1, 1
	bne t4, zero, label703
	j label2109
label702:
	andi t4, t1, 1
	bne t4, zero, label2114
label703:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label698
	mv t1, a5
	mv t2, zero
	mv a5, zero
	bge zero, s0, label2822
label719:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label722
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label719
	j label2822
label722:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label719
	j label2822
label2109:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label698
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label719
label2822:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label715
	j label2129
label761:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label764
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label761
	j label2844
label764:
	sh2add t3, a5, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label761
	bne t1, zero, label2091
	j label2090
label2158:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label755
	j label2834
label2840:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2158
	j label2839
label2833:
	lw t0, 52(sp)
	mv a4, a5
	divw a1, a1, t0
	bne a1, zero, label2083
	j label2835
label730:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label2083
	j label2836
label2839:
	li a4, 32767
	bgt a1, a4, label730
	j label2833
label751:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label754
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	blt t0, s0, label751
	j label2840
label754:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	blt t0, s0, label751
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2158
	j label2839
label755:
	andi t4, t3, 1
	bne t4, zero, label760
	andi t4, t1, 1
	beq t4, zero, label2218
label757:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label755
	j label2834
label760:
	andi t4, t1, 1
	beq t4, zero, label757
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label755
label2834:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	bge zero, s0, label2179
label741:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label744
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label741
	j label2837
label744:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label741
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label751
label2198:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2158
	j label2839
label2218:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label755
	j label2834
label2114:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label698
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label719
	j label2822
label2799:
	beq t1, zero, label2990
label1939:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1943
	mv a5, a4
	j label2005
label1943:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label617
	j label1946
label2808:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label2006
	j label2005
label638:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label641
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label638
	j label2809
label641:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label638
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1943
	j label2808
label1946:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label628
	j label2805
label617:
	andi t4, t3, 1
	bne t4, zero, label620
	andi t4, t1, 1
	beq t4, zero, label1954
label619:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label617
	j label1946
label628:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label629
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label628
	j label1970
label629:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label628
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label638
label1989:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1943
	j label2808
label2805:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label633
label620:
	andi t4, t1, 1
	beq t4, zero, label619
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label617
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label628
	j label2805
label633:
	blt t0, s0, label638
	j label1989
label1970:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label638
	j label1989
label1954:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label617
	j label1946
label592:
	bne a2, zero, label1906
	j label1905
label2811:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	j label592
label2803:
	bne t1, zero, label1939
	j label2990
label2837:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label751
	j label2198
label2809:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1943
	j label2808
label2090:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label2158
	j label2157
label2844:
	bne t1, zero, label2091
	j label2090
label2179:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label751
	j label2198
label2835:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1906
	j label1905
label2157:
	li a4, 32767
	bgt a1, a4, label730
	j label2833
label1729:
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1734
	j label1733
label1730:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1811
	j label2775
label2793:
	bne t2, zero, label1730
	j label1729
label1811:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	blt zero, s0, label567
	j label1814
label1837:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1811
label2789:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1734
	j label1733
label563:
	and t5, t0, t2
	andi t4, t5, 1
	bne t4, zero, label564
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	blt t1, s0, label563
	j label1837
label564:
	sh2add t5, t1, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	blt t1, s0, label563
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1811
	j label2789
label1814:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label553
	j label1818
label567:
	andi t5, t4, 1
	bne t5, zero, label569
	andi t5, t2, 1
	bne t5, zero, label572
	j label1857
label569:
	andi t5, t2, 1
	bne t5, zero, label570
label572:
	sh2add t6, t3, s1
	lw t5, 0(t6)
	addw a4, a4, t5
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label567
	j label1814
label553:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label556
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t0, s0, label553
	j label2787
label556:
	sh2add t5, t0, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t0, s0, label553
	lw t0, 52(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, s0, label563
	j label1837
label570:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label567
	j label1814
label1857:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label567
	j label1814
label2787:
	lw t0, 52(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, s0, label563
	j label1837
label2745:
	mv a5, a3
	mv a4, zero
label404:
	bne a3, zero, label1545
label1544:
	li a3, 32767
	ble a1, a3, label2749
label409:
	lw a3, 52(sp)
	lui t0, 16
	lw a5, 108(sp)
	divw a1, a1, a3
	addw a3, a1, t0
	subw a1, a3, a5
	mv a3, a4
	bgt a1, zero, label1522
	j label577
label2763:
	li a3, 32767
	bgt a1, a3, label409
	j label2749
label1567:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1648
	mv t0, a5
	j label1570
label1648:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	blt zero, s0, label482
	j label1651
label2766:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1571
	j label1570
label478:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label481
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t1, s0, label478
	j label2767
label481:
	sh2add t5, t1, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t1, s0, label478
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1648
	j label2766
label482:
	andi t5, t4, 1
	bne t5, zero, label487
	j label1690
label486:
	sh2add t6, t3, s1
	lw t5, 0(t6)
	addw a4, a4, t5
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	blt t3, s0, label482
	j label1651
label487:
	andi t5, t2, 1
	beq t5, zero, label486
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	blt t3, s0, label482
	j label1651
label1690:
	andi t5, t2, 1
	bne t5, zero, label486
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	blt t3, s0, label482
label1651:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	bge zero, s0, label1655
label468:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label469
	srliw t4, t2, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	blt t0, s0, label468
	j label1655
label469:
	sh2add t5, t0, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	blt t0, s0, label468
	lw t1, 52(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	blt zero, s0, label478
	j label1674
label1655:
	lw t1, 52(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	blt zero, s0, label478
label1674:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1648
	j label2766
label2767:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1648
	j label2766
label1570:
	li a5, 32767
	bgt a3, a5, label454
	j label2754
label2750:
	bne t2, zero, label1567
	j label1566
label501:
	bne t2, zero, label1730
	j label1729
label2795:
	bne a5, zero, label1902
	j label1901
label2746:
	bne t0, zero, label1541
	j label2745
label2775:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1734
	j label1733
label1818:
	lw t0, 52(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, s0, label563
	j label1837
label2836:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1906
	j label1905
label577:
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a2, a1, label1888
	addiw a0, a0, 1
	j label384
label386:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
label1888:
	mv a0, s2
	j label386
label1325:
	li a2, 32767
	bgt a0, a2, label294
	j label2720
label985:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1049
	j label1048
label1721:
	mv a2, a4
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1545
	j label1544
label1162:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1326
	j label1325
label1737:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label523
	j label2777
label2098:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label719
	j label2822
label1252:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label270
	j label2708
label2797:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	j label592
label1517:
	mv a0, zero
	j label386
label1605:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1571
	j label2758
label791:
	bne a5, zero, label807
	j label2653
label1443:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1429
	j label2737
label914:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label900
	j label2667
label2129:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2095
	j label2828
label1525:
	bne t0, zero, label1541
	j label2745
