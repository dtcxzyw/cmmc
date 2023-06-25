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
	sd s1, 24(sp)
	sd s0, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	mv s2, a3
	li a3, 1
	bne a0, a3, label14
	j label2
label14:
	mv s1, a1
	mv s0, a2
	j label4
label2:
	li a0, 10000
	mulw a0, a1, a0
	addw a0, s2, a0
	jal write
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
label4:
	addiw s3, a0, -1
	mv a0, s3
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal hanoi
	li a0, 10000
	mulw a0, s1, a0
	addw a0, s2, a0
	jal write
	li a0, 1
	bne s3, a0, label24
	mv a1, s0
	j label2
label24:
	mv a0, s3
	mv a1, s1
	mv s1, s0
	mv s0, a1
	j label4
.globl main
main:
	addi sp, sp, -8
	sd ra, 0(sp)
	li a0, 3
	li a1, 1
	li a2, 2
	li a3, 3
	jal hanoi
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
