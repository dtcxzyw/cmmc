.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.text
.p2align 2
.globl main
main:
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	jal getint
pcrel269:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi s2, a1, %pcrel_lo(pcrel269)
	mv a0, s2
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel270:
	auipc a2, %pcrel_hi(temp)
pcrel271:
	auipc a1, %pcrel_hi(dst)
	addi a0, a2, %pcrel_lo(pcrel270)
	addi s1, a1, %pcrel_lo(pcrel271)
	mv a1, zero
	bgt s0, zero, label44
label43:
	mv a4, zero
	j label10
.p2align 2
label44:
	mv a2, zero
	j label4
.p2align 2
label243:
	addiw a1, a1, 1
	bgt s0, a1, label44
	j label43
label10:
	mulw a2, s0, a4
	ble s0, a4, label24
.p2align 2
label66:
	mv a5, zero
	mv a3, zero
	sext.w a1, a4
	ble s0, zero, label71
.p2align 2
label72:
	mv t0, zero
	bgt s0, zero, label17
	j label16
.p2align 2
label246:
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label72
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label66
label24:
	mulw s2, s0, s0
	bne s0, zero, label26
label25:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label26:
	li a2, 4
	bgt s2, a2, label29
	j label120
label27:
	sh2add a4, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a4)
	addiw a1, a1, 1
	sw a2, 0(a3)
	bgt s2, a1, label27
	j label25
label29:
	addiw a1, s2, -4
	addiw a3, s2, -20
	li a2, 16
	ble a1, a2, label136
	mv a2, zero
	j label32
label30:
	sh2add a4, a3, a0
	sh2add a2, a3, s1
	lw a5, 0(a4)
	addiw a3, a3, 4
	sw a5, 0(a2)
	lw t1, 4(a4)
	sw t1, 4(a2)
	lw t0, 8(a4)
	sw t0, 8(a2)
	lw a5, 12(a4)
	sw a5, 12(a2)
	bgt a1, a3, label30
	mv a1, a3
	j label27
.p2align 2
label32:
	sh2add a4, a2, a0
	sh2add a5, a2, s1
	lw t0, 0(a4)
	addiw a2, a2, 16
	sw t0, 0(a5)
	lw t2, 4(a4)
	sw t2, 4(a5)
	lw t1, 8(a4)
	sw t1, 8(a5)
	lw t0, 12(a4)
	sw t0, 12(a5)
	lw t1, 16(a4)
	sw t1, 16(a5)
	lw t0, 20(a4)
	sw t0, 20(a5)
	lw t1, 24(a4)
	sw t1, 24(a5)
	lw t0, 28(a4)
	sw t0, 28(a5)
	lw t2, 32(a4)
	sw t2, 32(a5)
	lw t1, 36(a4)
	sw t1, 36(a5)
	lw t0, 40(a4)
	sw t0, 40(a5)
	lw t1, 44(a4)
	sw t1, 44(a5)
	lw t0, 48(a4)
	sw t0, 48(a5)
	lw t1, 52(a4)
	sw t1, 52(a5)
	lw t0, 56(a4)
	sw t0, 56(a5)
	lw t1, 60(a4)
	sw t1, 60(a5)
	bgt a3, a2, label32
	mv a3, a2
	j label30
.p2align 2
label17:
	sh2add t2, a1, a0
	lw t1, 0(t2)
	bge t1, zero, label18
	addiw t0, t0, 1
	bgt s0, t0, label17
	j label246
.p2align 2
label18:
	addw t4, a2, t0
	sh2add t3, t4, a0
	lw t2, 0(t3)
	bge t2, zero, label19
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label72
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label66
	j label24
.p2align 2
label19:
	addw t3, a3, t0
	addw t4, t1, t2
	sh2add t6, t3, a0
	lw t5, 0(t6)
	blt t5, zero, label20
	sh2add t2, t3, a0
	lw t1, 0(t2)
	bge t4, t1, label240
.p2align 2
label20:
	sh2add t1, t3, a0
	sw t4, 0(t1)
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label72
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label66
	j label24
.p2align 2
label4:
	mulw a4, s0, a2
	addw a3, a1, a4
	ble s0, a2, label50
	sh2add a5, a3, s2
	lw a4, 0(a5)
	addiw a2, a2, 1
	sh2add a5, a3, a0
	sw a4, 0(a5)
	bgt s0, a2, label4
	j label243
.p2align 2
label50:
	li a4, -1
	addiw a2, a2, 1
	sh2add a5, a3, a0
	sw a4, 0(a5)
	bgt s0, a2, label4
	addiw a1, a1, 1
	bgt s0, a1, label44
	j label43
.p2align 2
label240:
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label72
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label66
	j label24
.p2align 2
label16:
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label72
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label66
	j label24
label71:
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label66
	j label24
label120:
	mv a1, zero
	j label27
label136:
	mv a3, zero
	j label30
