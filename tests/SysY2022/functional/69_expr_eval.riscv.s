.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
oprs:
	.zero	1024
.align 8
ops:
	.zero	1024
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s8, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s3, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s8, a0
	jal getch
	li s7, 252
	li s6, 45
	li s3, 10
	li s5, 43
pcrel995:
	auipc s2, %pcrel_hi(ops)
pcrel996:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel995)
	addi s1, s0, %pcrel_lo(pcrel996)
.p2align 2
label2:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	bne a3, zero, label2
	addiw s9, a0, -48
	bltu s9, s3, label123
	jal getch
	li s11, 1
	mv s10, zero
label4:
	beq s8, zero, label8
	mv s9, a0
	mv a1, s1
	mv a0, zero
.p2align 2
label14:
	sd zero, 0(a1)
	addi a2, a0, 64
	li a3, 192
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	bge a2, a3, label18
	addi a1, a1, 256
	mv a0, a2
	j label14
label664:
	mv s10, s9
	mv s11, zero
	j label4
.p2align 2
label18:
	sh2add a1, a2, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	sw zero, 64(a1)
	sw zero, 68(a1)
	sw zero, 72(a1)
	sw zero, 76(a1)
	sw zero, 80(a1)
	sw zero, 84(a1)
	sw zero, 88(a1)
	sw zero, 92(a1)
	sw zero, 96(a1)
	sw zero, 100(a1)
	sw zero, 104(a1)
	sw zero, 108(a1)
	sw zero, 112(a1)
	sw zero, 116(a1)
	sw zero, 120(a1)
	sw zero, 124(a1)
	sw zero, 128(a1)
	sw zero, 132(a1)
	sw zero, 136(a1)
	sw zero, 140(a1)
	sw zero, 144(a1)
	sw zero, 148(a1)
	sw zero, 152(a1)
	sw zero, 156(a1)
	sw zero, 160(a1)
	sw zero, 164(a1)
	sw zero, 168(a1)
	sw zero, 172(a1)
	sw zero, 176(a1)
	sw zero, 180(a1)
	sw zero, 184(a1)
	sw zero, 188(a1)
	addi a1, a0, 112
	sh2add a0, a1, s1
.p2align 2
label19:
	sw zero, 0(a0)
	addi a1, a1, 4
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bge a1, s7, label274
	addi a0, a0, 16
	j label19
.p2align 2
label274:
	sh2add a0, a1, s1
	li a2, 256
	addi a1, a1, 1
	sw zero, 0(a0)
	blt a1, a2, label27
	j label954
.p2align 2
label24:
	sw zero, 0(a0)
	addi a1, a1, 1
	li a2, 256
	bge a1, a2, label954
.p2align 2
label27:
	addi a0, a0, 4
	j label24
.p2align 2
label954:
	mv a1, s4
	mv a0, zero
.p2align 2
label29:
	sd zero, 0(a1)
	addi a2, a0, 64
	li a3, 192
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	bge a2, a3, label32
	addi a1, a1, 256
	mv a0, a2
	j label29
.p2align 2
label32:
	sh2add a1, a2, s4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	sw zero, 64(a1)
	sw zero, 68(a1)
	sw zero, 72(a1)
	sw zero, 76(a1)
	sw zero, 80(a1)
	sw zero, 84(a1)
	sw zero, 88(a1)
	sw zero, 92(a1)
	sw zero, 96(a1)
	sw zero, 100(a1)
	sw zero, 104(a1)
	sw zero, 108(a1)
	sw zero, 112(a1)
	sw zero, 116(a1)
	sw zero, 120(a1)
	sw zero, 124(a1)
	sw zero, 128(a1)
	sw zero, 132(a1)
	sw zero, 136(a1)
	sw zero, 140(a1)
	sw zero, 144(a1)
	sw zero, 148(a1)
	sw zero, 152(a1)
	sw zero, 156(a1)
	sw zero, 160(a1)
	sw zero, 164(a1)
	sw zero, 168(a1)
	sw zero, 172(a1)
	sw zero, 176(a1)
	sw zero, 180(a1)
	sw zero, 184(a1)
	sw zero, 188(a1)
	addi a1, a0, 112
	sh2add a0, a1, s4
.p2align 2
label33:
	sw zero, 0(a0)
	addi a1, a1, 4
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bge a1, s7, label36
	addi a0, a0, 16
	j label33
.p2align 2
label36:
	sh2add a0, a1, s4
.p2align 2
label37:
	sw zero, 0(a0)
	addi a1, a1, 1
	li a2, 256
	bge a1, a2, label418
	addi a0, a0, 4
	j label37
.p2align 2
label418:
	bne s11, zero, label116
