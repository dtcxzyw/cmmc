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
	addi sp, sp, -440
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
	addi a4, sp, 200
	addi a2, sp, 64
	sd s0, 336(sp)
	li s0, 264
	sd s5, 192(sp)
	li s5, 929
	sd s1, 352(sp)
	li s1, 639
	sd s6, 328(sp)
	li s6, 756
	sd s2, 360(sp)
	li s2, 459
	sd s3, 368(sp)
	li s3, 29
	sd s4, 376(sp)
	li s4, 68
	sd s7, 384(sp)
	li s7, 452
	sd s11, 392(sp)
	li s11, 279
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
	sw a0, 64(sp)
	sw a1, 68(sp)
	sw a2, 72(sp)
	sw a3, 76(sp)
	sw a4, 80(sp)
	sw a5, 84(sp)
	sw t0, 88(sp)
	sw t1, 92(sp)
	sw t2, 96(sp)
	sw t3, 100(sp)
	sw t4, 104(sp)
	sw t5, 108(sp)
	sw t6, 112(sp)
	sw a6, 116(sp)
	sw a7, 120(sp)
	sw s0, 124(sp)
	sw s1, 128(sp)
	sw s2, 132(sp)
	sw s3, 136(sp)
	sw s4, 140(sp)
	sw s5, 144(sp)
	sw s6, 148(sp)
	sw s7, 152(sp)
	sd s11, 344(sp)
	sw s11, 156(sp)
	li s11, 58
	sd s11, 432(sp)
	sw s11, 160(sp)
	li s11, 87
	sd s11, 0(sp)
	sw s11, 164(sp)
	li s11, 96
	sd s11, 8(sp)
	sw s11, 168(sp)
	li s11, 36
	sd s11, 16(sp)
	sw s11, 172(sp)
	li s11, 39
	sd s11, 56(sp)
	sw s11, 176(sp)
	sw s8, 180(sp)
	sw s9, 184(sp)
	sw s10, 188(sp)
	sw a0, 200(sp)
pcrel930:
	auipc a0, %pcrel_hi(count)
	sw a1, 204(sp)
	sw a2, 208(sp)
	addi a2, a0, %pcrel_lo(pcrel930)
	sw a3, 212(sp)
	sw a4, 216(sp)
	sw a5, 220(sp)
	sw t0, 224(sp)
	sw t1, 228(sp)
	sw t2, 232(sp)
	sw t3, 236(sp)
	sw t4, 240(sp)
	sw t5, 244(sp)
	sw t6, 248(sp)
	sw a6, 252(sp)
	sw a7, 256(sp)
	sw s0, 260(sp)
	mv s0, zero
	sw s1, 264(sp)
	sw s2, 268(sp)
	sw s3, 272(sp)
	sw s4, 276(sp)
	sw s5, 280(sp)
	sw s6, 284(sp)
	sw s7, 288(sp)
	ld s11, 344(sp)
	sw s11, 292(sp)
	ld s11, 432(sp)
	sw s11, 296(sp)
	ld s11, 0(sp)
	sw s11, 300(sp)
	ld s11, 8(sp)
	sw s11, 304(sp)
	ld s11, 16(sp)
	sw s11, 308(sp)
	ld s11, 56(sp)
	sw s11, 312(sp)
	sw s8, 316(sp)
	sw s9, 320(sp)
	sw s10, 324(sp)
	sd a2, 32(sp)
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
	blt zero, a2, label297
.p2align 2
label888:
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
	lw a1, 264(sp)
	lw a2, 260(sp)
	addw a0, a1, a2
	srliw a3, a0, 31
	add a1, a0, a3
	sraiw a0, a1, 1
	jal putint
	mv a1, zero
.p2align 2
label136:
	ld a2, 32(sp)
	sh2add a0, a1, a2
	addiw a1, a1, 16
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
	li a0, 992
	blt a1, a0, label136
	sh2add a0, a1, a2
	li a1, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	mv a0, zero
	sd a1, 24(sp)
	mv a3, zero
	mv a2, zero
	j label139
.p2align 2
label297:
	mv a2, zero
	bgt a1, zero, label130
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label297
	j label888
.p2align 2
label130:
	ld a4, 48(sp)
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label131
	mv a2, t0
	bgt a1, t0, label130
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label297
	j label888
.p2align 2
label131:
	ld a4, 48(sp)
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label130
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label297
	j label888
label139:
	ld a4, 48(sp)
	sh2add a1, a2, a4
	lw a5, 0(a1)
	ld a2, 32(sp)
	sh2add a4, a5, a2
	lw t1, 0(a4)
	addiw t0, t1, 1
	sw t0, 0(a4)
	lw t2, 4(a1)
	max a4, a3, t0
	sh2add a2, t2, a2
	lw t3, 0(a2)
	addiw t1, t3, 1
	blt a3, t0, label853
	mv a5, a0
