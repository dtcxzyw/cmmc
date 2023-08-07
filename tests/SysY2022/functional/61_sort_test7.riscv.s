.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buf:
	.zero	800
.text
.p2align 2
merge_sort:
	addi sp, sp, -104
	addiw a2, a0, 1
	sd ra, 0(sp)
	sd s2, 8(sp)
	mv s2, a0
	sd s0, 16(sp)
	mv s0, a1
	sd s5, 24(sp)
	sd s9, 32(sp)
	sd s8, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s3, 64(sp)
	sd s7, 72(sp)
	sd s4, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	ble a1, a2, label207
	addw a0, a0, a1
	addiw s6, s2, 4
	addiw s7, s2, 20
	addiw s4, a1, -16
	srliw a3, a0, 31
	add a1, a0, a3
pcrel1043:
	auipc a0, %pcrel_hi(buf)
	sraiw s5, a1, 1
	addi s1, a0, %pcrel_lo(pcrel1043)
	addi s8, s5, -4
	slt s9, s2, s5
	addi s3, s1, 400
	blt a2, s5, label139
label3:
	addiw a0, s5, 1
	slt s10, s5, s0
	ble s0, a0, label4
	addw a2, s0, s5
	mv a0, s5
	srliw a1, a2, 31
	add a3, a2, a1
	sraiw s11, a3, 1
	mv a1, s11
	jal merge_sort
	mv a0, s11
	mv a1, s0
	jal merge_sort
	slt a4, s11, s0
	slt a0, s5, s11
	and a1, a0, a4
	bne a1, zero, label127
	j label457
label73:
	beq a0, zero, label460
	addiw a0, a5, 4
	bgt s11, a0, label80
	j label465
label127:
	sh2add a0, s5, s3
	mv a3, s5
	mv a2, s11
	mv a1, s5
	sh2add t0, s5, s1
	sh2add t1, s11, s1
	lw a4, 0(t0)
	lw a5, 0(t1)
	blt a4, a5, label137
	j label662
label669:
	mv a0, a5
	mv a5, a3
	j label73
.p2align 2
label136:
	addi a0, a0, 4
	sh2add t0, a3, s1
	sh2add t1, a2, s1
	lw a4, 0(t0)
	lw a5, 0(t1)
	bge a4, a5, label981
.p2align 2
label137:
	sw a4, 0(a0)
	addiw a3, a3, 1
	addiw a1, a1, 1
	slt a4, a2, s0
	slt a5, a3, s11
	and t0, a5, a4
	bne t0, zero, label136
	j label669
label4:
	and a0, s9, s10
	beq a0, zero, label236
	sh2add a0, s2, s3
	mv a3, s2
	mv a2, s5
	mv a1, s2
	sh2add t1, s2, s1
	sh2add t0, s5, s1
	lw a4, 0(t1)
	lw a5, 0(t0)
	bge a4, a5, label248
.p2align 2
label11:
	sw a4, 0(a0)
	addiw a3, a3, 1
	slt a4, a3, s5
	slt s10, a2, s0
	addiw a1, a1, 1
	and a5, a4, s10
	beq a5, zero, label17
.p2align 2
label15:
	addi a0, a0, 4
	sh2add t1, a3, s1
	sh2add t0, a2, s1
	lw a4, 0(t1)
	lw a5, 0(t0)
	blt a4, a5, label11
	sw a5, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s5
	addiw a1, a1, 1
	slt s10, a2, s0
	and a5, a4, s10
	bne a5, zero, label15
label17:
	beq a4, zero, label261
	addiw a0, a3, 4
	ble s5, a0, label59
	sh2add a0, a3, s1
.p2align 2
label61:
	lw a5, 0(a0)
	sh2add a4, a1, s3
	addiw a3, a3, 4
	addiw a1, a1, 4
	sw a5, 0(a4)
	lw t0, 4(a0)
	sw t0, 4(a4)
	lw t1, 8(a0)
	sw t1, 8(a4)
	lw a5, 12(a0)
	sw a5, 12(a4)
	ble s8, a3, label59
	addi a0, a0, 16
	j label61
label261:
	mv a3, a1
	beq s10, zero, label40
	addiw a0, a2, 4
	ble s0, a0, label269
	sh2add a1, a1, s3
	mv a4, a2
.p2align 2
label27:
	sh2add a5, a4, s1
	addiw a3, a3, 4
	lw a2, 0(a5)
	sw a2, 0(a1)
	lw a4, 4(a5)
	sw a4, 4(a1)
	lw a2, 8(a5)
	sw a2, 8(a1)
	addiw a2, a0, 4
	lw a4, 12(a5)
	sw a4, 12(a1)
	ble s0, a2, label289
	addi a1, a1, 16
	mv a4, a0
	mv a0, a2
	j label27
