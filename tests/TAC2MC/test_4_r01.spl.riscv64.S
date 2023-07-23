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
hanoi:
	addi sp, sp, -40
	sd s2, 32(sp)
	mv s2, a3
	sd s3, 24(sp)
	li a3, 1
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	beq a0, a3, label2
	mv s3, a0
	mv s1, a1
	mv s0, a2
label4:
	addiw s3, s3, -1
	mv a0, s3
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal hanoi
	li a2, 10000
	mulw a1, s1, a2
	addw a0, s2, a1
	jal write
	li a2, 1
	bne s3, a2, label23
	mv a1, s0
	j label2
label23:
	mv a0, s1
	mv s1, s0
	mv s0, a0
	j label4
label2:
	li a2, 10000
	mulw a1, a1, a2
	addw a0, s2, a1
	jal write
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
.globl main
main:
	addi sp, sp, -8
	li a0, 3
	li a1, 1
	li a2, 2
	li a3, 3
	sd ra, 0(sp)
	jal hanoi
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
