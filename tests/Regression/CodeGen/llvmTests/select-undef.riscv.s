.data
.section .rodata
.bss
.text
.globl func
func:
	slti a2, a0, 10
	mv a0, zero
	bne a2, zero, label8
	mv a0, a1
label8:
	ret