label853:
	mv a0, t2
	blt a4, t1, label855
	mv a0, a5
label855:
	max a4, a4, t1
	sw t1, 0(a2)
	lw a3, 8(a1)
	ld a2, 32(sp)
	sh2add a5, a3, a2
	lw t0, 0(a5)
	addiw a2, t0, 1
	blt a4, a2, label857
	mv a3, a0
label857:
	max a4, a4, a2
	sw a2, 0(a5)
	lw a0, 12(a1)
	ld a2, 32(sp)
	sh2add a1, a0, a2
	lw a5, 0(a1)
	addiw a2, a5, 1
	blt a4, a2, label859
	mv a0, a3
label859:
	max a3, a4, a2
	sw a2, 0(a1)
	li a2, 32
	ld a1, 24(sp)
	addiw a4, a1, 4
	bge a4, a2, label144
	sd a4, 24(sp)
	mv a2, a1
	mv a1, a4
	j label139
label144:
	ld a4, 48(sp)
	sh2add t0, a1, a4
	lw a5, 0(t0)
	ld a2, 32(sp)
	sh2add a4, a5, a2
	mv a2, a5
	lw t1, 0(a4)
	addiw t0, t1, 1
	blt a3, t0, label861
	mv a2, a0
label861:
	sw t0, 0(a4)
	max a3, a3, t0
	addiw a1, a1, 1
	li a0, 32
	bge a1, a0, label148
	mv a0, a2
	j label144
label148:
	mv a0, a2
	jal putint
	mv a1, zero
.p2align 2
label149:
	addiw a0, a1, 4
	li a2, 32
	bge a0, a2, label152
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a5, 0(a3)
	ld a4, 48(sp)
	sh2add a1, a1, a4
	sw a5, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a2, 8(a3)
	sw a2, 8(a1)
	lw a3, 12(a3)
	sw a3, 12(a1)
	mv a1, a0
	j label149
