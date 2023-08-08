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
	addi a2, sp, 8
	sd ra, 0(sp)
	jal read
	mv a1, a0
	ble a0, zero, label32
	mv a3, a2
	mv a4, zero
label3:
	jal read
	addiw a4, a4, 1
	sw a0, 0(a3)
	ble a1, a4, label32
	addi a3, a3, 4
	j label3
label32:
	addi a3, a2, 4
	li a5, 1
	bgt a1, a5, label19
label12:
	ble a1, zero, label13
	mv a3, zero
	j label15
label19:
	lw a0, 0(a3)
	addiw t0, a5, -1
	sh2add a4, t0, a2
	bge t0, zero, label27
	j label63
label82:
	mv t1, zero
	addiw a5, a5, 1
	addi a3, a3, 4
	sw a0, 4(a4)
	bgt a1, a5, label19
	j label12
label26:
	lw t1, 0(a4)
	addiw t0, t0, -1
	sw t1, 4(a4)
	addi a4, a4, -4
	blt t0, zero, label82
label27:
	lw t2, 0(a4)
	slt t1, a0, t2
	bne t1, zero, label26
	sw a0, 4(a4)
	addiw a5, a5, 1
	addi a3, a3, 4
	bgt a1, a5, label19
	j label12
label15:
	lw a0, 0(a2)
	jal write
	addiw a3, a3, 1
	ble a1, a3, label13
	addi a2, a2, 4
	j label15
label63:
	mv t1, zero
	sw a0, 4(a4)
	addiw a5, a5, 1
	addi a3, a3, 4
	bgt a1, a5, label19
	j label12
label13:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 408
	ret
