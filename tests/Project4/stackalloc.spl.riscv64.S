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
	addi a2, sp, 8
	sd ra, 0(sp)
	jal read
	mv a1, a0
	ble a0, zero, label30
	mv a3, a2
	mv a4, zero
label3:
	jal read
	addiw a4, a4, 1
	sw a0, 0(a3)
	ble a1, a4, label30
	addi a3, a3, 4
	j label3
label30:
	addi a3, a2, 4
	li a0, 1
	bgt a1, a0, label18
label11:
	ble a1, zero, label17
	mv a3, zero
	j label13
label18:
	lw a4, 0(a3)
	addiw t0, a0, -1
	sh2add a5, t0, a2
	addiw t1, t0, 1
	bge t0, zero, label23
label22:
	sh2add a5, t1, a2
	addiw a0, a0, 1
	addi a3, a3, 4
	sw a4, 0(a5)
	bgt a1, a0, label18
	j label11
label13:
	lw a0, 0(a2)
	jal write
	addiw a3, a3, 1
	ble a1, a3, label17
	addi a2, a2, 4
	j label13
label23:
	lw t2, 0(a5)
	bge a4, t2, label22
	sh2add t3, t1, a2
	addiw t0, t0, -1
	addi a5, a5, -4
	addiw t1, t0, 1
	sw t2, 0(t3)
	bge t0, zero, label23
	sh2add a5, t1, a2
	addiw a0, a0, 1
	addi a3, a3, 4
	sw a4, 0(a5)
	bgt a1, a0, label18
	j label11
label17:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 408
	ret
