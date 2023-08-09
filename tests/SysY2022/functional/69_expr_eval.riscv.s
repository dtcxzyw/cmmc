.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
oprs:
	.zero	1024
.align 8
ops:
	.zero	1024
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s8, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s3, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s8, a0
	jal getch
	li s7, 256
	li s3, 10
	li s5, 43
	li s6, 45
pcrel870:
	auipc s2, %pcrel_hi(ops)
pcrel871:
	auipc s0, %pcrel_hi(oprs)
	addi s4, s2, %pcrel_lo(pcrel870)
	addi s1, s0, %pcrel_lo(pcrel871)
.p2align 2
label2:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a4, a3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	bne a2, zero, label2
	addiw s9, a0, -48
	bgeu s9, s3, label4
.p2align 2
label113:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s3, label547
	sh2add a0, s9, s9
	sh1add s9, a0, a1
	j label113
label4:
	jal getch
	li s11, 1
	mv s10, zero
label5:
	beq s8, zero, label9
	mv s9, a0
	mv a1, zero
	mv a0, s1
	j label15
.p2align 2
label112:
	addi a0, a0, 256
.p2align 2
label15:
	sd zero, 0(a0)
	addi a1, a1, 64
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	blt a1, s7, label112
	mv a0, s4
	mv a1, zero
.p2align 2
label19:
	sd zero, 0(a0)
	addi a1, a1, 64
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	bge a1, s7, label272
	addi a0, a0, 256
	j label19
.p2align 2
label272:
	bne s11, zero, label108
pcrel872:
	auipc s0, %pcrel_hi(oprs)
	lw a1, %pcrel_lo(pcrel872)(s0)
	xori a2, s9, 32
	addiw a0, a1, 1
	sh2add a3, a0, s1
	sw a0, %pcrel_lo(pcrel872)(s0)
	sltiu a0, a2, 1
	sw s10, 0(a3)
	xori a3, s9, 10
	sltiu a1, a3, 1
	or a2, a0, a1
	beq a2, zero, label30
.p2align 2
label107:
	jal getch
	xori a3, a0, 10
	xori a4, a0, 32
	sltiu a2, a3, 1
	sltiu a1, a4, 1
	or a4, a1, a2
	bne a4, zero, label107
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label298
.p2align 2
label32:
	jal getch
	mv a1, a0
	xori a2, s9, 43
	xori a3, s9, 45
	sltiu a0, a2, 1
	sltiu a4, a3, 1
	or a2, a0, a4
	bne a2, zero, label305
.p2align 2
label304:
	xori a0, s9, 42
	xori a4, s9, 47
	xori a3, s9, 37
	li s11, 20
	sltiu a2, a0, 1
	sltiu a5, a4, 1
	sltiu a4, a3, 1
	or a0, a2, a5
	or a2, a0, a4
	bne a2, zero, label38
	mv s11, zero
	mv s9, s10
	mv a0, a1
	xori a2, a1, 32
	xori a3, a1, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	bne a2, zero, label103
	j label79
.p2align 2
label106:
	sh2add a0, s9, s9
	sh1add s9, a0, a1
.p2align 2
label104:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label106
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	beq a2, zero, label79
.p2align 2
label103:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a4, a3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	bne a2, zero, label103
	addiw a1, a0, -48
	bltu a1, s3, label455
.p2align 2
label81:
	jal getch
	li a2, 1
	mv a1, a0
	mv a0, s9
pcrel873:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel873)(s2)
	bne a4, zero, label87
	j label86
.p2align 2
label99:
	addw a3, a4, t0
pcrel874:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel874)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel874)(s0)
	sw a3, 0(a5)
pcrel875:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel875)(s2)
	beq a4, zero, label86
.p2align 2
label87:
	sh2add a5, a4, s4
	addiw t0, a4, -1
	lw a3, 0(a5)
pcrel876:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel876)(s2)
pcrel877:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(pcrel877)(s0)
	addi t3, a5, -2
	addi t2, a5, -1
	sh2add t1, a5, s1
	lw a4, 0(t1)
	sw t2, %pcrel_lo(pcrel877)(s0)
	lw t0, -4(t1)
	sw t3, %pcrel_lo(pcrel877)(s0)
	beq a3, s5, label99
	beq a3, s6, label90
	li a5, 42
	beq a3, a5, label92
	li a5, 47
	beq a3, a5, label96
	li a5, 37
	bne a3, a5, label848
	remw a3, t0, a4
	lw t0, %pcrel_lo(pcrel877)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel877)(s0)
	sw a3, 0(a5)
	lw a4, %pcrel_lo(pcrel876)(s2)
	bne a4, zero, label87
	j label86
