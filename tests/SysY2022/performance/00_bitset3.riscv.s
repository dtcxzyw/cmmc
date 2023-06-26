.data
.align 4
a:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -360
	sd s0, 104(sp)
	sd s5, 0(sp)
	sd s1, 352(sp)
	sd s6, 344(sp)
	sd s2, 336(sp)
	sd s3, 328(sp)
	sd s4, 320(sp)
	sd s8, 312(sp)
	sd s7, 304(sp)
	sd s9, 296(sp)
	sd s10, 288(sp)
	sd s11, 280(sp)
	sd ra, 272(sp)
	addi a1, sp, 112
	sd a1, 16(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 56
	jal _sysy_starttime
pcrel250:
	auipc a0, %pcrel_hi(a)
	addi a1, a0, %pcrel_lo(pcrel250)
	sd a1, 24(sp)
	ld a1, 16(sp)
	addi s6, a1, 4
	sd s6, 264(sp)
	ld a1, 16(sp)
	addi s6, a1, 8
	sd s6, 256(sp)
	ld a1, 16(sp)
	addi s6, a1, 12
	sd s6, 248(sp)
	ld a1, 16(sp)
	addi s6, a1, 16
	sd s6, 240(sp)
	ld a1, 16(sp)
	addi s6, a1, 20
	sd s6, 88(sp)
	ld a1, 16(sp)
	addi s6, a1, 24
	sd s6, 80(sp)
	ld a1, 16(sp)
	addi s6, a1, 28
	sd s6, 72(sp)
	ld a1, 16(sp)
	addi a2, a1, 32
	ld a1, 16(sp)
	addi a3, a1, 36
	ld a1, 16(sp)
	addi a4, a1, 40
	ld a1, 16(sp)
	addi a5, a1, 44
	ld a1, 16(sp)
	addi t1, a1, 48
	ld a1, 16(sp)
	addi t2, a1, 52
	ld a1, 16(sp)
	addi t3, a1, 56
	ld a1, 16(sp)
	addi t4, a1, 60
	ld a1, 16(sp)
	addi t5, a1, 64
	ld a1, 16(sp)
	addi t6, a1, 68
	ld a1, 16(sp)
	addi a6, a1, 72
	ld a1, 16(sp)
	addi a7, a1, 76
	ld a1, 16(sp)
	addi s2, a1, 80
	ld a1, 16(sp)
	addi s3, a1, 84
	ld a1, 16(sp)
	addi s4, a1, 88
	ld a1, 16(sp)
	addi s5, a1, 92
	ld a1, 16(sp)
	addi s6, a1, 96
	sd s6, 64(sp)
	ld a1, 16(sp)
	addi s6, a1, 100
	sd s6, 40(sp)
	ld a1, 16(sp)
	addi s6, a1, 104
	sd s6, 8(sp)
	ld a1, 16(sp)
	addi s6, a1, 108
	sd s6, 32(sp)
	ld a1, 16(sp)
	addi s6, a1, 112
	sd s6, 56(sp)
	ld a1, 16(sp)
	addi s6, a1, 116
	sd s6, 48(sp)
	ld a1, 16(sp)
	addi s6, a1, 120
	sd s6, 96(sp)
	ble s0, zero, label18
	mv a0, s1
label2:
	addiw s0, s0, -1
	li a1, 19971231
	mulw a0, a0, a1
	li a1, 19981013
	addw a0, a0, a1
	li a1, 1152921497
	mul s1, a0, a1
	srai a1, s1, 60
	srli s1, s1, 63
	add a1, s1, a1
	li s1, 1000000007
	mulw a1, a1, s1
	subw a0, a0, a1
	bge a0, zero, label5
	j label64
label5:
	li a1, 1876499845
	mul s1, a0, a1
	srai a1, s1, 49
	srli s1, s1, 63
	add a1, s1, a1
	li s1, 300000
	mulw a1, a1, s1
	subw s1, a0, a1
	li a1, 19971231
	mulw a0, a0, a1
	li a1, 19981013
	addw a0, a0, a1
	li a1, 1152921497
	mul s6, a0, a1
	srai a1, s6, 60
	srli s6, s6, 63
	add a1, s6, a1
	li s6, 1000000007
	mulw a1, a1, s6
	subw a0, a0, a1
	bge a0, zero, label8
	j label72
label8:
	li a1, 1
	sw a1, 112(sp)
	li a1, 2
	ld s6, 264(sp)
	sw a1, 0(s6)
	li a1, 4
	ld s6, 256(sp)
	sw a1, 0(s6)
	li a1, 8
	ld s6, 248(sp)
	sw a1, 0(s6)
	li a1, 16
	ld s6, 240(sp)
	sw a1, 0(s6)
	li a1, 32
	ld s6, 88(sp)
	sw a1, 0(s6)
	li a1, 64
	ld s6, 80(sp)
	sw a1, 0(s6)
	li a1, 128
	ld s6, 72(sp)
	sw a1, 0(s6)
	li a1, 256
	sw a1, 0(a2)
	li a1, 512
	sw a1, 0(a3)
	li a1, 1024
	sw a1, 0(a4)
	li a1, 2048
	sw a1, 0(a5)
	li a1, 4096
	sw a1, 0(t1)
	li a1, 8192
	sw a1, 0(t2)
	li a1, 16384
	sw a1, 0(t3)
	li a1, 32768
	sw a1, 0(t4)
	li a1, 65536
	sw a1, 0(t5)
	li a1, 131072
	sw a1, 0(t6)
	li a1, 262144
	sw a1, 0(a6)
	li a1, 524288
	sw a1, 0(a7)
	li a1, 1048576
	sw a1, 0(s2)
	li a1, 2097152
	sw a1, 0(s3)
	li a1, 4194304
	sw a1, 0(s4)
	li a1, 8388608
	sw a1, 0(s5)
	li a1, 16777216
	ld s6, 64(sp)
	sw a1, 0(s6)
	li a1, 33554432
	ld s6, 40(sp)
	sw a1, 0(s6)
	li a1, 67108864
	ld s6, 8(sp)
	sw a1, 0(s6)
	li a1, 134217728
	ld s6, 32(sp)
	sw a1, 0(s6)
	li a1, 268435456
	ld s6, 56(sp)
	sw a1, 0(s6)
	li a1, 536870912
	ld s6, 48(sp)
	sw a1, 0(s6)
	li a1, 1073741824
	ld s6, 96(sp)
	sw a1, 0(s6)
	li a1, -2004318071
	mul a1, s1, a1
	srli a1, a1, 32
	add a1, a1, s1
	sraiw s6, a1, 4
	srliw a1, a1, 31
	add a1, a1, s6
	li s6, 9999
	ble a1, s6, label11
	ble s0, zero, label18
	j label2
label64:
	li a1, 1000000007
	addw a0, a0, a1
	j label5
label11:
	srliw s6, a0, 31
	add s6, a0, s6
	sraiw s6, s6, 1
	li s8, 2
	mulw s6, s6, s8
	subw s7, a0, s6
	slliw s6, a1, 2
	ld a1, 24(sp)
	add s6, a1, s6
	lw s9, 0(s6)
	li a1, -2004318071
	mul a1, s1, a1
	srli a1, a1, 32
	add a1, a1, s1
	sraiw s10, a1, 4
	srliw a1, a1, 31
	add a1, a1, s10
	li s10, 30
	mulw a1, a1, s10
	subw a1, s1, a1
	slli s1, a1, 2
	ld a1, 16(sp)
	add s1, a1, s1
	lw a1, 0(s1)
	divw s10, s9, a1
	srliw s11, s10, 31
	add s11, s10, s11
	sraiw s11, s11, 1
	mulw s8, s11, s8
	subw s8, s10, s8
	beq s8, s7, label16
	sltiu s9, s8, 1
	xori s10, s7, 1
	sltiu s10, s10, 1
	and s9, s9, s10
	bne s9, zero, label209
	mv a1, zero
	xori s8, s8, 1
	sltiu s8, s8, 1
	sltiu s7, s7, 1
	and s7, s8, s7
	beq s7, zero, label14
	lw s1, 0(s1)
	subw a1, zero, s1
	lw s1, 0(s6)
	addw a1, a1, s1
	sw a1, 0(s6)
	ble s0, zero, label18
	j label2
label16:
	sw s9, 0(s6)
	ble s0, zero, label18
	j label2
label72:
	li a1, 1000000007
	addw a0, a0, a1
	j label8
label209:
	xori s8, s8, 1
	sltiu s8, s8, 1
	sltiu s7, s7, 1
	and s7, s8, s7
	beq s7, zero, label14
	lw s1, 0(s1)
	subw a1, a1, s1
	lw s1, 0(s6)
	addw a1, a1, s1
	sw a1, 0(s6)
	ble s0, zero, label18
	j label2
label14:
	lw s1, 0(s6)
	addw a1, a1, s1
	sw a1, 0(s6)
	ble s0, zero, label18
	j label2
label18:
	li a0, 64
	jal _sysy_stoptime
	li a0, 10000
	ld a1, 24(sp)
	jal putarray
	mv a0, zero
	ld ra, 272(sp)
	ld s11, 280(sp)
	ld s10, 288(sp)
	ld s9, 296(sp)
	ld s7, 304(sp)
	ld s8, 312(sp)
	ld s4, 320(sp)
	ld s3, 328(sp)
	ld s2, 336(sp)
	ld s6, 344(sp)
	ld s1, 352(sp)
	ld s5, 0(sp)
	ld s0, 104(sp)
	addi sp, sp, 360
	ret
