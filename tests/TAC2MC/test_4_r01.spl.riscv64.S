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
	addi sp, sp, -64
	li a4, 625
	sd ra, 0(sp)
	sd s3, 8(sp)
	mv s3, a3
	sd s5, 16(sp)
	slli s5, a4, 4
	sd s0, 24(sp)
	mulw a3, a1, s5
	sd s2, 32(sp)
	addw s2, s3, a3
	sd s6, 40(sp)
	li s6, 1
	sd s1, 48(sp)
	sd s4, 56(sp)
	beq a0, s6, label16
	mv s0, a1
	mv s1, a2
label4:
	addiw s4, a0, -1
	mv a0, s4
	mv a1, s0
	mv a2, s3
	mv a3, s1
	jal hanoi
	mv a0, s2
	jal write
	mulw a1, s1, s5
	addw a0, s3, a1
	beq s4, s6, label2
	mv s2, a0
	mv a1, s0
	mv a0, s4
	mv s0, s1
	mv s1, a1
	j label4
label2:
	jal write
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 64
	ret
label16:
	mv a0, s2
	j label2
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
