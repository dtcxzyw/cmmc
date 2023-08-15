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
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 1
	sd s5, 16(sp)
	li s5, 360287970357415681
	sd s1, 24(sp)
	li s1, 93
	sd s6, 32(sp)
	li s6, 35
	sd s4, 40(sp)
	li s4, 512
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
.p2align 2
label2:
	jal getch
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a2, s0, a1
	and a4, a2, s5
	sltiu a3, a4, 1
	slt a4, s1, a0
	or a2, a3, a5
	or a1, a2, a4
	bne a1, zero, label2
pcrel350:
	auipc a2, %pcrel_hi(input)
pcrel351:
	auipc a1, %pcrel_hi(program)
	addi s3, a2, %pcrel_lo(pcrel350)
	addi s2, a1, %pcrel_lo(pcrel351)
	beq a0, s6, label87
	mv s7, s2
	mv s8, zero
	sw a0, 0(s2)
	j label9
.p2align 2
label11:
	addi s7, s7, 4
	sw a0, 0(s7)
.p2align 2
label9:
	jal getch
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a2, s0, a1
	and a4, a2, s5
	sltiu a3, a4, 1
	slt a4, s1, a0
	or a2, a3, a5
	or a1, a2, a4
	bne a1, zero, label9
	addiw s8, s8, 1
	bne a0, s6, label11
	mv s5, s8
label12:
	jal getch
	li a1, 105
	bne a0, a1, label112
	jal getint
	mv s6, a0
	jal getch
	ble s6, zero, label20
	mv s7, s3
	mv s8, zero
	j label16
.p2align 2
label19:
	addi s7, s7, 4
.p2align 2
label16:
	jal getch
	addiw s8, s8, 1
	sw a0, 0(s7)
	bgt s6, s8, label19
	j label20
label112:
	mv s6, zero
label20:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel352:
	auipc a3, %pcrel_hi(return_a)
	addi a0, a3, %pcrel_lo(pcrel352)
	mv a1, a0
	j label22
.p2align 2
label25:
	addi a1, a1, 4
.p2align 2
label22:
	addi a2, a2, 1
	sw zero, 0(a1)
	blt a2, s4, label25
pcrel353:
	auipc a3, %pcrel_hi(tape)
pcrel354:
	auipc a2, %pcrel_hi(output)
	addi a1, a3, %pcrel_lo(pcrel353)
	addi s4, a2, %pcrel_lo(pcrel354)
	ble s5, zero, label140
	mv a2, zero
	mv t0, zero
	mv a4, zero
	mv a3, zero
	mv a5, zero
	j label27
.p2align 2
label147:
	li t2, 60
	bne t1, t2, label325
	addiw a4, a4, -1
	addiw t0, t0, 1
	ble s5, t0, label152
.p2align 2
label27:
	sh2add t2, t0, s2
	li t3, 62
	lw t1, 0(t2)
	bne t1, t3, label147
	addiw a4, a4, 1
	addiw t0, t0, 1
	bgt s5, t0, label27
label152:
	mv s0, a2
label61:
	li a0, 118
	jal _sysy_stoptime
	ble s0, zero, label63
	mv s1, zero
	j label65
.p2align 2
label68:
	addi s4, s4, 4
.p2align 2
label65:
	lw a0, 0(s4)
	jal putch
	addiw s1, s1, 1
	bgt s0, s1, label68
label63:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label325:
	li t2, 43
	beq t1, t2, label59
	li t2, 45
	beq t1, t2, label43
	li t2, 91
	bne t1, t2, label45
	sh2add t1, a4, a1
	lw t3, 0(t1)
	beq t3, zero, label222
	sh2add t1, a3, a0
	addiw a3, a3, 1
	sw t0, 0(t1)
	j label33
label45:
	bne t1, s1, label48
	sh2add t3, a4, a1
	addiw t1, a3, -1
	lw t2, 0(t3)
	bne t2, zero, label185
	mv a3, t1
	j label33
label222:
	mv t2, s0
	mv t1, t0
.p2align 2
label56:
	addiw t1, t1, 1
	sh2add t3, t1, s2
	lw t0, 0(t3)
	xori t4, t0, 93
	sltiu t5, t4, 1
	xori t4, t0, 91
	subw t6, t2, t5
	sltu t5, zero, t4
	addi t3, t6, 1
	subw t2, t3, t5
	bgt t2, zero, label56
	mv t0, t1
label33:
	addiw t0, t0, 1
	bgt s5, t0, label27
	j label152
label48:
	li t2, 46
	bne t1, t2, label50
	sh2add t3, a4, a1
	sh2add t2, a2, s4
	lw t1, 0(t3)
	addiw a2, a2, 1
	sw t1, 0(t2)
	j label33
label50:
	li t2, 44
	bne t1, t2, label33
	ble s6, a5, label53
	sh2add t2, a5, s3
	sh2add t3, a4, a1
	addiw a5, a5, 1
	lw t1, 0(t2)
	sw t1, 0(t3)
	j label33
.p2align 2
label59:
	sh2add t2, a4, a1
	addiw t0, t0, 1
	lw t3, 0(t2)
	addi t1, t3, 1
	sw t1, 0(t2)
	bgt s5, t0, label27
	j label152
label43:
	sh2add t1, a4, a1
	addiw t0, t0, 1
	lw t3, 0(t1)
	addi t2, t3, -1
	sw t2, 0(t1)
	bgt s5, t0, label27
	j label152
label53:
	sh2add t1, a4, a1
	sw zero, 0(t1)
	j label33
label87:
	mv s5, zero
	j label12
label140:
	mv s0, zero
	j label61
label185:
	sh2add t1, a3, a0
	lw t0, -4(t1)
	j label33
