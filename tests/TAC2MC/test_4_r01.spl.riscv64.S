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
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s3, 8(sp)
	mv s3, a3
	sd s2, 16(sp)
	li a3, 10000
	sd s0, 24(sp)
	sd s1, 32(sp)
	mulw a4, a1, a3
	sd s4, 40(sp)
	li a3, 1
	addw s2, s3, a4
	bne a0, a3, label16
	mv a0, s2
label2:
	jal write
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label16:
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
	li a1, 10000
	mulw a2, s1, a1
	li a1, 1
	addw a0, s3, a2
	beq s4, a1, label2
	mv s2, a0
	mv a1, s0
	mv a0, s4
	mv s0, s1
	mv s1, a1
	j label4
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
