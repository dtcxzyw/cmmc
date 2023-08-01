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
pcrel413:
	auipc a1, %pcrel_hi(input)
pcrel414:
	auipc a2, %pcrel_hi(program)
	addi s7, a1, %pcrel_lo(pcrel413)
	addi s6, a2, %pcrel_lo(pcrel414)
	beq a0, s10, label76
	mv s11, zero
	mv a1, s6
	sw a0, 0(s6)
	j label56
label4:
	jal getch
	li a1, 105
	bne a0, a1, label82
	j label50
.p2align 2
label53:
	sh2add a1, s11, s6
	sw a0, 0(a1)
.p2align 2
label56:
	jal getch
	addiw a1, a0, -35
	sll a4, s0, a1
	and a3, a4, s8
	slti a4, a1, 0
	sltiu a2, a3, 1
	or a1, a2, a4
	slt a2, s1, a0
	or a3, a1, a2
	bne a3, zero, label56
	addiw s11, s11, 1
	bne a0, s10, label53
	mv s8, s11
	j label4
label82:
	mv s10, zero
label6:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel415:
	auipc a1, %pcrel_hi(return_a)
	addi a0, a1, %pcrel_lo(pcrel415)
.p2align 2
label8:
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
	blt a2, s9, label8
pcrel416:
	auipc a3, %pcrel_hi(tape)
	mv s9, zero
	mv a2, zero
	addi a1, a3, %pcrel_lo(pcrel416)
	mv a3, zero
	mv a4, zero
	mv a5, zero
.p2align 2
label11:
	bgt s8, a5, label21
	j label17
label204:
	mv t0, s0
.p2align 2
label29:
	addiw a5, a5, 1
	sh2add t2, a5, s6
	lw t1, 0(t2)
	xori t3, t1, 93
	xori t1, t1, 91
	sltiu t2, t3, 1
	subw t0, t0, t2
	sltiu t2, t1, 1
	addw t0, t0, t2
	bgt t0, zero, label29
label221:
	addiw a5, a5, 1
	j label11
label17:
	auipc a1, %pcrel_hi(output)
	li a0, 118
	addi s0, a1, %pcrel_lo(label17)
	jal _sysy_stoptime
	ble s9, zero, label18
	mv s1, zero
	j label19
label18:
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
label19:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	bgt s9, s1, label19
	j label18
.p2align 2
label21:
	sh2add t1, a5, s6
	lw t0, 0(t1)
	beq t0, s2, label49
	j label22
.p2align 2
label23:
	addiw a4, a4, -1
	addiw a5, a5, 1
	bgt s8, a5, label21
	j label17
.p2align 2
label49:
	addiw a4, a4, 1
	addiw a5, a5, 1
	bgt s8, a5, label21
	j label17
.p2align 2
label22:
	beq t0, s3, label23
	bne t0, s4, label391
	sh2add t0, a4, a1
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
.p2align 2
label43:
	addiw a5, a5, 1
	bgt s8, a5, label21
	j label17
.p2align 2
label391:
	bne t0, s5, label394
	sh2add t0, a4, a1
	lw t2, 0(t0)
	addi t1, t2, -1
	sw t1, 0(t0)
	addiw a5, a5, 1
	bgt s8, a5, label21
	j label17
.p2align 2
label394:
	li t1, 91
	beq t0, t1, label27
	bne t0, s1, label35
	sh2add t2, a4, a1
	addiw t0, a3, -1
	lw t1, 0(t2)
	beq t1, zero, label234
	sh2add t0, t0, a0
	lw a5, 0(t0)
	j label43
label35:
	li t1, 46
	bne t0, t1, label37
	sh2add t1, a4, a1
pcrel417:
	auipc t3, %pcrel_hi(output)
	lw t0, 0(t1)
	addi t1, t3, %pcrel_lo(pcrel417)
	sh2add t2, s9, t1
	addiw s9, s9, 1
	sw t0, 0(t2)
	addiw a5, a5, 1
	j label11
label27:
	sh2add t0, a4, a1
	lw t1, 0(t0)
	beq t1, zero, label204
	sh2add t0, a3, a0
	addiw a3, a3, 1
	sw a5, 0(t0)
	addiw a5, a5, 1
	j label11
label37:
	li t1, 44
	beq t0, t1, label38
	j label221
label50:
	jal getint
	mv s10, a0
	jal getch
	ble s10, zero, label6
	mv s11, zero
.p2align 2
label51:
	jal getch
	sh2add a1, s11, s7
	addiw s11, s11, 1
	sw a0, 0(a1)
	bgt s10, s11, label51
	j label6
label38:
	bgt s10, a2, label39
	sh2add t0, a4, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	j label11
label39:
	sh2add t2, a2, s7
	sh2add t1, a4, a1
	addiw a2, a2, 1
	lw t0, 0(t2)
	sw t0, 0(t1)
	addiw a5, a5, 1
	j label11
label234:
	mv a3, t0
	addiw a5, a5, 1
	j label11
label76:
	mv s8, zero
	j label4
