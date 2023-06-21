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
	addi sp, sp, -80
	sd ra, 72(sp)
	li a4, 1
	sd a3, 32(sp)
	sd a2, 40(sp)
	sd a1, 48(sp)
	sd a0, 56(sp)
	bne a0, a4, label14
	mv a0, a1
	sd a1, 24(sp)
	j label2
label14:
	ld a0, 56(sp)
	ld a1, 48(sp)
	ld a2, 40(sp)
	mv a3, a2
	sd a2, 0(sp)
	sd a1, 8(sp)
	sd a0, 64(sp)
	j label4
label2:
	li a0, 10000
	ld a1, 24(sp)
	mulw a0, a1, a0
	ld a2, 32(sp)
	addw a0, a2, a0
	jal write
	mv a0, zero
	ld ra, 72(sp)
	addi sp, sp, 80
	ret
label4:
	ld a0, 64(sp)
	addiw a1, a0, -1
	mv a0, a1
	ld a2, 8(sp)
	sd a1, 16(sp)
	mv a1, a2
	ld a3, 32(sp)
	mv a2, a3
	ld a4, 0(sp)
	mv a3, a4
	jal hanoi
	li a5, 10000
	ld t1, 8(sp)
	mulw a5, t1, a5
	ld t2, 32(sp)
	addw a5, t2, a5
	mv a0, a5
	jal write
	li a5, 1
	ld t3, 16(sp)
	bne t3, a5, label24
	ld a3, 0(sp)
	mv a0, a3
	sd a3, 24(sp)
	j label2
label24:
	ld a0, 16(sp)
	ld a1, 8(sp)
	mv a2, a1
	ld a3, 0(sp)
	mv a1, a3
	mv a3, a2
	sd a2, 0(sp)
	sd a1, 8(sp)
	sd a0, 64(sp)
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
