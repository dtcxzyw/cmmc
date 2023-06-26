.data
.align 4
program:
	.zero	262144
.align 4
tape:
	.zero	262144
.align 4
input:
	.zero	262144
.align 4
output:
	.zero	262144
.text
.globl main
main:
	addi t0, sp, -2048
	addi sp, t0, -64
	addi t0, sp, 2047
	sd s3, 57(t0)
	addi t0, sp, 2047
	sd s1, 49(t0)
	addi t0, sp, 2047
	sd s6, 41(t0)
	addi t0, sp, 2047
	sd s2, 33(t0)
	addi t0, sp, 2047
	sd s0, 25(t0)
	addi t0, sp, 2047
	sd s5, 17(t0)
	addi t0, sp, 2047
	sd s4, 9(t0)
	addi t0, sp, 2047
	sd ra, 1(t0)
	addi s3, sp, 0
	jal getch
	li a1, 62
	beq a0, a1, label122
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label125
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label128
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label132
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label136
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label139
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label142
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label146
	j label977
label122:
	mv a1, zero
label125:
	mv a1, zero
label128:
	mv a1, zero
pcrel1299:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1299)
pcrel1300:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1300)
	li a1, 35
	beq a0, a1, label159
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label329
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label333
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label336
label809:
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label339
	j label900
label159:
	mv s4, zero
	jal getch
	li a1, 105
	beq a0, a1, label28
	j label163
label333:
	mv a1, zero
label336:
	mv a1, zero
label339:
	mv a1, zero
label342:
	mv a1, zero
label329:
	mv a1, zero
label348:
	mv a1, zero
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label361
	slli a1, s0, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label329
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label333
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label336
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label339
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label342
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label329
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label348
label1058:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label352
	j label1151
label163:
	mv s5, zero
	li a0, 116
	jal _sysy_starttime
	mv a0, zero
	j label34
label28:
	jal getint
	mv s5, a0
	jal getch
	mv s0, zero
	bge zero, s5, label170
	slli a0, zero, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label170
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label170
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label170
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label170
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label170
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label170
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label170
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label170
	j label1093
label352:
	mv a1, zero
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label361
	slli a1, s0, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label329
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label333
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label336
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label339
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label342
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label329
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label348
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label352
label1151:
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label106
	j label1133
label361:
	mv s4, s0
	jal getch
	li a1, 105
	beq a0, a1, label28
	j label163
label106:
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label361
	slli a1, s0, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label329
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label333
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label336
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label339
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label342
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label329
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label348
	j label1058
label146:
	mv a1, zero
pcrel1301:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1301)
pcrel1302:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1302)
	li a1, 35
	beq a0, a1, label159
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label329
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label333
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label336
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label339
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label342
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label329
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label348
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label352
label1092:
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label106
label1133:
	jal getch
	li a1, 62
	beq a0, a1, label329
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label333
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label336
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label339
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label342
	j label1143
label1147:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label352
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label106
	j label1133
label1143:
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label329
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label348
	j label1147
label132:
	mv a1, zero
pcrel1303:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1303)
pcrel1304:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1304)
	li a1, 35
	beq a0, a1, label159
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label329
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label333
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label336
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label339
label900:
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label342
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label329
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label348
label1000:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label352
	j label1092
label25:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(label25)
pcrel1305:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1305)
	li a1, 35
	beq a0, a1, label159
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label329
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label333
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label336
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label339
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label342
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label329
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label348
	j label1000
label136:
	mv a1, zero
label139:
	mv a1, zero
label142:
	mv a1, zero
pcrel1306:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1306)
pcrel1307:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1307)
	li a1, 35
	beq a0, a1, label159
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label329
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label333
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label336
	j label809
label34:
	slli a1, a0, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	addi a0, a0, 16
	li a1, 512
	bge a0, a1, label36
	j label34
label36:
	auipc a0, %pcrel_hi(tape)
	addi a5, a0, %pcrel_lo(label36)
	mv s0, zero
	mv a3, zero
	mv a1, zero
	mv a2, zero
	mv a0, zero
	bge zero, s4, label43
	slli a4, zero, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, zero, 1
	addiw a0, zero, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	j label1095