label207:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s9, 32(sp)
	ld s8, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s3, 64(sp)
	ld s7, 72(sp)
	ld s4, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label59:
	sh2add a0, a3, s1
label67:
	lw a4, 0(a0)
	sh2add a5, a1, s3
	addiw a3, a3, 1
	addiw a1, a1, 1
	sw a4, 0(a5)
	ble s5, a3, label261
	addi a0, a0, 4
	j label67
label460:
	mv a3, a1
	beq a4, zero, label111
	addiw a0, a2, 4
	ble s0, a0, label509
	sh2add a1, a1, s3
label104:
	sh2add a5, a2, s1
	addiw a3, a3, 4
	lw a4, 0(a5)
	sw a4, 0(a1)
	lw a2, 4(a5)
	sw a2, 4(a1)
	lw a4, 8(a5)
	sw a4, 8(a1)
	addiw a4, a0, 4
	lw a2, 12(a5)
	sw a2, 12(a1)
	ble s0, a4, label109
	addi a1, a1, 16
	mv a2, a0
	mv a0, a4
	j label104
label97:
	lw a2, 0(a1)
	sh2add a4, a3, s3
	addiw a0, a0, 1
	addiw a3, a3, 1
	sw a2, 0(a4)
	ble s0, a0, label111
	addi a1, a1, 4
	j label97
label109:
	sh2add a1, a0, s1
	j label97
label139:
	addw a1, s2, s5
	mv a0, s2
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw s10, a3, 1
	mv a1, s10
	jal merge_sort
	mv a0, s10
	mv a1, s5
	jal merge_sort
	addiw a0, s5, -16
	addi a1, s10, -4
	slt t1, s2, s10
	slt a2, s10, s5
	and a3, a2, t1
	beq a3, zero, label682
	sh2add a2, s2, s3
	mv a5, s2
	mv a4, s10
	mv a3, s2
	sh2add t2, s2, s1
	sh2add t3, s10, s1
	lw t0, 0(t2)
	lw t1, 0(t3)
	blt t0, t1, label206
	sw t1, 0(a2)
	addiw a4, s10, 1
	slt t0, s2, s10
	slt t1, a4, s5
	addiw a3, s2, 1
	and t2, t0, t1
	bne t2, zero, label205
	j label892
label140:
	beq t1, zero, label160
	addiw a5, t0, 4
	bgt s10, a5, label152
	j label690
label892:
	mv a2, t1
	mv t1, t0
	mv t0, a5
	j label140
.p2align 2
label205:
	addi a2, a2, 4
	sh2add t2, a5, s1
	sh2add t3, a4, s1
	lw t0, 0(t2)
	lw t1, 0(t3)
	bge t0, t1, label984
.p2align 2
label206:
	sw t0, 0(a2)
	addiw a5, a5, 1
	slt t1, a4, s5
	addiw a3, a3, 1
	slt t0, a5, s10
	and t2, t0, t1
	bne t2, zero, label205
	j label892
label690:
	sh2add a1, t0, s1
label147:
	lw a5, 0(a1)
	sh2add t1, a3, s3
	addiw t0, t0, 1
	addiw a3, a3, 1
	sw a5, 0(t1)
	ble s10, t0, label160
	addi a1, a1, 4
	j label147
label160:
	beq a2, zero, label177
	addiw a1, a4, 4
	ble s5, a1, label733
	sh2add a2, a3, s3
label170:
	sh2add t0, a4, s1
	addiw a3, a3, 4
	lw a5, 0(t0)
	sw a5, 0(a2)
	lw a4, 4(t0)
	sw a4, 4(a2)
	lw a5, 8(t0)
	sw a5, 8(a2)
	addiw a5, a1, 4
	lw a4, 12(t0)
	sw a4, 12(a2)
	ble s5, a5, label765
	addi a2, a2, 16
	mv a4, a1
	mv a1, a5
	j label170
label163:
	lw a4, 0(a2)
	sh2add a5, a3, s3
	addiw a1, a1, 1
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble s5, a1, label177
	addi a2, a2, 4
	j label163
label765:
	sh2add a2, a1, s1
	j label163
label111:
	ble s0, s5, label4
	addiw a1, s5, 4
	ble s0, a1, label113
	addiw a0, s5, 20
	ble s0, a0, label569
	mv a2, s5
