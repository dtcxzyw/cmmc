.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buf:
	.zero	800
.text
.p2align 2
merge_sort:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	addiw a0, a0, 1
	sd s10, 24(sp)
	mv s10, a1
	sd s4, 32(sp)
	sd s8, 40(sp)
	sd s7, 48(sp)
	sd s1, 56(sp)
	sd s6, 64(sp)
	sd s3, 72(sp)
	sd s2, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	sd a1, 104(sp)
	ble a1, a0, label2
	addiw s5, s0, 3
	addiw s6, s0, 15
	addiw s2, a1, -3
	addiw s3, a1, -18
	addw a1, s0, a1
	srliw a2, a1, 31
	add a3, a1, a2
pcrel1087:
	auipc a1, %pcrel_hi(buf)
	sraiw s4, a3, 1
	addi a4, a1, %pcrel_lo(pcrel1087)
	addi s7, s4, -3
	slt s8, s0, s4
	addi s1, a4, 400
	sd a4, 112(sp)
	blt a0, s4, label157
label4:
	addiw a0, s4, 1
	ld s10, 104(sp)
	slt s9, s4, s10
	bgt s10, a0, label5
label81:
	and a1, s8, s9
	beq a1, zero, label492
	sh2add a0, s0, s1
	mv a3, s0
	mv a2, s4
	mv a1, s0
	ld a4, 112(sp)
	sh2add t1, s4, a4
	sh2add t2, s0, a4
	lw a5, 0(t2)
	lw t0, 0(t1)
	blt a5, t0, label92
	sw t0, 0(a0)
	addiw a2, s4, 1
	slt a4, s0, s4
	addiw a1, s0, 1
	ld s10, 104(sp)
	slt t0, a2, s10
	and a5, a4, t0
	bne a5, zero, label91
	j label94
.p2align 2
label1022:
	sw t0, 0(a0)
	addiw a2, a2, 1
	slt a4, a3, s4
	addiw a1, a1, 1
	ld s10, 104(sp)
	slt t0, a2, s10
	and a5, a4, t0
	beq a5, zero, label94
.p2align 2
label91:
	addi a0, a0, 4
	ld a4, 112(sp)
	sh2add t1, a2, a4
	sh2add t2, a3, a4
	lw a5, 0(t2)
	lw t0, 0(t1)
	bge a5, t0, label1022
.p2align 2
label92:
	sw a5, 0(a0)
	addiw a3, a3, 1
	addiw a1, a1, 1
	slt a4, a3, s4
	ld s10, 104(sp)
	slt t0, a2, s10
	and a5, a4, t0
	bne a5, zero, label91
label94:
	beq a4, zero, label116
	addiw a4, a3, 3
	ble s4, a4, label522
	ld a4, 112(sp)
	sh2add a0, a3, a4
.p2align 2
label111:
	lw a5, 0(a0)
	sh2add a4, a1, s1
	addiw a3, a3, 4
	addiw a1, a1, 4
	sw a5, 0(a4)
	lw t1, 4(a0)
	sw t1, 4(a4)
	lw t0, 8(a0)
	sw t0, 8(a4)
	lw a5, 12(a0)
	sw a5, 12(a4)
	ble s7, a3, label558
	addi a0, a0, 16
	j label111
label5:
	ld s10, 104(sp)
	mv a0, s4
	addw a1, s10, s4
	srliw a3, a1, 31
	add a2, a1, a3
	sraiw s11, a2, 1
	mv a1, s11
	jal merge_sort
	mv a0, s11
	mv a1, s10
	jal merge_sort
	addi a0, s11, -3
	slt a2, s11, s10
	slt a4, s4, s11
	and a1, a4, a2
	beq a1, zero, label267
	sh2add a1, s4, s1
	mv a5, s4
	mv a3, s11
	mv a2, s4
	ld a4, 112(sp)
	sh2add t2, s11, a4
	sh2add t3, s4, a4
	lw t0, 0(t3)
	lw t1, 0(t2)
	bge t0, t1, label279
.p2align 2
label12:
	sw t0, 0(a1)
	addiw a5, a5, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t1, a3, s10
	and t0, a4, t1
	beq t0, zero, label18
