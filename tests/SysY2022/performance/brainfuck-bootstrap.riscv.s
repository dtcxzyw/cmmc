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
	sll a3, s0, a1
	and a4, a3, s6
	sltiu a2, a4, 1
	slt a4, s1, a0
	or a3, a2, a5
	or a1, a3, a4
	bne a1, zero, label2
pcrel481:
	auipc a1, %pcrel_hi(input)
pcrel482:
	auipc a2, %pcrel_hi(program)
	addi s5, a1, %pcrel_lo(pcrel481)
	addi s4, a2, %pcrel_lo(pcrel482)
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
	bne a0, a1, label93
	jal getint
	mv s7, a0
	jal getch
	ble s7, zero, label12
	mv s8, s5
	mv s9, zero
.p2align 2
label8:
	jal getch
	addiw s9, s9, 1
	sw a0, 0(s8)
	ble s7, s9, label12
	addi s8, s8, 4
	j label8
label93:
	mv s7, zero
label12:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel483:
	auipc a3, %pcrel_hi(return_a)
	addi a0, a3, %pcrel_lo(pcrel483)
	mv a1, a0
.p2align 2
label14:
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
	bge a2, a3, label175
	addi a1, a1, 256
	j label14
label87:
	mv s6, zero
	j label4
label175:
	auipc a3, %pcrel_hi(tape)
	mv s8, zero
	mv a2, zero
	mv a4, zero
	mv a5, zero
	addi a1, a3, %pcrel_lo(label175)
	mv a3, zero
	j label19
.p2align 2
label463:
	li t1, 91
	bne t0, t1, label465
	sh2add t0, a4, a1
	lw t2, 0(t0)
	beq t2, zero, label274
	sh2add t0, a3, a0
	addiw a3, a3, 1
	sw a5, 0(t0)
	addiw a5, a5, 1
.p2align 2
label19:
	bgt s6, a5, label32
	j label25
.p2align 2
label54:
	addiw a4, a4, -1
.p2align 2
label55:
	addiw a5, a5, 1
	ble s6, a5, label25
.p2align 2
label32:
	sh2add t1, a5, s4
	lw t0, 0(t1)
	bne t0, s2, label202
	addiw a4, a4, 1
	addiw a5, a5, 1
	bgt s6, a5, label32
label25:
	auipc a1, %pcrel_hi(output)
	li a0, 118
	addi s0, a1, %pcrel_lo(label25)
	jal _sysy_stoptime
	ble s8, zero, label31
	mv s1, zero
.p2align 2
label27:
	lw a0, 0(s0)
	jal putch
	addiw s1, s1, 1
	ble s8, s1, label31
	addi s0, s0, 4
	j label27
.p2align 2
label202:
	beq t0, s3, label54
	li t1, 43
	beq t0, t1, label36
	li t1, 45
	bne t0, t1, label463
	sh2add t1, a4, a1
	addiw a5, a5, 1
	lw t0, 0(t1)
	addi t2, t0, -1
	sw t2, 0(t1)
	bgt s6, a5, label32
	j label25
label274:
	mv t1, s0
	mv t0, a5
.p2align 2
label50:
	addiw t0, t0, 1
	sh2add t2, t0, s4
	lw a5, 0(t2)
	xori t4, a5, 91
	xori t3, a5, 93
	sltiu t6, t3, 1
	sltu t3, zero, t4
	subw t5, t1, t6
	addi t2, t5, 1
	subw t1, t2, t3
	bgt t1, zero, label50
	addiw a5, t0, 1
	j label19
label465:
	bne t0, s1, label40
	sh2add t2, a4, a1
	addiw t0, a3, -1
	lw t1, 0(t2)
	beq t1, zero, label264
	sh2add t0, a3, a0
	lw a5, -4(t0)
	j label55
label40:
	li t1, 46
	beq t0, t1, label45
	li t1, 44
	bne t0, t1, label235
	bgt s7, a2, label43
	sh2add t0, a4, a1
	addiw a5, a5, 1
	sw zero, 0(t0)
	j label19
label31:
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
label43:
	sh2add t1, a2, s5
	addiw a5, a5, 1
	sh2add t2, a4, a1
	addiw a2, a2, 1
	lw t0, 0(t1)
	sw t0, 0(t2)
	j label19
.p2align 2
label36:
	sh2add t0, a4, a1
	addiw a5, a5, 1
	lw t2, 0(t0)
	addi t1, t2, 1
	sw t1, 0(t0)
	bgt s6, a5, label32
	j label25
label45:
	sh2add t1, a4, a1
pcrel484:
	auipc t3, %pcrel_hi(output)
	addiw a5, a5, 1
	addi t2, t3, %pcrel_lo(pcrel484)
	lw t0, 0(t1)
	sh2add t1, s8, t2
	addiw s8, s8, 1
	sw t0, 0(t1)
	j label19
label235:
	addiw a5, a5, 1
	j label19
label264:
	mv a3, t0
	addiw a5, a5, 1
	j label19
