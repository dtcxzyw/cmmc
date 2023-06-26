.data
.align 4
a:
	.zero	4000000
.align 4
b:
	.zero	4000000
.align 4
c:
	.zero	4000000
.text
.globl main
main:
	addi sp, sp, -120
	sd s0, 16(sp)
	sd s5, 32(sp)
	sd s1, 0(sp)
	sd s6, 8(sp)
	sd s2, 112(sp)
	sd s3, 104(sp)
	sd s4, 96(sp)
	sd s7, 88(sp)
	sd s8, 80(sp)
	sd s9, 72(sp)
	sd s10, 64(sp)
	sd s11, 56(sp)
	sd ra, 48(sp)
pcrel1014:
	auipc a0, %pcrel_hi(a)
	addi a2, a0, %pcrel_lo(pcrel1014)
	sd a2, 24(sp)
pcrel1015:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel1015)
pcrel1016:
	auipc a0, %pcrel_hi(c)
	addi a2, a0, %pcrel_lo(pcrel1016)
	sd a2, 40(sp)
	mv s1, zero
	li a0, 1000
	bge zero, a0, label4
	li a0, 4000
	mul a0, zero, a0
	ld a2, 24(sp)
	add a0, a2, a0
	jal getarray
	li a1, 1000
	beq a0, a1, label46
	j label47
label4:
	li a0, 23
	jal _sysy_starttime
	mv a0, zero
	li a1, 1000
	bge zero, a1, label61
	j label60
label61:
	mv a1, zero
	li a0, 4000
	mul a3, zero, a0
	ld a2, 24(sp)
	add a3, a2, a3
	mul a0, zero, a0
	ld a2, 40(sp)
	add a4, a2, a0
	li a0, 1000
	bge zero, a0, label69
	mv a2, zero
	bge zero, a0, label15
	j label981
label69:
	mv a3, zero
	li a0, 1000
	bge zero, a0, label282
	li a0, 4000
	mul a0, zero, a0
	ld a2, 40(sp)
	add a4, a2, a0
	li a1, 2147483647
	mv a5, zero
	slli a0, zero, 2
	add t1, a4, a0
	lw a0, 0(t1)
	slt a2, a0, a1
	bne a2, zero, label964
	mv a0, a1
	lw a1, 4(t1)
	slt a2, a1, a0
	bne a2, zero, label962
	mv a1, a0
	lw a2, 8(t1)
	slt a0, a2, a0
	bne a0, zero, label960
	mv a2, a1
	lw a0, 12(t1)
	slt a1, a0, a1
	bne a1, zero, label958
	j label1006
label282:
	mv a0, zero
	li a1, 1000
	bge zero, a1, label286
	j label285
label286:
	mv a0, zero
	mv s0, zero
	li a1, 1000
	bge zero, a1, label27
	j label985
label46:
	addiw s1, s1, 1
	li a0, 1000
	bge s1, a0, label4
	li a0, 4000
	mul a0, s1, a0
	ld a2, 24(sp)
	add a0, a2, a0
	jal getarray
	li a1, 1000
	beq a0, a1, label46
label47:
	ld ra, 48(sp)
	ld s11, 56(sp)
	ld s10, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s7, 88(sp)
	ld s4, 96(sp)
	ld s3, 104(sp)
	ld s2, 112(sp)
	ld s6, 8(sp)
	ld s1, 0(sp)
	ld s5, 32(sp)
	ld s0, 16(sp)
	addi sp, sp, 120
	ret
label981:
	mv a5, zero
	mv a0, zero
	j label11
label15:
	addiw a1, a1, 1
	li a0, 4000
	mul a3, a1, a0
	ld a2, 24(sp)
	add a3, a2, a3
	mul a0, a1, a0
	ld a2, 40(sp)
	add a4, a2, a0
	li a0, 1000
	bge a1, a0, label69
	mv a2, zero
	bge zero, a0, label15
	j label981
