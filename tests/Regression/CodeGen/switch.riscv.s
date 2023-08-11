.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 8
__cmmc_jumptable10:
	.word	label7-__cmmc_jumptable10
	.word	label6-__cmmc_jumptable10
	.word	label5-__cmmc_jumptable10
	.word	label4-__cmmc_jumptable10
.text
.p2align 2
.globl test
test:
	mv a2, a1
	li a4, 4
	bgeu a1, a4, label2
pcrel34:
	auipc t0, %pcrel_hi(__cmmc_jumptable10)
	addi a3, t0, %pcrel_lo(pcrel34)
	sh2add a4, a1, a3
	lw a5, 0(a4)
	add a1, a3, a5
	jr a1
label7:
	addiw a0, a0, 100
	j label2
label4:
	lui a4, 335544
	addiw a3, a4, 1311
	mul a1, a0, a3
	srli a4, a1, 63
	srai a2, a1, 37
	add a0, a4, a2
label2:
	ret
label6:
	addiw a0, a0, -100
	j label2
label5:
	li a1, 100
	mulw a0, a0, a1
	j label2
