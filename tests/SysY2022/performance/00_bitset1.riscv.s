.data
.align 4
a:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -352
	sd s8, 248(sp)
	sd s0, 256(sp)
	sd s5, 264(sp)
	sd s1, 272(sp)
	sd s6, 280(sp)
	sd s2, 288(sp)
	sd s3, 296(sp)
	sd s4, 304(sp)
	sd s7, 312(sp)
	sd s9, 320(sp)
	sd s10, 328(sp)
	sd s11, 336(sp)
	sd ra, 344(sp)
	addi s8, sp, 96
	sd s8, 80(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 56
	jal _sysy_starttime
pcrel245:
	auipc a0, %pcrel_hi(a)
	addi a1, a0, %pcrel_lo(pcrel245)
	sd a1, 72(sp)
	ld s8, 80(sp)
	addi a3, s8, 4
	ld s8, 80(sp)
	addi s8, s8, 8
	sd s8, 240(sp)
	ld s8, 80(sp)
	addi s8, s8, 12
	sd s8, 224(sp)
	ld s8, 80(sp)
	addi s8, s8, 16
	sd s8, 232(sp)
	ld s8, 80(sp)
	addi s8, s8, 20
	sd s8, 0(sp)
	ld s8, 80(sp)
	addi s8, s8, 24
	sd s8, 8(sp)
	ld s8, 80(sp)
	addi s8, s8, 28
	sd s8, 16(sp)
	ld s8, 80(sp)
	addi a4, s8, 32
	ld s8, 80(sp)
	addi a5, s8, 36
	ld s8, 80(sp)
	addi t1, s8, 40
	ld s8, 80(sp)
	addi t2, s8, 44
	ld s8, 80(sp)
	addi t3, s8, 48
	ld s8, 80(sp)
	addi t4, s8, 52
	ld s8, 80(sp)
	addi t5, s8, 56
	ld s8, 80(sp)
	addi t6, s8, 60
	ld s8, 80(sp)
	addi a6, s8, 64
	ld s8, 80(sp)
	addi a7, s8, 68
	ld s8, 80(sp)
	addi s2, s8, 72
	ld s8, 80(sp)
	addi s3, s8, 76
	ld s8, 80(sp)
	addi s4, s8, 80
	ld s8, 80(sp)
	addi s5, s8, 84
	ld s8, 80(sp)
	addi s6, s8, 88
	ld s8, 80(sp)
	addi s7, s8, 92
	ld s8, 80(sp)
	addi s8, s8, 96
	sd s8, 24(sp)
	ld s8, 80(sp)
	addi s8, s8, 100
	sd s8, 32(sp)
	ld s8, 80(sp)
	addi s8, s8, 104
	sd s8, 56(sp)
	ld s8, 80(sp)
	addi s8, s8, 108
	sd s8, 48(sp)
	ld s8, 80(sp)
	addi s8, s8, 112
	sd s8, 88(sp)
	ld s8, 80(sp)
	addi s8, s8, 116
	sd s8, 40(sp)
	ld s8, 80(sp)
	addi s8, s8, 120
	sd s8, 64(sp)
	ble s0, zero, label18
	mv a1, s1
	mv a0, s0
label2:
	li a2, 19971231
	mulw a1, a1, a2
	li a2, 19981013
	addw a1, a1, a2
	li a2, 1152921497
	mul s0, a1, a2
	srai a2, s0, 60
	srli s0, s0, 63
	add a2, s0, a2
	li s0, 1000000007
	mulw a2, a2, s0
	subw a1, a1, a2
	addiw a2, a0, -1
	bge a1, zero, label65
	j label64
label65:
	mv a0, a1
label5:
	li a1, 19971231
	mulw a1, a0, a1
	li s0, 19981013
	addw a1, a1, s0
	li s0, 1152921497
	mul s1, a1, s0
	srai s0, s1, 60
	srli s1, s1, 63
	add s0, s1, s0
	li s1, 1000000007
	mulw s0, s0, s1
	subw a1, a1, s0
	li s0, 1876499845
	mul s0, a0, s0
	srai s1, s0, 49
	srli s0, s0, 63
	add s0, s0, s1
	li s1, 300000
	mulw s0, s0, s1
	subw s0, a0, s0
	bge a1, zero, label73
	j label72
label73:
	mv a0, a1
label8:
	li a1, -2004318071
	mul a1, s0, a1
	srli a1, a1, 32
	add a1, a1, s0
	sraiw s1, a1, 4
	srliw a1, a1, 31
	add a1, a1, s1
	li s1, 1
	sw s1, 96(sp)
	li s1, 2
	sw s1, 0(a3)
	li s1, 4
	ld s8, 240(sp)
	sw s1, 0(s8)
	li s1, 8
	ld s8, 224(sp)
	sw s1, 0(s8)
	li s1, 16
	ld s8, 232(sp)
	sw s1, 0(s8)
	li s1, 32
	ld s8, 0(sp)
	sw s1, 0(s8)
	li s1, 64
	ld s8, 8(sp)
	sw s1, 0(s8)
	li s1, 128
	ld s8, 16(sp)
	sw s1, 0(s8)
	li s1, 256
	sw s1, 0(a4)
	li s1, 512
	sw s1, 0(a5)
	li s1, 1024
	sw s1, 0(t1)
	li s1, 2048
	sw s1, 0(t2)
	li s1, 4096
	sw s1, 0(t3)
	li s1, 8192
	sw s1, 0(t4)
	li s1, 16384
	sw s1, 0(t5)
	li s1, 32768
	sw s1, 0(t6)
	li s1, 65536
	sw s1, 0(a6)
	li s1, 131072
	sw s1, 0(a7)
	li s1, 262144
	sw s1, 0(s2)
	li s1, 524288
	sw s1, 0(s3)
	li s1, 1048576
	sw s1, 0(s4)
	li s1, 2097152
	sw s1, 0(s5)
	li s1, 4194304
	sw s1, 0(s6)
	li s1, 8388608
	sw s1, 0(s7)
	li s1, 16777216
	ld s8, 24(sp)
	sw s1, 0(s8)
	li s1, 33554432
	ld s8, 32(sp)
	sw s1, 0(s8)
	li s1, 67108864
	ld s8, 56(sp)
	sw s1, 0(s8)
	li s1, 134217728
	ld s8, 48(sp)
	sw s1, 0(s8)
	li s1, 268435456
	ld s8, 88(sp)
	sw s1, 0(s8)
	li s1, 536870912
	ld s8, 40(sp)
	sw s1, 0(s8)
	li s1, 1073741824
	ld s8, 64(sp)
	sw s1, 0(s8)
	li s1, 9999
	ble a1, s1, label11
	ble a2, zero, label18
label237:
	mv a1, a0
	mv a0, a2
	j label2
label11:
	slliw s1, a1, 2
	ld a1, 72(sp)
	add s1, a1, s1
	lw a1, 0(s1)
	li s8, -2004318071
	mul s8, s0, s8
	srli s8, s8, 32
	add s8, s8, s0
	sraiw s9, s8, 4
	srliw s8, s8, 31
	add s8, s8, s9
	li s9, 30
	mulw s8, s8, s9
	subw s0, s0, s8
	slli s0, s0, 2
	ld s8, 80(sp)
	add s0, s8, s0
	lw s8, 0(s0)
	divw s9, a1, s8
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
	beq s9, s10, label16
	sltiu a1, s9, 1
	xori s11, s10, 1
	sltiu s11, s11, 1
	and a1, a1, s11
	subw a1, zero, a1
	and a1, s8, a1
	xori s8, s9, 1
	sltiu s8, s8, 1
	sltiu s9, s10, 1
	and s8, s8, s9
	beq s8, zero, label14
	lw s0, 0(s0)
	subw a1, a1, s0
	lw s0, 0(s1)
	addw a1, a1, s0
	sw a1, 0(s1)
	ble a2, zero, label18
	j label237
label14:
	lw s0, 0(s1)
	addw a1, a1, s0
	sw a1, 0(s1)
	ble a2, zero, label18
	j label237
label16:
	sw a1, 0(s1)
	ble a2, zero, label18
	j label237
label64:
	li a0, 1000000007
	addw a0, a1, a0
	j label5
label72:
	li a0, 1000000007
	addw a0, a1, a0
	j label8
label18:
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
	ld s6, 280(sp)
	ld s1, 272(sp)
	ld s5, 264(sp)
	ld s0, 256(sp)
	ld s8, 248(sp)
	addi sp, sp, 352
	ret
