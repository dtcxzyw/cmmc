.data
.section .rodata
.bss
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
	addi sp, sp, -40
	sd s1, 32(sp)
	sd s2, 24(sp)
	sd s0, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
pcrel1007:
	auipc a0, %pcrel_hi(a)
	addi s1, a0, %pcrel_lo(pcrel1007)
pcrel1008:
	auipc a0, %pcrel_hi(b)
	addi s2, a0, %pcrel_lo(pcrel1008)
pcrel1009:
	auipc a0, %pcrel_hi(c)
	addi s0, a0, %pcrel_lo(pcrel1009)
	mv s3, zero
	li a0, 1000
	bge zero, a0, label8
	li a0, 4000
	mul a0, zero, a0
	add a0, s1, a0
	jal getarray
	li a1, 1000
	beq a0, a1, label5
label6:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label8:
	li a0, 23
	jal _sysy_starttime
	mv a0, zero
	li a1, 1000
	bge zero, a1, label69
	j label982
label69:
	mv a2, zero
	li a0, 4000
	mul a1, zero, a0
	add a4, s1, a1
	mul a0, zero, a0
	add a5, s0, a0
	li a0, 1000
	bge zero, a0, label77
	mv a3, zero
	bge zero, a0, label15
	j label972
label77:
	mv a3, zero
	li a0, 1000
	bge zero, a0, label290
	li a0, 4000
	mul a0, zero, a0
	add a4, s0, a0
	li a0, 2147483647
	mv a5, zero
	slli a1, zero, 2
	add t1, a4, a1
	lw a1, 0(t1)
	slt a2, a1, a0
	bne a2, zero, label964
	mv a1, a0
	lw a0, 4(t1)
	slt a2, a0, a1
	bne a2, zero, label962
	mv a0, a1
	lw a2, 8(t1)
	slt a1, a2, a1
	bne a1, zero, label960
	mv a2, a0
	lw a1, 12(t1)
	slt a0, a1, a0
	bne a0, zero, label958
	j label999
label290:
	mv a0, zero
	li a1, 1000
	bge zero, a1, label431
	j label976
label972:
	mv a0, zero
	mv a1, zero
label16:
	slli t1, a1, 2
	add t1, a4, t1
	lw t3, 0(t1)
	li t4, 4000
	mul t2, a1, t4
	add t2, s2, t2
	slli t5, a3, 2
	add t5, t2, t5
	lw t5, 0(t5)
	lw t6, 4(t1)
	add t4, t2, t4
	slli a6, a3, 2
	add t4, t4, a6
	lw t4, 0(t4)
	mulw t4, t6, t4
	mulw t3, t3, t5
	addw t3, t3, t4
	lw t4, 8(t1)
	li t5, 8000
	add t5, t2, t5
	slli t6, a3, 2
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 12(t1)
	li t5, 12000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 16(t1)
	li t5, 16000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 20(t1)
	li t5, 20000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 24(t1)
	li t5, 24000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 28(t1)
	li t5, 28000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 32(t1)
	li t5, 32000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 36(t1)
	li t5, 36000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 40(t1)
	li t5, 40000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 44(t1)
	li t5, 44000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 48(t1)
	li t5, 48000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 52(t1)
	li t5, 52000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t4, 56(t1)
	li t5, 56000
	add t5, t2, t5
	add t5, t5, t6
	lw t5, 0(t5)
	mulw t4, t4, t5
	addw t3, t3, t4
	lw t1, 60(t1)
	li t4, 60000
	add t2, t2, t4
	slli t4, a3, 2
	add t2, t2, t4
	lw t2, 0(t2)
	mulw t1, t1, t2
	addw t1, t3, t1
	addw a0, t1, a0
	addiw a1, a1, 16
	li t1, 992
	bge a1, t1, label19
	j label16
