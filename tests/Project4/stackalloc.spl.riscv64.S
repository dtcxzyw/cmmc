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
	addi sp, sp, -408
	addi a1, sp, 8
	sd ra, 0(sp)
	jal read
	mv a2, a0
	ble a0, zero, label32
	mv a3, a1
	mv a4, zero
label3:
	jal read
	addiw a4, a4, 1
	sw a0, 0(a3)
	ble a2, a4, label32
	addi a3, a3, 4
	j label3
label32:
	addi a3, a1, 4
	li a4, 1
	ble a2, a4, label11
label18:
	lw a0, 0(a3)
	addiw t0, a4, -1
	sh2add a5, t0, a1
	bge t0, zero, label22
	mv t2, zero
	addiw t1, t0, 1
	addiw a4, a4, 1
	addi a3, a3, 4
	sh2add a5, t1, a1
	sw a0, 0(a5)
	bgt a2, a4, label18
	j label11
label22:
	lw t1, 0(a5)
	slt t2, a0, t1
	addiw t1, t0, 1
	beq t2, zero, label25
	lw t2, 0(a5)
	sh2add t3, t1, a1
	addiw t0, t0, -1
	addi a5, a5, -4
	sw t2, 0(t3)
	bge t0, zero, label22
	mv t2, zero
	addiw t1, t0, 1
	addiw a4, a4, 1
	addi a3, a3, 4
	sh2add a5, t1, a1
	sw a0, 0(a5)
	bgt a2, a4, label18
label11:
	ble a2, zero, label12
	mv a3, zero
label14:
	lw a0, 0(a1)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label12
	addi a1, a1, 4
	j label14
label12:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 408
	ret
label25:
	sh2add a5, t1, a1
	addiw a4, a4, 1
	addi a3, a3, 4
	sw a0, 0(a5)
	bgt a2, a4, label18
	j label11
