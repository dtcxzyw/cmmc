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
	mv t1, a0
	li t2, 1
	sd a0, 56(sp)
	ble a0, t2, label14
	li t1, 1
	mv t2, a0
	bne a0, t1, label18
	j label45
label14:
	li t1, 1
	sd t1, 48(sp)
label9:
	ld t1, 48(sp)
	mv a0, t1
	jal write
	mv a0, zero
	ld ra, 64(sp)
	addi sp, sp, 72
	ret
label45:
	ld t1, 56(sp)
	mv t2, t1
	li t3, 1
	sd t3, 32(sp)
	sd t1, 40(sp)
	mv t2, t3
	mulw t3, t1, t3
	mv t4, t3
	sd t3, 48(sp)
	j label9
label18:
	ld t1, 56(sp)
	mv t2, t1
	li t3, 1
	sd t3, 16(sp)
	sd t1, 24(sp)
	addiw t2, t1, -1
	mulw t4, t1, t3
	li t5, 1
	sd t4, 0(sp)
	sd t2, 8(sp)
	bne t2, t5, label25
label24:
	ld t1, 8(sp)
	mv t2, t1
	ld t3, 0(sp)
	mv t4, t3
	sd t3, 32(sp)
	sd t1, 40(sp)
	mv t2, t3
	mulw t3, t1, t3
	mv t4, t3
	sd t3, 48(sp)
	j label9
label25:
	ld t1, 8(sp)
	mv t2, t1
	ld t3, 0(sp)
	mv t4, t3
	sd t3, 16(sp)
	sd t1, 24(sp)
	addiw t2, t1, -1
	mulw t4, t1, t3
	li t5, 1
	sd t4, 0(sp)
	sd t2, 8(sp)
	bne t2, t5, label25
	j label24