label19:
	slli t1, a1, 2
	add t1, a4, t1
	lw t2, 0(t1)
	li t4, 4000
	mul a1, a1, t4
	add a1, s2, a1
	slli t3, a3, 2
	add t3, a1, t3
	lw t3, 0(t3)
	lw t5, 4(t1)
	add t4, a1, t4
	slli t6, a3, 2
	add t4, t4, t6
	lw t4, 0(t4)
	mulw t4, t5, t4
	mulw t2, t2, t3
	addw a0, a0, t2
	addw a0, a0, t4
	lw t2, 8(t1)
	li t3, 8000
	add t3, a1, t3
	slli t4, a3, 2
	add t3, t3, t4
	lw t3, 0(t3)
	mulw t2, t2, t3
	addw a0, a0, t2
	lw t2, 12(t1)
	li t3, 12000
	add t3, a1, t3
	add t3, t3, t4
	lw t3, 0(t3)
	mulw t2, t2, t3
	addw a0, a0, t2
	lw t2, 16(t1)
	li t3, 16000
	add t3, a1, t3
	add t3, t3, t4
	lw t3, 0(t3)
	mulw t2, t2, t3
	addw a0, a0, t2
	lw t2, 20(t1)
	li t3, 20000
	add t3, a1, t3
	add t3, t3, t4
	lw t3, 0(t3)
	mulw t2, t2, t3
	addw a0, a0, t2
	lw t2, 24(t1)
	li t3, 24000
	add t3, a1, t3
	add t3, t3, t4
	lw t3, 0(t3)
	mulw t2, t2, t3
	addw a0, a0, t2
	lw t1, 28(t1)
	li t2, 28000
	add a1, a1, t2
	slli t2, a3, 2
	add a1, a1, t2
	lw a1, 0(a1)
	mulw a1, t1, a1
	addw a0, a0, a1
	slli a1, a3, 2
	add a1, a5, a1
	sw a0, 0(a1)
	addiw a3, a3, 1
	li a0, 1000
	bge a3, a0, label15
	j label972
label982:
	li a1, 4000
	mul a1, a0, a1
	add a2, s2, a1
	mv a1, zero
label46:
	li a5, 4000
	mul a3, a1, a5
	add a3, s1, a3
	slli a4, a0, 2
	add a4, a3, a4
	lw t1, 0(a4)
	slli a4, a1, 2
	add a4, a2, a4
	sw t1, 0(a4)
	add a5, a3, a5
	slli t1, a0, 2
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 4(a4)
	li a5, 8000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 8(a4)
	li a5, 12000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 12(a4)
	li a5, 16000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 16(a4)
	li a5, 20000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 20(a4)
	li a5, 24000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 24(a4)
	li a5, 28000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 28(a4)
	li a5, 32000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 32(a4)
	li a5, 36000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 36(a4)
	li a5, 40000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 40(a4)
	li a5, 44000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 44(a4)
	li a5, 48000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 48(a4)
	li a5, 52000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 52(a4)
	li a5, 56000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	sw a5, 56(a4)
	li a5, 60000
	add a3, a3, a5
	slli a5, a0, 2
	add a3, a3, a5
	lw a3, 0(a3)
	sw a3, 60(a4)
	addiw a1, a1, 16
	li a3, 992
	bge a1, a3, label48
	j label46
label48:
	li a4, 4000
	mul a3, a1, a4
	add a3, s1, a3
	slli a5, a0, 2
	add a5, a3, a5
	lw a5, 0(a5)
	slli a1, a1, 2
	add a1, a2, a1
	sw a5, 0(a1)
	add a2, a3, a4
	slli a4, a0, 2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 4(a1)
	li a2, 8000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 8(a1)
	li a2, 12000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 12(a1)
	li a2, 16000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 16(a1)
	li a2, 20000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 20(a1)
	li a2, 24000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	sw a2, 24(a1)
	li a2, 28000
	add a2, a3, a2
	slli a3, a0, 2
	add a2, a2, a3
	lw a2, 0(a2)
	sw a2, 28(a1)
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label69
	j label982
label999:
	mv a1, a2
	j label958
label964:
	lw a0, 4(t1)
	slt a2, a0, a1
	bne a2, zero, label962
	mv a0, a1
label962:
	lw a2, 8(t1)
	slt a1, a2, a0
	bne a1, zero, label960
	mv a2, a0
label960:
	lw a1, 12(t1)
	slt a0, a1, a2
	bne a0, zero, label958
	j label999
label958:
	lw a0, 16(t1)
	slt a2, a0, a1
	bne a2, zero, label956
label955:
	mv a0, a1
label956:
	lw a1, 20(t1)
	slt a2, a1, a0
	bne a2, zero, label954
	mv a1, a0
label954:
	lw a0, 24(t1)
	slt a2, a0, a1
	bne a2, zero, label952
	mv a0, a1
label952:
	lw a1, 28(t1)
	slt a2, a1, a0
	bne a2, zero, label950
	mv a1, a0
label950:
	lw a0, 32(t1)
	slt a2, a0, a1
	bne a2, zero, label946
	mv a0, a1
label946:
	lw a1, 36(t1)
	slt a2, a1, a0
	bne a2, zero, label942
	mv a1, a0