label123:
	sh2add a3, a2, s3
	sh2add a4, a2, s1
	lw a5, 0(a3)
	sw a5, 0(a4)
	lw t0, 4(a3)
	sw t0, 4(a4)
	lw a2, 8(a3)
	sw a2, 8(a4)
	sh2add a2, a1, s3
	lw t0, 12(a3)
	sh2add a3, a1, s1
	sw t0, 12(a4)
	lw a5, 0(a2)
	sw a5, 0(a3)
	lw a4, 4(a2)
	sw a4, 4(a3)
	lw a5, 8(a2)
	sw a5, 8(a3)
	lw a4, 12(a2)
	sw a4, 12(a3)
	lw t0, 16(a2)
	sw t0, 16(a3)
	lw a5, 20(a2)
	sw a5, 20(a3)
	lw a4, 24(a2)
	sw a4, 24(a3)
	lw a5, 28(a2)
	sw a5, 28(a3)
	lw a4, 32(a2)
	sw a4, 32(a3)
	lw a5, 36(a2)
	sw a5, 36(a3)
	lw a4, 40(a2)
	sw a4, 40(a3)
	addiw a4, a0, 16
	lw a5, 44(a2)
	addiw a2, a1, 12
	sw a5, 44(a3)
	ble s0, a4, label119
	mv a1, a0
	mv a0, a4
	j label123
label177:
	bge s2, s5, label3
	ble s5, s6, label179
	ble s5, s7, label782
	sh2add a1, s6, s3
	mv a3, s2
	mv a2, s6
label182:
	sh2add a4, a3, s3
	sh2add a5, a3, s1
	lw t0, 0(a4)
	sw t0, 0(a5)
	lw t1, 4(a4)
	sw t1, 4(a5)
	lw a3, 8(a4)
	sw a3, 8(a5)
	sh2add a3, a2, s1
	lw t1, 12(a4)
	sw t1, 12(a5)
	lw t0, 0(a1)
	sw t0, 0(a3)
	lw a5, 4(a1)
	sw a5, 4(a3)
	lw a4, 8(a1)
	sw a4, 8(a3)
	lw a5, 12(a1)
	sw a5, 12(a3)
	lw a4, 16(a1)
	sw a4, 16(a3)
	lw t0, 20(a1)
	sw t0, 20(a3)
	lw a5, 24(a1)
	sw a5, 24(a3)
	lw a4, 28(a1)
	sw a4, 28(a3)
	lw a5, 32(a1)
	sw a5, 32(a3)
	lw a4, 36(a1)
	sw a4, 36(a3)
	addiw a4, a2, 16
	lw t0, 40(a1)
	sw t0, 40(a3)
	lw a5, 44(a1)
	sw a5, 44(a3)
	addiw a3, a2, 12
	ble a0, a4, label840
	addi a1, a1, 64
	mv a2, a4
	j label182
label662:
	sw a5, 0(a0)
	addiw a2, a2, 1
	slt a5, a3, s11
	slt a4, a2, s0
	addiw a1, a1, 1
	and t0, a5, a4
	bne t0, zero, label136
	j label669
.p2align 2
label981:
	sw a5, 0(a0)
	addiw a2, a2, 1
	addiw a1, a1, 1
	slt a5, a3, s11
	slt a4, a2, s0
	and t0, a5, a4
	bne t0, zero, label136
	j label669
.p2align 2
label984:
	sw t1, 0(a2)
	addiw a4, a4, 1
	slt t0, a5, s10
	addiw a3, a3, 1
	slt t1, a4, s5
	and t2, t0, t1
	bne t2, zero, label205
	j label892
label113:
	sh2add a1, s5, s3
	mv a0, s5
label114:
	lw a2, 0(a1)
	sh2add a3, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a3)
	ble s0, a0, label4
	addi a1, a1, 4
	j label114
label179:
	sh2add a1, s2, s3
	mv a0, s2
	j label191
label860:
	sh2add a1, a0, s3
label191:
	lw a2, 0(a1)
	sh2add a3, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a3)
	ble s5, a0, label3
	addi a1, a1, 4
	j label191
label248:
	sw a5, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s5
	addiw a1, a1, 1
	slt s10, a2, s0
	and a5, a4, s10
	bne a5, zero, label15
	j label17
label682:
	mv t0, s2
	mv a4, s10
	mv a3, s2
	j label140
label733:
	sh2add a2, a4, s1
	mv a1, a4
	j label163
label119:
	sh2add a3, a2, s3
	sh2add a4, a2, s1
	lw a1, 0(a3)
	sw a1, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw a1, 8(a3)
	sw a1, 8(a4)
	addiw a1, a0, 4
	lw a2, 12(a3)
	sw a2, 12(a4)
	ble s0, a1, label588
	mv a2, a0
	mv a0, a1
	j label119
label457:
	mv a5, s5
	mv a2, s11
	mv a1, s5
	j label73
label152:
	sh2add a5, t0, s1