.p2align 2
label16:
	addi a1, a1, 4
	ld a4, 112(sp)
	sh2add t2, a3, a4
	sh2add t3, a5, a4
	lw t0, 0(t3)
	lw t1, 0(t2)
	blt t0, t1, label12
	sw t1, 0(a1)
	addiw a3, a3, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t1, a3, s10
	and t0, a4, t1
	bne t0, zero, label16
	j label18
label157:
	addw a1, s0, s4
	mv a0, s0
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw s9, a3, 1
	mv a1, s9
	jal merge_sort
	mv a0, s9
	mv a1, s4
	jal merge_sort
	addiw a0, s4, -18
	addi a1, s9, -3
	slt t0, s0, s9
	slt a3, s9, s4
	and a2, a3, t0
	beq a2, zero, label722
	sh2add a2, s0, s1
	mv a5, s0
	mv t0, s9
	mv a3, s0
	ld a4, 112(sp)
	sh2add t4, s9, a4
	sh2add t3, s0, a4
	lw t1, 0(t3)
	lw t2, 0(t4)
	bge t1, t2, label227
.p2align 2
label232:
	sw t1, 0(a2)
	addiw a5, a5, 1
	mv a4, t0
	addiw a3, a3, 1
	slt t2, t0, s4
	slt t0, a5, s9
	and t1, t0, t2
	beq t1, zero, label939
.p2align 2
label231:
	addi a2, a2, 4
	mv t0, a4
	ld a4, 112(sp)
	sh2add t4, t0, a4
	sh2add t3, a5, a4
	lw t1, 0(t3)
	lw t2, 0(t4)
	blt t1, t2, label232
	sw t2, 0(a2)
	addiw a4, t0, 1
	addiw a3, a3, 1
	slt t2, a4, s4
	slt t0, a5, s9
	and t1, t0, t2
	bne t1, zero, label231
label939:
	mv a2, a4
label158:
	beq t0, zero, label163
	addiw a4, a5, 3
	ble s9, a4, label882
	ld a4, 112(sp)
	sh2add a4, a5, a4
label216:
	lw t1, 0(a4)
	sh2add t0, a3, s1
	addiw a5, a5, 4
	addiw a3, a3, 4
	sw t1, 0(t0)
	lw t2, 4(a4)
	sw t2, 4(t0)
	lw t3, 8(a4)
	sw t3, 8(t0)
	lw t1, 12(a4)
	sw t1, 12(t0)
	ble a1, a5, label918
	addi a4, a4, 16
	j label216
label156:
	addi a0, a0, 4
label153:
	lw a1, 0(a0)
	ld a4, 112(sp)
	sh2add a2, s0, a4
	addiw s0, s0, 1
	sw a1, 0(a2)
	ld s10, 104(sp)
	bgt s10, s0, label156
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s10, 24(sp)
	ld s4, 32(sp)
	ld s8, 40(sp)
	ld s7, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s3, 72(sp)
	ld s2, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label918:
	mv t0, a3
label205:
	ble s9, a5, label163
	ld a4, 112(sp)
	sh2add a1, a5, a4
label210:
	lw a3, 0(a1)
	sh2add a4, t0, s1
	addiw a5, a5, 1
	addiw t0, t0, 1
	sw a3, 0(a4)
	ble s9, a5, label897
	addi a1, a1, 4
	j label210
label558:
	mv a0, a1
label100:
	ble s4, a3, label116
	ld a4, 112(sp)
	sh2add a1, a3, a4
	j label105
label109:
	addi a1, a1, 4
label105:
	lw a4, 0(a1)
	sh2add a5, a0, s1
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a4, 0(a5)
	bgt s4, a3, label109
	mv a1, a0
label116:
	ld s10, 104(sp)
	ble s10, a2, label134
	addiw a0, a2, 3
	ble s10, a0, label125
	ld a4, 112(sp)
	sh2add a0, a2, a4
