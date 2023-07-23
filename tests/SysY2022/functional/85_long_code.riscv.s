.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
count:
	.zero	4000
.text
QuickSort:
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a2
	sd s2, 8(sp)
	sd ra, 0(sp)
	bgt a2, a1, label4
label21:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label4:
	sh2add a3, a1, s0
	mv s2, a1
	lw a0, 0(a3)
	mv a3, s1
	addi a2, a0, -1
	ble s1, a1, label8
label9:
	blt s2, a3, label11
	bgt a3, s2, label16
label8:
	sh2add a4, s2, s0
	addiw a2, s2, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s2, 1
	bgt s1, a1, label4
	j label21
label20:
	sh2add t0, a3, s0
	sh2add a5, s2, s0
	lw a4, 0(t0)
	addiw s2, s2, 1
	sw a4, 0(a5)
	bgt a3, s2, label16
	j label8
label19:
	sh2add t0, s2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s2, label9
	j label8
label11:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	blt a2, a4, label12
	blt s2, a3, label20
	ble a3, s2, label8
label16:
	sh2add a4, s2, s0
	lw a5, 0(a4)
	bgt a0, a5, label17
	bgt a3, s2, label19
	j label8
label17:
	addiw s2, s2, 1
	bgt a3, s2, label16
	j label8
label12:
	addiw a3, a3, -1
	blt s2, a3, label11
	bgt a3, s2, label16
	j label8
.globl main
main:
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
	addi a4, sp, 32
	addi a2, sp, 192
	sd s0, 336(sp)
	li s0, 264
	sd s5, 344(sp)
	li s5, 929
	sd s1, 352(sp)
	li s1, 639
	sd s6, 360(sp)
	li s6, 756
	sd s2, 368(sp)
	li s2, 459
	sd s3, 376(sp)
	li s3, 29
	sd s4, 384(sp)
	li s4, 68
	sd s7, 392(sp)
	li s7, 452
	sd s11, 400(sp)
	li s11, 279
	sd s8, 408(sp)
	li s8, 28
	sd s9, 416(sp)
	li s9, 1
	sd s10, 424(sp)
	li s10, 290
	sd ra, 432(sp)
	sd a4, 176(sp)
	li a4, 282
	sd a2, 168(sp)
	li a2, 89
	sw a0, 192(sp)
	sw a1, 196(sp)
	sw a2, 200(sp)
	sw a3, 204(sp)
	sw a4, 208(sp)
	sw a5, 212(sp)
	sw t0, 216(sp)
	sw t1, 220(sp)
	sw t2, 224(sp)
	sw t3, 228(sp)
	sw t4, 232(sp)
	sw t5, 236(sp)
	sw t6, 240(sp)
	sw a6, 244(sp)
	sw a7, 248(sp)
	sw s0, 252(sp)
	sw s1, 256(sp)
	sw s2, 260(sp)
	sw s3, 264(sp)
	sw s4, 268(sp)
	sw s5, 272(sp)
	sw s6, 276(sp)
	sw s7, 280(sp)
	sd s11, 328(sp)
	sw s11, 284(sp)
	li s11, 58
	sd s11, 320(sp)
	sw s11, 288(sp)
	li s11, 87
	sd s11, 0(sp)
	sw s11, 292(sp)
	li s11, 96
	sd s11, 8(sp)
	sw s11, 296(sp)
	li s11, 36
	sd s11, 16(sp)
	sw s11, 300(sp)
	li s11, 39
	sd s11, 184(sp)
	sw s11, 304(sp)
	sw s8, 308(sp)
	sw s9, 312(sp)
	sw s10, 316(sp)
	sw a0, 32(sp)