label153:
	lw t2, 0(a5)
	sh2add t1, a3, s3
	addiw t0, t0, 4
	addiw a3, a3, 4
	sw t2, 0(t1)
	lw t4, 4(a5)
	sw t4, 4(t1)
	lw t3, 8(a5)
	sw t3, 8(t1)
	lw t2, 12(a5)
	sw t2, 12(t1)
	ble a1, t0, label690
	addi a5, a5, 16
	j label153
label465:
	sh2add a3, a5, s1
	mv a0, a5
	j label89
label86:
	sh2add a3, a0, s1
label89:
	lw a5, 0(a3)
	sh2add t0, a1, s3
	addiw a0, a0, 1
	addiw a1, a1, 1
	sw a5, 0(t0)
	ble s11, a0, label460
	addi a3, a3, 4
	j label89
label588:
	sh2add a1, a0, s3
	j label114
label782:
	mv a0, s6
	mv a1, s2
label187:
	sh2add a3, a1, s3
	sh2add a4, a1, s1
	lw a2, 0(a3)
	sw a2, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw a2, 8(a3)
	sw a2, 8(a4)
	addiw a2, a0, 4
	lw a1, 12(a3)
	sw a1, 12(a4)
	ble s5, a2, label860
	mv a1, a0
	mv a0, a2
	j label187
label40:
	bge s2, s0, label207
	ble s0, s6, label313
	ble s0, s7, label49
	sh2add a0, s6, s3
.p2align 2
label44:
	sh2add a1, s2, s3
	sh2add a2, s2, s1
	lw a3, 0(a1)
	addiw s2, s6, 12
	sw a3, 0(a2)
	lw a4, 4(a1)
	sw a4, 4(a2)
	lw a3, 8(a1)
	sw a3, 8(a2)
	lw a4, 12(a1)
	sh2add a1, s6, s1
	sw a4, 12(a2)
	lw a3, 0(a0)
	sw a3, 0(a1)
	lw a2, 4(a0)
	sw a2, 4(a1)
	lw a3, 8(a0)
	sw a3, 8(a1)
	lw a2, 12(a0)
	sw a2, 12(a1)
	lw a3, 16(a0)
	sw a3, 16(a1)
	lw a2, 20(a0)
	sw a2, 20(a1)
	lw a3, 24(a0)
	sw a3, 24(a1)
	lw a2, 28(a0)
	sw a2, 28(a1)
	lw a4, 32(a0)
	sw a4, 32(a1)
	lw a3, 36(a0)
	sw a3, 36(a1)
	lw a2, 40(a0)
	sw a2, 40(a1)
	addiw a2, s6, 16
	lw a3, 44(a0)
	sw a3, 44(a1)
	ble s4, a2, label375
	addi a0, a0, 64
	mv s6, a2
	j label44
label840:
	mv a0, a4
	mv a1, a3
	j label187
label289:
	sh2add a1, a0, s1
label34:
	lw a2, 0(a1)
	sh2add a4, a3, s3
	addiw a0, a0, 1
	addiw a3, a3, 1
	sw a2, 0(a4)
	ble s0, a0, label40
	addi a1, a1, 4
	j label34
label49:
	sh2add a1, s2, s3
	sh2add a2, s2, s1
	lw a0, 0(a1)
	sw a0, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a0, 8(a1)
	sw a0, 8(a2)
	addiw a0, s6, 4
	lw a3, 12(a1)
	sw a3, 12(a2)
	ble s0, a0, label395
	mv s2, s6
	mv s6, a0
	j label49
label569:
	mv a0, a1
	mv a2, s5
	j label119
label509:
	sh2add a1, a2, s1
	mv a0, a2
	j label97
label395:
	sh2add a0, s6, s3
label54:
	lw a1, 0(a0)
	sh2add a2, s6, s1
	addiw s6, s6, 1
	sw a1, 0(a2)
	ble s0, s6, label207
	addi a0, a0, 4
	j label54
label80:
	sh2add a3, a1, s3
label81:
	sh2add t1, a5, s1
	addiw a1, a1, 4
	lw t0, 0(t1)
	sw t0, 0(a3)
	lw a5, 4(t1)
	sw a5, 4(a3)
	lw t0, 8(t1)
	sw t0, 8(a3)
	addiw t0, a0, 4
	lw a5, 12(t1)
	sw a5, 12(a3)
	ble s11, t0, label86
	addi a3, a3, 16
	mv a5, a0
	mv a0, t0
	j label81
label269:
	sh2add a1, a2, s1
	mv a0, a2
	j label34
label313:
	sh2add a0, s2, s3
	mv s6, s2
	j label54
label236:
	mv a4, s9
	mv a3, s2
	mv a2, s5
	mv a1, s2
	j label17
label375:
	mv s6, a2
	j label49
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel1051:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel1051)
	mv a0, s0
	jal getarray
	mv t5, a0
	mv a1, a0
	mv a0, zero
	jal merge_sort
	mv a0, t5
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
