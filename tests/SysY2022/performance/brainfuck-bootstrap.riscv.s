.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
program:
	.zero	262144
.align 8
tape:
	.zero	262144
.align 8
input:
	.zero	262144
.align 8
output:
	.zero	262144
.align 8
return_a:
	.zero	2048
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 1
	sd s5, 16(sp)
	sd s6, 24(sp)
	li s6, 360287970357415681
	sd s1, 32(sp)
	li s1, 93
	sd s7, 40(sp)
	li s7, 35
	sd s2, 48(sp)
	li s2, 62
	sd s3, 56(sp)
	li s3, 60
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
.p2align 2
label2:
	jal getch
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a2, s0, a1
	and a4, a2, s6
	sltiu a3, a4, 1
	slt a4, s1, a0
	or a2, a3, a5
	or a1, a2, a4
	bne a1, zero, label2
pcrel478:
	auipc a2, %pcrel_hi(input)
pcrel479:
	auipc a1, %pcrel_hi(program)
	addi s5, a2, %pcrel_lo(pcrel478)
	addi s4, a1, %pcrel_lo(pcrel479)
	beq a0, s7, label87
	mv s8, s4
	mv s9, zero
	sw a0, 0(s4)
	j label66
.p2align 2
label68:
	addi s8, s8, 4
	sw a0, 0(s8)
.p2align 2
label66:
	jal getch
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a3, s0, a1
	and a4, a3, s6
	sltiu a2, a4, 1
	slt a4, s1, a0
	or a3, a2, a5
	or a1, a3, a4
	bne a1, zero, label66
	addiw s9, s9, 1
	bne a0, s7, label68
	mv s6, s9
label4:
	jal getch
	li a1, 105
	beq a0, a1, label55
	mv s7, zero
label6:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel480:
	auipc a3, %pcrel_hi(return_a)
	addi a0, a3, %pcrel_lo(pcrel480)
	mv a1, a0
.p2align 2
label8:
	sd zero, 0(a1)
	addi a2, a2, 64
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
	bge a2, a3, label12
	addi a1, a1, 256
	j label8
label12:
	auipc a3, %pcrel_hi(tape)
pcrel481:
	auipc a2, %pcrel_hi(output)
	addi a1, a3, %pcrel_lo(label12)
	addi s8, a2, %pcrel_lo(pcrel481)
	ble s6, zero, label171
	mv a2, zero
	mv t0, zero
	mv a4, zero
	mv a3, zero
	mv a5, zero
	j label13
.p2align 2
label19:
	addiw a4, a4, 1
	addiw t0, t0, 1
	ble s6, t0, label457
.p2align 2
label13:
	sh2add t2, t0, s4
	lw t1, 0(t2)
	beq t1, s2, label19
	beq t1, s3, label40
	li t2, 43
	bne t1, t2, label460
	sh2add t1, a4, a1
	addiw t0, t0, 1
	lw t2, 0(t1)
	addi t3, t2, 1
	sw t3, 0(t1)
	bgt s6, t0, label13
	j label457
.p2align 2
label40:
	addiw a4, a4, -1
.p2align 2
label41:
	addiw t0, t0, 1
	bgt s6, t0, label13
label457:
	mv s0, a2
label47:
	li a0, 118
	jal _sysy_stoptime
	ble s0, zero, label54
	mv s1, zero
	j label50
.p2align 2
label53:
	addi s8, s8, 4
.p2align 2
label50:
	lw a0, 0(s8)
	jal putch
	addiw s1, s1, 1
	bgt s0, s1, label53
label54:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s7, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label460:
	li t2, 45
	bne t1, t2, label461
	sh2add t2, a4, a1
	addiw t0, t0, 1
	lw t1, 0(t2)
	addi t3, t1, -1
	sw t3, 0(t2)
	bgt s6, t0, label13
	j label457
label461:
	li t2, 91
	bne t1, t2, label462
	sh2add t1, a4, a1
	lw t3, 0(t1)
	beq t3, zero, label244
	sh2add t1, a3, a0
	addiw a3, a3, 1
	sw t0, 0(t1)
	j label41
label462:
	beq t1, s1, label25
	li t2, 46
	bne t1, t2, label29
	sh2add t2, a4, a1
	sh2add t3, a2, s8
	lw t1, 0(t2)
	addiw a2, a2, 1
	sw t1, 0(t3)
	j label41
label244:
	mv t2, s0
	mv t1, t0
.p2align 2
label35:
	addiw t1, t1, 1
	sh2add t3, t1, s4
	lw t0, 0(t3)
	xori a6, t0, 91
	xori t4, t0, 93
	sltiu t6, t4, 1
	sltu t4, zero, a6
	subw t5, t2, t6
	addi t3, t5, 1
	subw t2, t3, t4
	bgt t2, zero, label35
	mv t0, t1
	j label41
label25:
	sh2add t3, a4, a1
	addiw t1, a3, -1
	lw t2, 0(t3)
	bne t2, zero, label207
	mv a3, t1
	j label41
label29:
	li t2, 44
	bne t1, t2, label41
	ble s7, a5, label32
	sh2add t2, a5, s5
	sh2add t3, a4, a1
	addiw a5, a5, 1
	lw t1, 0(t2)
	sw t1, 0(t3)
	j label41
label55:
	jal getint
	mv s7, a0
	jal getch
	ble s7, zero, label6
	mv s8, s5
	mv s9, zero
	j label57
.p2align 2
label60:
	addi s8, s8, 4
.p2align 2
label57:
	jal getch
	addiw s9, s9, 1
	sw a0, 0(s8)
	bgt s7, s9, label60
	j label6
label32:
	sh2add t1, a4, a1
	sw zero, 0(t1)
	j label41
label87:
	mv s6, zero
	j label4
label207:
	sh2add t1, a3, a0
	lw t0, -4(t1)
	j label41
label171:
	mv s0, zero
	j label47
