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
	addi sp, sp, -928
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 600(sp)
	sd s1, 680(sp)
	sd s6, 160(sp)
	sd s2, 664(sp)
	sd s3, 648(sp)
	sd s4, 624(sp)
	sd s7, 136(sp)
	addi s0, sp, 192
	jal read
	mv s1, a0
	sd s1, 728(sp)
	sd s0, 72(sp)
	ble s1, zero, label2
	mv s0, zero
	sd s0, 712(sp)
	j label19
label2:
	li s0, 1
	ld s1, 728(sp)
	slt t1, s0, s1
	xori t2, t1, 1
	bne t2, zero, label15
	j label198
label19:
	li s0, 4
	ld s1, 712(sp)
	mul t1, s1, s0
	ld t2, 72(sp)
	add t3, t2, t1
	jal read
	mv t4, a0
	sw t4, 0(t3)
	addiw t5, s1, 1
	ld t6, 728(sp)
	sd t5, 720(sp)
	bge t5, t6, label2
	ld s0, 720(sp)
	mv s1, s0
	sd s1, 712(sp)
	j label19
label3:
	li s0, 4
	ld s1, 64(sp)
	mul t1, s1, s0
	ld t2, 72(sp)
	add t3, t2, t1
	lw t4, 0(t3)
	addiw t5, s1, -1
	li t6, -1
	slt s2, t6, t5
	xori s3, s2, 1
	sd t5, 168(sp)
	sd t4, 144(sp)
	bne s3, zero, label41
	j label14
label41:
	mv s0, zero
	sd s0, 736(sp)
	ld s0, 736(sp)
	beq s0, zero, label45
	j label200
label45:
	ld s0, 168(sp)
	mv s1, s0
	sd s1, 80(sp)
	j label12
label201:
	ld s0, 704(sp)
	mv s1, s0
	sd s1, 592(sp)
	j label7
label64:
	ld s0, 704(sp)
	mv s1, s0
	sd s1, 80(sp)
label12:
	ld s0, 80(sp)
	addiw s1, s0, 1
	li t1, 4
	mul t2, s1, t1
	ld t3, 72(sp)
	add t4, t3, t2
	ld t5, 144(sp)
	sw t5, 0(t4)
	ld t6, 64(sp)
	addiw s2, t6, 1
	ld s3, 728(sp)
	sd s2, 656(sp)
	bge s2, s3, label15
	ld s0, 656(sp)
	mv s1, s0
	sd s1, 64(sp)
	j label3
label14:
	li s0, 4
	ld s1, 168(sp)
	mul t1, s1, s0
	ld t2, 72(sp)
	add t3, t2, t1
	lw t4, 0(t3)
	ld t5, 144(sp)
	slt t6, t5, t4
	mv s2, t6
	sd s2, 736(sp)
	ld s0, 736(sp)
	beq s0, zero, label45
	j label200
label15:
	ld s0, 728(sp)
	ble s0, zero, label18
	j label199
label200:
	ld s0, 168(sp)
	mv s1, s0
	sd s1, 592(sp)
label7:
	ld s0, 592(sp)
	addiw s1, s0, 1
	li t1, 4
	mul t2, s1, t1
	ld t3, 72(sp)
	add t4, t3, t2
	li t5, 4
	mul t6, s0, t5
	add s2, t3, t6
	lw s3, 0(s2)
	sw s3, 0(t4)
	addiw s4, s0, -1
	li s5, -1
	slt s6, s5, s4
	xori s7, s6, 1
	sd s4, 704(sp)
	bne s7, zero, label60
	j label11
label60:
	mv s0, zero
	sd s0, 608(sp)
	ld s0, 608(sp)
	beq s0, zero, label64
	j label201
label11:
	li s0, 4
	ld s1, 704(sp)
	mul t1, s1, s0
	ld t2, 72(sp)
	add t3, t2, t1
	lw t4, 0(t3)
	ld t5, 144(sp)
	slt t6, t5, t4
	mv s2, t6
	sd s2, 608(sp)
	ld s0, 608(sp)
	beq s0, zero, label64
	j label201
label199:
	mv s0, zero
	sd s0, 632(sp)
	j label16
label198:
	li s0, 1
	sd s0, 64(sp)
	j label3
label16:
	li s0, 4
	ld s1, 632(sp)
	mul t1, s1, s0
	ld t2, 72(sp)
	add t3, t2, t1
	lw t4, 0(t3)
	mv a0, t4
	jal write
	addiw t5, s1, 1
	ld t6, 728(sp)
	sd t5, 672(sp)
	bge t5, t6, label18
	ld s0, 672(sp)
	mv s1, s0
	sd s1, 632(sp)
	j label16
label18:
	mv a0, zero
	ld s7, 136(sp)
	ld s4, 624(sp)
	ld s3, 648(sp)
	ld s2, 664(sp)
	ld s6, 160(sp)
	ld s1, 680(sp)
	ld s5, 600(sp)
	ld s0, 8(sp)
	ld ra, 0(sp)
	addi sp, sp, 928
	jr ra
