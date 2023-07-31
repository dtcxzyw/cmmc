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
	ble a0, zero, label20
	mv a3, zero
	j label14
label13:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 408
	ret
label14:
	jal read
	sh2add a4, a3, a2
	addiw a3, a3, 1
	sw a0, 0(a4)
	bgt a1, a3, label14
	li a0, 1
	bgt a1, a0, label4
	bgt a1, zero, label50
	j label13
label20:
	li a0, 1
	ble a1, a0, label76
label4:
	sh2add a5, a0, a2
	addiw a4, a0, -1
	lw a3, 0(a5)
	addiw a5, a4, 1
	blt a4, zero, label33
label7:
	sh2add t1, a4, a2
	lw t0, 0(t1)
	bge a3, t0, label40
	sh2add a5, a5, a2
	addiw a4, a4, -1
	sw t0, 0(a5)
	addiw a5, a4, 1
	bge a4, zero, label7
	sh2add a5, a5, a2
	addiw a0, a0, 1
	sw a3, 0(a5)
	bgt a1, a0, label4
	bgt a1, zero, label50
	j label13
label40:
	sh2add a5, a5, a2
	addiw a0, a0, 1
	sw a3, 0(a5)
	bgt a1, a0, label4
	ble a1, zero, label13
label50:
	mv a3, zero
label11:
	sh2add a4, a3, a2
	lw a0, 0(a4)
	jal write
	addiw a3, a3, 1
	bgt a1, a3, label11
	j label13
label76:
	bgt a1, zero, label50
	j label13
label33:
	sh2add a5, a5, a2
	addiw a0, a0, 1
	sw a3, 0(a5)
	bgt a1, a0, label4
	bgt a1, zero, label50
	j label13
