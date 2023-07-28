.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	3600
.text
search:
.p2align 2
	addi sp, sp, -104
	sd s0, 96(sp)
	mv s0, a0
	sd s5, 88(sp)
pcrel148:
	auipc a0, %pcrel_hi(a)
	mv s5, a4
	sd s1, 80(sp)
	mv s1, a1
	sd s6, 72(sp)
	mv s6, a6
	sd s3, 64(sp)
	mv s3, a2
	sd s4, 56(sp)
	mv s4, a3
	sd s7, 48(sp)
	mv s7, a5
	sd s8, 40(sp)
	mv s8, a7
	sd s9, 32(sp)
	addi s9, a0, %pcrel_lo(pcrel148)
	sd s10, 24(sp)
	li a0, 10
	sd s2, 16(sp)
	sd s11, 8(sp)
	sd ra, 0(sp)
	bgt a2, a0, label34
	lui s10, 262144
	mv s2, zero
	j label4
label34:
	lui a0, 262144
label2:
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s2, 16(sp)
	ld s10, 24(sp)
	ld s9, 32(sp)
	ld s8, 40(sp)
	ld s7, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s6, 72(sp)
	ld s1, 80(sp)
	ld s5, 88(sp)
	ld s0, 96(sp)
	addi sp, sp, 104
	ret
label4:
	sh3add a3, s2, s4
	li a0, 4
	bge s2, a0, label7
	mv a2, zero
	mv a0, s1
	mv a1, s0
	j label8
label7:
	li a2, 10
	lui a0, 262144
	bgt s10, a2, label2
	mv a0, s10
	j label2
label13:
	lw a5, 0(s8)
	bne a0, a5, label14
	li a0, 1
	j label2
label14:
	slti a2, a2, 2
	sltiu a5, a1, 1
	or t0, a2, a5
	beq t0, zero, label16
label15:
	addiw s2, s2, 1
	j label4
label16:
	lw a2, 0(s7)
	addiw t0, a2, 1
	xor a5, a1, t0
	sltiu t0, a0, 1
	sltiu a2, a5, 1
	or a5, a2, t0
	bne a5, zero, label15
	lw a5, 0(s5)
	addiw a2, a5, 1
	beq a0, a2, label15
	sh2add s11, a0, a4
	sw zero, 0(s11)
	lw a2, 0(a3)
	lw a4, 4(a3)
	subw a1, a1, a2
	subw a3, a0, a4
	addiw a2, s3, 1
	mv a0, a1
	mv a1, a3
	mv a3, s4
	mv a4, s5
	mv a5, s7
	mv a6, s6
	mv a7, s8
	jal search
	addiw s2, s2, 1
	addiw a1, a0, 1
	li a0, 1
	min s10, s10, a1
	sw a0, 0(s11)
	j label4
label8:
	slli a5, a1, 4
	sub t0, a5, a1
	sh3add a4, t0, s9
	li t0, 1
	sh2add t1, a0, a4
	lw a5, 0(t1)
	bne a5, t0, label19
label12:
	lw a5, 0(s6)
	beq a1, a5, label13
	j label14
label19:
	lw a5, 0(s6)
	beq a1, a5, label21
label98:
	lw a5, 0(a3)
	addiw a2, a2, 1
	lw a4, 4(a3)
	addw a1, a1, a5
	addw a0, a0, a4
	j label8
label21:
	lw a5, 0(s8)
	beq a0, a5, label12
	j label98
.globl main
main:
.p2align 2
	addi sp, sp, -152
	li a0, 1
	li a1, -1
	sd s1, 32(sp)
	addi s1, sp, 48
	sd s6, 40(sp)
	mv s6, zero
	sd s2, 56(sp)
	addi s2, sp, 72
	sd s3, 64(sp)
	addi s3, sp, 76
	sd s4, 0(sp)
	addi s4, sp, 88
	sd s5, 8(sp)
	addi s5, sp, 104
	sd s0, 136(sp)
	sd s10, 16(sp)
	sd s7, 96(sp)
	sd s9, 24(sp)
	sd s8, 80(sp)
	sd ra, 144(sp)
	sw a0, 104(sp)
	sw zero, 108(sp)
	sw a1, 112(sp)
	sw zero, 116(sp)
	sw zero, 120(sp)
	sw a0, 124(sp)
