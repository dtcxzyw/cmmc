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
	li s5, 45
	sd s8, 24(sp)
	li s8, 360287970357415681
	sd s1, 32(sp)
	li s1, 93
	sd s6, 40(sp)
	sd s10, 48(sp)
	li s10, 35
	sd s2, 56(sp)
	li s2, 62
	sd s3, 64(sp)
	li s3, 60
	sd s4, 72(sp)
	li s4, 43
	sd s9, 80(sp)
	li s9, 512
	sd s7, 88(sp)
	sd s11, 96(sp)
.p2align 2
label2:
	jal getch
	addiw a1, a0, -35
	sll a4, s0, a1
	and a3, a4, s8
	slti a4, a1, 0
	sltiu a2, a3, 1
	slt a3, s1, a0
	or a1, a2, a4
	or a2, a1, a3
	bne a2, zero, label2
pcrel478:
	auipc a1, %pcrel_hi(input)
pcrel479:
	auipc a2, %pcrel_hi(program)
	addi s7, a1, %pcrel_lo(pcrel478)
	addi s6, a2, %pcrel_lo(pcrel479)
	beq a0, s10, label76
	mv s11, zero
.p2align 2
label4:
	sh2add a1, s11, s6
	sw a0, 0(a1)
.p2align 2
label7:
	jal getch
	addiw a1, a0, -35
	sll a3, s0, a1
	and a4, a3, s8
	slti a3, a1, 0
	sltiu a2, a4, 1
	slt a4, s1, a0
	or a1, a2, a3
	or a2, a1, a4
	bne a2, zero, label7
	addiw s11, s11, 1
	bne a0, s10, label4
	mv s8, s11
label9:
	jal getch
	li a1, 105
	bne a0, a1, label102
	jal getint
	mv s10, a0
	jal getch
	ble s10, zero, label14
	mv s11, zero
.p2align 2
label12:
	jal getch
	sh2add a1, s11, s7
	addiw s11, s11, 1
	sw a0, 0(a1)
	bgt s10, s11, label12
	j label14
label102:
	mv s10, zero
label14:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel480:
	auipc a1, %pcrel_hi(return_a)
	addi a0, a1, %pcrel_lo(pcrel480)
.p2align 2
label16:
	sh2add a1, a2, a0
	addi a2, a2, 64
	sd zero, 0(a1)
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
	blt a2, s9, label16
pcrel481:
	auipc a3, %pcrel_hi(tape)
	mv s9, zero
	mv a2, zero
	mv a4, zero
	mv a5, zero
	addi a1, a3, %pcrel_lo(pcrel481)
	mv a3, zero
.p2align 2
label19:
	bgt s8, a5, label29
	j label25
label238:
	mv t0, s0
.p2align 2
label37:
	addiw a5, a5, 1
	sh2add t2, a5, s6
	lw t1, 0(t2)
	xori t3, t1, 93
	xori t1, t1, 91
	sltiu t2, t3, 1
	subw t0, t0, t2
	sltiu t2, t1, 1
	addw t0, t0, t2
	bgt t0, zero, label37
label255:
	addiw a5, a5, 1
	j label19
label25:
	auipc a1, %pcrel_hi(output)
	li a0, 118
	addi s0, a1, %pcrel_lo(label25)
	jal _sysy_stoptime
	ble s9, zero, label26
	mv s1, zero
	j label27
label26:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s8, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s10, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s7, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label27:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	bgt s9, s1, label27
	j label26
.p2align 2
label29:
	sh2add t1, a5, s6
	lw t0, 0(t1)
	beq t0, s2, label30
	beq t0, s3, label51
	j label455
.p2align 2
label30:
	addiw a4, a4, 1
	addiw a5, a5, 1
	bgt s8, a5, label29
	j label25
.p2align 2
label51:
	addiw a4, a4, -1
.p2align 2
label52:
	addiw a5, a5, 1
	bgt s8, a5, label29
	j label25
.p2align 2
label455:
	bne t0, s4, label457
	sh2add t0, a4, a1
	lw t2, 0(t0)
	addi t1, t2, 1
	sw t1, 0(t0)
	addiw a5, a5, 1
	bgt s8, a5, label29
	j label25
.p2align 2
label457:
	bne t0, s5, label462
	sh2add t0, a4, a1
	lw t1, 0(t0)
	addi t2, t1, -1
	sw t2, 0(t0)
	addiw a5, a5, 1
	bgt s8, a5, label29
	j label25
.p2align 2
label462:
	li t1, 91
	bne t0, t1, label463
	sh2add t0, a4, a1
	lw t1, 0(t0)
	beq t1, zero, label238
	sh2add t0, a3, a0
	addiw a3, a3, 1
	sw a5, 0(t0)
	addiw a5, a5, 1
	j label19
label463:
	bne t0, s1, label43
	sh2add t2, a4, a1
	addiw t0, a3, -1
	lw t1, 0(t2)
	beq t1, zero, label268
	sh2add t0, t0, a0
	lw a5, 0(t0)
	j label52
label43:
	li t1, 46
	bne t0, t1, label45
	sh2add t1, a4, a1
pcrel482:
	auipc t3, %pcrel_hi(output)
	lw t0, 0(t1)
	addi t2, t3, %pcrel_lo(pcrel482)
	sh2add t1, s9, t2
	addiw s9, s9, 1
	sw t0, 0(t1)
	addiw a5, a5, 1
	j label19
label45:
	li t1, 44
	bne t0, t1, label255
	bgt s10, a2, label290
	sh2add t0, a4, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	j label19
label76:
	mv s8, zero
	j label9
label268:
	mv a3, t0
	addiw a5, a5, 1
	j label19
label290:
	sh2add t1, a2, s7
	sh2add t2, a4, a1
	addiw a2, a2, 1
	lw t0, 0(t1)
	sw t0, 0(t2)
	j label52