.p2align 2
label42:
	auipc s0, %pcrel_hi(oprs)
	lw a1, %pcrel_lo(label42)(s0)
	addiw a0, a1, 1
	xori a1, s9, 32
	sh2add a2, a0, s1
	sw a0, %pcrel_lo(label42)(s0)
	sltiu a0, a1, 1
	sw s10, 0(a2)
	xori a2, s9, 10
	sltiu a3, a2, 1
	or a1, a0, a3
	bne a1, zero, label110
	j label45
.p2align 2
label50:
	jal getch
	xori a3, s9, 45
	xori a4, s9, 43
	sltiu a2, a3, 1
	sltiu a1, a4, 1
	or a4, a1, a2
	bne a4, zero, label454
	j label453
.p2align 2
label110:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label110
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label439
	j label50
label45:
	addiw a0, s9, -48
	bgeu a0, s3, label50
.p2align 2
label439:
	mv s10, a0
.p2align 2
label47:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label444
	sh2add a0, s10, s10
	sh1add s10, a0, a1
	j label47
.p2align 2
label444:
	xori a4, a0, 32
	xori a3, a0, 10
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a4, a1, a2
	bne a4, zero, label109
	j label85
.p2align 2
label87:
	jal getch
pcrel997:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel997)(s2)
	li a2, 1
	mv a1, s10
	bne a4, zero, label96
	j label944
.p2align 2
label88:
	jal getch
	addiw a2, a0, -48
	bgeu a2, s3, label579
	sh2add a0, s9, s9
	sh1add s9, a0, a2
	j label88
.p2align 2
label109:
	jal getch
	xori a4, a0, 10
	xori a2, a0, 32
	sltiu a3, a4, 1
	sltiu a1, a2, 1
	or a2, a1, a3
	bne a2, zero, label109
	addiw s9, a0, -48
	bltu s9, s3, label88
	j label87
.p2align 2
label944:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label944)(s0)
	mv s9, a0
	mv s10, a1
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label111
.p2align 2
label96:
	sh2add a5, a4, s4
	addiw t0, a4, -1
	lw a3, 0(a5)
pcrel998:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel998)(s2)
pcrel999:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel999)(s0)
	addi t3, a5, -2
	addi t2, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t2, %pcrel_lo(pcrel999)(s0)
	lw t0, -4(t1)
	sw t3, %pcrel_lo(pcrel999)(s0)
	beq a3, s5, label108
	beq a3, s6, label99
	j label610
.p2align 2
label108:
	addw a3, a4, t0
pcrel1000:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1000)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1000)(s0)
	sw a3, 0(t0)
pcrel1001:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1001)(s2)
	bne a4, zero, label96
	j label944
.p2align 2
label610:
	li a5, 42
	beq a3, a5, label105
	li a5, 47
	beq a3, a5, label104
	li a5, 37
	bne a3, a5, label962
	remw a3, t0, a4
pcrel1002:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1002)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1002)(s0)
	sw a3, 0(t0)
pcrel1003:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1003)(s2)
	bne a4, zero, label96
	j label944
.p2align 2
label105:
	mulw a3, a4, t0
pcrel1004:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1004)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1004)(s0)
	sw a3, 0(t0)
pcrel1005:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1005)(s2)
	bne a4, zero, label96
	j label944
.p2align 2
label9:
	mv a1, s1
	mv a0, zero
	j label14
label956:
	mv s9, a0
	mv s11, a1
	j label116
label495:
	mv s9, a0
	j label42
label67:
	addw a3, a3, t0
.p2align 2
label68:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(label68)(s0)
	addiw a2, a4, 1
	sh2add a5, a2, s1
	sw a2, %pcrel_lo(label68)(s0)
	sw a3, 0(a5)
pcrel1006:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel1006)(s2)
	bne a3, zero, label65
	addiw a2, a3, 1
	sh2add a4, a2, s4
	sw a2, %pcrel_lo(pcrel1006)(s2)
	sw s9, 0(a4)
	beq a1, zero, label495
	j label956
.p2align 2
label111:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	bne s8, zero, label9
	j label8
.p2align 2
label116:
	li a0, 112
	jal putch
	li a0, 97
	jal putch
	li a0, 110
	jal putch
	li a0, 105
	jal putch
	li a0, 99
	jal putch
	li a0, 33
	jal putch
	mv a0, s3
	jal putch
	li a0, -1
	j label111
.p2align 2
label123:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label664
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label123
.p2align 2
label99:
	subw a3, t0, a4
pcrel1007:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1007)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1007)(s0)
	sw a3, 0(t0)
pcrel1008:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1008)(s2)
	bne a4, zero, label96
	j label944
.p2align 2
label454:
	mv s11, s3
	beq s3, zero, label82
	xori a4, a0, 32
	xori a2, a0, 10
	sltiu a1, a4, 1
	sltiu a3, a2, 1
	or a4, a1, a3
	bne a4, zero, label81
	j label55
label80:
	jal getch
pcrel1009:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel1009)(s2)
	li a1, 1
	bne a3, zero, label65
	j label942
