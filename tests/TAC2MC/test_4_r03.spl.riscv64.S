.data
_prompt: .asciz "Enter an integer:"
_ret: .asciz "\n"
.section .rodata
.bss
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
	addi sp, sp, -8
	sd ra, 0(sp)
	li a0, 19
	jal write
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
