.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
count:
	.zero	4000
.text
QuickSort:
.p2align 2
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a2
	sd s2, 8(sp)
	sd ra, 0(sp)
label2:
	bgt s1, a1, label4
	j label21
label8:
	sh2add a4, s2, s0
	addiw a2, s2, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s2, 1
	j label2
.p2align 2
label20:
	sh2add t0, a3, s0
	sh2add a5, s2, s0
	lw a4, 0(t0)
	addiw s2, s2, 1
	sw a4, 0(a5)
	bgt a3, s2, label16
	j label8
label21:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
.p2align 2
label19:
	sh2add t0, s2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s2, label9
	j label8
.p2align 2
label16:
	sh2add a4, s2, s0
	lw a5, 0(a4)
	bgt a0, a5, label17
	bgt a3, s2, label19
	j label8
.p2align 2
label17:
	addiw s2, s2, 1
	bgt a3, s2, label16
	j label8
label4:
	sh2add a3, a1, s0
	mv s2, a1
	lw a0, 0(a3)
	mv a3, s1
	addi a2, a0, -1
	ble s1, a1, label8
.p2align 2
label9:
	blt s2, a3, label11
	bgt a3, s2, label16
	j label8
.p2align 2
label11:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	blt a2, a4, label12
	blt s2, a3, label20
	bgt a3, s2, label16
	j label8
.p2align 2
label12:
	addiw a3, a3, -1
	blt s2, a3, label11
	bgt a3, s2, label16
	j label8
.globl main
main:
.p2align 2
	addi sp, sp, -432
	li a0, 7
	li a1, 23
	li a3, 26
	li a5, 254
	li t0, 27
	li t1, 5
	li t2, 83
	li t3, 273
	li t4, 574
	li t5, 905
	li t6, 354
	li a6, 657
	li a7, 935
	addi a4, sp, 184
	addi a2, sp, 56
	sd s0, 328(sp)
	li s0, 264
	sd s5, 312(sp)
	li s5, 929
	sd s1, 344(sp)
	li s1, 639
	sd s6, 352(sp)
	li s6, 756
	sd s2, 360(sp)
	li s2, 459
	sd s3, 368(sp)
	li s3, 29
	sd s4, 376(sp)
	li s4, 68
	sd s11, 384(sp)
	li s11, 452
	sd s7, 392(sp)
	li s7, 39
	sd s8, 400(sp)
	li s8, 28
	sd s9, 408(sp)
	li s9, 1
	sd s10, 416(sp)
	li s10, 290
	sd ra, 424(sp)
	sd a4, 48(sp)
	li a4, 282
	sd a2, 40(sp)
	li a2, 89
	sw a0, 56(sp)
	sw a1, 60(sp)
	sw a2, 64(sp)
	sw a3, 68(sp)
	sw a4, 72(sp)
	sw a5, 76(sp)
	sw t0, 80(sp)
	sw t1, 84(sp)
	sw t2, 88(sp)
	sw t3, 92(sp)
	sw t4, 96(sp)
	sw t5, 100(sp)
	sw t6, 104(sp)
	sw a6, 108(sp)
	sw a7, 112(sp)
	sw s0, 116(sp)
	sw s1, 120(sp)
	sw s2, 124(sp)
	sw s3, 128(sp)
	sw s4, 132(sp)
	sw s5, 136(sp)
	sw s6, 140(sp)
	sd s11, 336(sp)
	sw s11, 144(sp)
	li s11, 279
	sd s11, 320(sp)
	sw s11, 148(sp)
	li s11, 58
	sd s11, 0(sp)
	sw s11, 152(sp)
	li s11, 87
	sd s11, 8(sp)
	sw s11, 156(sp)
	li s11, 96
	sd s11, 16(sp)
	sw s11, 160(sp)
	li s11, 36
	sd s11, 24(sp)
	sw s11, 164(sp)
	sw s7, 168(sp)
	sw s8, 172(sp)
	sw s9, 176(sp)
	sw s10, 180(sp)
	sw a0, 184(sp)
