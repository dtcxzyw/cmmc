.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	8000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -32
pcrel557:
	auipc a1, %pcrel_hi(array)
	mv a3, zero
	li a2, 400
	li a4, 4294967296
	li a5, 12884901890
	li t0, 21474836484
	li t1, 30064771078
	li t2, 38654705672
	li t3, 47244640266
	li t4, 55834574860
	li t5, 64424509454
	li t6, 73014444048
	li a6, 81604378642
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel557)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
.p2align 2
label2:
	mul a7, a3, a2
	li s0, 90194313236
	li s1, 98784247830
	li s2, 201863462958
	addiw a3, a3, 1
	add a1, a0, a7
	li a7, 20
	sd a4, 0(a1)
	sd a5, 8(a1)
	sd t0, 16(a1)
	sd t1, 24(a1)
	sd t2, 32(a1)
	sd t3, 40(a1)
	sd t4, 48(a1)
	sd t5, 56(a1)
	sd t6, 64(a1)
	sd a6, 72(a1)
	sd s0, 80(a1)
	li s0, 107374182424
	sd s1, 88(a1)
	li s1, 115964117018
	sd s0, 96(a1)
	li s0, 124554051612
	sd s1, 104(a1)
	li s1, 133143986206
	sd s0, 112(a1)
	li s0, 141733920800
	sd s1, 120(a1)
	li s1, 150323855394
	sd s0, 128(a1)
	li s0, 158913789988
	sd s1, 136(a1)
	li s1, 167503724582
	sd s0, 144(a1)
	li s0, 176093659176
	sd s1, 152(a1)
	li s1, 184683593770
	sd s0, 160(a1)
	li s0, 193273528364
	sd s1, 168(a1)
	li s1, 210453397552
	sd s0, 176(a1)
	li s0, 219043332146
	sd s2, 184(a1)
	li s2, 236223201334
	sd s1, 192(a1)
	li s1, 227633266740
	sd s0, 200(a1)
	li s0, 244813135928
	sd s1, 208(a1)
	li s1, 253403070522
	sd s2, 216(a1)
	li s2, 330712481868
	sd s0, 224(a1)
	li s0, 261993005116
	sd s1, 232(a1)
	li s1, 270582939710
	sd s0, 240(a1)
	li s0, 279172874304
	sd s1, 248(a1)
	li s1, 287762808898
	sd s0, 256(a1)
	li s0, 296352743492
	sd s1, 264(a1)
	li s1, 304942678086
	sd s0, 272(a1)
	li s0, 313532612680
	sd s1, 280(a1)
	li s1, 322122547274
	sd s0, 288(a1)
	li s0, 339302416462
	sd s1, 296(a1)
	li s1, 347892351056
	sd s2, 304(a1)
	li s2, 382252089432
	sd s0, 312(a1)
	li s0, 356482285650
	sd s1, 320(a1)
	li s1, 365072220244
	sd s0, 328(a1)
	li s0, 373662154838
	sd s1, 336(a1)
	li s1, 390842024026
	sd s0, 344(a1)
	li s0, 399431958620
	sd s2, 352(a1)
	sd s1, 360(a1)
	li s1, 408021893214
	sd s0, 368(a1)
	li s0, 416611827808
	sd s1, 376(a1)
	li s1, 425201762402
	sd s0, 384(a1)
	sd s1, 392(a1)
	blt a3, a7, label2
	li a1, 7692
	addi a3, a1, -492
	add a5, a0, a1
	lw a4, 0(a5)
	add a5, a0, a3
	addi a3, a3, -400
	sh2add t0, a4, a5
	lw a4, 0(t0)
	add t0, a0, a3
	addi a3, a3, -400
	sh2add a5, a4, t0
	lw a4, 0(a5)
	add a5, a0, a3
	addi a3, a3, -400
	sh2add t0, a4, a5
	add a5, a0, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	add a5, a0, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	lw a4, 0(t0)
	add t0, a0, a3
	addi a3, a3, -400
	sh2add a5, a4, t0
	lw a4, 0(a5)
	add a5, a0, a3
	addi a3, a3, -400
	sh2add t0, a4, a5
	add a5, a0, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	lw a4, 0(t0)
	add t0, a0, a3
	addi a3, a3, -400
	sh2add a5, a4, t0
	lw a4, 0(a5)
	add a5, a0, a3
	addi a3, a3, -400
	sh2add t0, a4, a5
	lw a4, 0(t0)
	add t0, a0, a3
	addi a3, a3, -400
	sh2add a5, a4, t0
	add t0, a0, a3
	addi a3, a3, -400
	lw a4, 0(a5)
	sh2add a5, a4, t0
	lw a4, 0(a5)
	add a5, a0, a3
	sh2add a4, a4, a5
	addi a5, a0, 2000
	lw a3, 0(a4)
	sh2add a4, a3, a5
	addi a5, a0, 1600
	lw a3, 0(a4)
	addi a4, a0, 1200
	sh2add t0, a3, a5
	lw a3, 0(t0)
	sh2add a5, a3, a4
	addi a4, a0, 800
	lw a3, 0(a5)
	sh2add a5, a3, a4
	addi a4, a0, 400
	lw a3, 0(a5)
	sh2add a5, a3, a4
	addi a4, a1, -20
	lw t1, 0(a5)
	sh2add t0, t1, a0
	lw a3, 0(t0)
	add t0, a0, a4
	lw a1, 0(t0)
	mul a5, a1, a2
	add a4, a0, a5
	lw a1, 68(a4)
	mul a5, a1, a2
	add a4, a0, a5
	lw a1, 64(a4)
	mul a5, a1, a2
	add a4, a0, a5
	lw t1, 60(a4)
	mul a1, t1, a2
	add t0, a0, a1
	lw a5, 56(t0)
	mul a4, a5, a2
	add t0, a0, a4
	lw a1, 52(t0)
	mul a5, a1, a2
	add a4, a0, a5
	lw a1, 48(a4)
	mul a5, a1, a2
	add a4, a0, a5
	lw a1, 44(a4)
	mul t0, a1, a2
	add a5, a0, t0
	lw a1, 40(a5)
	mul a4, a1, a2
	add t0, a0, a4
	lw a1, 36(t0)
	mul a5, a1, a2
	add a4, a0, a5
	lw a1, 32(a4)
	mul a5, a1, a2
	add a4, a0, a5
	lw t0, 28(a4)
	mul a1, t0, a2
	add a5, a0, a1
	lw a4, 24(a5)
	mul a1, a4, a2
	add a5, a0, a1
	lw a4, 20(a5)
	mul a1, a4, a2
	add a5, a0, a1
	lw a4, 16(a5)
	mul a1, a4, a2
	add a5, a0, a1
	lw t1, 12(a5)
	mul t0, t1, a2
	add a4, a0, t0
	lw a1, 8(a4)
	mul a5, a1, a2
	add a4, a0, a5
	lw a1, 4(a4)
	mul a5, a1, a2
	add t0, a0, a5
	lw a4, 0(t0)
	mul a1, a4, a2
	add a5, a0, a1
	lw a2, 224(a5)
	addw a0, a3, a2
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
