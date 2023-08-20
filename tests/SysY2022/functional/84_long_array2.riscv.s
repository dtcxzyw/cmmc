.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
c:
	.zero	16384
.text
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel291:
	auipc a2, %pcrel_hi(c)
	li a4, 2
	sd ra, 0(sp)
	slli a1, a4, 32
	sd s0, 8(sp)
	addi a3, a1, 1
	addi s0, a2, %pcrel_lo(pcrel291)
	li a1, 3
	sd a3, %pcrel_lo(pcrel291)(a2)
	addi a0, s0, 24
	li a3, 4
	sd zero, 8(s0)
	slli a2, a3, 32
	mv a3, zero
	addi a4, a2, 3
	sd a4, 16(s0)
	li a4, 63
	slli a2, a4, 6
.p2align 2
label2:
	sd zero, 0(a0)
	addiw a3, a3, 64
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
	bge a3, a2, label6
	addi a0, a0, 256
	j label2
label6:
	sd zero, 256(a0)
	sd zero, 264(a0)
	sd zero, 272(a0)
	sd zero, 280(a0)
	sd zero, 288(a0)
	sd zero, 296(a0)
	sd zero, 304(a0)
	sd zero, 312(a0)
	sd zero, 320(a0)
	sd zero, 328(a0)
	sd zero, 336(a0)
	sd zero, 344(a0)
	sd zero, 352(a0)
	sd zero, 360(a0)
	sd zero, 368(a0)
	sd zero, 376(a0)
	sd zero, 384(a0)
	sd zero, 392(a0)
	sd zero, 400(a0)
	sd zero, 408(a0)
	sd zero, 416(a0)
	sd zero, 424(a0)
	sd zero, 432(a0)
	sd zero, 440(a0)
	sd zero, 448(a0)
	sd zero, 456(a0)
	sd zero, 464(a0)
	sd zero, 472(a0)
	sd zero, 480(a0)
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	lw a0, 32(s0)
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
