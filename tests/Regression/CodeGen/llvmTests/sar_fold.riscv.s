.data
.section .rodata
.bss
.text
.globl shl16sar15
shl16sar15:
	slliw a0, a0, 16
	srliw a0, a0, 15
	ret
.globl shl16sar17
shl16sar17:
	slliw a0, a0, 16
	srliw a0, a0, 17
	ret
.globl shl24sar23
shl24sar23:
	slliw a0, a0, 24
	srliw a0, a0, 23
	ret
.globl shl24sar25
shl24sar25:
	slliw a0, a0, 24
	srliw a0, a0, 25
	ret