.p2align 2
label120:
	lw a4, 0(a0)
	sh2add a3, a1, s1
	addiw a2, a2, 4
	addiw a1, a1, 4
	sw a4, 0(a3)
	lw a5, 4(a0)
	sw a5, 4(a3)
	lw a4, 8(a0)
	sw a4, 8(a3)
	lw a5, 12(a0)
	sw a5, 12(a3)
	ble s2, a2, label125
	addi a0, a0, 16
	j label120
label125:
	ld s10, 104(sp)
	ble s10, a2, label134
	ld a4, 112(sp)
	sh2add a0, a2, a4
	j label129
label133:
	addi a0, a0, 4
label129:
	lw a3, 0(a0)
	sh2add a4, a1, s1
	addiw a2, a2, 1
	addiw a1, a1, 1
	sw a3, 0(a4)
	ld s10, 104(sp)
	bgt s10, a2, label133
label134:
	ld s10, 104(sp)
	bge s0, s10, label2
	ble s10, s5, label150
	bge s6, s2, label617
	sh2add a0, s0, s1
.p2align 2
label146:
	lw a2, 0(a0)
	ld a4, 112(sp)
	sh2add a1, s0, a4
	addiw s0, s0, 16
	sw a2, 0(a1)
	lw a3, 4(a0)
	sw a3, 4(a1)
	lw a2, 8(a0)
	sw a2, 8(a1)
	lw a4, 12(a0)
	sw a4, 12(a1)
	lw a3, 16(a0)
	sw a3, 16(a1)
	lw a2, 20(a0)
	sw a2, 20(a1)
	lw a4, 24(a0)
	sw a4, 24(a1)
	lw a3, 28(a0)
	sw a3, 28(a1)
	lw a2, 32(a0)
	sw a2, 32(a1)
	lw a3, 36(a0)
	sw a3, 36(a1)
	lw a2, 40(a0)
	sw a2, 40(a1)
	lw a3, 44(a0)
	sw a3, 44(a1)
	lw a2, 48(a0)
	sw a2, 48(a1)
	lw a4, 52(a0)
	sw a4, 52(a1)
	lw a3, 56(a0)
	sw a3, 56(a1)
	lw a2, 60(a0)
	sw a2, 60(a1)
	ble s3, s0, label696
	addi a0, a0, 64
	j label146
label696:
	mv a0, s0
label137:
	ble s2, a0, label150
	sh2add a1, a0, s1
