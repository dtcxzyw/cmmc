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
	beq a1, zero, label126
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label130
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label134
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label138
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label141
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label144
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label148
	j label986
label122:
	mv a1, zero
pcrel1330:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1330)
pcrel1331:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1331)
	li a1, 35
	beq a0, a1, label161
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
label722:
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
	j label815
label165:
	mv s5, zero
	li a0, 116
	jal _sysy_starttime
	mv a0, zero
	j label36
label30:
	jal getint
	mv s5, a0
	jal getch
	mv s0, zero
	bge zero, s5, label172
	slli a0, zero, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label172
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label172
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label172
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label172
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label172
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label172
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label172
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label172
	j label1116
label331:
	mv a1, zero
label350:
	mv a1, zero
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label363
	slli a1, s0, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label341
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label344
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label331
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label350
label1075:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label354
	j label1174
label363:
	mv s4, s0
	jal getch
	li a1, 105
	beq a0, a1, label30
	j label165
label335:
	mv a1, zero
label338:
	mv a1, zero
label341:
	mv a1, zero
label344:
	mv a1, zero
	j label331
label354:
	mv a1, zero
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label363
	slli a1, s0, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label341
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label344
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label331
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label350
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label354
label1174:
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label108
	j label1156
label108:
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label363
	slli a1, s0, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label341
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label344
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label331
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label350
	j label1075
label1156:
	jal getch
	li a1, 62
	beq a0, a1, label331
	j label1162
label1170:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label354
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label108
	j label1156
label1162:
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label341
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label344
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label331
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label350
	j label1170
label130:
	mv a1, zero
pcrel1332:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1332)
pcrel1333:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1333)
	li a1, 35
	beq a0, a1, label161
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
label815:
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label341
	j label911
label148:
	mv a1, zero
pcrel1334:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1334)
pcrel1335:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1335)
	li a1, 35
	beq a0, a1, label161
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label341
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label344
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label331
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label350
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label354
label1115:
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label108
	j label1156
label134:
	mv a1, zero
pcrel1336:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1336)
pcrel1337:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1337)
	li a1, 35
	beq a0, a1, label161
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label341
label911:
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label344
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label331
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label350
label1017:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label354
	j label1115
label27:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(label27)
pcrel1338:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1338)
	li a1, 35
	beq a0, a1, label161
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
	xori a1, a0, 45
	sltu a1, zero, a1
	beq a1, zero, label341
	xori a1, a0, 91
	sltu a1, zero, a1
	beq a1, zero, label344
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label331
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label350
	j label1017
label126:
	mv a1, zero
pcrel1339:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1339)
pcrel1340:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1340)
	li a1, 35
	beq a0, a1, label161
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	xori a1, a0, 43
	sltu a1, zero, a1
	beq a1, zero, label338
	j label815
label161:
	mv s4, zero
	jal getch
	li a1, 105
	beq a0, a1, label30
	j label165
label138:
	mv a1, zero
label141:
	mv a1, zero
label144:
	mv a1, zero
pcrel1341:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel1341)
pcrel1342:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel1342)
	li a1, 35
	beq a0, a1, label161
	mv s0, zero
	slli a1, zero, 2
	add a1, s1, a1
	sw a0, 0(a1)
	jal getch
	li a1, 62
	beq a0, a1, label331
	xori a1, a0, 60
	sltu a1, zero, a1
	beq a1, zero, label335
	j label722
label36:
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
	bge a0, a1, label38
	j label36
label38:
	auipc a0, %pcrel_hi(tape)
	addi a5, a0, %pcrel_lo(label38)
	mv s0, zero
	mv a1, zero
	mv a3, zero
	mv a2, zero
	mv a0, zero
	bge zero, s4, label45
	slli a4, zero, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, zero, 1
	addiw a0, zero, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	j label1118
label45:
	li a0, 118
	jal _sysy_stoptime
