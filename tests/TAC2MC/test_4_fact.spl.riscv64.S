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
	addi sp, sp, -72
	sd ra, 64(sp)
	jal read
	li a1, 1
	sd a0, 56(sp)
	ble a0, a1, label14
	li a0, 1
	ld a1, 56(sp)
	bne a1, a0, label18
	j label45
label14:
	li a0, 1
	sd a0, 48(sp)
label9:
	ld a1, 48(sp)
	mv a0, a1
	jal write
	mv a0, zero
	ld ra, 64(sp)
	addi sp, sp, 72
	ret
label45:
	ld a0, 56(sp)
	mv a1, a0
	li a2, 1
	sd a2, 32(sp)
	sd a0, 40(sp)
	mv a1, a2
	mulw a2, a0, a2
	mv a3, a2
	sd a2, 48(sp)
	j label9
label18:
	ld a0, 56(sp)
	mv a1, a0
	li a2, 1
	sd a2, 16(sp)
	sd a0, 24(sp)
	addiw a1, a0, -1
	mulw a3, a0, a2
	li a4, 1
	sd a3, 0(sp)
	sd a1, 8(sp)
	bne a1, a4, label25
label24:
	ld a0, 8(sp)
	mv a1, a0
	ld a2, 0(sp)
	mv a3, a2
	sd a2, 32(sp)
	sd a0, 40(sp)
	mv a1, a2
	mulw a2, a0, a2
	mv a3, a2
	sd a2, 48(sp)
	j label9
label25:
	ld a0, 8(sp)
	mv a1, a0
	ld a2, 0(sp)
	mv a3, a2
	sd a2, 16(sp)
	sd a0, 24(sp)
	addiw a1, a0, -1
	mulw a3, a0, a2
	li a4, 1
	sd a3, 0(sp)
	sd a1, 8(sp)
	bne a1, a4, label25
	j label24