label152:
	ld a2, 40(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a2, 32
	blt a1, a2, label152
	mv a0, zero
	mv a3, a2
	li a2, 31
	addi a1, a3, -1
	blt zero, a2, label453
.p2align 2
label452:
	mv s0, zero
.p2align 2
label161:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label161
	mv a0, zero
	li a1, 4
	li a2, 32
	blt a1, a2, label165
	j label166
.p2align 2
label163:
	addiw a1, a0, 4
	li a2, 32
	bge a1, a2, label166
label165:
	ld a2, 40(sp)
	sh2add a3, a0, a2
	lw a5, 0(a3)
	ld a4, 48(sp)
	sh2add a0, a0, a4
	sw a5, 0(a0)
	lw a2, 4(a3)
	sw a2, 4(a0)
	lw a4, 8(a3)
	sw a4, 8(a0)
	lw a2, 12(a3)
	sw a2, 12(a0)
	mv a0, a1
	j label163
.p2align 2
label453:
	mv a2, zero
	bgt a1, zero, label159
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label453
	j label452
.p2align 2
label159:
	ld a4, 48(sp)
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label160
	mv a2, t0
	bgt a1, t0, label159
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label453
	j label452
.p2align 2
label160:
	ld a4, 48(sp)
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label159
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label453
	j label452
label166:
	ld a2, 40(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label166
	li a0, 1
	bge a0, a1, label511
.p2align 2
label170:
	ld a4, 48(sp)
	addiw a2, a0, -1
	sh2add a3, a0, a4
	lw a1, 0(a3)
	bge a2, zero, label174
	addiw a2, a2, 1
	addiw a0, a0, 1
	sh2add a3, a2, a4
	sw a1, 0(a3)
	li a1, 32
	blt a0, a1, label170
	j label511
.p2align 2
label174:
	ld a4, 48(sp)
	sh2add a5, a2, a4
	lw a3, 0(a5)
	blt a1, a3, label175
	addiw a2, a2, 1
	addiw a0, a0, 1
	sh2add a3, a2, a4
	sw a1, 0(a3)
	li a1, 32
	blt a0, a1, label170
	j label511
.p2align 2
label175:
	addiw a5, a2, 1
	ld a4, 48(sp)
	addiw a2, a2, -1
	sh2add t0, a5, a4
	sw a3, 0(t0)
	bge a2, zero, label174
	addiw a2, a2, 1
	addiw a0, a0, 1
	sh2add a3, a2, a4
	sw a1, 0(a3)
	li a1, 32
	blt a0, a1, label170
.p2align 2
label511:
	mv s0, zero
.p2align 2
label176:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label176
	mv a0, zero
	li a1, 4
	li a2, 32
	blt a1, a2, label180
	j label181
.p2align 2
label178:
	addiw a1, a0, 4
	li a2, 32
	bge a1, a2, label181
label180:
	ld a2, 40(sp)
	sh2add a3, a0, a2
	lw a5, 0(a3)
	ld a4, 48(sp)
	sh2add a0, a0, a4
	sw a5, 0(a0)
	lw a2, 4(a3)
	sw a2, 4(a0)
	lw a4, 8(a3)
	sw a4, 8(a0)
	lw a2, 12(a3)
	sw a2, 12(a0)
	mv a0, a1
	j label178
label181:
	ld a2, 40(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label181
	mv a1, zero
	li a2, 31
	mv a0, a4
	jal QuickSort
	mv s0, zero
.p2align 2
label184:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label184
	mv a0, zero
	li a1, 4
	li a2, 32
	blt a1, a2, label216
	j label188
.p2align 2
label186:
	addiw a1, a0, 4
	li a2, 32
	bge a1, a2, label188
label216:
	ld a2, 40(sp)
	sh2add a3, a0, a2
	lw a5, 0(a3)
	ld a4, 48(sp)
	sh2add a0, a0, a4
	sw a5, 0(a0)
	lw a2, 4(a3)
	sw a2, 4(a0)
	lw a4, 8(a3)
	sw a4, 8(a0)
	lw a2, 12(a3)
	sw a2, 12(a0)
	mv a0, a1
	j label186
label188:
	ld a2, 40(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a2, 32
	blt a0, a2, label188
	mv a1, zero
	mv a0, zero
	bge zero, a2, label598
.p2align 2
label193:
	ld a4, 48(sp)
	sh2add a2, a0, a4
	lw a3, 0(a2)
	andi a2, a0, 3
	addw a1, a1, a3
	li a3, 3
	bne a2, a3, label195
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	mv a1, zero
	li a2, 32
	blt a0, a2, label193
	j label598
.p2align 2
label195:
	ld a4, 48(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw zero, 0(a2)
	li a2, 32
	blt a0, a2, label193
.p2align 2
label598:
	mv s0, zero
.p2align 2
label196:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label196
	mv a0, zero
	li a1, 4
	li a2, 32
	blt a1, a2, label200
	j label201
.p2align 2
label198:
	addiw a1, a0, 4
	li a2, 32
	bge a1, a2, label201
label200:
	ld a2, 40(sp)
	sh2add a3, a0, a2
	lw a5, 0(a3)
	ld a4, 48(sp)
	sh2add a0, a0, a4
	sw a5, 0(a0)
	lw a2, 4(a3)
	sw a2, 4(a0)
	lw a4, 8(a3)
	sw a4, 8(a0)
	lw a2, 12(a3)
	sw a2, 12(a0)
	mv a0, a1
	j label198
label201:
	ld a2, 40(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 48(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a2, 32
	blt a0, a2, label201
	mv a1, zero
	mv a2, zero
	mv a0, zero
.p2align 2
label203:
	li a3, 32
	bge a0, a3, label654
.p2align 2
label207:
	li a3, 2
	blt a0, a3, label211
	beq a0, a3, label209
	ld a4, 48(sp)
	li t0, 1431655766
	sh2add a3, a0, a4
	addiw a0, a0, 1
	lw a5, 0(a3)
	addw a4, a2, a5
	subw a2, a4, a1
	mul a1, a2, t0
	srli t0, a1, 63
	srli a5, a1, 32
	lw a1, -8(a3)
	add a4, t0, a5
	sw a4, -8(a3)
	j label203
.p2align 2
label211:
	ld a4, 48(sp)
	sh2add a3, a0, a4
	addiw a0, a0, 1
	lw a5, 0(a3)
	addw a2, a2, a5
	li a3, 32
	blt a0, a3, label207
.p2align 2
label654:
	sw zero, 320(sp)
	mv s0, zero
	sw zero, 324(sp)
.p2align 2
label213:
	ld a4, 48(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label213
	mv a0, zero
	ld ra, 424(sp)
	ld s10, 416(sp)
	ld s9, 408(sp)
	ld s8, 400(sp)
	ld s11, 392(sp)
	ld s7, 384(sp)
	ld s4, 376(sp)
	ld s3, 368(sp)
	ld s2, 360(sp)
	ld s6, 328(sp)
	ld s1, 352(sp)
	ld s5, 192(sp)
	ld s0, 336(sp)
	addi sp, sp, 440
	ret
label209:
	lw a1, 200(sp)
	li a4, 1431655766
	mul a0, a2, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 200(sp)
	li a0, 3
	j label203