.p2align 2
label96:
	divw a3, t0, a4
pcrel878:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel878)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel878)(s0)
	sw a3, 0(a5)
pcrel879:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel879)(s2)
	bne a4, zero, label87
	j label86
label60:
	mulw a2, a3, t0
label54:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(label54)(s0)
	addiw a3, a4, 1
	sh2add a5, a3, s1
	sw a3, %pcrel_lo(label54)(s0)
	sw a2, 0(a5)
pcrel880:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel880)(s2)
	bne a3, zero, label52
label346:
	addiw a2, a3, 1
	sh2add a4, a2, s4
pcrel881:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel881)(s2)
	sw s9, 0(a4)
	beq a1, zero, label68
label413:
	mv s9, a0
	mv s11, a1
.p2align 2
label108:
	li a0, 112
	jal putch
	li a0, 97
	jal putch
	li a0, 110
	jal putch
	li a0, 105
	jal putch
	li a0, 99
	jal putch
	li a0, 33
	jal putch
	mv a0, s3
	jal putch
	li a0, -1
.p2align 2
label24:
	jal putint
	mv a0, s3
	jal putch
	addiw s8, s8, -1
	beq s8, zero, label9
	mv a0, s1
	mv a1, zero
	j label15
.p2align 2
label86:
	auipc s0, %pcrel_hi(oprs)
	lw a5, %pcrel_lo(label86)(s0)
	mv s9, a1
	mv s10, a0
	mv s11, a2
	sh2add a4, a5, s1
	lw a3, 0(a4)
	mv a0, a3
	j label24
.p2align 2
label90:
	subw a3, t0, a4
pcrel882:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel882)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel882)(s0)
	sw a3, 0(a5)
pcrel883:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel883)(s2)
	bne a4, zero, label87
	j label86
.p2align 2
label818:
	xori a3, a1, 32
	xori a0, a1, 10
	sltiu a2, a3, 1
	sltiu a4, a0, 1
	or a3, a2, a4
	beq a3, zero, label841
.p2align 2
label41:
	jal getch
	xori a3, a0, 10
	xori a2, a0, 32
	sltiu a4, a3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	bne a2, zero, label41
.p2align 2
label42:
	addiw a1, a0, -48
	bltu a1, s3, label333
	jal getch
	li a1, 1
pcrel884:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel884)(s2)
	beq a3, zero, label346
.p2align 2
label52:
	sh2add t0, a3, s4
	lw a2, 0(t0)
	xori t1, a2, 45
	xori a5, a2, 43
	sltiu t0, t1, 1
	sltiu a4, a5, 1
	or a5, a4, t0
	beq a5, zero, label66
	li a4, 11
	bge s11, a4, label67
.p2align 2
label53:
	addiw t0, a3, -1
pcrel885:
	auipc s2, %pcrel_hi(ops)
	sw t0, %pcrel_lo(pcrel885)(s2)
pcrel886:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel886)(s0)
	addi t1, a4, -2
	addi t2, a4, -1
	sh2add a5, a4, s1
	lw a3, 0(a5)
	sw t2, %pcrel_lo(pcrel886)(s0)
	lw t0, -4(a5)
	sw t1, %pcrel_lo(pcrel886)(s0)
	beq a2, s5, label56
	beq a2, s6, label58
	li a5, 42
	beq a2, a5, label60
	li a5, 47
	beq a2, a5, label62
	li a5, 37
	beq a2, a5, label64
	mv a2, zero
	j label54
.p2align 2
label305:
	mv s11, s3
	bne s3, zero, label818
.p2align 2
label315:
	mv s9, s10
	mv a0, a1
	xori a2, a1, 32
	xori a3, a1, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	bne a2, zero, label103
	j label79
.p2align 2
label92:
	mulw a3, a4, t0
pcrel887:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel887)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel887)(s0)
	sw a3, 0(a5)
pcrel888:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel888)(s2)
	bne a4, zero, label87
	j label86
label68:
	auipc s0, %pcrel_hi(oprs)
	lw a2, %pcrel_lo(label68)(s0)
	addiw a1, a2, 1
	xori a2, a0, 32
	sh2add a3, a1, s1
	sw a1, %pcrel_lo(label68)(s0)
	sltiu a1, a2, 1
	sw s10, 0(a3)
	xori a3, a0, 10
	sltiu a4, a3, 1
	or a2, a1, a4
	beq a2, zero, label422
.p2align 2
label69:
	jal getch
	xori a2, a0, 10
	xori a3, a0, 32
	sltiu a4, a2, 1
	sltiu a1, a3, 1
	or a3, a1, a4
	bne a3, zero, label69
