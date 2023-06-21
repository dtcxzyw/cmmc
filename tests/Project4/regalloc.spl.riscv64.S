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
	sd ra, 32(sp)
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
	li a0, 10
	mv a1, zero
	sd zero, 16(sp)
	sd a0, 24(sp)
	addiw a1, a0, -1
	mv a2, zero
	addiw a3, zero, 1
	sd a3, 0(sp)
	sd a1, 8(sp)
	bne a1, zero, label26
	j label5
label26:
	ld a0, 8(sp)
	mv a1, a0
	ld a2, 0(sp)
	mv a3, a2
	sd a2, 16(sp)
	sd a0, 24(sp)
	addiw a1, a0, -1
	addiw a3, a2, 1
	sd a3, 0(sp)
	sd a1, 8(sp)
	bne a1, zero, label26
label5:
	ld a0, 8(sp)
	ld a1, 0(sp)
	addw a2, a0, a1
	mv a0, a2
	jal write
	mv a0, zero
	ld ra, 32(sp)
	addi sp, sp, 40
	ret