.p2align 2
label81:
	jal getch
	xori a2, a0, 10
	xori a4, a0, 32
	sltiu a3, a2, 1
	sltiu a1, a4, 1
	or a4, a1, a3
	bne a4, zero, label81
	addiw a1, a0, -48
	bltu a1, s3, label475
	j label80
label55:
	addiw a1, a0, -48
	bgeu a1, s3, label80
label475:
	mv s10, a1
.p2align 2
label57:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label480
	sh2add a0, s10, s10
	sh1add s10, a0, a1
	j label57
.p2align 2
label453:
	xori a2, s9, 42
	xori a3, s9, 47
	xori a4, s9, 37
	li s11, 20
	sltiu a1, a2, 1
	sltiu a5, a3, 1
	sltiu a3, a4, 1
	or a2, a1, a5
	or a1, a2, a3
	beq a1, zero, label936
	bne s11, zero, label54
.p2align 2
label82:
	xori a4, a0, 32
	xori a3, a0, 10
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a4, a1, a2
	bne a4, zero, label109
	j label85
.p2align 2
label65:
	sh2add a5, a3, s4
	lw a2, 0(a5)
	xori t0, a2, 45
	xori t1, a2, 43
	sltiu a5, t0, 1
	sltiu a4, t1, 1
	or t1, a4, a5
	bne t1, zero, label78
	xori a5, a2, 42
	xori t1, a2, 47
	xori t2, a2, 37
	sltiu a4, a5, 1
	sltiu t0, t1, 1
	sltiu t3, t2, 1
	or a5, a4, t0
	slti t0, s11, 1
	or a4, a5, t3
	or t1, a4, t0
	beq t1, zero, label64
.p2align 2
label66:
	addiw t0, a3, -1
pcrel1010:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel1010)(s2)
pcrel1011:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel1011)(s0)
	addi t2, a4, -2
	addi t1, a4, -1
	sh2add a5, a4, s1
	lw a3, 0(a5)
	sw t1, %pcrel_lo(pcrel1011)(s0)
	lw t0, -4(a5)
	sw t2, %pcrel_lo(pcrel1011)(s0)
	beq a2, s5, label67
	j label515
label78:
	li a4, 11
	blt s11, a4, label66
	j label64
label54:
	xori a4, a0, 32
	xori a2, a0, 10
	sltiu a1, a4, 1
	sltiu a3, a2, 1
	or a4, a1, a3
	bne a4, zero, label81
	j label55
.p2align 2
label104:
	divw a3, t0, a4
pcrel1012:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1012)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1012)(s0)
	sw a3, 0(t0)
pcrel1013:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1013)(s2)
	bne a4, zero, label96
	j label944
label480:
	mv a1, zero
pcrel1014:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel1014)(s2)
	bne a3, zero, label65
	addiw a2, a3, 1
	sh2add a4, a2, s4
	sw a2, %pcrel_lo(pcrel1014)(s2)
	sw s9, 0(a4)
	j label495
label515:
	beq a2, s6, label77
	li a5, 42
	bne a2, a5, label73
	mulw a3, a3, t0
	j label68
label8:
	mv a0, zero
	ld ra, 0(sp)
	ld s8, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label962:
	mv a3, zero
pcrel1015:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel1015)(s0)
	addiw a4, a5, 1
	sh2add t0, a4, s1
	sw a4, %pcrel_lo(pcrel1015)(s0)
	sw zero, 0(t0)
pcrel1016:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1016)(s2)
	bne a4, zero, label96
	j label944
label942:
	addiw a2, a3, 1
	sh2add a4, a2, s4
pcrel1017:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel1017)(s2)
	sw s9, 0(a4)
	beq a1, zero, label495
	j label956
label64:
	addiw a2, a3, 1
	sh2add a4, a2, s4
pcrel1018:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel1018)(s2)
	sw s9, 0(a4)
	beq a1, zero, label495
	j label956
label77:
	subw a3, t0, a3
pcrel1019:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel1019)(s0)
	addiw a2, a4, 1
	sh2add a5, a2, s1
	sw a2, %pcrel_lo(pcrel1019)(s0)
	sw a3, 0(a5)
pcrel1020:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel1020)(s2)
	bne a3, zero, label65
	j label64
label73:
	li a5, 47
	beq a2, a5, label76
	li a5, 37
	bne a2, a5, label536
	remw a3, t0, a3
	j label68
label85:
	addiw s9, a0, -48
	bltu s9, s3, label88
	j label87
.p2align 2
label579:
	mv a1, s9
	mv a2, zero
pcrel1021:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel1021)(s2)
	bne a4, zero, label96
	j label944
.p2align 2
label936:
	mv s11, zero
	xori a4, a0, 32
	xori a3, a0, 10
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a4, a1, a2
	bne a4, zero, label109
	j label85
label76:
	divw a3, t0, a3
	j label68
label536:
	mv a3, zero
	j label68