pcrel921:
	auipc a0, %pcrel_hi(count)
	sw a1, 36(sp)
	sw a2, 40(sp)
	addi a2, a0, %pcrel_lo(pcrel921)
	sw a3, 44(sp)
	sw a4, 48(sp)
	sw a5, 52(sp)
	sw t0, 56(sp)
	sw t1, 60(sp)
	sw t2, 64(sp)
	sw t3, 68(sp)
	sw t4, 72(sp)
	sw t5, 76(sp)
	sw t6, 80(sp)
	sw a6, 84(sp)
	sw a7, 88(sp)
	sw s0, 92(sp)
	mv s0, zero
	sw s1, 96(sp)
	sw s2, 100(sp)
	sw s3, 104(sp)
	sw s4, 108(sp)
	sw s5, 112(sp)
	sw s6, 116(sp)
	sw s7, 120(sp)
	ld s11, 328(sp)
	sw s11, 124(sp)
	ld s11, 320(sp)
	sw s11, 128(sp)
	ld s11, 0(sp)
	sw s11, 132(sp)
	ld s11, 8(sp)
	sw s11, 136(sp)
	ld s11, 16(sp)
	sw s11, 140(sp)
	ld s11, 184(sp)
	sw s11, 144(sp)
	sw s8, 148(sp)
	sw s9, 152(sp)
	sw s10, 156(sp)
	sd a2, 160(sp)
