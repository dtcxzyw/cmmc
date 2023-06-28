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
.section .rodata
.bss
.text
.globl main
main:
	addi t0, sp, -2048
	addi sp, t0, -56
	addi t0, sp, 2047
	sd s3, 49(t0)
	addi t0, sp, 2047
	sd s1, 41(t0)
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
	beq a1, zero, label126
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label130
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label134
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label137
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label140
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label143
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label147
	j label979
label122:
	mv a1, zero
pcrel1319:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1319)
pcrel1320:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1320)
	li a1, 35
	beq a0, a1, label160
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label330
	j label632
label160:
	mv s4, zero
	jal getch
	li a1, 105
	beq a0, a1, label29
	j label164
label330:
	mv a1, zero
label349:
	mv a1, zero
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label362
	slli a1, s0, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label330
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label334
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label337
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label340
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label343
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label330
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label349
label1065:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label353
	j label1164
label334:
	mv a1, zero
label337:
	mv a1, zero
label340:
	mv a1, zero
label343:
	mv a1, zero
	j label330
label107:
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label362
	slli a1, s0, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label330
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label334
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label337
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label340
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label343
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label330
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label349
	j label1065
label147:
	mv a1, zero
pcrel1321:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1321)
pcrel1322:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1322)
	li a1, 35
	beq a0, a1, label160
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label330
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label334
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label337
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label340
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label343
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label330
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label349
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label353
label1105:
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label107
label1146:
	jal getch
	li a1, 62
	beq a0, a1, label330
	j label1152
label164:
	mv s5, zero
	li a0, 116
	jal _sysy_starttime
	mv a0, zero
	j label35
label29:
	jal getint
	mv s5, a0
	jal getch
	mv s0, zero
	bge zero, s5, label171
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label171
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label171
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label171
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label171
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label171
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label171
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label171
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label171
	j label1106
label353:
	mv a1, zero
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label362
	slli a1, s0, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label330
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label334
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label337
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label340
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label343
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label330
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label349
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label353
label1164:
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label107
	j label1146
label362:
	mv s4, s0
	jal getch
	li a1, 105
	beq a0, a1, label29
	j label164
label130:
	mv a1, zero
pcrel1323:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1323)
pcrel1324:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1324)
	li a1, 35
	beq a0, a1, label160
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label330
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label334
label720:
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label337
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label340
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label343
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label330
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label349
label1007:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label353
	j label1105
label1157:
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label349
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label353
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label107
	j label1146
label1152:
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label334
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label337
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label340
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label343
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label330
	j label1157
label126:
	mv a1, zero
pcrel1325:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1325)
pcrel1326:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1326)
	li a1, 35
	beq a0, a1, label160
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label330
label632:
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label334
	j label720
label26:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(label26)
pcrel1327:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1327)
	li a1, 35
	beq a0, a1, label160
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label330
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label334
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label337
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label340
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label343
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label330
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label349
	j label1007
label134:
	mv a1, zero
label137:
	mv a1, zero
label140:
	mv a1, zero
label143:
	mv a1, zero
pcrel1328:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1328)
pcrel1329:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1329)
	li a1, 35
	beq a0, a1, label160
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label330
	j label632
label1075:
	jal getch
	li a1, 62
	beq a0, a1, label122
	j label1081
label1099:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label147
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label26
	j label1075
label35:
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
	bge a0, a1, label37
	j label35
label37:
	auipc a0, %pcrel_hi(tape)
	addi a5, a0, %pcrel_lo(label37)
	mv s0, zero
	mv a1, zero
	mv a3, zero
	mv a2, zero
	mv a0, zero
	bge zero, s4, label44
	slli a4, zero, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, zero, 1
	addiw a0, zero, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	j label1108
label44:
	li a0, 118
	jal _sysy_stoptime
pcrel1330:
	auipc a0, %pcrel_hi(output)
	addi s1, a0, %pcrel_lo(pcrel1330)
	ble s0, zero, label45
	mv s2, zero
	slli a0, zero, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
label1110:
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label45
	j label1110
label1108:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	j label1047
label53:
	li t1, 45
	bne a4, t1, label55
	slli a4, a2, 2
	add a4, a5, a4
	lw t1, 0(a4)
	addiw t1, t1, -1
	sw t1, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	j label1145
label55:
	li t1, 91
	bne a4, t1, label66
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	beq a4, zero, label253
	slli a4, a1, 2
	add a4, s3, a4
	sw a0, 0(a4)
	addiw a1, a1, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	j label1047
label66:
	li t1, 93
	bne a4, t1, label70
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label69
	addiw a1, a1, -1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	j label1047
label69:
	addiw a0, a1, -1
	slli a0, a0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	j label1108
label70:
	li t1, 46
	bne a4, t1, label71
pcrel1331:
	auipc a4, %pcrel_hi(output)
	addi a4, a4, %pcrel_lo(pcrel1331)
	slli t1, s0, 2
	add a4, a4, t1
	slli t1, a2, 2
	add t1, a5, t1
	lw t1, 0(t1)
	sw t1, 0(a4)
	addiw s0, s0, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
label1145:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	j label1047
label253:
	li a4, 1
label57:
	ble a4, zero, label77
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label62
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label57
	addiw a4, a4, 1
	ble a4, zero, label77
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label62
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label57
	addiw a4, a4, 1
	ble a4, zero, label77
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label62
	j label1026
label77:
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	j label1047
label1095:
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label140
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label143
	j label1099
label1081:
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label126
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label130
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label134
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label137
	j label1095
label979:
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label26
	j label1075
label50:
	li t1, 60
	bne a4, t1, label52
	addiw a2, a2, -1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	j label1145
label1047:
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	j label1145
label71:
	li t1, 44
	bne a4, t1, label77
	blt a3, s5, label73
	slli a4, a2, 2
	add a4, a5, a4
	sw zero, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	j label1047
label73:
	slli a4, a3, 2
	add a4, s2, a4
	lw a4, 0(a4)
	slli t1, a2, 2
	add t1, a5, t1
	sw a4, 0(t1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	j label1108
label52:
	li t1, 43
	bne a4, t1, label53
	slli a4, a2, 2
	add a4, a5, a4
	lw t1, 0(a4)
	addiw t1, t1, 1
	sw t1, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label50
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label44
	j label1145
label1106:
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label171
	j label1106
label62:
	li t2, 91
	bne t1, t2, label57
	addiw a4, a4, 1
	ble a4, zero, label77
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label62
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label57
	addiw a4, a4, 1
	ble a4, zero, label77
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label62
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label57
	addiw a4, a4, 1
	ble a4, zero, label77
label1030:
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label62
	j label1128
label1026:
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label57
label1124:
	addiw a4, a4, 1
	ble a4, zero, label77
	j label1030
label1128:
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label57
	j label1124
label45:
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
	ld s1, 41(t0)
	addi t0, sp, 2047
	ld s3, 49(t0)
	addi t0, sp, 2047
	addi sp, t0, 57
	ret
label171:
	li a0, 116
	jal _sysy_starttime
	mv a0, zero
	j label35