pcrel1017:
	auipc a0, %pcrel_hi(count)
	sw a1, 188(sp)
	sw a2, 192(sp)
	sw a3, 196(sp)
	sw a4, 200(sp)
	addi a4, a0, %pcrel_lo(pcrel1017)
	sw a5, 204(sp)
	sw t0, 208(sp)
	sw t1, 212(sp)
	sw t2, 216(sp)
	sw t3, 220(sp)
	sw t4, 224(sp)
	sw t5, 228(sp)
	sw t6, 232(sp)
	sw a6, 236(sp)
	sw a7, 240(sp)
	sw s0, 244(sp)
	mv s0, zero
	sw s1, 248(sp)
	sw s2, 252(sp)
	sw s3, 256(sp)
	sw s4, 260(sp)
	sw s5, 264(sp)
	sw s6, 268(sp)
	ld s11, 336(sp)
	sw s11, 272(sp)
	ld s11, 320(sp)
	sw s11, 276(sp)
	ld s11, 0(sp)
	sw s11, 280(sp)
	ld s11, 8(sp)
	sw s11, 284(sp)
	ld s11, 16(sp)
	sw s11, 288(sp)
	ld s11, 24(sp)
	sw s11, 292(sp)
	sw s7, 296(sp)
	sw s8, 300(sp)
	sw s9, 304(sp)
	sw s10, 308(sp)
	sd a4, 32(sp)
.p2align 2
label124:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label124
	mv a0, zero
	li a2, 32
	mv a3, a2
	li a2, 31
	addi a1, a3, -1
	blt zero, a2, label291
.p2align 2
label967:
	mv s0, zero
