.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
to:
	.zero	400
.align 4
cap:
	.zero	400
.align 4
rev:
	.zero	400
.text
dfs:
	addi sp, sp, -80
	sd s2, 72(sp)
	mv s2, a0
	sd s3, 64(sp)
	mv s3, a1
	sd s1, 56(sp)
	mv s1, a2
	sd s6, 48(sp)
	mv s6, a4
	sd s4, 40(sp)
	mv s4, a3
	sd s5, 32(sp)
	sd s0, 24(sp)
	sd s8, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	bne a0, a1, label2
label12:
	mv a0, s1
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s8, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s3, 64(sp)
	ld s2, 72(sp)
	addi sp, sp, 80
	ret
label2:
	sh2add a0, s2, s6
	li a1, 1
pcrel182:
	auipc a2, %pcrel_hi(cap)
pcrel183:
	auipc a3, %pcrel_hi(to)
	mv s0, zero
	sw a1, 0(a0)
	li a1, 40
	addi a0, a2, %pcrel_lo(pcrel182)
	mul a2, s2, a1
	mv s5, a0
	mul a1, s2, a1
	add s8, a0, a2
	addi a0, a3, %pcrel_lo(pcrel183)
	add s7, a0, a1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge zero, a1, label38
	mv a1, s7
	lw a0, 0(s7)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	li s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
label157:
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	j label165
label38:
	mv s1, zero
	j label12
label165:
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	j label157
label7:
	sh2add a2, s0, s8
	lw a1, 0(a2)
	bgt a1, zero, label9
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	j label165
label9:
	min a2, s1, a1
	mv a1, s3
	mv a3, s4
	mv a4, s6
	jal dfs
	ble a0, zero, label11
	sh2add a1, s0, s8
pcrel184:
	auipc a4, %pcrel_hi(rev)
	mv s1, a0
	lw a2, 0(a1)
	subw a3, a2, a0
	addi a2, a4, %pcrel_lo(pcrel184)
	sw a3, 0(a1)
	li a1, 40
	mul a4, s2, a1
	add a3, a2, a4
	sh2add a4, s0, s7
	sh2add a2, s0, a3
	lw a3, 0(a4)
	lw a2, 0(a2)
	mul a4, a3, a1
	add a3, s5, a4
	sh2add a1, a2, a3
	lw a2, 0(a1)
	addw a3, a0, a2
	sw a3, 0(a1)
	j label12
label11:
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	addiw s0, s0, 1
	sh2add a0, s2, s4
	lw a1, 0(a0)
	bge s0, a1, label38
	sh2add a1, s0, s7
	lw a0, 0(a1)
	sh2add a2, a0, s6
	lw a1, 0(a2)
	beq a1, zero, label7
	j label157
.globl main
main:
	addi sp, sp, -168
	sd s1, 160(sp)
	addi s1, sp, 0
	sd s6, 152(sp)
	sd s0, 144(sp)
	addi s0, sp, 40
	sd s5, 136(sp)
	sd s2, 128(sp)
	sd s3, 120(sp)
	sd s4, 112(sp)
	sd s9, 104(sp)
	sd s7, 96(sp)
	sd s8, 88(sp)
	sd ra, 80(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s6, a0
pcrel391:
	auipc a0, %pcrel_hi(to)
	addi s3, a0, %pcrel_lo(pcrel391)
pcrel392:
	auipc a0, %pcrel_hi(cap)
	addi s4, a0, %pcrel_lo(pcrel392)
pcrel393:
	auipc a0, %pcrel_hi(rev)
	addi s5, a0, %pcrel_lo(pcrel393)
	mv a0, zero
label186:
	addiw a1, a0, 4
	li a2, 10
	bge a1, a2, label189
	sh2add a2, a0, s0
	mv a0, a1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	j label186
label189:
	sh2add a1, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a1)
	li a1, 10
	bge a0, a1, label191
	j label189
label191:
	ble s6, zero, label253
	j label192
label253:
	mv a5, zero
	mv a1, zero
	li a0, 4
	li a2, 10
	bge a0, a2, label199
	mv a2, s1
	mv a1, a0
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	addiw a0, a0, 4
	li a2, 10
	bge a0, a2, label199
	sh2add a2, a1, s1
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a0, a0, 4
	li a2, 10
	bge a0, a2, label199
	sh2add a2, a1, s1
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a0, a0, 4
	li a2, 10
	bge a0, a2, label199
	sh2add a2, a1, s1
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a0, a0, 4
	li a2, 10
	bge a0, a2, label199
	j label298
label192:
	jal getint
	sh2add s7, a0, s0
	mv s9, a0
	jal getint
	mv s8, a0
	jal getint
	addiw s6, s6, -1
	mv a2, a0
	li a1, 40
	lw a0, 0(s7)
	mul a5, s9, a1
	add a4, s3, a5
	sh2add a3, a0, a4
	mul a4, s9, a1
	sw s8, 0(a3)
	add a3, s4, a4
	sh2add a5, a0, a3
	sw a2, 0(a5)
	mul a2, s9, a1
	add a3, s5, a2
	sh2add a2, s8, s0
	sh2add a4, a0, a3
	lw a3, 0(a2)
	sw a3, 0(a4)
	mul a4, s8, a1
	add a5, s3, a4
	sh2add t0, a3, a5
	add a5, s4, a4
	sw s9, 0(t0)
	sh2add t0, a3, a5
	mul a5, s8, a1
	sw zero, 0(t0)
	add a4, s5, a5
	sh2add a1, a3, a4
	addiw a3, a0, 1
	sw a0, 0(a1)
	sw a3, 0(s7)
	lw a0, 0(a2)
	addiw a1, a0, 1
	sw a1, 0(a2)
	ble s6, zero, label294
	j label192
label294:
	mv a5, zero
	mv a1, zero
label196:
	addiw a0, a1, 4
	li a2, 10
	bge a0, a2, label199
label298:
	sh2add a2, a1, s1
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	j label196
label199:
	sh2add a0, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a0)
	li a0, 10
	bge a1, a0, label201
	j label199
label201:
	li a0, 1
	mv a1, s2
	lui a2, 458752
	mv a3, s0
	mv a4, s1
	jal dfs
	bne a0, zero, label203
	mv a0, a5
	jal putint
	li a0, 10
	jal putch
	ld ra, 80(sp)
	mv a0, zero
	ld s8, 88(sp)
	ld s7, 96(sp)
	ld s9, 104(sp)
	ld s4, 112(sp)
	ld s3, 120(sp)
	ld s2, 128(sp)
	ld s5, 136(sp)
	ld s0, 144(sp)
	ld s6, 152(sp)
	ld s1, 160(sp)
	addi sp, sp, 168
	ret
label203:
	addw a5, a5, a0
	mv a1, zero
	li a0, 4
	li a2, 10
	bge a0, a2, label199
	mv a2, s1
	mv a1, a0
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	addiw a0, a0, 4
	li a2, 10
	bge a0, a2, label199
	sh2add a2, a1, s1
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a0, a0, 4
	li a2, 10
	bge a0, a2, label199
	sh2add a2, a1, s1
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a0, a0, 4
	li a2, 10
	bge a0, a2, label199
	sh2add a2, a1, s1
	mv a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a0, a0, 4
	li a2, 10
	bge a0, a2, label199
	j label298
