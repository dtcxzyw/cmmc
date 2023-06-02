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
	addi sp, sp, -848
	sd ra, 0(sp)
	sd s0, 672(sp)
	sd s5, 712(sp)
	sd s1, 680(sp)
	sd s2, 688(sp)
	sd s3, 696(sp)
	sd s4, 704(sp)
	addi s0, sp, 136
	jal read
	mv s1, a0
	sd s1, 592(sp)
	sd s0, 752(sp)
	ble s1, zero, label2
	mv s0, zero
	sd s0, 568(sp)
	j label19
label2:
	li s0, 1
	ld s1, 592(sp)
	slt t1, s0, s1
	xori t2, t1, 1
	bne t2, zero, label15
	j label166
label19:
	ld s0, 568(sp)
	slli s1, s0, 2
	ld t1, 752(sp)
	add t2, t1, s1
	jal read
	mv t3, a0
	sw t3, 0(t2)
	addiw t4, s0, 1
	ld t5, 592(sp)
	sd t4, 576(sp)
	bge t4, t5, label2
	ld s0, 576(sp)
	mv s1, s0
	sd s1, 568(sp)
	j label19
label3:
	ld s0, 560(sp)
	slli s1, s0, 2
	ld t1, 752(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	addiw t4, s0, -1
	li t5, -1
	slt t6, t5, t4
	xori s2, t6, 1
	sd t4, 584(sp)
	sd t3, 608(sp)
	bne s2, zero, label39
	ld s0, 584(sp)
	slli s1, s0, 2
	ld t1, 752(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	ld t4, 608(sp)
	slt t5, t4, t3
	mv t6, t5
	sd t6, 768(sp)
	ld s0, 768(sp)
	beq s0, zero, label42
	j label174
label39:
	mv s0, zero
	sd s0, 768(sp)
	ld s0, 768(sp)
	beq s0, zero, label42
	j label174
label58:
	ld s0, 600(sp)
	mv s1, s0
	sd s1, 120(sp)
label12:
	ld s0, 120(sp)
	addiw s1, s0, 1
	slli t1, s1, 2
	ld t2, 752(sp)
	add t3, t2, t1
	ld t4, 608(sp)
	sw t4, 0(t3)
	ld t5, 560(sp)
	addiw t6, t5, 1
	ld s2, 592(sp)
	sd t6, 112(sp)
	bge t6, s2, label15
	ld s0, 112(sp)
	mv s1, s0
	sd s1, 560(sp)
	j label3
label15:
	ld s0, 592(sp)
	ble s0, zero, label80
	j label167
label174:
	ld s0, 584(sp)
	mv s1, s0
	sd s1, 736(sp)
	j label7
label42:
	ld s0, 584(sp)
	mv s1, s0
	sd s1, 120(sp)
	j label12
label7:
	ld s0, 736(sp)
	addiw s1, s0, 1
	slli t1, s1, 2
	ld t2, 752(sp)
	add t3, t2, t1
	slli t4, s0, 2
	add t5, t2, t4
	lw t6, 0(t5)
	sw t6, 0(t3)
	addiw s2, s0, -1
	li s3, -1
	slt s4, s3, s2
	xori s5, s4, 1
	sd s2, 600(sp)
	bne s5, zero, label55
	ld s0, 600(sp)
	slli s1, s0, 2
	ld t1, 752(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	ld t4, 608(sp)
	slt t5, t4, t3
	mv t6, t5
	sd t6, 104(sp)
	ld s0, 104(sp)
	beq s0, zero, label58
	j label175
label55:
	mv s0, zero
	sd s0, 104(sp)
	ld s0, 104(sp)
	beq s0, zero, label58
label175:
	ld s0, 600(sp)
	mv s1, s0
	sd s1, 736(sp)
	j label7
label166:
	li s0, 1
	sd s0, 560(sp)
	j label3
label167:
	mv s0, zero
	sd s0, 544(sp)
label16:
	ld s0, 544(sp)
	slli s1, s0, 2
	ld t1, 752(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	mv a0, t3
	jal write
	addiw t4, s0, 1
	ld t5, 592(sp)
	sd t4, 552(sp)
	bge t4, t5, label80
	ld s0, 552(sp)
	mv s1, s0
	sd s1, 544(sp)
	j label16
label80:
	mv a0, zero
	ld s4, 704(sp)
	ld s3, 696(sp)
	ld s2, 688(sp)
	ld s1, 680(sp)
	ld s5, 712(sp)
	ld s0, 672(sp)
	ld ra, 0(sp)
	addi sp, sp, 848
	jr ra