label942:
	lw a0, 40(t1)
	slt a2, a0, a1
	bne a2, zero, label938
	mv a0, a1
label938:
	lw a1, 44(t1)
	slt a2, a1, a0
	bne a2, zero, label934
	mv a1, a0
label934:
	lw a0, 48(t1)
	slt a2, a0, a1
	bne a2, zero, label930
	mv a0, a1
label930:
	lw a2, 52(t1)
	slt a1, a2, a0
	bne a1, zero, label926
	mv a2, a0
label926:
	lw a1, 56(t1)
	slt a0, a1, a2
	bne a0, zero, label922
	mv a1, a2
label922:
	lw a0, 60(t1)
	slt a2, a0, a1
	bne a2, zero, label918
	mv a0, a1
label918:
	addiw a5, a5, 16
	li a1, 992
	bge a5, a1, label26
	slli a1, a5, 2
	add t1, a4, a1
	lw a1, 0(t1)
	slt a2, a1, a0
	bne a2, zero, label964
	mv a1, a0
	lw a0, 4(t1)
	slt a2, a0, a1
	bne a2, zero, label962
	mv a0, a1
	lw a2, 8(t1)
	slt a1, a2, a1
	bne a1, zero, label960
	mv a2, a0
	lw a1, 12(t1)
	slt a0, a1, a0
	bne a0, zero, label958
	mv a1, a2
	lw a0, 16(t1)
	slt a2, a0, a2
	bne a2, zero, label956
	j label955
label15:
	addiw a2, a2, 1
	li a0, 4000
	mul a1, a2, a0
	add a4, s1, a1
	mul a0, a2, a0
	add a5, s0, a0
	li a0, 1000
	bge a2, a0, label77
	mv a3, zero
	bge zero, a0, label15
	j label972
label976:
	li a1, 4000
	mul a1, a0, a1
	add a2, s0, a1
	mv a1, zero
	j label42
label431:
	mv a0, zero
	mv s1, zero
	li a1, 1000
	bge zero, a1, label35
	j label434
label35:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s1
	jal putint
	mv a0, zero
	j label6
label42:
	li a5, 4000
	mul a3, a1, a5
	add a3, s0, a3
	slli a4, a0, 2
	add a4, a3, a4
	lw a4, 0(a4)
	subw t1, zero, a4
	slli a4, a1, 2
	add a4, a2, a4
	sw t1, 0(a4)
	add a5, a3, a5
	slli t1, a0, 2
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 4(a4)
	li a5, 8000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 8(a4)
	li a5, 12000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 12(a4)
	li a5, 16000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 16(a4)
	li a5, 20000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 20(a4)
	li a5, 24000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 24(a4)
	li a5, 28000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 28(a4)
	li a5, 32000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 32(a4)
	li a5, 36000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 36(a4)
	li a5, 40000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 40(a4)
	li a5, 44000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 44(a4)
	li a5, 48000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 48(a4)
	li a5, 52000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 52(a4)
	li a5, 56000
	add a5, a3, a5
	add a5, a5, t1
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 56(a4)
	li a5, 60000
	add a3, a3, a5
	slli a5, a0, 2
	add a3, a3, a5
	lw a3, 0(a3)
	subw a3, zero, a3
	sw a3, 60(a4)
	addiw a1, a1, 16
	li a3, 992
	bge a1, a3, label44
	j label42
label44:
	li a4, 4000
	mul a3, a1, a4
	add a3, s0, a3
	slli a5, a0, 2
	add a5, a3, a5
	lw a5, 0(a5)
	subw a5, zero, a5
	slli a1, a1, 2
	add a1, a2, a1
	sw a5, 0(a1)
	add a2, a3, a4
	slli a4, a0, 2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 4(a1)
	li a2, 8000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 8(a1)
	li a2, 12000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 12(a1)
	li a2, 16000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 16(a1)
	li a2, 20000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 20(a1)
	li a2, 24000
	add a2, a3, a2
	add a2, a2, a4
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 24(a1)
	li a2, 28000
	add a2, a3, a2
	slli a3, a0, 2
	add a2, a2, a3
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 28(a1)
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label431
	j label976
label26:
	slli a1, a5, 2
	add a2, a4, a1
	lw a1, 0(a2)
	slt a5, a1, a0
	bne a5, zero, label948
	mv a1, a0
label948:
	lw a0, 4(a2)
	slt a5, a0, a1
	bne a5, zero, label944
	mv a0, a1
label944:
	lw a1, 8(a2)
	slt a5, a1, a0
	bne a5, zero, label940
	mv a1, a0