label11:
	slli t1, a0, 2
	add t1, a3, t1
	lw t2, 0(t1)
	li t4, 4000
	mul t3, a0, t4
	add t3, s0, t3
	slli t5, a2, 2
	add t5, t3, t5
	lw t5, 0(t5)
	mulw t2, t2, t5
	lw t5, 4(t1)
	add t4, t3, t4
	slli t6, a2, 2
	add t4, t4, t6
	lw t4, 0(t4)
	mulw t4, t5, t4
	lw t5, 8(t1)
	li t6, 8000
	add t6, t3, t6
	slli a6, a2, 2
	add t6, t6, a6
	lw t6, 0(t6)
	mulw t5, t5, t6
	lw t6, 12(t1)
	li a6, 12000
	add a6, t3, a6
	slli a7, a2, 2
	add a6, a6, a7
	lw a6, 0(a6)
	mulw t6, t6, a6
	lw a6, 16(t1)
	li a7, 16000
	add a7, t3, a7
	slli s1, a2, 2
	add a7, a7, s1
	lw a7, 0(a7)
	mulw a6, a6, a7
	lw a7, 20(t1)
	li s1, 20000
	add s1, t3, s1
	slli s2, a2, 2
	add s1, s1, s2
	lw s1, 0(s1)
	mulw a7, a7, s1
	lw s1, 24(t1)
	li s2, 24000
	add s2, t3, s2
	slli s3, a2, 2
	add s2, s2, s3
	lw s2, 0(s2)
	mulw s1, s1, s2
	lw s2, 28(t1)
	li s3, 28000
	add s3, t3, s3
	slli s4, a2, 2
	add s3, s3, s4
	lw s3, 0(s3)
	mulw s2, s2, s3
	lw s3, 32(t1)
	li s4, 32000
	add s4, t3, s4
	slli s5, a2, 2
	add s4, s4, s5
	lw s4, 0(s4)
	mulw s3, s3, s4
	lw s4, 36(t1)
	li s5, 36000
	add s5, t3, s5
	slli s6, a2, 2
	add s5, s5, s6
	lw s5, 0(s5)
	mulw s4, s4, s5
	lw s5, 40(t1)
	li s6, 40000
	add s6, t3, s6
	slli s7, a2, 2
	add s6, s6, s7
	lw s6, 0(s6)
	mulw s5, s5, s6
	lw s6, 44(t1)
	li s7, 44000
	add s7, t3, s7
	slli s8, a2, 2
	add s7, s7, s8
	lw s7, 0(s7)
	mulw s6, s6, s7
	lw s7, 48(t1)
	li s8, 48000
	add s8, t3, s8
	slli s9, a2, 2
	add s8, s8, s9
	lw s8, 0(s8)
	mulw s7, s7, s8
	lw s8, 52(t1)
	li s9, 52000
	add s9, t3, s9
	slli s10, a2, 2
	add s9, s9, s10
	lw s9, 0(s9)
	mulw s8, s8, s9
	lw s9, 56(t1)
	li s10, 56000
	add s10, t3, s10
	slli s11, a2, 2
	add s10, s10, s11
	lw s10, 0(s10)
	mulw s9, s9, s10
	lw t1, 60(t1)
	li s10, 60000
	add t3, t3, s10
	slli s10, a2, 2
	add t3, t3, s10
	lw t3, 0(t3)
	mulw t1, t1, t3
	addw a5, a5, t2
	addw a5, a5, t4
	addw a5, a5, t5
	addw a5, a5, t6
	addw a5, a5, a6
	addw a5, a5, a7
	addw a5, a5, s1
	addw a5, a5, s2
	addw a5, a5, s3
	addw a5, a5, s4
	addw a5, a5, s5
	addw a5, a5, s6
	addw a5, a5, s7
	addw a5, a5, s8
	addw a5, a5, s9
	addw a5, a5, t1
	addiw a0, a0, 16
	li t1, 992
	bge a0, t1, label14
	j label11
