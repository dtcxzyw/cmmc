.data
.align 4
a:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -352
	sd s0, 248(sp)
	sd s5, 256(sp)
	sd s1, 264(sp)
	sd s6, 272(sp)
	sd s8, 280(sp)
	sd s2, 288(sp)
	sd s3, 296(sp)
	sd s4, 304(sp)
	sd s7, 312(sp)
	sd s9, 320(sp)
	sd s10, 328(sp)
	sd s11, 336(sp)
	sd ra, 344(sp)
	addi a1, sp, 96
	sd a1, 80(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 56
	jal _sysy_starttime
pcrel249:
	auipc a0, %pcrel_hi(a)
	addi a1, a0, %pcrel_lo(pcrel249)
	sd a1, 72(sp)
	ld a1, 80(sp)
	addi a2, a1, 4
	ld a1, 80(sp)
	addi s8, a1, 8
	sd s8, 240(sp)
	ld a1, 80(sp)
	addi s8, a1, 12
	sd s8, 232(sp)
	ld a1, 80(sp)
	addi s8, a1, 16
	sd s8, 224(sp)
	ld a1, 80(sp)
	addi s8, a1, 20
	sd s8, 0(sp)
	ld a1, 80(sp)
	addi s8, a1, 24
	sd s8, 8(sp)
	ld a1, 80(sp)
	addi s8, a1, 28
	sd s8, 16(sp)
	ld a1, 80(sp)
	addi a3, a1, 32
	ld a1, 80(sp)
	addi a4, a1, 36
	ld a1, 80(sp)
	addi a5, a1, 40
	ld a1, 80(sp)
	addi t1, a1, 44
	ld a1, 80(sp)
	addi t2, a1, 48
	ld a1, 80(sp)
	addi t3, a1, 52
	ld a1, 80(sp)
	addi t4, a1, 56
	ld a1, 80(sp)
	addi t5, a1, 60
	ld a1, 80(sp)
	addi t6, a1, 64
	ld a1, 80(sp)
	addi a6, a1, 68
	ld a1, 80(sp)
	addi a7, a1, 72
	ld a1, 80(sp)
	addi s2, a1, 76
	ld a1, 80(sp)
	addi s3, a1, 80
	ld a1, 80(sp)
	addi s4, a1, 84
	ld a1, 80(sp)
	addi s5, a1, 88
	ld a1, 80(sp)
	addi s6, a1, 92
	ld a1, 80(sp)
	addi s8, a1, 96
	sd s8, 24(sp)
	ld a1, 80(sp)
	addi s8, a1, 100
	sd s8, 56(sp)
	ld a1, 80(sp)
	addi s8, a1, 104
	sd s8, 88(sp)
	ld a1, 80(sp)
	addi s8, a1, 108
	sd s8, 64(sp)
	ld a1, 80(sp)
	addi s8, a1, 112
	sd s8, 32(sp)
	ld a1, 80(sp)
	addi s8, a1, 116
	sd s8, 40(sp)
	ld a1, 80(sp)
	addi s8, a1, 120
	sd s8, 48(sp)
	ble s0, zero, label2
	mv a1, s1
	mv a0, s0
label3:
	li s0, 19971231
	mulw a1, a1, s0
	li s0, 19981013
	addw a1, a1, s0
	li s0, 1152921497
	mul s0, a1, s0
	srai s1, s0, 60
	srli s0, s0, 63
	add s0, s0, s1
	li s1, 1000000007
	mulw s0, s0, s1
	subw a1, a1, s0
	addiw s0, a0, -1
	bge a1, zero, label65
	j label64
label65:
	mv a0, a1
label6:
	li a1, 19971231
	mulw a1, a0, a1
	li s1, 19981013
	addw a1, a1, s1
	li s1, 1152921497
	mul s1, a1, s1
	srai s7, s1, 60
	srli s1, s1, 63
	add s1, s1, s7
	li s7, 1000000007
	mulw s1, s1, s7
	subw a1, a1, s1
	li s1, 1876499845
	mul s1, a0, s1
	srai s7, s1, 49
	srli s1, s1, 63
	add s1, s1, s7
	li s7, 300000
	mulw s1, s1, s7
	subw s1, a0, s1
	bge a1, zero, label73
	j label72
label73:
	mv a0, a1
label9:
	li a1, -2004318071
	mul a1, s1, a1
	srli a1, a1, 32
	add a1, a1, s1
	sraiw s7, a1, 4
	srliw a1, a1, 31
	add a1, a1, s7
	li s7, 1
	sw s7, 96(sp)
	li s7, 2
	sw s7, 0(a2)
	li s7, 4
	ld s8, 240(sp)
	sw s7, 0(s8)
	li s7, 8
	ld s8, 232(sp)
	sw s7, 0(s8)
	li s7, 16
	ld s8, 224(sp)
	sw s7, 0(s8)
	li s7, 32
	ld s8, 0(sp)
	sw s7, 0(s8)
	li s7, 64
	ld s8, 8(sp)
	sw s7, 0(s8)
	li s7, 128
	ld s8, 16(sp)
	sw s7, 0(s8)
	li s7, 256
	sw s7, 0(a3)
	li s7, 512
	sw s7, 0(a4)
	li s7, 1024
	sw s7, 0(a5)
	li s7, 2048
	sw s7, 0(t1)
	li s7, 4096
	sw s7, 0(t2)
	li s7, 8192
	sw s7, 0(t3)
	li s7, 16384
	sw s7, 0(t4)
	li s7, 32768
	sw s7, 0(t5)
	li s7, 65536
	sw s7, 0(t6)
	li s7, 131072
	sw s7, 0(a6)
	li s7, 262144
	sw s7, 0(a7)
	li s7, 524288
	sw s7, 0(s2)
	li s7, 1048576
	sw s7, 0(s3)
	li s7, 2097152
	sw s7, 0(s4)
	li s7, 4194304
	sw s7, 0(s5)
	li s7, 8388608
	sw s7, 0(s6)
	li s7, 16777216
	ld s8, 24(sp)
	sw s7, 0(s8)
	li s7, 33554432
	ld s8, 56(sp)
	sw s7, 0(s8)
	li s7, 67108864
	ld s8, 88(sp)
	sw s7, 0(s8)
	li s7, 134217728
	ld s8, 64(sp)
	sw s7, 0(s8)
	li s7, 268435456
	ld s8, 32(sp)
	sw s7, 0(s8)
	li s7, 536870912
	ld s8, 40(sp)
	sw s7, 0(s8)
	li s7, 1073741824
	ld s8, 48(sp)
	sw s7, 0(s8)
	li s7, 9999
	ble a1, s7, label12
	ble s0, zero, label2
label238:
	mv a1, a0
	mv a0, s0
	j label3
label64:
	li a0, 1000000007
	addw a0, a1, a0
	j label6
label12:
	slliw s7, a1, 2
	ld a1, 72(sp)
	add s7, a1, s7
	lw s8, 0(s7)
	li a1, -2004318071
	mul a1, s1, a1
	srli a1, a1, 32
	add a1, a1, s1
	sraiw s9, a1, 4
	srliw a1, a1, 31
	add a1, a1, s9
	li s9, 30
	mulw a1, a1, s9
	subw a1, s1, a1
	slli s1, a1, 2
	ld a1, 80(sp)
	add s1, a1, s1
	lw a1, 0(s1)
	divw s9, s8, a1
	srliw s10, s9, 31
	add s10, s9, s10
	sraiw s11, s10, 1
	li s10, 2
	mulw s11, s11, s10
	subw s9, s9, s11
	srliw s11, a0, 31
	add s11, a0, s11
	sraiw s11, s11, 1
	mulw s10, s11, s10
	subw s10, a0, s10
	beq s9, s10, label17
	sltiu s8, s9, 1
	xori s11, s10, 1
	sltiu s11, s11, 1
	and s8, s8, s11
	bne s8, zero, label209
	mv a1, zero
	xori s8, s9, 1
	sltiu s8, s8, 1
	sltiu s9, s10, 1
	and s8, s8, s9
	beq s8, zero, label15
	lw s1, 0(s1)
	subw a1, zero, s1
	lw s1, 0(s7)
	addw a1, a1, s1
	sw a1, 0(s7)
	ble s0, zero, label2
	j label238
label17:
	sw s8, 0(s7)
	ble s0, zero, label2
	j label238
label72:
	li a0, 1000000007
	addw a0, a1, a0
	j label9
label209:
	xori s8, s9, 1
	sltiu s8, s8, 1
	sltiu s9, s10, 1
	and s8, s8, s9
	beq s8, zero, label15
	lw s1, 0(s1)
	subw a1, a1, s1
	lw s1, 0(s7)
	addw a1, a1, s1
	sw a1, 0(s7)
	ble s0, zero, label2
	j label238
label15:
	lw s1, 0(s7)
	addw a1, a1, s1
	sw a1, 0(s7)
	ble s0, zero, label2
	j label238
label2:
	li a0, 64
	jal _sysy_stoptime
	li a0, 10000
	ld a1, 72(sp)
	jal putarray
	mv a0, zero
	ld ra, 344(sp)
	ld s11, 336(sp)
	ld s10, 328(sp)
	ld s9, 320(sp)
	ld s7, 312(sp)
	ld s4, 304(sp)
	ld s3, 296(sp)
	ld s2, 288(sp)
	ld s8, 280(sp)
	ld s6, 272(sp)
	ld s1, 264(sp)
	ld s5, 256(sp)
	ld s0, 248(sp)
	addi sp, sp, 352
	ret
