.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
program:
	.zero	262144
.p2align 3
tape:
	.zero	262144
.p2align 3
input:
	.zero	262144
.p2align 3
output:
	.zero	262144
.p2align 3
return_a:
	.zero	2048
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 1
	sd s5, 16(sp)
	li s5, 45
	sd s8, 24(sp)
	li s8, 360287970357415681
	sd s1, 32(sp)
	li s1, 93
	sd s6, 40(sp)
	sd s9, 48(sp)
	li s9, 35
	sd s2, 56(sp)
	li s2, 62
	sd s3, 64(sp)
	li s3, 60
	sd s4, 72(sp)
	li s4, 43
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
.p2align 2
label2:
	jal getch
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a3, s0, a1
	and a4, a3, s8
	sltiu a2, a4, 1
	slt a4, s1, a0
	or a3, a2, a5
	or a1, a3, a4
	bne a1, zero, label2
pcrel483:
	auipc a2, %pcrel_hi(input)
pcrel484:
	auipc a1, %pcrel_hi(program)
	addi s7, a2, %pcrel_lo(pcrel483)
	addi s6, a1, %pcrel_lo(pcrel484)
	beq a0, s9, label87
	mv s10, s6
	mv s11, zero
	sw a0, 0(s6)
.p2align 2
label9:
	jal getch
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a3, s0, a1
	and a4, a3, s8
	sltiu a2, a4, 1
	slt a4, s1, a0
	or a3, a2, a5
	or a1, a3, a4
	bne a1, zero, label9
	addiw s11, s11, 1
	beq a0, s9, label105
	addi s10, s10, 4
	sw a0, 0(s10)
	j label9
label105:
	mv s8, s11
label12:
	jal getch
	li a1, 105
	beq a0, a1, label63
	mv s9, zero
label14:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel485:
	auipc a3, %pcrel_hi(return_a)
	addi a0, a3, %pcrel_lo(pcrel485)
	mv a1, a0
.p2align 2
label16:
	sd zero, 0(a1)
	addiw a2, a2, 64
	li a3, 512
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
	bge a2, a3, label20
	addi a1, a1, 256
	j label16
label20:
	auipc a3, %pcrel_hi(tape)
pcrel486:
	auipc a2, %pcrel_hi(output)
	addi a1, a3, %pcrel_lo(label20)
	addi s10, a2, %pcrel_lo(pcrel486)
	ble s8, zero, label190
	mv a2, zero
	mv t0, zero
	mv a4, zero
	mv a3, zero
	mv a5, zero
	j label21
.p2align 2
label27:
	addiw a4, a4, 1
	addiw t0, t0, 1
	ble s8, t0, label461
.p2align 2
label21:
	sh2add t2, t0, s6
	lw t1, 0(t2)
	beq t1, s2, label27
	beq t1, s3, label48
	beq t1, s4, label47
	beq t1, s5, label31
	li t2, 91
	beq t1, t2, label42
	bne t1, s1, label36
	sh2add t3, a4, a1
	addiw t1, a3, -1
	lw t2, 0(t3)
	bne t2, zero, label230
	mv a3, t1
	j label49
.p2align 2
label48:
	addiw a4, a4, -1
.p2align 2
label49:
	addiw t0, t0, 1
	bgt s8, t0, label21
label461:
	mv s0, a2
label55:
	li a0, 118
	jal _sysy_stoptime
	ble s0, zero, label62
	mv s1, zero
	j label58
.p2align 2
label61:
	addi s10, s10, 4
.p2align 2
label58:
	lw a0, 0(s10)
	jal putch
	addiw s1, s1, 1
	bgt s0, s1, label61
label62:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s8, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s9, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label42:
	sh2add t1, a4, a1
	lw t3, 0(t1)
	beq t3, zero, label267
	sh2add t1, a3, a0
	addiw a3, a3, 1
	sw t0, 0(t1)
	j label49
label36:
	li t2, 46
	bne t1, t2, label38
	sh2add t2, a4, a1
	sh2add t3, a2, s10
	lw t1, 0(t2)
	addiw a2, a2, 1
	sw t1, 0(t3)
	j label49
label267:
	mv t2, s0
	mv t1, t0
.p2align 2
label44:
	addiw t1, t1, 1
	sh2add t3, t1, s6
	lw t0, 0(t3)
	xori t5, t0, 93
	sltiu t4, t5, 1
	xori t5, t0, 91
	subw t6, t2, t4
	sltu t4, zero, t5
	addi t3, t6, 1
	subw t2, t3, t4
	bgt t2, zero, label44
	mv t0, t1
	j label49
label38:
	li t2, 44
	beq t1, t2, label39
	j label49
label63:
	jal getint
	mv s9, a0
	jal getch
	ble s9, zero, label14
	mv s10, s7
	mv s11, zero
	j label65
.p2align 2
label68:
	addi s10, s10, 4
.p2align 2
label65:
	jal getch
	addiw s11, s11, 1
	sw a0, 0(s10)
	bgt s9, s11, label68
	j label14
label39:
	bgt s9, a5, label40
	sh2add t1, a4, a1
	sw zero, 0(t1)
	j label49
label40:
	sh2add t2, a5, s7
	sh2add t3, a4, a1
	addiw a5, a5, 1
	lw t1, 0(t2)
	sw t1, 0(t3)
	j label49
.p2align 2
label47:
	sh2add t2, a4, a1
	addiw t0, t0, 1
	lw t1, 0(t2)
	addi t3, t1, 1
	sw t3, 0(t2)
	bgt s8, t0, label21
	j label461
label31:
	sh2add t1, a4, a1
	addiw t0, t0, 1
	lw t3, 0(t1)
	addi t2, t3, -1
	sw t2, 0(t1)
	bgt s8, t0, label21
	j label461
label190:
	mv s0, zero
	j label55
label230:
	sh2add t1, a3, a0
	lw t0, -4(t1)
	j label49
label87:
	mv s8, zero
	j label12