label940:
	lw a0, 12(a2)
	slt a5, a0, a1
	bne a5, zero, label936
	mv a0, a1
label936:
	lw a1, 16(a2)
	slt a5, a1, a0
	bne a5, zero, label932
	mv a1, a0
label932:
	lw a0, 20(a2)
	slt a5, a0, a1
	bne a5, zero, label928
	mv a0, a1
label928:
	lw a1, 24(a2)
	slt a5, a1, a0
	bne a5, zero, label924
	mv a1, a0
label924:
	lw a0, 28(a2)
	slt a2, a0, a1
	bne a2, zero, label920
	mv a0, a1
label920:
	mv a1, zero
label27:
	slli a2, a1, 2
	add a2, a4, a2
	sw a0, 0(a2)
	sw a0, 4(a2)
	sw a0, 8(a2)
	sw a0, 12(a2)
	sw a0, 16(a2)
	sw a0, 20(a2)
	sw a0, 24(a2)
	sw a0, 28(a2)
	sw a0, 32(a2)
	sw a0, 36(a2)
	sw a0, 40(a2)
	sw a0, 44(a2)
	sw a0, 48(a2)
	sw a0, 52(a2)
	sw a0, 56(a2)
	sw a0, 60(a2)
	addiw a1, a1, 16
	li a2, 992
	bge a1, a2, label29
	j label27
label29:
	slli a1, a1, 2
	add a1, a4, a1
	sw a0, 0(a1)
	sw a0, 4(a1)
	sw a0, 8(a1)
	sw a0, 12(a1)
	sw a0, 16(a1)
	sw a0, 20(a1)
	sw a0, 24(a1)
	sw a0, 28(a1)
	addiw a3, a3, 1
	li a0, 1000
	bge a3, a0, label290
	li a0, 4000
	mul a0, a3, a0
	add a4, s0, a0
	li a0, 2147483647
	mv a5, zero
	slli a1, zero, 2
	add t1, a4, a1
	lw a1, 0(t1)
	slt a2, a1, a0
	bne a2, zero, label964
	mv a1, a0
	lw a0, 4(t1)
	slt a2, a0, a1
	bne a2, zero, label962
	mv a0, a1
	lw a2, 8(t1)
	slt a1, a2, a1
	bne a1, zero, label960
	mv a2, a0
	lw a1, 12(t1)
	slt a0, a1, a0
	bne a0, zero, label958
	mv a1, a2
	lw a0, 16(t1)
	slt a2, a0, a2
	bne a2, zero, label956
	j label955
label434:
	li a1, 4000
	mul a1, a0, a1
	add a2, s0, a1
	mv a1, zero
	j label37
label40:
	slli a1, a1, 2
	add a1, a2, a1
	lw a2, 0(a1)
	lw a3, 4(a1)
	addw a2, s1, a2
	addw a2, a2, a3
	lw a3, 8(a1)
	addw a2, a2, a3
	lw a3, 12(a1)
	addw a2, a2, a3
	lw a3, 16(a1)
	addw a2, a2, a3
	lw a3, 20(a1)
	addw a2, a2, a3
	lw a3, 24(a1)
	addw a2, a2, a3
	lw a1, 28(a1)
	addw s1, a2, a1
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label35
	j label434
label37:
	slli a3, a1, 2
	add a3, a2, a3
	lw a4, 0(a3)
	addw a4, s1, a4
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a5, 12(a3)
	addw a4, a4, a5
	lw a5, 16(a3)
	addw a4, a4, a5
	lw a5, 20(a3)
	addw a4, a4, a5
	lw a5, 24(a3)
	addw a4, a4, a5
	lw a5, 28(a3)
	addw a4, a4, a5
	lw a5, 32(a3)
	addw a4, a4, a5
	lw a5, 36(a3)
	addw a4, a4, a5
	lw a5, 40(a3)
	addw a4, a4, a5
	lw a5, 44(a3)
	addw a4, a4, a5
	lw a5, 48(a3)
	addw a4, a4, a5
	lw a5, 52(a3)
	addw a4, a4, a5
	lw a5, 56(a3)
	addw a4, a4, a5
	lw a3, 60(a3)
	addw s1, a4, a3
	addiw a1, a1, 16
	li a3, 992
	bge a1, a3, label40
	j label37
label5:
	addiw s3, s3, 1
	li a0, 1000
	bge s3, a0, label8
	li a0, 4000
	mul a0, s3, a0
	add a0, s1, a0
	jal getarray
	li a1, 1000
	beq a0, a1, label5
	j label6
