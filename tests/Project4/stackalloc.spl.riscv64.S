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
	addi sp, sp, -408
	addi a2, sp, 0
	sd ra, 400(sp)
	jal read
	mv a1, a0
	ble a0, zero, label21
	mv a3, zero
	j label2
label21:
	li a0, 1
	ble a1, a0, label12
	sh2add a5, a0, a2
	addiw a4, a0, -1
	lw a3, 0(a5)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	j label127
label75:
	mv a3, zero
	j label13
label12:
	ble a1, zero, label15
	j label75
label2:
	jal read
	sh2add a4, a3, a2
	addiw a3, a3, 1
	sw a0, 0(a4)
	ble a1, a3, label29
	j label2
label29:
	li a0, 1
	ble a1, a0, label12
	sh2add a5, a0, a2
	addiw a4, a0, -1
	lw a3, 0(a5)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	j label134
label13:
	sh2add a4, a3, a2
	lw a0, 0(a4)
	jal write
	addiw a3, a3, 1
	ble a1, a3, label15
	j label13
label11:
	addiw a5, a4, 1
	addiw a0, a0, 1
	sh2add a4, a5, a2
	sw a3, 0(a4)
	ble a1, a0, label12
	sh2add a5, a0, a2
	addiw a4, a0, -1
	lw a3, 0(a5)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	j label135
label134:
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
label135:
	sh2add t0, a4, a2
	lw a5, 0(t0)
	bge a3, a5, label11
label127:
	addiw t1, a4, 1
	addiw a4, a4, -1
	sh2add t0, t1, a2
	sw a5, 0(t0)
	blt a4, zero, label11
	j label135
label15:
	mv a0, zero
	ld ra, 400(sp)
	addi sp, sp, 408
	ret