pcrel641:
	auipc a0, %pcrel_hi(a)
	sw zero, 128(sp)
	addi s0, a0, %pcrel_lo(pcrel641)
	sw a1, 132(sp)
	sw zero, 72(sp)
	sw zero, 48(sp)
	mv s10, zero
.p2align 2
label150:
	jal getint
	sw a0, 88(sp)
	mv s7, a0
	jal getint
	sw a0, 76(sp)
	beq s7, zero, label172
	mv a2, zero
	j label153
.p2align 2
label171:
	mv a0, s10
	li a2, 1
	mv a1, s9
	mv a3, s5
	mv a4, s4
	mv a5, s3
	mv a6, s2
	mv a7, s1
	jal search
	mv a1, a0
	li a2, 11
	blt a0, a2, label617
	li a1, -1
.p2align 2
label617:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s6, s9
	j label150
label172:
	mv a0, zero
	ld ra, 144(sp)
	ld s8, 80(sp)
	ld s9, 24(sp)
	ld s7, 96(sp)
	ld s10, 16(sp)
	ld s0, 136(sp)
	ld s5, 8(sp)
	ld s4, 0(sp)
	ld s3, 64(sp)
	ld s2, 56(sp)
	ld s6, 40(sp)
	ld s1, 32(sp)
	addi sp, sp, 152
	ret
.p2align 2
label390:
	li s8, 1
	lw a0, 88(sp)
	ble s8, a0, label164
	addiw s6, s6, 1
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label390
	j label171
.p2align 2
label164:
	jal getint
	li a2, 2
	sh2add a1, s8, s7
	sw a0, 0(a1)
	beq a0, a2, label402
	li a1, 3
	beq a0, a1, label169
	addiw s8, s8, 1
	lw a0, 88(sp)
	ble s8, a0, label164
	addiw s6, s6, 1
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label390
	j label171
.p2align 2
label402:
	mv s9, s8
	mv s10, s6
	addiw s8, s8, 1
	lw a0, 88(sp)
	ble s8, a0, label164
	addiw s6, s6, 1
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label390
	j label171
.p2align 2
label169:
	sw s6, 72(sp)
	sw s8, 48(sp)
	addiw s8, s8, 1
	lw a0, 88(sp)
	ble s8, a0, label164
	addiw s6, s6, 1
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label390
	j label171
