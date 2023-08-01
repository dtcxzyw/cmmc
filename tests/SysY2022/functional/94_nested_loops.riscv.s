.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
arr1:
	.zero	57600
.align 8
arr2:
	.zero	107520
.text
.globl main
main:
.p2align 2
	addi sp, sp, -272
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s10, 72(sp)
	sd s11, 80(sp)
	sd s9, 88(sp)
	sd s8, 96(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 120(sp)
	jal getint
	addw t2, s0, a0
	mv a1, a0
	sd a0, 128(sp)
	sd t2, 112(sp)
	ld a0, 120(sp)
	ld a1, 128(sp)
	addiw a2, a0, 2
	addw t1, a0, a1
	addw t2, a1, a2
	addiw a2, a0, 3
	sd t2, 104(sp)
	addw t2, a1, a2
	addiw a2, a0, 4
	sd t2, 208(sp)
	addw t2, a1, a2
	addiw a2, a0, 5
	sd t2, 216(sp)
	addw t2, a1, a2
	addiw a2, a0, 6
	sd t2, 224(sp)
	addw t2, a1, a2
	addiw a2, a0, 7
	sd t2, 232(sp)
	addw t2, a1, a2
	addiw a2, a0, 8
	sd t2, 240(sp)
	addw t2, a1, a2
	addiw a2, a0, 9
	sd t2, 248(sp)
	addw t2, a1, a2
	addiw a2, a0, 10
	sd t2, 256(sp)
	addw s0, a1, a2
	sd t1, 264(sp)
	jal getint
	sd a0, 168(sp)
	jal getint
	sd a0, 176(sp)
	mv a4, a0
	jal getint
	sd a0, 192(sp)
	mv t1, a0
	jal getint
	sd a0, 200(sp)
	mv t4, a0
	jal getint
	sd a0, 184(sp)
	mv a6, a0
	jal getint
	sd a0, 160(sp)
	mv s1, a0
	jal getint
	sd a0, 152(sp)
	mv a3, zero
	mv s5, a0
pcrel572:
	auipc a0, %pcrel_hi(arr1)
	addi a2, a0, %pcrel_lo(pcrel572)
	sd a2, 144(sp)
	ld a0, 120(sp)
	li a4, 5760
	ld a1, 128(sp)
	slt a0, zero, a0
	slt a2, zero, a1
	mv a1, zero
	and a0, a0, a2
	ld a2, 144(sp)
	mv a4, a2
	beq a0, zero, label99
.p2align 2
label100:
	mv a5, zero
	li a1, 2880
	mv a0, zero
	sext.w a1, a3
	mv a2, a4
	li a0, 2
	blt zero, a0, label107
.p2align 2
label106:
	addiw a3, a3, 1
	ld a0, 120(sp)
	li a4, 5760
	ld a1, 128(sp)
	slt a0, a3, a0
	slt a2, a3, a1
	mul a1, a3, a4
	and a0, a0, a2
	ld a2, 144(sp)
	add a4, a2, a1
	bne a0, zero, label100
	j label99
.p2align 2
label107:
	mv a0, zero
	li t0, 3
	blt zero, t0, label8
	addiw a5, a5, 1
	li a1, 2880
	mul a0, a5, a1
	addw a1, a3, a5
	add a2, a4, a0
	li a0, 2
	blt a5, a0, label107
	j label106
.p2align 2
label8:
	ld t1, 264(sp)
	slli s4, a0, 4
	ld t2, 112(sp)
	addw t3, t1, a0
	addw t0, a1, t3
	addw t3, t2, a0
	ld t2, 104(sp)
	addw t1, a1, t3
	addw t4, t2, a0
	ld t2, 208(sp)
	addw t3, a1, t4
	addw t5, t2, a0
	ld t2, 216(sp)
	addw t4, a1, t5
	addw t6, t2, a0
	ld t2, 224(sp)
	addw t5, a1, t6
	addw a6, t2, a0
	ld t2, 232(sp)
	addw t6, a1, a6
	addw a7, t2, a0
	ld t2, 240(sp)
	addw a6, a1, a7
	addw s1, t2, a0
	ld t2, 248(sp)
	addw a7, a1, s1
	addw s2, t2, a0
	ld t2, 256(sp)
	addw s1, a1, s2
	addw s3, t2, a0
	addw t2, s0, a0
	addw s2, a1, s3
	addw s3, a1, t2
	sub t2, s4, a0
	mv s4, zero
	slli s6, t2, 6
	add s5, a2, s6
.p2align 2
label9:
	slli s7, s4, 4
	addw s10, t1, s4
	addw s11, t3, s4
	addw s9, t4, s4
	addw s8, a6, s4
	sub t2, s7, s4
	addw s7, t0, s4
	slli s6, t2, 4
	add t2, s5, s6
	sw s7, 0(t2)
	addw s6, t5, s4
	addw s7, t6, s4
	sw s10, 4(t2)
	sw s10, 8(t2)
	sw s11, 12(t2)
	sw s11, 16(t2)
	sw s9, 20(t2)
	sw s9, 24(t2)
	sw s6, 28(t2)
	sw s6, 32(t2)
	sw s7, 36(t2)
	sw s7, 40(t2)
	sw s8, 44(t2)
	sw s10, 48(t2)
	addw s10, a7, s4
	sw s11, 52(t2)
	sw s11, 56(t2)
	sw s9, 60(t2)
	sw s9, 64(t2)
	sw s6, 68(t2)
	sw s6, 72(t2)
	sw s7, 76(t2)
	sw s7, 80(t2)
	sw s8, 84(t2)
	sw s8, 88(t2)
	sw s10, 92(t2)
	sw s11, 96(t2)
	addw s11, s1, s4
	sw s9, 100(t2)
	sw s9, 104(t2)
	sw s6, 108(t2)
	sw s6, 112(t2)
	sw s7, 116(t2)
	sw s7, 120(t2)
	sw s8, 124(t2)
	sw s8, 128(t2)
	sw s10, 132(t2)
	sw s10, 136(t2)
	sw s11, 140(t2)
	sw s9, 144(t2)
	addw s9, s2, s4
	sw s6, 148(t2)
	sw s6, 152(t2)
	sw s7, 156(t2)
	sw s7, 160(t2)
	sw s8, 164(t2)
	sw s8, 168(t2)
	sw s10, 172(t2)
	sw s10, 176(t2)
	sw s11, 180(t2)
	sw s11, 184(t2)
	sw s9, 188(t2)
	sw s6, 192(t2)
	addw s6, s3, s4
	sw s7, 196(t2)
	addiw s4, s4, 1
	sw s7, 200(t2)
	sw s8, 204(t2)
	sw s8, 208(t2)
	sw s10, 212(t2)
	sw s10, 216(t2)
	sw s11, 220(t2)
	sw s11, 224(t2)
	sw s9, 228(t2)
	sw s9, 232(t2)
	sw s6, 236(t2)
	li t2, 4
	blt s4, t2, label9
	addiw a0, a0, 1
	li t0, 3
	blt a0, t0, label8
	addiw a5, a5, 1
	li a1, 2880
	mul a0, a5, a1
	addw a1, a3, a5
	add a2, a4, a0
	li a0, 2
	blt a5, a0, label107
	j label106
label99:
	mv a2, zero
pcrel573:
	auipc a0, %pcrel_hi(arr2)
	addi t2, a0, %pcrel_lo(pcrel573)
	li a0, 10
	sd t2, 136(sp)
	blt zero, a0, label221
label220:
	mv s4, zero
	mv a1, zero
	j label16
.p2align 2
label221:
	mv a0, zero
	addiw a4, a2, 1
	li a1, 2
	blt zero, a1, label318
	j label317
label16:
	li a3, 5760
	ld a2, 144(sp)
	ld t2, 136(sp)
	mul a0, a1, a3
	li a3, 10752
	add a2, a2, a0
	mul a0, a1, a3
	add a3, t2, a0
	li a0, 10
	bge a1, a0, label48
	mv a0, zero
label19:
	li a5, 2880
	li t0, 5376
	mul t1, a0, a5
	add a4, a2, t1
	mul t1, a0, t0
	li t0, 100
	add a5, a3, t1
	bge a0, t0, label46
	mv t0, zero
	mv t1, zero
	sub t3, zero, zero
	slli t2, t3, 6
	mv t3, zero
	add t1, a4, t2
	sub t5, zero, zero
	li t3, 1000
	slli t4, t5, 8
	add t2, a5, t4
	bge zero, t3, label44
label245:
	mv t3, zero
	mv t4, zero
	mv a6, zero
	sub t6, zero, zero
	slli t5, t6, 4
	add t4, t1, t5
	slli a7, t6, 7
	li t6, 10000
	add t5, t2, a7
	bge zero, t6, label28
.p2align 2
label253:
	mv t6, zero
	mv a6, zero
	mv s1, zero
	mv a7, zero
	mv a6, t4
	sub a7, zero, zero
	li s1, 100000
	slli s0, a7, 5
	add a7, t5, s0
	bge zero, s1, label42
.p2align 2
label266:
	mv s0, zero
	mv s2, zero
	mv s1, a6
	li s3, 1000000
	sub s5, zero, zero
	sh2add s2, s5, a7
	bge zero, s3, label40
.p2align 2
label274:
	mv s3, zero
.p2align 2
label36:
	sh2add s6, s3, s1
	li s9, -1603384363
	lw s5, 0(s6)
	mul s7, s4, s9
	srli s8, s7, 32
	add s6, s8, s4
	li s8, 817
	srliw s9, s6, 31
	sraiw s7, s6, 9
	add s6, s9, s7
	mulw s7, s6, s8
	subw s6, s4, s7
	addw s4, s5, s6
	sh2add s5, s3, s2
	addiw s3, s3, 1
	lw s6, 0(s5)
	ld s5, 152(sp)
	addw s4, s4, s6
	bgt s5, s3, label36
	addiw s0, s0, 1
	ld s1, 160(sp)
	ble s1, s0, label40
	slli s2, s0, 3
	sh3add s1, s0, a6
	li s3, 1000000
	sub s5, s2, s0
	sh2add s2, s5, a7
	blt s0, s3, label274
	j label40
label317:
	mv a2, a4
pcrel574:
	auipc a0, %pcrel_hi(arr2)
	addi t2, a0, %pcrel_lo(pcrel574)
	li a0, 10
	sd t2, 136(sp)
	blt a4, a0, label221
	j label220
.p2align 2
label318:
	mv a3, zero
	li a1, 3
	bge zero, a1, label321
.p2align 2
label322:
	mv a1, zero
	li a5, 2
	bge zero, a5, label56
.p2align 2
label57:
	li a5, 10752
	ld t2, 136(sp)
	addiw t4, a2, 4
	addiw t5, a2, 5
	addw a6, a2, a0
	mv a7, zero
	srli t3, a5, 1
	mul t1, a2, a5
	addw t6, a0, t5
	add t0, t2, t1
	mul t1, a0, t3
	slli t3, a3, 3
	add a5, t0, t1
	slli t1, a1, 3
	sub t0, t3, a3
	slli t2, t0, 8
	sub t0, t1, a1
	add a5, a5, t2
	slli t3, t0, 7
	addiw t0, a2, 2
	add t2, a5, t3
	addw t1, a0, t0
	addiw t3, a2, 3
	addw a5, a1, t1
	addw t0, a0, t3
	addw t1, a1, t0
	addw t0, a0, t4
	addw t4, a1, t6
	addw t3, a1, t0
	addiw t0, a2, 6
	addw t6, a0, t0
	addw t0, a0, a1
	addw t5, a1, t6
	addw t6, a1, a6
	addw a6, a4, t0
.p2align 2
label58:
	slli s1, a7, 3
	sub t0, s1, a7
	addiw a7, a7, 1
	slli s0, t0, 5
	add t0, t2, s0
	sw t6, 0(t0)
	sw a6, 4(t0)
	sw a5, 8(t0)
	sw t1, 12(t0)
	sw t3, 16(t0)
	sw t4, 20(t0)
	sw t5, 24(t0)
	sw t6, 28(t0)
	sw a6, 32(t0)
	sw a5, 36(t0)
	sw t1, 40(t0)
	sw t3, 44(t0)
	sw t4, 48(t0)
	sw t5, 52(t0)
	sw t6, 56(t0)
	sw a6, 60(t0)
	sw a5, 64(t0)
	sw t1, 68(t0)
	sw t3, 72(t0)
	sw t4, 76(t0)
	sw t5, 80(t0)
	sw t6, 84(t0)
	sw a6, 88(t0)
	sw a5, 92(t0)
	sw t1, 96(t0)
	sw t3, 100(t0)
	sw t4, 104(t0)
	sw t5, 108(t0)
	sw t6, 112(t0)
	sw a6, 116(t0)
	sw a5, 120(t0)
	sw t1, 124(t0)
	sw t3, 128(t0)
	sw t4, 132(t0)
	sw t5, 136(t0)
	sw t6, 140(t0)
	sw a6, 144(t0)
	sw a5, 148(t0)
	sw t1, 152(t0)
	sw t3, 156(t0)
	sw t4, 160(t0)
	sw t5, 164(t0)
	sw t6, 168(t0)
	sw a6, 172(t0)
	sw a5, 176(t0)
	sw t1, 180(t0)
	sw t3, 184(t0)
	sw t4, 188(t0)
	sw t5, 192(t0)
	sw t6, 196(t0)
	sw a6, 200(t0)
	sw a5, 204(t0)
	sw t1, 208(t0)
	sw t3, 212(t0)
	sw t4, 216(t0)
	sw t5, 220(t0)
	li t0, 4
	blt a7, t0, label58
	addiw a1, a1, 1
	li a5, 2
	blt a1, a5, label57
	addiw a3, a3, 1
	li a1, 3
	blt a3, a1, label322
	addiw a0, a0, 1
	addiw a4, a2, 1
	li a1, 2
	blt a0, a1, label318
	mv a2, a4
pcrel575:
	auipc a0, %pcrel_hi(arr2)
	addi t2, a0, %pcrel_lo(pcrel575)
	li a0, 10
	sd t2, 136(sp)
	blt a4, a0, label221
	j label220
.p2align 2
label56:
	addiw a3, a3, 1
	li a1, 3
	blt a3, a1, label322
	addiw a0, a0, 1
	addiw a4, a2, 1
	li a1, 2
	blt a0, a1, label318
	mv a2, a4
pcrel576:
	auipc a0, %pcrel_hi(arr2)
	addi t2, a0, %pcrel_lo(pcrel576)
	li a0, 10
	sd t2, 136(sp)
	blt a4, a0, label221
	j label220
.p2align 2
label40:
	addiw t6, t6, 1
	ld a6, 184(sp)
	ble a6, t6, label42
	sh1add a6, t6, t6
	slli s1, t6, 3
	slli a7, a6, 4
	add a6, t4, a7
	sub a7, s1, t6
	li s1, 100000
	slli s0, a7, 5
	add a7, t5, s0
	blt t6, s1, label266
.p2align 2
label42:
	addiw t3, t3, 1
	ld t4, 200(sp)
	ble t4, t3, label28
	slli t4, t3, 4
	slli a6, t3, 3
	sub t6, t4, t3
	slli t5, t6, 4
	sub t6, a6, t3
	add t4, t1, t5
	slli a7, t6, 7
	li t6, 10000
	add t5, t2, a7
	blt t3, t6, label253
label28:
	addiw t0, t0, 1
	ld t1, 192(sp)
	ble t1, t0, label44
	slli t1, t0, 4
	sub t3, t1, t0
	slli t2, t3, 6
	slli t3, t0, 3
	add t1, a4, t2
	sub t5, t3, t0
	li t3, 1000
	slli t4, t5, 8
	add t2, a5, t4
	blt t0, t3, label245
label44:
	addiw a0, a0, 1
	ld a4, 176(sp)
	bgt a4, a0, label19
label46:
	addiw a1, a1, 1
	ld a0, 168(sp)
	bgt a0, a1, label16
label48:
	mv a0, s4
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s10, 72(sp)
	ld s11, 80(sp)
	ld s9, 88(sp)
	ld s8, 96(sp)
	addi sp, sp, 272
	ret
.p2align 2
label321:
	addiw a0, a0, 1
	addiw a4, a2, 1
	li a1, 2
	blt a0, a1, label318
	j label317