label14:
	slli t1, a0, 2
	add t1, a3, t1
	lw t4, 0(t1)
	li t3, 4000
	mul a0, a0, t3
	add t2, s0, a0
	slli a0, a2, 2
	add a0, t2, a0
	lw a0, 0(a0)
	mulw a0, t4, a0
	lw t4, 4(t1)
	add t3, t2, t3
	slli t5, a2, 2
	add t3, t3, t5
	lw t3, 0(t3)
	mulw t3, t4, t3
	lw t4, 8(t1)
	li t5, 8000
	add t5, t2, t5
	slli t6, a2, 2
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	lw t5, 12(t1)
	li t6, 12000
	add t6, t2, t6
	slli a6, a2, 2
	add t6, t6, a6
	lw t6, 0(t6)
	mulw t5, t5, t6
	lw t6, 16(t1)
	li a6, 16000
	add a6, t2, a6
	slli a7, a2, 2
	add a6, a6, a7
	lw a6, 0(a6)
	mulw t6, t6, a6
	lw a6, 20(t1)
	li a7, 20000
	add a7, t2, a7
	slli s1, a2, 2
	add a7, a7, s1
	lw a7, 0(a7)
	mulw a6, a6, a7
	lw a7, 24(t1)
	li s1, 24000
	add s1, t2, s1
	slli s2, a2, 2
	add s1, s1, s2
	lw s1, 0(s1)
	mulw a7, a7, s1
	lw t1, 28(t1)
	li s1, 28000
	add t2, t2, s1
	slli s1, a2, 2
	add t2, t2, s1
	lw t2, 0(t2)
	mulw t1, t1, t2
	addw a0, a5, a0
	addw a0, a0, t3
	addw a0, a0, t4
	addw a0, a0, t5
	addw a0, a0, t6
	addw a0, a0, a6
	addw a0, a0, a7
	addw a0, a0, t1
	slli a5, a2, 2
	add a5, a4, a5
	sw a0, 0(a5)
	addiw a2, a2, 1
	li a0, 1000
	bge a2, a0, label15
	j label981
label1006:
	mv a0, a2
	j label958
label964:
	lw a1, 4(t1)
	slt a2, a1, a0
	bne a2, zero, label962
	mv a1, a0
label962:
	lw a2, 8(t1)
	slt a0, a2, a1
	bne a0, zero, label960
	mv a2, a1
label960:
	lw a0, 12(t1)
	slt a1, a0, a2
	bne a1, zero, label958
	j label1006
label958:
	lw a1, 16(t1)
	slt a2, a1, a0
	bne a2, zero, label956
label955:
	mv a1, a0
label956:
	lw a0, 20(t1)
	slt a2, a0, a1
	bne a2, zero, label954
	mv a0, a1
label954:
	lw a1, 24(t1)
	slt a2, a1, a0
	bne a2, zero, label952
	mv a1, a0
label952:
	lw a0, 28(t1)
	slt a2, a0, a1
	bne a2, zero, label950
	mv a0, a1
label950:
	lw a1, 32(t1)
	slt a2, a1, a0
	bne a2, zero, label946
	mv a1, a0
label946:
	lw a0, 36(t1)
	slt a2, a0, a1
	bne a2, zero, label942
	mv a0, a1
label942:
	lw a1, 40(t1)
	slt a2, a1, a0
	bne a2, zero, label938
	mv a1, a0
label938:
	lw a0, 44(t1)
	slt a2, a0, a1
	bne a2, zero, label934
	mv a0, a1
label934:
	lw a1, 48(t1)
	slt a2, a1, a0
	bne a2, zero, label930
	mv a1, a0
label930:
	lw a0, 52(t1)
	slt a2, a0, a1
	bne a2, zero, label926
	mv a0, a1
label926:
	lw a1, 56(t1)
	slt a2, a1, a0
	bne a2, zero, label922
	mv a1, a0
label922:
	lw a0, 60(t1)
	slt a2, a0, a1
	bne a2, zero, label918
	mv a0, a1
label918:
	addiw a5, a5, 16
	li a1, 992
	bge a5, a1, label37
	mv a1, a0
	slli a0, a5, 2
	add t1, a4, a0
	lw a0, 0(t1)
	slt a2, a0, a1
	bne a2, zero, label964
	mv a0, a1
	lw a1, 4(t1)
	slt a2, a1, a0
	bne a2, zero, label962
	mv a1, a0
	lw a2, 8(t1)
	slt a0, a2, a0
	bne a0, zero, label960
	mv a2, a1
	lw a0, 12(t1)
	slt a1, a0, a1
	bne a1, zero, label958
	mv a0, a2
	lw a1, 16(t1)
	slt a2, a1, a2
	bne a2, zero, label956
	j label955
label37:
	slli a1, a5, 2
	add a5, a4, a1
	lw a1, 0(a5)
	slt a2, a1, a0
	bne a2, zero, label948
	mv a1, a0
label948:
	lw a0, 4(a5)
	slt a2, a0, a1
	bne a2, zero, label944
	mv a0, a1
