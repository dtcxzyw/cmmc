.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
graph:
	.zero	3600
.p2align 3
edges:
	.zero	4800
.text
.p2align 2
maxCliques:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[104]
	addi sp, sp, -144
	mv a4, a1
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s3, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	sd a1, 120(sp)
	sd a2, 112(sp)
	sd a0, 104(sp)
	lw a1, 0(a2)
	ble a1, zero, label88
pcrel361:
	auipc a1, %pcrel_hi(graph)
	li s4, 1
	mv s5, zero
	addiw a2, a0, 2
	addiw s0, a0, 4
	addiw s3, a0, 3
	addi s1, a1, %pcrel_lo(pcrel361)
	ld a4, 120(sp)
	sd a2, 136(sp)
	sh2add s2, a0, a4
	addiw a2, a0, 1
	sd a2, 128(sp)
	j label3
.p2align 2
label267:
	addiw s4, s4, 1
	ld a2, 112(sp)
	lw a0, 0(a2)
	bgt s4, a0, label113
.p2align 2
label3:
	ld a0, 104(sp)
	ld a4, 120(sp)
	sh2add a1, a0, a4
	addi a0, a4, 4
	sw s4, 0(a1)
	li a1, 1
.p2align 2
label6:
	ld a2, 128(sp)
	ble a2, a1, label103
	addiw a1, a1, 1
	ld a4, 120(sp)
	sh2add a3, a1, a4
	mv a4, a1
	ble a2, a1, label255
.p2align 2
label78:
	lw a2, 0(a0)
	lw t1, 0(a3)
	slli t0, a2, 4
	sub t2, t0, a2
	sh3add a5, t2, s1
	sh2add a2, t1, a5
	lw t0, 0(a2)
	beq t0, zero, label267
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 128(sp)
	bgt a2, a4, label78
label255:
	addi a0, a0, 4
	j label6
label103:
	li a0, 1
	bne a0, zero, label13
label11:
	addiw s4, s4, 1
	ld a2, 112(sp)
	lw a0, 0(a2)
	ble s4, a0, label3
label113:
	mv a0, s5
label81:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 144
	ret
label13:
	ld a2, 112(sp)
	lw a0, 0(a2)
	ble a0, zero, label118
	li s6, 1
	mv s7, zero
	j label14
.p2align 2
label143:
	mv a0, zero
.p2align 2
label29:
	addiw s6, s6, 1
	ld a2, 112(sp)
	lw a0, 0(a2)
	bgt s6, a0, label155
.p2align 2
label14:
	sw s6, 4(s2)
	li a1, 1
	ld a4, 120(sp)
	addi a0, a4, 4
.p2align 2
label17:
	ld a2, 136(sp)
	ble a2, a1, label124
	addiw a1, a1, 1
	ld a4, 120(sp)
	sh2add a3, a1, a4
	mv a4, a1
	ble a2, a1, label131
.p2align 2
label24:
	lw a2, 0(a0)
	lw t0, 0(a3)
	slli t2, a2, 4
	sub t1, t2, a2
	sh3add a5, t1, s1
	sh2add t2, t0, a5
	lw a2, 0(t2)
	beq a2, zero, label143
	addiw a4, a4, 1
	addi a3, a3, 4
	ld a2, 136(sp)
	bgt a2, a4, label24
label131:
	addi a0, a0, 4
	j label17
label124:
	li a0, 1
	beq a0, zero, label29
	ld a2, 112(sp)
	lw a0, 0(a2)
	ble a0, zero, label160
	li s8, 1
	mv s9, zero
	j label32
.p2align 2
label242:
	addiw s8, s8, 1
	ld a2, 112(sp)
	lw a0, 0(a2)
	bgt s8, a0, label176
.p2align 2
label32:
	sw s8, 8(s2)
	li a1, 1
	ld a4, 120(sp)
	addi a0, a4, 4
.p2align 2
label35:
	ble s3, a1, label166
	addiw a1, a1, 1
	ld a4, 120(sp)
	mv a3, a1
	sh2add a2, a1, a4
	ble s3, a1, label230
.p2align 2
label67:
	lw a4, 0(a0)
	lw t0, 0(a2)
	slli t1, a4, 4
	sub t2, t1, a4
	sh3add a5, t2, s1
	sh2add a4, t0, a5
	lw t1, 0(a4)
	beq t1, zero, label242
	addiw a3, a3, 1
	addi a2, a2, 4
	bgt s3, a3, label67
label230:
	addi a0, a0, 4
	j label35
label166:
	li a0, 1
	beq a0, zero, label40
	ld a2, 112(sp)
	lw a0, 0(a2)
	ble a0, zero, label181
	li s10, 1
	mv s11, zero
	li a1, 1
	sw s10, 12(s2)
	ld a4, 120(sp)
	addi a0, a4, 4
	j label48
label60:
	ld a2, 112(sp)
	ld a4, 120(sp)
	mv a0, s0
	mv a1, a4
	jal maxCliques
	max a1, s3, s11
	max s11, a0, a1
	addiw s10, s10, 1
	ld a2, 112(sp)
	lw a0, 0(a2)
	bgt s10, a0, label223
.p2align 2
label45:
	sw s10, 12(s2)
	li a1, 1
	ld a4, 120(sp)
	addi a0, a4, 4
.p2align 2
label48:
	ble s0, a1, label189
.p2align 2
label51:
	addiw a1, a1, 1
	ld a4, 120(sp)
	mv a3, a1
	sh2add a2, a1, a4
	ble s0, a1, label55
