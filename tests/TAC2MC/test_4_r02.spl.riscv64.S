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
	addi sp, sp, -16
	sd ra, 0(sp)
	jal read
	mv t1, a0
	sd a0, 8(sp)
	ble a0, zero, label8
	li a0, 1
	jal write
	j label3
label8:
	ld t1, 8(sp)
	slt t2, t1, zero
	mv t3, t2
	subw t4, zero, t2
	mv a0, t4
	jal write
label3:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 16
	ret
