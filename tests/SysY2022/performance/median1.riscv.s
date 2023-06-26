.data
.align 4
a:
	.zero	40000000
.text
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s1, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
pcrel224:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel224)
	mv s0, a0
	jal getarray
	mv s1, a0
	li a0, 59
	jal _sysy_starttime
	addiw a3, s1, -1
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw s2, a0, 1
	mv a2, zero
	slliw a0, zero, 2
	add a4, s0, a0
	lw a5, 0(a4)
	addiw a1, a3, 1
	mv a0, zero
label7:
	bge a0, a1, label10
	addiw a1, a1, -1
	slliw t1, a1, 2
	add t1, s0, t1
	lw t1, 0(t1)
	bge t1, a5, label7
	bge a0, a1, label14
	addiw a0, a0, 1
	slliw t1, a0, 2
	add t1, s0, t1
	lw t1, 0(t1)
	blt t1, a5, label10
	bne a0, a1, label20
	sw a5, 0(a4)
	slliw a1, a0, 2
	add a1, s0, a1
	lw t1, 0(a1)
	sw t1, 0(a4)
	sw a5, 0(a1)
	ble a0, s2, label17
	j label141
label180:
	addiw a0, a0, 1
	slliw t1, a0, 2
	add t1, s0, t1
	lw t1, 0(t1)
	blt t1, a5, label10
	j label193
label141:
	mv a3, a0
	lw a5, 0(a4)
	addiw a1, a0, 1
	mv a0, a2
	bge a2, a1, label10
	j label154
label167:
	bge a0, a1, label14
	j label180
label10:
	bge a0, a1, label14
	addiw a0, a0, 1
	slliw t1, a0, 2
	add t1, s0, t1
	lw t1, 0(t1)
	blt t1, a5, label10
	bne a0, a1, label20
	sw a5, 0(a4)
	slliw a1, a0, 2
	add a1, s0, a1
	lw t1, 0(a1)
	sw t1, 0(a4)
	sw a5, 0(a1)
	ble a0, s2, label17
	mv a3, a0
	lw a5, 0(a4)
	addiw a1, a0, 1
	mv a0, a2
	bge a2, a1, label10
	addiw a1, a1, -1
	slliw t1, a1, 2
	add t1, s0, t1
	lw t1, 0(t1)
	bge t1, a5, label7
	bge a2, a1, label14
	addiw a0, a2, 1
	slliw t1, a0, 2
	add t1, s0, t1
	lw t1, 0(t1)
	blt t1, a5, label10
	bne a0, a1, label20
	sw a5, 0(a4)
	slliw a1, a0, 2
	add a1, s0, a1
	lw t1, 0(a1)
	sw t1, 0(a4)
	sw a5, 0(a1)
	ble a0, s2, label17
	j label141
label14:
	bne a0, a1, label20
	sw a5, 0(a4)
	slliw a1, a0, 2
	add a1, s0, a1
	lw t1, 0(a1)
	sw t1, 0(a4)
	sw a5, 0(a1)
	ble a0, s2, label17
	mv a3, a0
	lw a5, 0(a4)
	addiw a1, a0, 1
	mv a0, a2
	bge a2, a1, label10
	addiw a1, a1, -1
	slliw t1, a1, 2
	add t1, s0, t1
	lw t1, 0(t1)
	bge t1, a5, label7
	bge a2, a1, label14
	addiw a0, a2, 1
	slliw t1, a0, 2
	add t1, s0, t1
	lw t1, 0(t1)
	blt t1, a5, label10
	bne a0, a1, label20
	sw a5, 0(a4)
	slliw a1, a0, 2
	add a1, s0, a1
	lw t1, 0(a1)
	sw t1, 0(a4)
	sw a5, 0(a1)
	ble a0, s2, label17
	mv a3, a0
	lw a5, 0(a4)
	addiw a1, a0, 1
	mv a0, a2
	bge a2, a1, label10
	addiw a1, a1, -1
	slliw t1, a1, 2
	add t1, s0, t1
	lw t1, 0(t1)
	bge t1, a5, label7
	j label167
label154:
	addiw a1, a1, -1
	slliw t1, a1, 2
	add t1, s0, t1
	lw t1, 0(t1)
	bge t1, a5, label7
	j label167
label17:
	bge a0, s2, label19
	addiw a2, a0, 1
	slliw a0, a2, 2
	add a4, s0, a0
	lw a5, 0(a4)
	addiw a1, a3, 1
	mv a0, a2
	bge a2, a1, label10
	addiw a1, a1, -1
	slliw t1, a1, 2
	add t1, s0, t1
	lw t1, 0(t1)
	bge t1, a5, label7
	bge a2, a1, label14
	addiw a0, a2, 1
	slliw t1, a0, 2
	add t1, s0, t1
	lw t1, 0(t1)
	blt t1, a5, label10
	bne a0, a1, label20
	sw a5, 0(a4)
	slliw a1, a0, 2
	add a1, s0, a1
	lw t1, 0(a1)
	sw t1, 0(a4)
	sw a5, 0(a1)
	ble a0, s2, label17
	mv a3, a0
	lw a5, 0(a4)
	addiw a1, a0, 1
	mv a0, a2
	bge a2, a1, label10
	j label154
label19:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	slli a0, s2, 2
	add a0, s0, a0
	lw a0, 0(a0)
	slli a1, a0, 1
	srli a1, a1, 56
	add a1, a0, a1
	sraiw a1, a1, 8
	li a2, 256
	mulw a1, a1, a2
	subw a0, a0, a1
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label20:
	slliw t1, a0, 2
	add t1, s0, t1
	lw t2, 0(t1)
	slliw t3, a1, 2
	add t3, s0, t3
	lw t4, 0(t3)
	sw t4, 0(t1)
	sw t2, 0(t3)
	bge a0, a1, label10
	addiw a1, a1, -1
	slliw t1, a1, 2
	add t1, s0, t1
	lw t1, 0(t1)
	bge t1, a5, label7
	bge a0, a1, label14
	addiw a0, a0, 1
	slliw t1, a0, 2
	add t1, s0, t1
	lw t1, 0(t1)
	blt t1, a5, label10
	bne a0, a1, label20
	sw a5, 0(a4)
	slliw a1, a0, 2
	add a1, s0, a1
	lw t1, 0(a1)
	sw t1, 0(a4)
	sw a5, 0(a1)
	ble a0, s2, label17
	mv a3, a0
	lw a5, 0(a4)
	addiw a1, a0, 1
	mv a0, a2
	bge a2, a1, label10
	addiw a1, a1, -1
	slliw t1, a1, 2
	add t1, s0, t1
	lw t1, 0(t1)
	bge t1, a5, label7
	bge a2, a1, label14
	addiw a0, a2, 1
	slliw t1, a0, 2
	add t1, s0, t1
	lw t1, 0(t1)
	blt t1, a5, label10
label193:
	bne a0, a1, label20
	sw a5, 0(a4)
	slliw a1, a0, 2
	add a1, s0, a1
	lw t1, 0(a1)
	sw t1, 0(a4)
	sw a5, 0(a1)
	ble a0, s2, label17
	j label141