.p2align 2
label56:
	lw a4, 0(a0)
	lw t2, 0(a2)
	slli t0, a4, 4
	sub t1, t0, a4
	sh3add a5, t1, s1
	sh2add a4, t2, a5
	lw t0, 0(a4)
	bne t0, zero, label208
	mv a0, zero
.p2align 2
label214:
	addiw s10, s10, 1
	ld a2, 112(sp)
	lw a0, 0(a2)
	ble s10, a0, label45
label223:
	ld a2, 136(sp)
	addiw s8, s8, 1
	max a0, a2, s9
	ld a2, 112(sp)
	max s9, s11, a0
	lw a0, 0(a2)
	ble s8, a0, label32
label176:
	ld a2, 128(sp)
	max a0, a2, s7
	max s7, s9, a0
	j label29
label40:
	addiw s8, s8, 1
	ld a2, 112(sp)
	lw a0, 0(a2)
	ble s8, a0, label32
	j label176
label55:
	addi a0, a0, 4
	bgt s0, a1, label51
label189:
	li a0, 1
	bne a0, zero, label60
	j label214
.p2align 2
label208:
	addiw a3, a3, 1
	addi a2, a2, 4
	bgt s0, a3, label56
	j label55
label181:
	mv s11, zero
	ld a2, 136(sp)
	max a0, a2, s9
	max s9, zero, a0
	j label40
label155:
	ld a0, 104(sp)
	max a1, a0, s5
	max s5, s7, a1
	j label11
label88:
	mv a0, zero
	j label81
label160:
	mv s9, zero
	ld a2, 128(sp)
	max a0, a2, s7
	max s7, zero, a0
	j label29
label118:
	mv s7, zero
	ld a0, 104(sp)
	max a1, a0, s5
	max s5, zero, a1
	j label11
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[124] RegSpill[0] CalleeSaved[80]
	addi sp, sp, -208
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 200
	sd s6, 16(sp)
	sd s2, 24(sp)
	addi s2, sp, 80
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s5, 48(sp)
	sd s0, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	jal getint
	sw a0, 200(sp)
	jal getint
	li s0, 1
pcrel625:
	auipc a1, %pcrel_hi(graph)
	addiw s6, a0, -3
	mv s3, a0
	addi s4, a1, %pcrel_lo(pcrel625)
pcrel626:
	auipc a0, %pcrel_hi(edges)
	addi s5, a0, %pcrel_lo(pcrel626)
	ble s3, zero, label381
	mv s7, s5
	mv s8, zero
.p2align 2
label364:
	jal getint
	sw a0, 0(s7)
	jal getint
	addiw s8, s8, 1
	sw a0, 4(s7)
	ble s3, s8, label368
	addi s7, s7, 8
	j label364
label368:
	li a0, 3
	ble s3, a0, label438
	mv a0, s5
	mv a1, zero
	j label370
.p2align 2
label373:
	addi a0, a0, 32
.p2align 2
label370:
	ld a3, 0(a0)
	addiw a1, a1, 4
	srai a4, a3, 32
	sext.w a2, a3
	slli t0, a2, 4
	sub t1, t0, a2
	sh3add a5, t1, s4
	slli t1, a4, 4
	sh2add t0, a4, a5
	sub a3, t1, a4
	sw s0, 0(t0)
	sh3add t0, a3, s4
	sh2add a5, a2, t0
	sw s0, 0(a5)
	ld a3, 8(a0)
	srai a4, a3, 32
	sext.w a2, a3
	slli t1, a2, 4
	sub t0, t1, a2
	sh3add a5, t0, s4
	slli t0, a4, 4
	sh2add t1, a4, a5
	sub a3, t0, a4
	sw s0, 0(t1)
	sh3add t1, a3, s4
	sh2add a5, a2, t1
	sw s0, 0(a5)
	ld a3, 16(a0)
	srai a4, a3, 32
	sext.w a2, a3
	slli t0, a2, 4
	sub t1, t0, a2
	sh3add a5, t1, s4
	slli t1, a4, 4
	sh2add t0, a4, a5
	sub a3, t1, a4
	sh3add a5, a3, s4
	sw s0, 0(t0)
	sh2add t0, a2, a5
	sw s0, 0(t0)
	ld a3, 24(a0)
	srai a4, a3, 32
	sext.w a2, a3
	slli t0, a2, 4
	sub t1, t0, a2
	sh3add a5, t1, s4
	slli t1, a4, 4
	sh2add t0, a4, a5
	sub a3, t1, a4
	sh3add a5, a3, s4
	sw s0, 0(t0)
	sh2add t0, a2, a5
	sw s0, 0(t0)
	bgt s6, a1, label373
label374:
	ble s3, a1, label381
	sh3add a0, a1, s5
	j label377
label380:
	addi a0, a0, 8
label377:
	ld a3, 0(a0)
	addiw a1, a1, 1
	srai a4, a3, 32
	sext.w a2, a3
	slli t0, a2, 4
	sub t1, t0, a2
	sh3add a5, t1, s4
	slli t1, a4, 4
	sh2add t0, a4, a5
	sub a5, t1, a4
	sw s0, 0(t0)
	sh3add t0, a5, s4
	sh2add a3, a2, t0
	sw s0, 0(a3)
	bgt s3, a1, label380
label381:
	mv a0, s0
	mv a1, s2
	mv a2, s1
	jal maxCliques
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 208
	ret
label438:
	mv a1, zero
	j label374