.p2align 2
label133:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label133
	lw a1, 248(sp)
	lw a2, 244(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a1, zero
	j label136
.p2align 2
label291:
	mv a2, zero
	bgt a1, zero, label131
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label291
	j label967
.p2align 2
label131:
	ld a4, 48(sp)
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label132
	mv a2, t0
	bgt a1, t0, label131
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label291
	j label967
.p2align 2
label132:
	ld a4, 48(sp)
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label131
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label291
	j label967
.p2align 2
label136:
	ld a4, 32(sp)
	sh2add a0, a1, a4
	addiw a1, a1, 64
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	sw zero, 32(a0)
	sw zero, 36(a0)
	sw zero, 40(a0)
	sw zero, 44(a0)
	sw zero, 48(a0)
	sw zero, 52(a0)
	sw zero, 56(a0)
	sw zero, 60(a0)
	sw zero, 64(a0)
	sw zero, 68(a0)
	sw zero, 72(a0)
	sw zero, 76(a0)
	sw zero, 80(a0)
	sw zero, 84(a0)
	sw zero, 88(a0)
	sw zero, 92(a0)
	sw zero, 96(a0)
	sw zero, 100(a0)
	sw zero, 104(a0)
	sw zero, 108(a0)
	sw zero, 112(a0)
	sw zero, 116(a0)
	sw zero, 120(a0)
	sw zero, 124(a0)
	sw zero, 128(a0)
	sw zero, 132(a0)
	sw zero, 136(a0)
	sw zero, 140(a0)
	sw zero, 144(a0)
	sw zero, 148(a0)
	sw zero, 152(a0)
	sw zero, 156(a0)
	sw zero, 160(a0)
	sw zero, 164(a0)
	sw zero, 168(a0)
	sw zero, 172(a0)
	sw zero, 176(a0)
	sw zero, 180(a0)
	sw zero, 184(a0)
	sw zero, 188(a0)
	sw zero, 192(a0)
	sw zero, 196(a0)
	sw zero, 200(a0)
	sw zero, 204(a0)
	sw zero, 208(a0)
	sw zero, 212(a0)
	sw zero, 216(a0)
	sw zero, 220(a0)
	sw zero, 224(a0)
	sw zero, 228(a0)
	sw zero, 232(a0)
	sw zero, 236(a0)
	sw zero, 240(a0)
	sw zero, 244(a0)
	sw zero, 248(a0)
	sw zero, 252(a0)
	li a0, 960
	blt a1, a0, label136
	mv a2, zero
	sh2add a0, a1, a4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	sw zero, 32(a0)
	sw zero, 36(a0)
	sw zero, 40(a0)
	sw zero, 44(a0)
	sw zero, 48(a0)
	sw zero, 52(a0)
	sw zero, 56(a0)
	sw zero, 60(a0)
	sw zero, 64(a0)
	sw zero, 68(a0)
	sw zero, 72(a0)
	sw zero, 76(a0)
	sw zero, 80(a0)
	sw zero, 84(a0)
	sw zero, 88(a0)
	sw zero, 92(a0)
	sw zero, 96(a0)
	sw zero, 100(a0)
	sw zero, 104(a0)
	sw zero, 108(a0)
	sw zero, 112(a0)
	sw zero, 116(a0)
	sw zero, 120(a0)
	sw zero, 124(a0)
	sw zero, 128(a0)
	sw zero, 132(a0)
	sw zero, 136(a0)
	sw zero, 140(a0)
	sw zero, 144(a0)
	sw zero, 148(a0)
	sw zero, 152(a0)
	sw zero, 156(a0)
	mv a3, zero
	mv a0, zero
.p2align 2
label139:
	ld a4, 48(sp)
	sh2add a1, a0, a4
	lw a5, 0(a1)
	ld a4, 32(sp)
	sh2add t0, a5, a4
	lw t2, 0(t0)
	addiw t1, t2, 1
	sw t1, 0(t0)
	lw t3, 4(a1)
	max t0, a3, t1
	sh2add a4, t3, a4
	lw t4, 0(a4)
	addiw t2, t4, 1
	blt a3, t1, label932
	mv a5, a2
.p2align 2
label932:
	mv a2, t3
	blt t0, t2, label934
	mv a2, a5
.p2align 2
label934:
	max a5, t0, t2
	sw t2, 0(a4)
	lw a3, 8(a1)
	ld a4, 32(sp)
	sh2add t0, a3, a4
	lw t1, 0(t0)
	addiw a4, t1, 1
	blt a5, a4, label936
	mv a3, a2
.p2align 2
label936:
	max a5, a5, a4
	sw a4, 0(t0)
	lw a1, 12(a1)
	mv a2, a1
	ld a4, 32(sp)
	sh2add t0, a1, a4
	lw t1, 0(t0)
	addiw a4, t1, 1
	blt a5, a4, label938
	mv a2, a3
.p2align 2
label938:
	max a1, a5, a4
	addiw a3, a0, 8
	sw a4, 0(t0)
	addiw a0, a0, 4
	li a4, 32
	blt a3, a4, label477
	ld a4, 48(sp)
	sh2add a5, a0, a4
	lw a3, 0(a5)
	ld a4, 32(sp)
	sh2add a5, a3, a4
	lw t0, 0(a5)
	addiw a4, t0, 1
	blt a1, a4, label940
label972:
	mv a3, a2
	j label940
label477:
	mv a3, a1
	j label139
label143:
	ld a4, 48(sp)
	sh2add a5, a0, a4
	lw a3, 0(a5)
	ld a4, 32(sp)
	sh2add a5, a3, a4
	lw t0, 0(a5)
	addiw a4, t0, 1
	bge a1, a4, label972
label940:
	sw a4, 0(a5)
	max a1, a1, a4
	addiw a0, a0, 1
	li a2, 32
	bge a0, a2, label147
	mv a2, a3
	j label143
label147:
	mv a0, a3
	jal putint
	mv a0, zero
.p2align 2
label148:
	ld a2, 40(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	ld a4, 48(sp)
	sh2add a2, a0, a4
	sw a3, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a1, 12(a1)
	sw a1, 12(a2)
	addiw a1, a0, 4
	addiw a2, a0, 8
	li a0, 32
	blt a2, a0, label512
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a2, 32
	blt a1, a2, label150
	j label973
label512:
	mv a0, a1
	j label148
label973:
	mv a0, zero
	j label152
label150:
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a2, 32
	blt a1, a2, label150
	j label973
.p2align 2
label152:
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label528
.p2align 2
label527:
	mv s0, zero
	j label159
.p2align 2
label528:
	mv a2, zero
	bgt a1, zero, label156
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label528
	j label527
.p2align 2
label156:
	ld a4, 48(sp)
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label157
	mv a2, t0
	bgt a1, t0, label156
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label528
	j label527
.p2align 2
label157:
	ld a4, 48(sp)
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label156
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label528
	j label527
.p2align 2
label159:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label159
	mv a0, zero
.p2align 2
label161:
	ld a2, 40(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	ld a4, 48(sp)
	sh2add a2, a0, a4
	sw a3, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a1, 12(a1)
	sw a1, 12(a2)
	addiw a1, a0, 4
	addiw a2, a0, 8
	li a0, 32
	blt a2, a0, label574
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a2, 32
	blt a1, a2, label163
	j label978
label574:
	mv a0, a1
	j label161
label978:
	li a0, 1
	j label165
label163:
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a2, 32
	blt a1, a2, label163
	j label978
.p2align 2
label165:
	li a2, 32
	bge a0, a2, label587
.p2align 2
label205:
	ld a4, 48(sp)
	addiw a2, a0, -1
	sh2add a3, a0, a4
	lw a1, 0(a3)
	bge a2, zero, label208
	addiw a3, a2, 1
	addiw a0, a0, 1
	sh2add a2, a3, a4
	sw a1, 0(a2)
	li a2, 32
	blt a0, a2, label205
	j label587
.p2align 2
label208:
	ld a4, 48(sp)
	sh2add a5, a2, a4
	lw a3, 0(a5)
	blt a1, a3, label209
	addiw a3, a2, 1
	addiw a0, a0, 1
	sh2add a2, a3, a4
	sw a1, 0(a2)
	li a2, 32
	blt a0, a2, label205
	j label587
.p2align 2
label209:
	addiw a5, a2, 1
	ld a4, 48(sp)
	addiw a2, a2, -1
	sh2add t0, a5, a4
	sw a3, 0(t0)
	bge a2, zero, label208
	addiw a3, a2, 1
	addiw a0, a0, 1
	sh2add a2, a3, a4
	sw a1, 0(a2)
	li a2, 32
	blt a0, a2, label205
.p2align 2
label587:
	mv s0, zero
.p2align 2
label167:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label167
	mv a0, zero
.p2align 2
label169:
	ld a2, 40(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	ld a4, 48(sp)
	sh2add a2, a0, a4
	sw a3, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a1, 12(a1)
	sw a1, 12(a2)
	addiw a1, a0, 4
	addiw a2, a0, 8
	li a0, 32
	blt a2, a0, label616
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	blt a1, a0, label171
	j label173
label616:
	mv a0, a1
	j label169
label171:
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	blt a1, a0, label171
label173:
	ld a4, 48(sp)
	mv a1, zero
	li a2, 31
	mv a0, a4
	jal QuickSort
	mv s0, zero
.p2align 2
label174:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label174
	mv a0, zero
.p2align 2
label176:
	ld a2, 40(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	ld a4, 48(sp)
	sh2add a2, a0, a4
	sw a3, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a1, 12(a1)
	sw a1, 12(a2)
	addiw a1, a0, 4
	addiw a2, a0, 8
	li a0, 32
	blt a2, a0, label654
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	blt a1, a0, label178
	j label981
label654:
	mv a0, a1
	j label176
label981:
	mv a1, zero
	mv a0, zero
	j label180
label178:
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	blt a1, a0, label178
	j label981
.p2align 2
label180:
	li a2, 32
	bge a0, a2, label667
.p2align 2
label202:
	ld a4, 48(sp)
	sh2add a2, a0, a4
	lw a3, 0(a2)
	andi a2, a0, 3
	addw a1, a1, a3
	li a3, 3
	bne a2, a3, label204
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	mv a1, zero
	li a2, 32
	blt a0, a2, label202
	j label667
.p2align 2
label204:
	ld a4, 48(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw zero, 0(a2)
	li a2, 32
	blt a0, a2, label202
.p2align 2
label667:
	mv s0, zero
.p2align 2
label183:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label183
	mv a0, zero
.p2align 2
label185:
	ld a2, 40(sp)
	sh2add a1, a0, a2
	lw a3, 0(a1)
	ld a4, 48(sp)
	sh2add a2, a0, a4
	sw a3, 0(a2)
	lw a3, 4(a1)
	sw a3, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a1, 12(a1)
	sw a1, 12(a2)
	addiw a1, a0, 4
	addiw a2, a0, 8
	li a0, 32
	blt a2, a0, label696
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	blt a1, a0, label187
	j label984
label696:
	mv a0, a1
	j label185
label984:
	mv a1, zero
	mv a2, zero
	mv a0, zero
	j label189
label187:
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	blt a1, a0, label187
	j label984
.p2align 2
label189:
	li a3, 32
	bge a0, a3, label709
.p2align 2
label193:
	li a3, 2
	blt a0, a3, label197
	beq a0, a3, label195
	ld a4, 48(sp)
	sh2add a3, a0, a4
	addiw a0, a0, 1
	lw a5, 0(a3)
	addw a4, a2, a5
	li a5, 1431655766
	subw a2, a4, a1
	mul a1, a2, a5
	srli t0, a1, 63
	srli a4, a1, 32
	lw a1, -8(a3)
	add a5, t0, a4
	sw a5, -8(a3)
	j label189
.p2align 2
label197:
	ld a4, 48(sp)
	sh2add a3, a0, a4
	addiw a0, a0, 1
	lw a5, 0(a3)
	addw a2, a2, a5
	li a3, 32
	blt a0, a3, label193
.p2align 2
label709:
	sw zero, 304(sp)
	mv s0, zero
	sw zero, 308(sp)
.p2align 2
label199:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label199
	mv a0, zero
	ld ra, 424(sp)
	ld s10, 416(sp)
	ld s9, 408(sp)
	ld s8, 400(sp)
	ld s7, 392(sp)
	ld s11, 384(sp)
	ld s4, 376(sp)
	ld s3, 368(sp)
	ld s2, 360(sp)
	ld s6, 352(sp)
	ld s1, 344(sp)
	ld s5, 312(sp)
	ld s0, 328(sp)
	addi sp, sp, 432
	ret
label195:
	lw a1, 184(sp)
	li a4, 1431655766
	mul a0, a2, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 184(sp)
	li a0, 3
	j label189
