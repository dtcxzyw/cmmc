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
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 1
	sd s5, 16(sp)
	sd s7, 24(sp)
	li s7, 360287970357415681
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
	sd s8, 80(sp)
	li s8, 512
	sd s10, 88(sp)
	sd s11, 96(sp)
.p2align 2
label2:
	jal getch
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a2, s0, a1
	and a4, a2, s7
	sltiu a3, a4, 1
	slt a4, s1, a0
	or a2, a3, a5
	or a1, a2, a4
	bne a1, zero, label2
pcrel484:
	auipc a1, %pcrel_hi(input)
pcrel485:
	auipc a2, %pcrel_hi(program)
	addi s6, a1, %pcrel_lo(pcrel484)
	addi s5, a2, %pcrel_lo(pcrel485)
	beq a0, s9, label87
	mv s10, s5
	mv s11, zero
	sw a0, 0(s5)
	j label9
.p2align 2
label11:
	addi s10, s10, 4
	sw a0, 0(s10)
.p2align 2
label9:
	jal getch
	addiw a1, a0, -35
	slti a4, a1, 0
	sll a2, s0, a1
	and a5, a2, s7
	sltiu a3, a5, 1
	slt a5, s1, a0
	or a2, a3, a4
	or a1, a2, a5
	bne a1, zero, label9
	addiw s11, s11, 1
	bne a0, s9, label11
	mv s7, s11
label12:
	jal getch
	li a1, 105
	bne a0, a1, label112
	jal getint
	mv s9, a0
	jal getch
	ble s9, zero, label14
	mv s10, s6
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
label112:
	mv s9, zero
label14:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel486:
	auipc a3, %pcrel_hi(return_a)
	addi a0, a3, %pcrel_lo(pcrel486)
	mv a1, a0
.p2align 2
label16:
	sd zero, 0(a1)
	addi a2, a2, 64
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
	bge a2, s8, label181
	addi a1, a1, 256
	j label16
label87:
	mv s7, zero
	j label12
label181:
	auipc a3, %pcrel_hi(tape)
	mv s8, zero
	mv a2, zero
	mv a4, zero
	mv a5, zero
	addi a1, a3, %pcrel_lo(label181)
	mv a3, zero
	j label21
label280:
	mv t0, s0
.p2align 2
label51:
	addiw a5, a5, 1
	sh2add t2, a5, s5
	lw t1, 0(t2)
	xori t5, t1, 93
	sltiu t3, t5, 1
	xori t5, t1, 91
	subw t4, t0, t3
	sltu t3, zero, t5
	addi t2, t4, 1
	subw t0, t2, t3
	bgt t0, zero, label51
label241:
	addiw a5, a5, 1
.p2align 2
label21:
	bgt s7, a5, label34
label27:
	auipc a1, %pcrel_hi(output)
	li a0, 118
	addi s0, a1, %pcrel_lo(label27)
	jal _sysy_stoptime
	ble s8, zero, label33
	mv s1, zero
.p2align 2
label29:
	lw a0, 0(s0)
	jal putch
	addiw s1, s1, 1
	ble s8, s1, label33
	addi s0, s0, 4
	j label29
.p2align 2
label35:
	addiw a4, a4, 1
	addiw a5, a5, 1
	ble s7, a5, label27
.p2align 2
label34:
	sh2add t1, a5, s5
	lw t0, 0(t1)
	beq t0, s2, label35
	bne t0, s3, label460
	addiw a4, a4, -1
.p2align 2
label57:
	addiw a5, a5, 1
	bgt s7, a5, label34
	j label27
.p2align 2
label460:
	beq t0, s4, label38
	li t1, 45
	bne t0, t1, label468
	sh2add t0, a4, a1
	addiw a5, a5, 1
	lw t1, 0(t0)
	addi t2, t1, -1
	sw t2, 0(t0)
	bgt s7, a5, label34
	j label27
.p2align 2
label468:
	li t1, 91
	bne t0, t1, label470
	sh2add t2, a4, a1
	lw t1, 0(t2)
	beq t1, zero, label280
	sh2add t0, a3, a0
	addiw a3, a3, 1
	sw a5, 0(t0)
	addiw a5, a5, 1
	j label21
label470:
	beq t0, s1, label48
	li t1, 46
	beq t0, t1, label47
	li t1, 44
	bne t0, t1, label241
	bgt s9, a2, label245
	sh2add t0, a4, a1
	addiw a5, a5, 1
	sw zero, 0(t0)
	j label21
label33:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s7, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s9, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label48:
	sh2add t2, a4, a1
	addiw t0, a3, -1
	lw t1, 0(t2)
	beq t1, zero, label270
	sh2add t0, a3, a0
	lw a5, -4(t0)
	j label57
.p2align 2
label38:
	sh2add t0, a4, a1
	addiw a5, a5, 1
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	bgt s7, a5, label34
	j label27
label245:
	sh2add t1, a2, s6
	sh2add t2, a4, a1
	addiw a2, a2, 1
	lw t0, 0(t1)
	sw t0, 0(t2)
	j label57
label270:
	mv a3, t0
	addiw a5, a5, 1
	j label21
label47:
	sh2add t2, a4, a1
pcrel487:
	auipc t3, %pcrel_hi(output)
	addiw a5, a5, 1
	addi t1, t3, %pcrel_lo(pcrel487)
	lw t0, 0(t2)
	sh2add t2, s8, t1
	addiw s8, s8, 1
	sw t0, 0(t2)
	j label21
