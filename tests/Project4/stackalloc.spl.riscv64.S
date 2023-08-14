.data
_prompt: .asciz "Enter an integer:"
_ret: .asciz "\n"
.text
_entry:
    call main
    li a7, 93
    ecall
read:
    li a7, 4
    la a0, _prompt
    ecall
    li a7, 5
    ecall
    ret
write:
    li a7, 1
    ecall
    li a7, 4
    la a0, _ret
    ecall
    mv a0, x0
    ret
.globl main
main:
	# stack usage: CalleeArg[0] Local[400] RegSpill[0] CalleeSaved[8]
	addi sp, sp, -408
	addi a2, sp, 8
	sd ra, 0(sp)
	jal read
	mv a1, a0
	ble a0, zero, label2
	mv a3, a2
	mv a4, zero
label24:
	jal read
	addiw a4, a4, 1
	sw a0, 0(a3)
	ble a1, a4, label2
	addi a3, a3, 4
	j label24
label2:
	li a0, 1
	ble a1, a0, label3
	addi a4, a2, 4
	li a5, 1
	addiw t0, a5, -1
	lw a0, 0(a4)
	sh2add a3, t0, a2
	bge t0, zero, label22
	mv t1, zero
	addiw a5, a5, 1
	sw a0, 4(a3)
	bgt a1, a5, label21
	j label3
label89:
	mv t1, zero
	addiw a5, a5, 1
	sw a0, 4(a3)
	ble a1, a5, label3
label21:
	addi a4, a4, 4
	addiw t0, a5, -1
	lw a0, 0(a4)
	sh2add a3, t0, a2
	blt t0, zero, label89
label22:
	lw t2, 0(a3)
	slt t1, a0, t2
	beq t1, zero, label88
	lw t1, 0(a3)
	addiw t0, t0, -1
	sw t1, 4(a3)
	addi a3, a3, -4
	bge t0, zero, label22
	mv t1, zero
	addiw a5, a5, 1
	sw a0, 4(a3)
	bgt a1, a5, label21
label3:
	ble a1, zero, label4
	mv a3, zero
label6:
	lw a0, 0(a2)
	jal write
	addiw a3, a3, 1
	ble a1, a3, label4
	addi a2, a2, 4
	j label6
label4:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 408
	ret
label88:
	addiw a5, a5, 1
	sw a0, 4(a3)
	bgt a1, a5, label21
	j label3
