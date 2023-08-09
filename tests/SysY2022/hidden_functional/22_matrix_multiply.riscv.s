.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000
.align 8
b:
	.zero	40000
.align 8
res:
	.zero	40000
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s6, 16(sp)
	sd s1, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s7, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	sd a0, 104(sp)
	jal getint
	mv t2, a0
	addiw s2, a0, -3
	li s4, 3
pcrel257:
	auipc a1, %pcrel_hi(b)
	mv s7, zero
	li s1, 400
	sd a0, 112(sp)
	addi s0, a1, %pcrel_lo(pcrel257)
pcrel258:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel258)
	mv s3, s6
pcrel259:
	auipc a0, %pcrel_hi(res)
	addi s5, a0, %pcrel_lo(pcrel259)
label2:
	ld a0, 104(sp)
	bgt a0, s7, label59
	j label5
.p2align 2
label64:
	addi s8, s8, 4
	mv s9, a1
.p2align 2
label61:
	jal getint
	addiw a1, s9, 1
	sw a0, 0(s8)
	ld t2, 112(sp)
	bgt t2, a1, label64
	addiw s7, s7, 1
	addi s3, s3, 400
	ld a0, 104(sp)
	ble a0, s7, label5
.p2align 2
label59:
	ld t2, 112(sp)
	ble t2, zero, label188
	mv s8, s3
	mv s9, zero
	j label61
label5:
	jal getint
	mv s8, a0
	jal getint
	mv s9, zero
	mv s7, s0
	mv s3, a0
label6:
	bgt s8, s9, label9
	j label84
.p2align 2
label14:
	addi s10, s10, 4
.p2align 2
label11:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	bgt s3, s11, label14
	addiw s9, s9, 1
	addi s7, s7, 400
	ble s8, s9, label84
.p2align 2
label9:
	ble s3, zero, label87
	mv s10, s7
	mv s11, zero
	j label11
label84:
	mv a1, s6
	mv a2, s5
	mv a3, zero
	ld a0, 104(sp)
	bgt a0, zero, label33
	j label21
.p2align 2
label238:
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	ble a0, a3, label21
.p2align 2
label33:
	mv a4, a2
	mv a0, zero
	bgt s3, zero, label38
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
	j label21
.p2align 2
label152:
	sw t1, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	ble s3, a0, label238
.p2align 2
label38:
	ld t2, 112(sp)
	ble t2, zero, label39
	lw t1, 0(a4)
	ble t2, s4, label133
	mv a5, a1
	mv t0, zero
	j label54
.p2align 2
label58:
	addi a5, a5, 16
.p2align 2
label54:
	mul t5, t0, s1
	lw t3, 0(a5)
	addiw t0, t0, 4
	add t4, s0, t5
	sh2add t2, a0, t4
	lw t5, 0(t2)
	lw a6, 4(a5)
	lw a7, 400(t2)
	mulw s6, t3, t5
	mulw t6, a6, a7
	lw a6, 8(a5)
	addw t4, t6, s6
	lw a7, 800(t2)
	lw t5, 12(a5)
	mulw t6, a6, a7
	addw t3, t4, t6
	lw t6, 1200(t2)
	mulw a6, t5, t6
	addw t4, t3, a6
	addw t1, t1, t4
	bgt s2, t0, label58
	mv t3, t1
	ld t2, 112(sp)
	ble t2, t0, label233
.p2align 2
label45:
	mul t2, t0, s1
	mv t1, t3
	add a5, s0, t2
.p2align 2
label46:
	sh2add t3, t0, a1
	sh2add t4, a0, a5
	addiw t0, t0, 1
	lw t2, 0(t3)
	lw t5, 0(t4)
	mulw t3, t2, t5
	ld t2, 112(sp)
	addw t1, t1, t3
	ble t2, t0, label152
	addi a5, a5, 400
	j label46
.p2align 2
label133:
	mv t0, zero
	mv t3, t1
	mv t1, zero
	ld t2, 112(sp)
	bgt t2, zero, label45
	sw zero, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s3, a0, label38
	j label231
.p2align 2
label39:
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s3, a0, label38
label231:
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
	j label21
.p2align 2
label233:
	sw t1, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s3, a0, label38
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
label21:
	mv s0, zero
	ld a0, 104(sp)
	bgt a0, zero, label25
	j label32
.p2align 2
label31:
	li a0, 10
	jal putch
	ld a0, 104(sp)
	addi s5, s5, 400
	addiw s0, s0, 1
	ble a0, s0, label32
.p2align 2
label25:
	ble s3, zero, label31
	mv s1, s5
	mv s2, zero
.p2align 2
label27:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s2, s2, 1
	ble s3, s2, label31
	addi s1, s1, 4
	j label27
label32:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s7, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label87:
	addiw s9, s9, 1
	addi s7, s7, 400
	j label6
label188:
	addiw s7, s7, 1
	addi s3, s3, 400
	j label2