label43:
	li a0, 118
	jal _sysy_stoptime
pcrel1308:
	auipc a0, %pcrel_hi(output)
	addi s1, a0, %pcrel_lo(pcrel1308)
	ble s0, zero, label44
	mv s2, zero
	slli a0, zero, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	j label1097
label1095:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
label1040:
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
label1132:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	j label1040
label1097:
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label44
	j label1097
label1069:
	jal getch
	li a1, 62
	beq a0, a1, label122
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label125
	j label1071
label1086:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label146
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label25
	j label1069
label1076:
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label132
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label136
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label139
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label142
	j label1086
label1071:
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label128
	j label1076
label977:
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label25
	j label1069
label49:
	li t1, 60
	bne a4, t1, label51
	addiw a2, a2, -1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	j label1132
label72:
	slli a4, a2, 2
	add a4, a5, a4
	slli t1, a3, 2
	add t1, s2, t1
	lw t1, 0(t1)
	sw t1, 0(a4)
	addiw a3, a3, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	j label1095
label51:
	li t1, 43
	bne a4, t1, label52
	slli a4, a2, 2
	add a4, a5, a4
	lw t1, 0(a4)
	addiw t1, t1, 1
	sw t1, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	j label1132
label52:
	li t1, 45
	bne a4, t1, label54
	slli a4, a2, 2
	add a4, a5, a4
	lw t1, 0(a4)
	addiw t1, t1, -1
	sw t1, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	j label1132
label54:
	li t1, 91
	bne a4, t1, label65
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	beq a4, zero, label252
	slli a4, a1, 2
	add a4, s3, a4
	sw a0, 0(a4)
	addiw a1, a1, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	j label1040
label252:
	li a4, 1
label56:
	ble a4, zero, label76
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label61
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label56
	addiw a4, a4, 1
	ble a4, zero, label76
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label61
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label56
	addiw a4, a4, 1
	ble a4, zero, label76
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label61
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label56
	j label1111
label61:
	li t2, 91
	bne t1, t2, label56
	addiw a4, a4, 1
	ble a4, zero, label76
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label61
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label56
	addiw a4, a4, 1
	ble a4, zero, label76
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label61
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label56
	addiw a4, a4, 1
	ble a4, zero, label76
	j label1023
label76:
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	j label948
label69:
	li t1, 46
	bne a4, t1, label70
pcrel1309:
	auipc a4, %pcrel_hi(output)
	addi a4, a4, %pcrel_lo(pcrel1309)
	slli t1, s0, 2
	add a4, a4, t1
	slli t1, a2, 2
	add t1, a5, t1
	lw t1, 0(t1)
	sw t1, 0(a4)
	addiw s0, s0, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	j label1132
label948:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	j label1040
label1023:
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label61
	j label1115
label65:
	li t1, 93
	bne a4, t1, label69
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label68
	addiw a1, a1, -1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	j label1040
label68:
	addiw a0, a1, -1
	slli a0, a0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	j label1095
label70:
	li t1, 44
	bne a4, t1, label76
	blt a3, s5, label72
	slli a4, a2, 2
	add a4, a5, a4
	sw zero, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label43
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label49
	j label1040
label1093:
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label170
	j label1093
label1111:
	addiw a4, a4, 1
	ble a4, zero, label76
	j label1023
label1115:
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label56
	j label1111
label44:
	mv a0, zero
	addi t0, sp, 2047
	ld ra, 1(t0)
	addi t0, sp, 2047
	ld s4, 9(t0)
	addi t0, sp, 2047
	ld s5, 17(t0)
	addi t0, sp, 2047
	ld s0, 25(t0)
	addi t0, sp, 2047
	ld s2, 33(t0)
	addi t0, sp, 2047
	ld s6, 41(t0)
	addi t0, sp, 2047
	ld s1, 49(t0)
	addi t0, sp, 2047
	ld s3, 57(t0)
	addi t0, sp, 2047
	addi sp, t0, 65
	ret
label170:
	li a0, 116
	jal _sysy_starttime
	mv a0, zero
	j label34