.p2align 2
label153:
	slli a1, a2, 4
	sub a3, a1, a2
	addiw a2, a2, 4
	li a1, 1
	sh3add a0, a3, s0
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	sw a1, 52(a0)
	sw a1, 56(a0)
	sw a1, 60(a0)
	sw a1, 64(a0)
	sw a1, 68(a0)
	sw a1, 72(a0)
	sw a1, 76(a0)
	sw a1, 80(a0)
	sw a1, 84(a0)
	sw a1, 88(a0)
	sw a1, 92(a0)
	sw a1, 96(a0)
	sw a1, 100(a0)
	sw a1, 104(a0)
	sw a1, 108(a0)
	sw a1, 112(a0)
	sw a1, 116(a0)
	sw a1, 120(a0)
	sw a1, 124(a0)
	sw a1, 128(a0)
	sw a1, 132(a0)
	sw a1, 136(a0)
	sw a1, 140(a0)
	sw a1, 144(a0)
	sw a1, 148(a0)
	sw a1, 152(a0)
	sw a1, 156(a0)
	sw a1, 160(a0)
	sw a1, 164(a0)
	sw a1, 168(a0)
	sw a1, 172(a0)
	sw a1, 176(a0)
	sw a1, 180(a0)
	sw a1, 184(a0)
	sw a1, 188(a0)
	sw a1, 192(a0)
	sw a1, 196(a0)
	sw a1, 200(a0)
	sw a1, 204(a0)
	sw a1, 208(a0)
	sw a1, 212(a0)
	sw a1, 216(a0)
	sw a1, 220(a0)
	sw a1, 224(a0)
	sw a1, 228(a0)
	sw a1, 232(a0)
	sw a1, 236(a0)
	sw a1, 240(a0)
	sw a1, 244(a0)
	sw a1, 248(a0)
	sw a1, 252(a0)
	sw a1, 256(a0)
	sw a1, 260(a0)
	sw a1, 264(a0)
	sw a1, 268(a0)
	sw a1, 272(a0)
	sw a1, 276(a0)
	sw a1, 280(a0)
	sw a1, 284(a0)
	sw a1, 288(a0)
	sw a1, 292(a0)
	sw a1, 296(a0)
	sw a1, 300(a0)
	sw a1, 304(a0)
	sw a1, 308(a0)
	sw a1, 312(a0)
	sw a1, 316(a0)
	sw a1, 320(a0)
	sw a1, 324(a0)
	sw a1, 328(a0)
	sw a1, 332(a0)
	sw a1, 336(a0)
	sw a1, 340(a0)
	sw a1, 344(a0)
	sw a1, 348(a0)
	sw a1, 352(a0)
	sw a1, 356(a0)
	sw a1, 360(a0)
	sw a1, 364(a0)
	sw a1, 368(a0)
	sw a1, 372(a0)
	sw a1, 376(a0)
	sw a1, 380(a0)
	sw a1, 384(a0)
	sw a1, 388(a0)
	sw a1, 392(a0)
	sw a1, 396(a0)
	sw a1, 400(a0)
	sw a1, 404(a0)
	sw a1, 408(a0)
	sw a1, 412(a0)
	sw a1, 416(a0)
	sw a1, 420(a0)
	sw a1, 424(a0)
	sw a1, 428(a0)
	sw a1, 432(a0)
	sw a1, 436(a0)
	sw a1, 440(a0)
	sw a1, 444(a0)
	sw a1, 448(a0)
	sw a1, 452(a0)
	sw a1, 456(a0)
	sw a1, 460(a0)
	sw a1, 464(a0)
	sw a1, 468(a0)
	sw a1, 472(a0)
	sw a1, 476(a0)
	li a0, 28
	blt a2, a0, label153
	slli a0, a2, 4
	mv s9, s6
	sub a2, a0, a2
	li a0, 1
	sh3add a1, a2, s0
	mv s6, a0
	sw a0, 0(a1)
	sw a0, 4(a1)
	sw a0, 8(a1)
	sw a0, 12(a1)
	sw a0, 16(a1)
	sw a0, 20(a1)
	sw a0, 24(a1)
	sw a0, 28(a1)
	sw a0, 32(a1)
	sw a0, 36(a1)
	sw a0, 40(a1)
	sw a0, 44(a1)
	sw a0, 48(a1)
	sw a0, 52(a1)
	sw a0, 56(a1)
	sw a0, 60(a1)
	sw a0, 64(a1)
	sw a0, 68(a1)
	sw a0, 72(a1)
	sw a0, 76(a1)
	sw a0, 80(a1)
	sw a0, 84(a1)
	sw a0, 88(a1)
	sw a0, 92(a1)
	sw a0, 96(a1)
	sw a0, 100(a1)
	sw a0, 104(a1)
	sw a0, 108(a1)
	sw a0, 112(a1)
	sw a0, 116(a1)
	sw a0, 120(a1)
	sw a0, 124(a1)
	sw a0, 128(a1)
	sw a0, 132(a1)
	sw a0, 136(a1)
	sw a0, 140(a1)
	sw a0, 144(a1)
	sw a0, 148(a1)
	sw a0, 152(a1)
	sw a0, 156(a1)
	sw a0, 160(a1)
	sw a0, 164(a1)
	sw a0, 168(a1)
	sw a0, 172(a1)
	sw a0, 176(a1)
	sw a0, 180(a1)
	sw a0, 184(a1)
	sw a0, 188(a1)
	sw a0, 192(a1)
	sw a0, 196(a1)
	sw a0, 200(a1)
	sw a0, 204(a1)
	sw a0, 208(a1)
	sw a0, 212(a1)
	sw a0, 216(a1)
	sw a0, 220(a1)
	sw a0, 224(a1)
	sw a0, 228(a1)
	sw a0, 232(a1)
	sw a0, 236(a1)
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label390
	j label171