label944:
	lw a1, 8(a5)
	slt a2, a1, a0
	bne a2, zero, label940
	mv a1, a0
label940:
	lw a0, 12(a5)
	slt a2, a0, a1
	bne a2, zero, label936
	mv a0, a1
label936:
	lw a1, 16(a5)
	slt a2, a1, a0
	bne a2, zero, label932
	mv a1, a0
label932:
	lw a2, 20(a5)
	slt a0, a2, a1
	bne a0, zero, label928
	mv a2, a1
label928:
	lw a0, 24(a5)
	slt a1, a0, a2
	bne a1, zero, label924
	mv a0, a2
label924:
	lw a1, 28(a5)
	slt a2, a1, a0
	bne a2, zero, label920
	mv a1, a0
label920:
	mv a0, zero
label38:
	slli a2, a0, 2
	add a2, a4, a2
	sw a1, 0(a2)
	sw a1, 4(a2)
	sw a1, 8(a2)
	sw a1, 12(a2)
	sw a1, 16(a2)
	sw a1, 20(a2)
	sw a1, 24(a2)
	sw a1, 28(a2)
	sw a1, 32(a2)
	sw a1, 36(a2)
	sw a1, 40(a2)
	sw a1, 44(a2)
	sw a1, 48(a2)
	sw a1, 52(a2)
	sw a1, 56(a2)
	sw a1, 60(a2)
	addiw a0, a0, 16
	li a2, 992
	bge a0, a2, label40
	j label38
label281:
	li a0, 4000
	mul a0, a3, a0
	ld a2, 40(sp)
	add a4, a2, a0
	li a1, 2147483647
	mv a5, zero
	slli a0, zero, 2
	add t1, a4, a0
	lw a0, 0(t1)
	slt a2, a0, a1
	bne a2, zero, label964
	mv a0, a1
	lw a1, 4(t1)
	slt a2, a1, a0
	bne a2, zero, label962
	mv a1, a0
	lw a2, 8(t1)
	slt a0, a2, a0
	bne a0, zero, label960
	mv a2, a1
	lw a0, 12(t1)
	slt a1, a0, a1
	bne a1, zero, label958
	mv a0, a2
	lw a1, 16(t1)
	slt a2, a1, a2
	bne a2, zero, label956
	j label955
label40:
	slli a0, a0, 2
	add a0, a4, a0
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	addiw a3, a3, 1
	li a0, 1000
	bge a3, a0, label282
	j label281
label285:
	li a1, 4000
	mul a1, a0, a1
	ld a2, 40(sp)
	add a3, a2, a1
	mv a1, zero
	j label21
label23:
	slli a2, a1, 2
	add a3, a3, a2
	li a4, 4000
	mul a1, a1, a4
	ld a2, 40(sp)
	add a1, a2, a1
	slli a2, a0, 2
	add a2, a1, a2
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 0(a3)
	add a2, a1, a4
	slli a4, a0, 2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 4(a3)
	li a2, 8000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 8(a3)
	li a2, 12000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 12(a3)
	li a2, 16000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 16(a3)
	li a2, 20000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 20(a3)
	li a2, 24000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 24(a3)
	li a2, 28000
	add a1, a1, a2
	slli a2, a0, 2
	add a1, a1, a2
	lw a1, 0(a1)
	subw a1, zero, a1
	sw a1, 28(a3)
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label286
	j label285
label21:
	slli a2, a1, 2
	add a4, a3, a2
	li a5, 4000
	mul t1, a1, a5
	ld a2, 40(sp)
	add a2, a2, t1
	slli t1, a0, 2
	add t1, a2, t1
	lw t1, 0(t1)
	subw t1, zero, t1
	sw t1, 0(a4)
	add a5, a2, a5
	slli t1, a0, 2
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 4(a4)
	li a5, 8000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 8(a4)
	li a5, 12000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 12(a4)
	li a5, 16000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 16(a4)
	li a5, 20000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 20(a4)
	li a5, 24000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 24(a4)
	li a5, 28000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 28(a4)
	li a5, 32000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 32(a4)
	li a5, 36000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 36(a4)
	li a5, 40000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 40(a4)
	li a5, 44000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 44(a4)
	li a5, 48000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 48(a4)
	li a5, 52000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 52(a4)
	li a5, 56000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 56(a4)
	li a5, 60000
	add a2, a2, a5
	slli a5, a0, 2
	add a2, a2, a5
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 60(a4)
	addiw a1, a1, 16
	li a2, 992
	bge a1, a2, label23
	j label21
