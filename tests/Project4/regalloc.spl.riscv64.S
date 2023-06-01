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
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s0, 48(sp)
	sd s1, 56(sp)
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	mv s0, zero
	li s1, 10
	sd s1, 8(sp)
	sd s0, 16(sp)
	ld s0, 8(sp)
	bne s0, zero, label6
label5:
	ld s0, 16(sp)
	ld s1, 8(sp)
	addw t1, s0, s1
	mv a0, t1
	jal write
	mv a0, zero
	ld s1, 56(sp)
	ld s0, 48(sp)
	ld ra, 0(sp)
	addi sp, sp, 64
	jr ra
label6:
	ld s0, 8(sp)
	addiw s1, s0, -1
	ld t1, 16(sp)
	addiw t2, t1, 1
	mv t1, t2
	mv s0, s1
	sd s0, 8(sp)
	sd t1, 16(sp)
	ld s0, 8(sp)
	bne s0, zero, label6
	j label5