pcrel1343:
	auipc a0, %pcrel_hi(output)
	addi s1, a0, %pcrel_lo(pcrel1343)
	ble s0, zero, label46
	mv s2, zero
	slli a0, zero, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
label1120:
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label46
	j label1120
label1118:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	j label1057
label70:
	addiw a0, a1, -1
	slli a0, a0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	j label1118
label71:
	li t1, 46
	bne a4, t1, label72
pcrel1344:
	auipc a4, %pcrel_hi(output)
	addi a4, a4, %pcrel_lo(pcrel1344)
	slli t1, s0, 2
	add a4, a4, t1
	slli t1, a2, 2
	add t1, a5, t1
	lw t1, 0(t1)
	sw t1, 0(a4)
	addiw s0, s0, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	j label1155
label959:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	j label1057
label1155:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	j label1057
label1084:
	jal getch
	li a1, 62
	beq a0, a1, label122
	j label1089
label1109:
	xori a1, a0, 44
	sltu a1, zero, a1
	beq a1, zero, label148
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label27
	j label1084
label1089:
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
	beq a1, zero, label138
	xori a1, a0, 93
	sltu a1, zero, a1
	beq a1, zero, label141
	xori a1, a0, 46
	sltu a1, zero, a1
	beq a1, zero, label144
	j label1109
label986:
	xori a1, a0, 35
	sltu a1, zero, a1
	beq a1, zero, label27
	j label1084
label51:
	li t1, 60
	bne a4, t1, label53
	addiw a2, a2, -1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	j label1155
label67:
	li t1, 93
	bne a4, t1, label71
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label70
	addiw a1, a1, -1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
label1057:
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	j label1155
label53:
	li t1, 43
	bne a4, t1, label54
	slli a4, a2, 2
	add a4, a5, a4
	lw t1, 0(a4)
	addiw t1, t1, 1
	sw t1, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	j label1155
label54:
	li t1, 45
	bne a4, t1, label56
	slli a4, a2, 2
	add a4, a5, a4
	lw t1, 0(a4)
	addiw t1, t1, -1
	sw t1, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	j label1155
label56:
	li t1, 91
	bne a4, t1, label67
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	beq a4, zero, label254
	slli a4, a1, 2
	add a4, s3, a4
	sw a0, 0(a4)
	addiw a1, a1, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	j label1057
label254:
	li a4, 1
label58:
	ble a4, zero, label78
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label63
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label58
	addiw a4, a4, 1
	ble a4, zero, label78
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label63
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label58
	addiw a4, a4, 1
	ble a4, zero, label78
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label63
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label58
	j label1134
label78:
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	j label959
label1134:
	addiw a4, a4, 1
	ble a4, zero, label78
label1040:
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label63
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label58
	j label1134
label72:
	li t1, 44
	bne a4, t1, label78
	blt a3, s5, label74
	slli a4, a2, 2
	add a4, a5, a4
	sw zero, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	j label1057
label74:
	slli a4, a2, 2
	add a4, a5, a4
	slli t1, a3, 2
	add t1, s2, t1
	lw t1, 0(t1)
	sw t1, 0(a4)
	addiw a3, a3, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label51
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label45
	j label1118
label1116:
	slli a0, s0, 2
	add s6, s2, a0
	jal getch
	sw a0, 0(s6)
	addiw s0, s0, 1
	bge s0, s5, label172
	j label1116
label63:
	li t2, 91
	bne t1, t2, label58
	addiw a4, a4, 1
	ble a4, zero, label78
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label63
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label58
	addiw a4, a4, 1
	ble a4, zero, label78
	addiw a0, a0, 1
	slli t1, a0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	li t2, 93
	bne t1, t2, label63
	addiw a4, a4, -1
	li t2, 91
	bne t1, t2, label58
	addiw a4, a4, 1
	ble a4, zero, label78
	j label1040
label46:
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
label172:
	li a0, 116
	jal _sysy_starttime
	mv a0, zero
	j label36