label985:
	li a1, 4000
	mul a1, a0, a1
	ld a2, 40(sp)
	add a2, a2, a1
	mv a1, zero
	j label29
label32:
	slli a1, a1, 2
	add a2, a2, a1
	lw a1, 0(a2)
	lw a5, 4(a2)
	lw a3, 8(a2)
	lw a4, 12(a2)
	lw t3, 16(a2)
	lw t2, 20(a2)
	lw t1, 24(a2)
	lw a2, 28(a2)
	addw a1, a1, a5
	addw a1, a1, a3
	addw a1, a1, a4
	addw a1, a1, t3
	addw a1, a1, t2
	addw a1, a1, t1
	addw a1, a1, s0
	addw s0, a1, a2
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label27
	j label985
label29:
	slli a3, a1, 2
	add t6, a2, a3
	lw a4, 0(t6)
	lw s4, 4(t6)
	lw a5, 8(t6)
	lw a7, 12(t6)
	lw t1, 16(t6)
	lw t5, 20(t6)
	lw a6, 24(t6)
	lw t3, 28(t6)
	lw t2, 32(t6)
	lw t4, 36(t6)
	lw s2, 40(t6)
	lw s3, 44(t6)
	lw s5, 48(t6)
	lw s1, 52(t6)
	lw a3, 56(t6)
	lw t6, 60(t6)
	addw a4, s0, a4
	addw a4, a4, s4
	addw a4, a4, a5
	addw a4, a4, a7
	addw a4, a4, t1
	addw a4, a4, t5
	addw a4, a4, a6
	addw a4, a4, t3
	addw a4, a4, t2
	addw a4, a4, t4
	addw a4, a4, s2
	addw a4, a4, s3
	addw a4, a4, s5
	addw a4, a4, s1
	addw a3, a4, a3
	addw s0, a3, t6
	addiw a1, a1, 16
	li a3, 992
	bge a1, a3, label32
	j label29
label27:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	mv a0, zero
	j label47
label60:
	li a1, 4000
	mul a1, a0, a1
	add a3, s0, a1
	mv a1, zero
label42:
	slli a2, a1, 2
	add a4, a3, a2
	li a5, 4000
	mul t1, a1, a5
	ld a2, 24(sp)
	add a2, a2, t1
	slli t1, a0, 2
	add t1, a2, t1
	lw t1, 0(t1)
	sw t1, 0(a4)
	add a5, a2, a5
	slli t1, a0, 2
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 4(a4)
	li a5, 8000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 8(a4)
	li a5, 12000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 12(a4)
	li a5, 16000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 16(a4)
	li a5, 20000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 20(a4)
	li a5, 24000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 24(a4)
	li a5, 28000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 28(a4)
	li a5, 32000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 32(a4)
	li a5, 36000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 36(a4)
	li a5, 40000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 40(a4)
	li a5, 44000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 44(a4)
	li a5, 48000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 48(a4)
	li a5, 52000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 52(a4)
	li a5, 56000
	add a5, a2, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 56(a4)
	li a5, 60000
	add a2, a2, a5
	slli a5, a0, 2
	add a2, a2, a5
	lw a2, 0(a2)
	sw a2, 60(a4)
	addiw a1, a1, 16
	li a2, 992
	bge a1, a2, label44
	j label42
label44:
	slli a2, a1, 2
	add a3, a3, a2
	li a4, 4000
	mul a1, a1, a4
	ld a2, 24(sp)
	add a1, a2, a1
	slli a2, a0, 2
	add a2, a1, a2
	lw a2, 0(a2)
	sw a2, 0(a3)
	add a2, a1, a4
	slli a4, a0, 2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 4(a3)
	li a2, 8000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 8(a3)
	li a2, 12000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 12(a3)
	li a2, 16000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 16(a3)
	li a2, 20000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 20(a3)
	li a2, 24000
	add a2, a1, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 24(a3)
	li a2, 28000
	add a1, a1, a2
	slli a2, a0, 2
	add a1, a1, a2
	lw a1, 0(a1)
	sw a1, 28(a3)
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label61
	j label60
