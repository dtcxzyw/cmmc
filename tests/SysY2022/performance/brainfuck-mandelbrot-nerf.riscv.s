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
	slti a4, a1, 0
	sll a2, s0, a1
	and a5, a2, s7
	sltiu a3, a5, 1
	slt a5, s1, a0
	or a2, a3, a4
	or a1, a2, a5
	bne a1, zero, label2
pcrel489:
	auipc a2, %pcrel_hi(input)
pcrel490:
	auipc a1, %pcrel_hi(program)
	addi s6, a2, %pcrel_lo(pcrel489)
	addi s5, a1, %pcrel_lo(pcrel490)
	beq a0, s9, label87
	mv s10, s5
	mv s11, zero
	sw a0, 0(s5)
.p2align 2
label66:
	jal getch
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a3, s0, a1
	and a4, a3, s7
	sltiu a2, a4, 1
	slt a4, s1, a0
	or a3, a2, a5
	or a1, a3, a4
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
	j label6
label314:
	mv s7, s11
	j label4
label6:
	jal getint
	mv s9, a0
	jal getch
	ble s9, zero, label12
	mv s10, s6
	mv s11, zero
.p2align 2
label8:
	jal getch
	addiw s11, s11, 1
	sw a0, 0(s10)
	ble s9, s11, label12
	addi s10, s10, 4
	j label8
label93:
	mv s9, zero
label12:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel491:
	auipc a3, %pcrel_hi(return_a)
	addi a0, a3, %pcrel_lo(pcrel491)
	mv a1, a0
.p2align 2
label14:
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
	bge a2, s8, label17
	addi a1, a1, 256
	j label14
label17:
	auipc a3, %pcrel_hi(tape)
	mv s8, zero
	mv a2, zero
	mv a4, zero
	mv a5, zero
	addi a1, a3, %pcrel_lo(label17)
	mv a3, zero
.p2align 2
label18:
	bgt s7, a5, label31
	j label24
label38:
	sh2add t0, a4, a1
	lw t2, 0(t0)
	beq t2, zero, label226
	sh2add t0, a3, a0
	addiw a3, a3, 1
	sw a5, 0(t0)
	addiw a5, a5, 1
	j label18
label24:
	auipc a1, %pcrel_hi(output)
	li a0, 118
	addi s0, a1, %pcrel_lo(label24)
	jal _sysy_stoptime
	ble s8, zero, label25
	mv s1, zero
.p2align 2
label27:
	lw a0, 0(s0)
	jal putch
	addiw s1, s1, 1
	ble s8, s1, label25
	addi s0, s0, 4
	j label27
.p2align 2
label31:
	sh2add t1, a5, s5
	lw t0, 0(t1)
	beq t0, s2, label32
	beq t0, s3, label34
	j label459
.p2align 2
label32:
	addiw a4, a4, 1
	addiw a5, a5, 1
	bgt s7, a5, label31
	j label24
.p2align 2
label459:
	bne t0, s4, label463
	sh2add t0, a4, a1
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
.p2align 2
label54:
	addiw a5, a5, 1
	bgt s7, a5, label31
	j label24
.p2align 2
label463:
	li t1, 45
	bne t0, t1, label468
	sh2add t0, a4, a1
	addiw a5, a5, 1
	lw t2, 0(t0)
	addi t1, t2, -1
	sw t1, 0(t0)
	bgt s7, a5, label31
	j label24
.p2align 2
label468:
	li t1, 91
	beq t0, t1, label38
	bne t0, s1, label44
	sh2add t2, a4, a1
	addiw t0, a3, -1
	lw t1, 0(t2)
	beq t1, zero, label284
	sh2add t1, t0, a0
	lw a5, 0(t1)
	j label54
label226:
	mv t1, s0
	mv t0, a5
.p2align 2
label40:
	addiw t0, t0, 1
	sh2add t2, t0, s5
	lw a5, 0(t2)
	xori t5, a5, 91
	xori t4, a5, 93
	sltiu t3, t4, 1
	sltiu t4, t5, 1
	subw t2, t1, t3
	addw t1, t2, t4
	bgt t1, zero, label40
	addiw a5, t0, 1
	j label18
label44:
	li t1, 46
	bne t0, t1, label45
	sh2add t1, a4, a1
pcrel492:
	auipc t3, %pcrel_hi(output)
	addiw a5, a5, 1
	addi t2, t3, %pcrel_lo(pcrel492)
	lw t0, 0(t1)
	sh2add t1, s8, t2
	addiw s8, s8, 1
	sw t0, 0(t1)
	j label18
label25:
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
label45:
	li t1, 44
	bne t0, t1, label255
	ble s9, a2, label47
	sh2add t1, a2, s6
	sh2add t2, a4, a1
	addiw a2, a2, 1
	lw t0, 0(t1)
	sw t0, 0(t2)
	j label54
.p2align 2
label34:
	addiw a4, a4, -1
	addiw a5, a5, 1
	bgt s7, a5, label31
	j label24
label284:
	mv a3, t0
	addiw a5, a5, 1
	j label18
label47:
	sh2add t0, a4, a1
	addiw a5, a5, 1
	sw zero, 0(t0)
	j label18
label255:
	addiw a5, a5, 1
	j label18
label87:
	mv s7, zero
	j label4
