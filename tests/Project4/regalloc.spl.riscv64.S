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
	addi sp, sp, -40
	sd ra, 0(sp)
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
	li t1, 10
	mv t2, zero
	sd t2, 24(sp)
	sd t1, 32(sp)
	addiw t2, t1, -1
	ld t3, 24(sp)
	addiw t4, t3, 1
	sd t4, 8(sp)
	sd t2, 16(sp)
	bne t2, zero, label26
	j label5
label26:
	ld t1, 16(sp)
	mv t2, t1
	ld t3, 8(sp)
	mv t4, t3
	sd t3, 24(sp)
	sd t1, 32(sp)
	addiw t2, t1, -1
	addiw t4, t3, 1
	sd t4, 8(sp)
	sd t2, 16(sp)
	bne t2, zero, label26
label5:
	ld t1, 16(sp)
	ld t2, 8(sp)
	addw t3, t1, t2
	mv a0, t3
	jal write
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 40
	ret