label422:
	mv s9, a0
	addiw a0, a0, -48
	bltu a0, s3, label435
	jal getch
	xori a2, s9, 43
	xori a3, s9, 45
	mv a1, a0
	sltiu a4, a3, 1
	sltiu a0, a2, 1
	or a2, a0, a4
	bne a2, zero, label305
	j label304
label66:
	xori a5, a2, 42
	xori t2, a2, 47
	xori t0, a2, 37
	sltiu a4, a5, 1
	sltiu t1, t2, 1
	sltiu t2, t0, 1
	or a5, a4, t1
	slti t1, s11, 1
	or a4, a5, t2
	or t0, a4, t1
	bne t0, zero, label53
label67:
	addiw a2, a3, 1
	sh2add a4, a2, s4
pcrel889:
	auipc s2, %pcrel_hi(ops)
	sw a2, %pcrel_lo(pcrel889)(s2)
	sw s9, 0(a4)
	bne a1, zero, label413
	j label68
.p2align 2
label38:
	beq s11, zero, label315
	xori a3, a1, 32
	xori a0, a1, 10
	sltiu a2, a3, 1
	sltiu a4, a0, 1
	or a3, a2, a4
	bne a3, zero, label41
label841:
	mv a0, a1
	j label42
label56:
	addw a2, a3, t0
pcrel890:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel890)(s0)
	addiw a3, a4, 1
	sh2add a5, a3, s1
	sw a3, %pcrel_lo(pcrel890)(s0)
	sw a2, 0(a5)
pcrel891:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel891)(s2)
	bne a3, zero, label52
	addiw a2, a3, 1
	sh2add a4, a2, s4
	sw a2, %pcrel_lo(pcrel891)(s2)
	sw s9, 0(a4)
	bne a1, zero, label413
	j label68
label9:
	mv a0, zero
	ld ra, 0(sp)
	ld s8, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label848:
	mv a3, zero
pcrel892:
	auipc s0, %pcrel_hi(oprs)
	lw t0, %pcrel_lo(pcrel892)(s0)
	addiw a4, t0, 1
	sh2add a5, a4, s1
	sw a4, %pcrel_lo(pcrel892)(s0)
	sw zero, 0(a5)
pcrel893:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel893)(s2)
	bne a4, zero, label87
	j label86
label58:
	subw a2, t0, a3
pcrel894:
	auipc s0, %pcrel_hi(oprs)
	lw a4, %pcrel_lo(pcrel894)(s0)
	addiw a3, a4, 1
	sh2add a5, a3, s1
	sw a3, %pcrel_lo(pcrel894)(s0)
	sw a2, 0(a5)
pcrel895:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel895)(s2)
	bne a3, zero, label52
	j label346
label30:
	addiw a0, s9, -48
	bgeu a0, s3, label32
.p2align 2
label298:
	mv s9, a0
	j label104
label79:
	addiw a1, a0, -48
	bgeu a1, s3, label81
.p2align 2
label455:
	mv s9, a1
	j label100
.p2align 2
label102:
	sh2add a0, s9, s9
	sh1add s9, a0, a2
.p2align 2
label100:
	jal getch
	addiw a2, a0, -48
	bltu a2, s3, label102
	mv a1, a0
	mv a2, zero
pcrel896:
	auipc s2, %pcrel_hi(ops)
	lw a4, %pcrel_lo(pcrel896)(s2)
	mv a0, s9
	bne a4, zero, label87
	j label86
label62:
	divw a2, t0, a3
	j label54
label64:
	remw a2, t0, a3
	j label54
label435:
	mv s9, a0
	j label73
.p2align 2
label75:
	sh2add a0, s9, s9
	sh1add s9, a0, a1
.p2align 2
label73:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label75
	xori a2, a0, 32
	xori a3, a0, 10
	sltiu a1, a2, 1
	sltiu a4, a3, 1
	or a2, a1, a4
	bne a2, zero, label103
	j label79
label547:
	mv s10, s9
	mv s11, zero
	j label5
label333:
	mv s10, a1
	j label44
.p2align 2
label46:
	sh2add a0, s10, s10
	sh1add s10, a0, a1
.p2align 2
label44:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label46
	mv a1, zero
pcrel897:
	auipc s2, %pcrel_hi(ops)
	lw a3, %pcrel_lo(pcrel897)(s2)
	bne a3, zero, label52
	addiw a2, a3, 1
	sh2add a4, a2, s4
	sw a2, %pcrel_lo(pcrel897)(s2)
	sw s9, 0(a4)
	j label68
