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
	li s0, 10
	mv s1, zero
	sd s1, 24(sp)
	sd s0, 32(sp)
	ld s0, 32(sp)
	addiw s1, s0, -1
	ld t1, 24(sp)
	addiw t2, t1, 1
	sd t2, 8(sp)
	sd s1, 16(sp)
	bne s1, zero, label26
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
label26:
	ld s0, 16(sp)
	mv s1, s0
	ld t1, 8(sp)
	mv t2, t1
	sd t2, 24(sp)
	sd s1, 32(sp)
	ld s0, 32(sp)
	addiw s1, s0, -1
	ld t1, 24(sp)
	addiw t2, t1, 1
	sd t2, 8(sp)
	sd s1, 16(sp)
	bne s1, zero, label26
	j label5