label122:
	ld a4, 176(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label122
	mv a0, zero
	li a2, 32
	subw a3, a2, zero
	li a2, 31
	addi a1, a3, -1
	blt zero, a2, label295
label847:
	mv s0, zero
label131:
	ld a4, 176(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label131
	lw a1, 96(sp)
	lw a2, 92(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a1, zero
label134:
	ld a2, 160(sp)
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
	blt a1, a0, label134
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
	j label137
label295:
	mv a2, zero
	bgt a1, zero, label128
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label295
	j label847
label128:
	ld a4, 176(sp)
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label129
	mv a2, t0
	bgt a1, t0, label128
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label295
	j label847
label129:
	ld a4, 176(sp)
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label128
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label295
	j label847
label137:
	ld a4, 176(sp)
	sh2add a1, a2, a4
	lw a5, 0(a1)
	ld a2, 160(sp)
	sh2add a4, a5, a2
	lw t1, 0(a4)
	addiw t0, t1, 1
	sw t0, 0(a4)
	lw t2, 4(a1)
	max a4, a3, t0
	sh2add a2, t2, a2
	lw t3, 0(a2)
	addiw t1, t3, 1
	blt a3, t0, label812
	mv a5, a0
label812:
	mv a0, t2
	blt a4, t1, label814
	mv a0, a5
label814:
	max a4, a4, t1
	sw t1, 0(a2)
	lw a3, 8(a1)
	ld a2, 160(sp)
	sh2add a5, a3, a2
	lw t0, 0(a5)
	addiw a2, t0, 1
	blt a4, a2, label816
	mv a3, a0
label816:
	max a4, a4, a2
	sw a2, 0(a5)
	lw a0, 12(a1)
	ld a2, 160(sp)
	sh2add a1, a0, a2
	lw a5, 0(a1)
	addiw a2, a5, 1
	blt a4, a2, label818
	mv a0, a3
label818:
	max a3, a4, a2
	sw a2, 0(a1)
	li a2, 32
	ld a1, 24(sp)
	addiw a4, a1, 4
	blt a4, a2, label400
	ld a4, 176(sp)
	sh2add t0, a1, a4
	lw a5, 0(t0)
	ld a2, 160(sp)
	sh2add a4, a5, a2
	mv a2, a5
	lw t1, 0(a4)
	addiw t0, t1, 1
	blt a3, t0, label820
	mv a2, a0
	sw t0, 0(a4)
	max a3, a3, t0
	addiw a1, a1, 1
	li a0, 32
	blt a1, a0, label416
	j label146
label400:
	ld a1, 24(sp)
	sd a4, 24(sp)
	mv a2, a1
	mv a1, a4
	j label137
label820:
	sw t0, 0(a4)
	max a3, a3, t0
	addiw a1, a1, 1
	li a0, 32
	bge a1, a0, label146
label416:
	mv a0, a2
	ld a4, 176(sp)
	sh2add t0, a1, a4
	lw a5, 0(t0)
	ld a2, 160(sp)
	sh2add a4, a5, a2
	mv a2, a5
	lw t1, 0(a4)
	addiw t0, t1, 1
	blt a3, t0, label820
	mv a2, a0
	sw t0, 0(a4)
	max a3, a3, t0
	addiw a1, a1, 1
	li a0, 32
	blt a1, a0, label416
label146:
	mv a0, a2
	jal putint
	mv a1, zero
label147:
	addiw a0, a1, 4
	li a2, 32
	blt a0, a2, label149
	ld a2, 168(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a2, 32
	blt a1, a2, label150
	mv a0, zero
	subw a3, a2, zero
	li a2, 31
	addi a1, a3, -1
	blt zero, a2, label451
	j label888
label149:
	ld a2, 168(sp)
	sh2add a3, a1, a2
	lw a5, 0(a3)
	ld a4, 176(sp)
	sh2add a1, a1, a4
	sw a5, 0(a1)
	lw a2, 4(a3)
	sw a2, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a2, 12(a3)
	sw a2, 12(a1)
	mv a1, a0
	j label147
label888:
	mv s0, zero
label159:
	ld a4, 176(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label159
	mv a0, zero
	li a1, 4
	li a2, 32
	blt a1, a2, label163
	ld a2, 168(sp)
	mv a3, a2
	lw a1, 0(a2)
	ld a4, 176(sp)
	mv a2, a4
	li a0, 1
	sw a1, 0(a4)
	li a1, 32
	blt a0, a1, label164
	j label913
label161:
	addiw a1, a0, 4
	li a2, 32
	blt a1, a2, label163
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label164
	li a0, 1
	blt a0, a1, label168
	j label913
label163:
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a5, 0(a3)
	ld a4, 176(sp)
	sh2add a0, a0, a4
	sw a5, 0(a0)
	lw a2, 4(a3)
	sw a2, 4(a0)
	lw a4, 8(a3)
	sw a4, 8(a0)
	lw a2, 12(a3)
	sw a2, 12(a0)
	mv a0, a1
	j label161
label451:
	mv a2, zero
	bgt a1, zero, label157
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label451
	j label888
label157:
	ld a4, 176(sp)
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label158
	mv a2, t0
	bgt a1, t0, label157
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label451
	j label888
label158:
	ld a4, 176(sp)
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label157
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label451
	j label888
label913:
	mv s0, zero
	j label174
label168:
	ld a4, 176(sp)
	addiw a2, a0, -1
	sh2add a3, a0, a4
	lw a1, 0(a3)
	bge a2, zero, label172
	addiw a2, a2, 1
	addiw a0, a0, 1
	sh2add a3, a2, a4
	sw a1, 0(a3)
	li a1, 32
	blt a0, a1, label168
	j label913
label172:
	ld a4, 176(sp)
	sh2add a5, a2, a4
	lw a3, 0(a5)
	blt a1, a3, label173
	addiw a2, a2, 1
	addiw a0, a0, 1
	sh2add a3, a2, a4
	sw a1, 0(a3)
	li a1, 32
	blt a0, a1, label168
	j label913
label174:
	ld a4, 176(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label174
	mv a0, zero
	li a1, 4
	li a2, 32
	blt a1, a2, label178
	ld a2, 168(sp)
	mv a3, a2
	lw a1, 0(a2)
	ld a4, 176(sp)
	mv a2, a4
	li a0, 1
	sw a1, 0(a4)
	li a1, 32
	blt a0, a1, label179
	j label181
label176:
	addiw a1, a0, 4
	li a2, 32
	blt a1, a2, label178
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label179
	j label181
label178:
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a5, 0(a3)
	ld a4, 176(sp)
	sh2add a0, a0, a4
	sw a5, 0(a0)
	lw a2, 4(a3)
	sw a2, 4(a0)
	lw a4, 8(a3)
	sw a4, 8(a0)
	lw a2, 12(a3)
	sw a2, 12(a0)
	mv a0, a1
	j label176
label179:
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label179
	j label181
label173:
	addiw a5, a2, 1
	ld a4, 176(sp)
	addiw a2, a2, -1
	sh2add t0, a5, a4
	sw a3, 0(t0)
	bge a2, zero, label172
	addiw a2, a2, 1
	addiw a0, a0, 1
	sh2add a3, a2, a4
	sw a1, 0(a3)
	li a1, 32
	blt a0, a1, label168
	j label913
label164:
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label164
	li a0, 1
	blt a0, a1, label168
	j label913
label150:
	ld a2, 168(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a2, 32
	blt a1, a2, label150
	mv a0, zero
	subw a3, a2, zero
	li a2, 31
	addi a1, a3, -1
	blt zero, a2, label451
	j label888
label181:
	ld a4, 176(sp)
	mv a1, zero
	li a2, 31
	mv a0, a4
	jal QuickSort
	mv s0, zero
label182:
	ld a4, 176(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label182
	mv a0, zero
	li a1, 4
	li a2, 32
	blt a1, a2, label214
	ld a2, 168(sp)
	mv a3, a2
	lw a1, 0(a2)
	ld a4, 176(sp)
	mv a2, a4
	li a0, 1
	sw a1, 0(a4)
	li a2, 32
	blt a0, a2, label186
	mv a1, zero
	mv a0, zero
	blt zero, a2, label191
	j label914
label184:
	addiw a1, a0, 4
	li a2, 32
	blt a1, a2, label214
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a2, 32
	blt a0, a2, label186
	mv a1, zero
	mv a0, zero
	blt zero, a2, label191
	j label914
label214:
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a5, 0(a3)
	ld a4, 176(sp)
	sh2add a0, a0, a4
	sw a5, 0(a0)
	lw a2, 4(a3)
	sw a2, 4(a0)
	lw a4, 8(a3)
	sw a4, 8(a0)
	lw a2, 12(a3)
	sw a2, 12(a0)
	mv a0, a1
	j label184
label914:
	mv s0, zero
	j label194
label191:
	ld a4, 176(sp)
	sh2add a2, a0, a4
	lw a3, 0(a2)
	andi a2, a0, 3
	addw a1, a1, a3
	li a3, 3
	bne a2, a3, label193
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	mv a1, zero
	li a2, 32
	blt a0, a2, label191
	j label914
label193:
	ld a4, 176(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw zero, 0(a2)
	li a2, 32
	blt a0, a2, label191
	j label914
label194:
	ld a4, 176(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label194
	mv a0, zero
	li a1, 4
	li a2, 32
	blt a1, a2, label198
	ld a2, 168(sp)
	mv a3, a2
	lw a1, 0(a2)
	ld a4, 176(sp)
	mv a2, a4
	li a0, 1
	sw a1, 0(a4)
	li a2, 32
	blt a0, a2, label199
	mv a1, zero
	mv a2, zero
	mv a0, zero
	li a3, 32
	blt zero, a3, label205
	j label915
label196:
	addiw a1, a0, 4
	li a2, 32
	blt a1, a2, label198
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a2, 32
	blt a0, a2, label199
	mv a1, zero
	mv a2, zero
	mv a0, zero
	li a3, 32
	blt zero, a3, label205
	j label915
label198:
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a5, 0(a3)
	ld a4, 176(sp)
	sh2add a0, a0, a4
	sw a5, 0(a0)
	lw a2, 4(a3)
	sw a2, 4(a0)
	lw a4, 8(a3)
	sw a4, 8(a0)
	lw a2, 12(a3)
	sw a2, 12(a0)
	mv a0, a1
	j label196
label915:
	sw zero, 152(sp)
	mv s0, zero
	sw zero, 156(sp)
	j label211
label199:
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a2, 32
	blt a0, a2, label199
	mv a1, zero
	mv a2, zero
	mv a0, zero
	li a3, 32
	blt zero, a3, label205
	j label915
label211:
	ld a4, 176(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label211
	mv a0, zero
	ld ra, 432(sp)
	ld s10, 424(sp)
	ld s9, 416(sp)
	ld s8, 408(sp)
	ld s11, 400(sp)
	ld s7, 392(sp)
	ld s4, 384(sp)
	ld s3, 376(sp)
	ld s2, 368(sp)
	ld s6, 360(sp)
	ld s1, 352(sp)
	ld s5, 344(sp)
	ld s0, 336(sp)
	addi sp, sp, 440
	ret
label205:
	li a3, 2
	blt a0, a3, label209
	beq a0, a3, label207
	ld a4, 176(sp)
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
	li a3, 32
	blt a0, a3, label205
	j label915
label209:
	ld a4, 176(sp)
	sh2add a3, a0, a4
	addiw a0, a0, 1
	lw a5, 0(a3)
	addw a2, a2, a5
	li a3, 32
	blt a0, a3, label205
	j label915
label186:
	ld a2, 168(sp)
	sh2add a3, a0, a2
	lw a1, 0(a3)
	ld a4, 176(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a2, 32
	blt a0, a2, label186
	mv a1, zero
	mv a0, zero
	blt zero, a2, label191
	j label914
label207:
	lw a1, 32(sp)
	li a4, 1431655766
	mul a0, a2, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 32(sp)
	li a0, 3
	li a3, 32
	blt a0, a3, label205
	j label915
