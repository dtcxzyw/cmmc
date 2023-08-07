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
pcrel488:
	auipc a1, %pcrel_hi(input)
pcrel489:
	auipc a2, %pcrel_hi(program)
	addi s6, a1, %pcrel_lo(pcrel488)
	addi s5, a2, %pcrel_lo(pcrel489)
	beq a0, s9, label87
	mv s10, s5
	mv s11, zero
	sw a0, 0(s5)
.p2align 2
label66:
	jal getch
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a2, s0, a1
	and a4, a2, s7
	sltiu a3, a4, 1
	slt a4, s1, a0
	or a2, a3, a5
	or a1, a2, a4
	bne a1, zero, label66
	addiw s11, s11, 1
	beq a0, s9, label314
	addi s10, s10, 4
	sw a0, 0(s10)
	j label66
label4:
	jal getch
	li a1, 105
	bne a0, a1, label93
	j label55
label314:
	mv s7, s11
	j label4
label55:
	jal getint
	mv s9, a0
	jal getch
	ble s9, zero, label6
	mv s10, s6
	mv s11, zero
.p2align 2
label57:
	jal getch
	addiw s11, s11, 1
	sw a0, 0(s10)
	ble s9, s11, label6
	addi s10, s10, 4
	j label57
label93:
	mv s9, zero
label6:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel490:
	auipc a3, %pcrel_hi(return_a)
	addi a0, a3, %pcrel_lo(pcrel490)
	mv a1, a0
.p2align 2
label8:
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
	bge a2, s8, label11
	addi a1, a1, 256
	j label8
label11:
	auipc a3, %pcrel_hi(tape)
	mv s8, zero
	mv a2, zero
	mv a4, zero
	mv a5, zero
	addi a1, a3, %pcrel_lo(label11)
	mv a3, zero
	ble s7, zero, label47
.p2align 2
label18:
	sh2add t1, a5, s5
	lw t0, 0(t1)
	bne t0, s2, label175
	addiw a4, a4, 1
.p2align 2
label20:
	addiw a5, a5, 1
	bgt s7, a5, label18
label47:
	auipc a1, %pcrel_hi(output)
	li a0, 118
	addi s0, a1, %pcrel_lo(label47)
	jal _sysy_stoptime
	ble s8, zero, label53
	mv s1, zero
.p2align 2
label49:
	lw a0, 0(s0)
	jal putch
	addiw s1, s1, 1
	ble s8, s1, label53
	addi s0, s0, 4
	j label49
.p2align 2
label175:
	beq t0, s3, label27
	beq t0, s4, label46
	li t1, 45
	bne t0, t1, label470
	sh2add t0, a4, a1
	addiw a5, a5, 1
	lw t2, 0(t0)
	addi t1, t2, -1
	sw t1, 0(t0)
	bgt s7, a5, label18
	j label47
.p2align 2
label470:
	li t1, 91
	bne t0, t1, label472
	sh2add t2, a4, a1
	lw t1, 0(t2)
	beq t1, zero, label205
	sh2add t0, a3, a0
	addiw a3, a3, 1
	sw a5, 0(t0)
	j label20
label472:
	beq t0, s1, label38
	li t1, 46
	bne t0, t1, label42
	sh2add t2, a4, a1
pcrel491:
	auipc t3, %pcrel_hi(output)
	lw t0, 0(t2)
	addi t1, t3, %pcrel_lo(pcrel491)
	sh2add t2, s8, t1
	addiw s8, s8, 1
	sw t0, 0(t2)
	j label20
label205:
	mv t0, s0
.p2align 2
label33:
	addiw a5, a5, 1
	sh2add t2, a5, s5
	lw t1, 0(t2)
	xori t4, t1, 91
	xori t3, t1, 93
	sltiu t5, t3, 1
	sltiu t3, t4, 1
	subw t2, t0, t5
	addw t0, t2, t3
	bgt t0, zero, label33
	j label20
label53:
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
label38:
	sh2add t2, a4, a1
	addiw t0, a3, -1
	lw t1, 0(t2)
	beq t1, zero, label235
	sh2add t1, t0, a0
	lw a5, 0(t1)
	j label20
label42:
	li t1, 44
	beq t0, t1, label43
	j label20
.p2align 2
label27:
	addiw a4, a4, -1
	addiw a5, a5, 1
	bgt s7, a5, label18
	j label47
label43:
	ble s9, a2, label45
	sh2add t1, a2, s6
	sh2add t2, a4, a1
	addiw a2, a2, 1
	lw t0, 0(t1)
	sw t0, 0(t2)
	j label20
.p2align 2
label46:
	sh2add t0, a4, a1
	addiw a5, a5, 1
	lw t2, 0(t0)
	addi t1, t2, 1
	sw t1, 0(t0)
	bgt s7, a5, label18
	j label47
label235:
	mv a3, t0
	j label20
label45:
	sh2add t0, a4, a1
	sw zero, 0(t0)
	j label20
label87:
	mv s7, zero
	j label4
