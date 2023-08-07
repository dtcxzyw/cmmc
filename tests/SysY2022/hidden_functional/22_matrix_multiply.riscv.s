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
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s2, 40(sp)
	sd s7, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	sd a0, 104(sp)
	jal getint
	mv t2, a0
	addiw s0, a0, -4
pcrel254:
	auipc a1, %pcrel_hi(b)
	li s4, 400
	li s3, 4
	mv s7, zero
	sd a0, 112(sp)
	addi s2, a1, %pcrel_lo(pcrel254)
pcrel255:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel255)
	mv s1, s6
pcrel256:
	auipc a0, %pcrel_hi(res)
	addi s5, a0, %pcrel_lo(pcrel256)
	ld a0, 104(sp)
	ble a0, zero, label12
.p2align 2
label5:
	ld t2, 112(sp)
	ble t2, zero, label6
	mv s8, s1
	mv s9, zero
	j label8
.p2align 2
label84:
	addiw s7, s7, 1
	addi s1, s1, 400
	ld a0, 104(sp)
	bgt a0, s7, label5
label12:
	jal getint
	mv s8, a0
	jal getint
	mv s9, zero
	mv s7, s2
	mv s1, a0
	bgt s8, zero, label16
	j label92
.p2align 2
label8:
	jal getint
	addiw a1, s9, 1
	sw a0, 0(s8)
	ld t2, 112(sp)
	ble t2, a1, label84
	addi s8, s8, 4
	mv s9, a1
	j label8
label92:
	mv a1, s6
	mv a2, s5
	mv a3, zero
	j label24
.p2align 2
label16:
	ble s1, zero, label17
	mv s10, s7
	mv s11, zero
	j label19
.p2align 2
label103:
	addiw s9, s9, 1
	addi s7, s7, 400
	bgt s8, s9, label16
	j label92
label24:
	ld a0, 104(sp)
	bgt a0, a3, label40
	j label28
.p2align 2
label19:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	ble s1, s11, label103
	addi s10, s10, 4
	j label19
label28:
	mv s0, zero
	ld a0, 104(sp)
	bgt a0, zero, label32
	j label39
.p2align 2
label40:
	mv a4, a2
	mv a0, zero
	bgt s1, zero, label45
	j label44
.p2align 2
label235:
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label40
	j label28
.p2align 2
label45:
	ld t2, 112(sp)
	ble t2, zero, label46
	lw t1, 0(a4)
	bgt t2, s3, label55
	j label48
.p2align 2
label154:
	sw t1, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label45
	j label235
.p2align 2
label55:
	mv a5, s2
	mv t0, zero
.p2align 2
label56:
	sh2add t4, a0, a5
	addi a6, a5, 400
	sh2add t2, t0, a1
	sh2add a7, a0, a6
	addiw t0, t0, 4
	lw t3, 0(t2)
	lw t5, 0(t4)
	lw t6, 4(t2)
	lw t4, 0(a7)
	mulw a7, t3, t5
	lw t5, 8(t2)
	addi t3, a5, 800
	mulw a6, t6, t4
	sh2add t6, a0, t3
	addw t4, a6, a7
	lw a7, 0(t6)
	addi t6, a5, 1200
	mulw a6, t5, a7
	sh2add t5, a0, t6
	addw t3, t4, a6
	lw t4, 12(t2)
	lw t6, 0(t5)
	mulw a6, t4, t6
	addw t2, t3, a6
	addw t1, t1, t2
	ble s0, t0, label192
	addi a5, a5, 1600
	j label56
.p2align 2
label49:
	sh2add t2, a0, a5
	sh2add t5, t0, a1
	addiw t0, t0, 1
	lw t3, 0(t5)
	lw t6, 0(t2)
	ld t2, 112(sp)
	mulw t4, t3, t6
	addw t1, t1, t4
	ble t2, t0, label154
.p2align 2
label53:
	addi a5, a5, 400
	j label49
.p2align 2
label192:
	mul t2, t0, s4
	sh2add t5, t0, a1
	add a5, s2, t2
	addiw t0, t0, 1
	sh2add t2, a0, a5
	lw t3, 0(t5)
	lw t6, 0(t2)
	ld t2, 112(sp)
	mulw t4, t3, t6
	addw t1, t1, t4
	bgt t2, t0, label53
	sw t1, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label45
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label40
	j label28
.p2align 2
label48:
	mv a5, s2
	mv t0, zero
	j label49
.p2align 2
label46:
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label45
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label40
	j label28
.p2align 2
label32:
	bgt s1, zero, label33
.p2align 2
label38:
	li a0, 10
	jal putch
	ld a0, 104(sp)
	addi s5, s5, 400
	addiw s0, s0, 1
	bgt a0, s0, label32
label39:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s7, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label33:
	mv s2, s5
	mv s3, zero
.p2align 2
label34:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	jal putch
	addiw s3, s3, 1
	ble s1, s3, label38
	addi s2, s2, 4
	j label34
label44:
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label40
	j label28
label6:
	addiw s7, s7, 1
	addi s1, s1, 400
	ld a0, 104(sp)
	bgt a0, s7, label5
	j label12
label17:
	addiw s9, s9, 1
	addi s7, s7, 400
	bgt s8, s9, label16
	j label92