label141:
	lw a3, 0(a1)
	ld a4, 112(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 4
	sw a3, 0(a2)
	lw a5, 4(a1)
	sw a5, 4(a2)
	lw a4, 8(a1)
	sw a4, 8(a2)
	lw a3, 12(a1)
	sw a3, 12(a2)
	ble s2, a0, label640
	addi a1, a1, 16
	j label141
label640:
	mv s0, a0
label150:
	ld s10, 104(sp)
	ble s10, s0, label2
	sh2add a0, s0, s1
	j label153
label897:
	mv a3, t0
label163:
	ble s4, a2, label181
	addiw a1, a2, 3
	ble s4, a1, label172
	ld a4, 112(sp)
	sh2add a1, a2, a4
	j label167
label171:
	addi a1, a1, 16
label167:
	lw a5, 0(a1)
	sh2add a4, a3, s1
	addiw a2, a2, 4
	addiw a3, a3, 4
	sw a5, 0(a4)
	lw t1, 4(a1)
	sw t1, 4(a4)
	lw t0, 8(a1)
	sw t0, 8(a4)
	lw a5, 12(a1)
	sw a5, 12(a4)
	bgt s7, a2, label171
label172:
	ble s4, a2, label181
	ld a4, 112(sp)
	sh2add a1, a2, a4
label176:
	lw a4, 0(a1)
	sh2add a5, a3, s1
	addiw a2, a2, 1
	addiw a3, a3, 1
	sw a4, 0(a5)
	ble s4, a2, label181
	addi a1, a1, 4
	j label176
label181:
	bge s0, s4, label4
	ble s4, s5, label778
	ble s7, s6, label797
	sh2add a1, s0, s1
	mv a2, s0
label200:
	lw a5, 0(a1)
	ld a4, 112(sp)
	sh2add a3, a2, a4
	addiw a2, a2, 16
	sw a5, 0(a3)
	lw t0, 4(a1)
	sw t0, 4(a3)
	lw a5, 8(a1)
	sw a5, 8(a3)
	lw a4, 12(a1)
	sw a4, 12(a3)
	lw a5, 16(a1)
	sw a5, 16(a3)
	lw a4, 20(a1)
	sw a4, 20(a3)
	lw a5, 24(a1)
	sw a5, 24(a3)
	lw a4, 28(a1)
	sw a4, 28(a3)
	lw a5, 32(a1)
	sw a5, 32(a3)
	lw a4, 36(a1)
	sw a4, 36(a3)
	lw a5, 40(a1)
	sw a5, 40(a3)
	lw a4, 44(a1)
	sw a4, 44(a3)
	lw a5, 48(a1)
	sw a5, 48(a3)
	lw a4, 52(a1)
	sw a4, 52(a3)
	lw a5, 56(a1)
	sw a5, 56(a3)
	lw a4, 60(a1)
	sw a4, 60(a3)
	ble a0, a2, label876
	addi a1, a1, 64
	j label200
label876:
	mv a1, a2
label191:
	ble s7, a1, label801
	sh2add a0, a1, s1
label195:
	lw a3, 0(a0)
	ld a4, 112(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 4
	sw a3, 0(a2)
	lw a5, 4(a0)
	sw a5, 4(a2)
	lw a4, 8(a0)
	sw a4, 8(a2)
	lw a3, 12(a0)
	sw a3, 12(a2)
	ble s7, a1, label820
	addi a0, a0, 16
	j label195
label820:
	mv a0, a1
label183:
	ble s4, a0, label4
	sh2add a1, a0, s1
label186:
	lw a2, 0(a1)
	ld a4, 112(sp)
	sh2add a3, a0, a4
	addiw a0, a0, 1
	sw a2, 0(a3)
	ble s4, a0, label4
	addi a1, a1, 4
	j label186
label18:
	beq a4, zero, label292
	addiw a4, a5, 3
	ble s11, a4, label297
	ld a4, 112(sp)
	sh2add a1, a5, a4
	j label25
label29:
	addi a1, a1, 16
label25:
	lw t0, 0(a1)
	sh2add a4, a2, s1
	addiw a5, a5, 4
	addiw a2, a2, 4
	sw t0, 0(a4)
	lw t1, 4(a1)
	sw t1, 4(a4)
	lw t0, 8(a1)
	sw t0, 8(a4)
	lw t1, 12(a1)
	sw t1, 12(a4)
	bgt a0, a5, label29
	mv a1, a2
label30:
	ble s11, a5, label292
	ld a4, 112(sp)
	sh2add a0, a5, a4
label35:
	lw a2, 0(a0)
	sh2add a4, a1, s1
	addiw a5, a5, 1
	addiw a1, a1, 1
	sw a2, 0(a4)
	ble s11, a5, label333
	addi a0, a0, 4
	j label35
label333:
	mv a0, a1
label40:
	ld s10, 104(sp)
	ble s10, a3, label42
	addiw a2, a3, 3
	ble s10, a2, label72
	ld a4, 112(sp)
	sh2add a1, a3, a4
	j label67
label71:
	addi a1, a1, 16
label67:
	lw a4, 0(a1)
	sh2add a2, a0, s1
	addiw a3, a3, 4
	addiw a0, a0, 4
	sw a4, 0(a2)
	lw a5, 4(a1)
	sw a5, 4(a2)
	lw t0, 8(a1)
	sw t0, 8(a2)
	lw a4, 12(a1)
	sw a4, 12(a2)
	bgt s2, a3, label71
label72:
	ld s10, 104(sp)
	ble s10, a3, label42
	ld a4, 112(sp)
	sh2add a1, a3, a4
	j label76
label80:
	addi a1, a1, 4
label76:
	lw a2, 0(a1)
	sh2add a4, a0, s1
	addiw a3, a3, 1
	addiw a0, a0, 1
	sw a2, 0(a4)
	ld s10, 104(sp)
	bgt s10, a3, label80
label42:
	ld s10, 104(sp)
	ble s10, s4, label81
	addiw a1, s4, 3
	ble s10, a1, label346
	addiw a3, s4, 15
	ble s2, a3, label366
	sh2add a0, s4, s1
	mv a1, s4
	j label61
label64:
	addi a0, a0, 64
label61:
	lw a3, 0(a0)
	ld a4, 112(sp)
	sh2add a2, a1, a4
	addiw a1, a1, 16
	sw a3, 0(a2)
	lw a5, 4(a0)
	sw a5, 4(a2)
	lw a3, 8(a0)
	sw a3, 8(a2)
	lw a4, 12(a0)
	sw a4, 12(a2)
	lw a3, 16(a0)
	sw a3, 16(a2)
	lw a4, 20(a0)
	sw a4, 20(a2)
	lw a3, 24(a0)
	sw a3, 24(a2)
	lw a4, 28(a0)
	sw a4, 28(a2)
	lw a3, 32(a0)
	sw a3, 32(a2)
	lw a4, 36(a0)
	sw a4, 36(a2)
	lw a3, 40(a0)
	sw a3, 40(a2)
	lw a4, 44(a0)
	sw a4, 44(a2)
	lw a3, 48(a0)
	sw a3, 48(a2)
	lw a4, 52(a0)
	sw a4, 52(a2)
	lw a5, 56(a0)
	sw a5, 56(a2)
	lw a3, 60(a0)
	sw a3, 60(a2)
	bgt s3, a1, label64
	mv a2, a1
label52:
	ble s2, a2, label370
	sh2add a0, a2, s1
	j label56
label59:
	addi a0, a0, 16
label56:
	lw a3, 0(a0)
	ld a4, 112(sp)
	sh2add a1, a2, a4
	addiw a2, a2, 4
	sw a3, 0(a1)
	lw a5, 4(a0)
	sw a5, 4(a1)
	lw a3, 8(a0)
	sw a3, 8(a1)
	lw a4, 12(a0)
	sw a4, 12(a1)
	bgt s2, a2, label59
	mv a0, a2
label44:
	ld s10, 104(sp)
	ble s10, a0, label81
	sh2add a1, a0, s1
	j label47
label50:
	addi a1, a1, 4
label47:
	lw a2, 0(a1)
	ld a4, 112(sp)
	sh2add a3, a0, a4
	addiw a0, a0, 1
	sw a2, 0(a3)
	ld s10, 104(sp)
	bgt s10, a0, label50
	j label81
label227:
	sw t2, 0(a2)
	addiw a4, t0, 1
	slt t0, a5, s9
	slt t2, a4, s4
	addiw a3, a3, 1
	and t1, t0, t2
	bne t1, zero, label231
	j label939
label292:
	mv a0, a2
	j label40
label279:
	sw t1, 0(a1)
	addiw a3, a3, 1
	slt a4, a5, s11
	addiw a2, a2, 1
	ld s10, 104(sp)
	slt t1, a3, s10
	and t0, a4, t1
	bne t0, zero, label16
	j label18
label297:
	mv a1, a2
	mv a2, zero
	j label30
label366:
	mv a2, s4
	mv a1, zero
	j label52
label346:
	mv a0, s4
	j label44
label801:
	mv a0, a2
	j label183
label797:
	mv a1, s0
	mv a2, zero
	j label191
label778:
	mv a0, s0
	j label183
label617:
	mv a0, s0
	mv s0, zero
	j label137
label370:
	mv a0, a1
	j label44
label522:
	mv a0, a1
	mv a1, zero
	j label100
label492:
	mv a4, s8
	mv a3, s0
	mv a2, s4
	mv a1, s0
	j label94
label722:
	mv a5, s0
	mv a2, s9
	mv a3, s0
	j label158
label882:
	mv t0, a3
	mv a3, zero
	j label205
label267:
	mv a5, s4
	mv a3, s11
	mv a2, s4
	j label18
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel1095:
	auipc a1, %pcrel_hi(buf)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel1095)
	mv a0, s0
	jal getarray
	mv t5, a0
	mv a1, a0
	mv a0, zero
	jal merge_sort
	mv a0, t5
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
