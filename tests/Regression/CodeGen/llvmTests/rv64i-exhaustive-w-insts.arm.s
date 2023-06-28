.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl aext_addiw_aext
aext_addiw_aext:
	add r0, r0, #1
	bx lr
.globl aext_addiw_sext
aext_addiw_sext:
	add r0, r0, #2
	bx lr
.globl aext_addiw_zext
aext_addiw_zext:
	add r0, r0, #3
	bx lr
.globl aext_addw_aext_aext
aext_addw_aext_aext:
	add r0, r0, r1
	bx lr
.globl aext_addw_aext_sext
aext_addw_aext_sext:
	add r0, r0, r1
	bx lr
.globl aext_addw_aext_zext
aext_addw_aext_zext:
	add r0, r0, r1
	bx lr
.globl aext_addw_sext_aext
aext_addw_sext_aext:
	add r0, r0, r1
	bx lr
.globl aext_addw_sext_sext
aext_addw_sext_sext:
	add r0, r0, r1
	bx lr
.globl aext_addw_sext_zext
aext_addw_sext_zext:
	add r0, r0, r1
	bx lr
.globl aext_addw_zext_aext
aext_addw_zext_aext:
	add r0, r0, r1
	bx lr
.globl aext_addw_zext_sext
aext_addw_zext_sext:
	add r0, r0, r1
	bx lr
.globl aext_addw_zext_zext
aext_addw_zext_zext:
	add r0, r0, r1
	bx lr
.globl aext_slliw_aext
aext_slliw_aext:
	lsl r0, r0, #1
	bx lr
.globl aext_slliw_sext
aext_slliw_sext:
	lsl r0, r0, #2
	bx lr
.globl aext_slliw_zext
aext_slliw_zext:
	lsl r0, r0, #3
	bx lr
.globl aext_sllw_aext_aext
aext_sllw_aext_aext:
	lsl r0, r0, r1
	bx lr
.globl aext_sllw_aext_sext
aext_sllw_aext_sext:
	lsl r0, r0, r1
	bx lr
.globl aext_sllw_aext_zext
aext_sllw_aext_zext:
	lsl r0, r0, r1
	bx lr
.globl aext_sllw_sext_aext
aext_sllw_sext_aext:
	lsl r0, r0, r1
	bx lr
.globl aext_sllw_sext_sext
aext_sllw_sext_sext:
	lsl r0, r0, r1
	bx lr
.globl aext_sllw_sext_zext
aext_sllw_sext_zext:
	lsl r0, r0, r1
	bx lr
.globl aext_sllw_zext_aext
aext_sllw_zext_aext:
	lsl r0, r0, r1
	bx lr
.globl aext_sllw_zext_sext
aext_sllw_zext_sext:
	lsl r0, r0, r1
	bx lr
.globl aext_sllw_zext_zext
aext_sllw_zext_zext:
	lsl r0, r0, r1
	bx lr
.globl aext_sraiw_aext
aext_sraiw_aext:
	lsr r0, r0, #1
	bx lr
.globl aext_sraiw_sext
aext_sraiw_sext:
	lsr r0, r0, #2
	bx lr
.globl aext_sraiw_zext
aext_sraiw_zext:
	lsr r0, r0, #3
	bx lr
.globl aext_sraw_aext_aext
aext_sraw_aext_aext:
	lsr r0, r0, r1
	bx lr
.globl aext_sraw_aext_sext
aext_sraw_aext_sext:
	lsr r0, r0, r1
	bx lr
.globl aext_sraw_aext_zext
aext_sraw_aext_zext:
	lsr r0, r0, r1
	bx lr
.globl aext_sraw_sext_aext
aext_sraw_sext_aext:
	lsr r0, r0, r1
	bx lr
.globl aext_sraw_sext_sext
aext_sraw_sext_sext:
	lsr r0, r0, r1
	bx lr
.globl aext_sraw_sext_zext
aext_sraw_sext_zext:
	lsr r0, r0, r1
	bx lr
.globl aext_sraw_zext_aext
aext_sraw_zext_aext:
	lsr r0, r0, r1
	bx lr
.globl aext_sraw_zext_sext
aext_sraw_zext_sext:
	lsr r0, r0, r1
	bx lr
.globl aext_sraw_zext_zext
aext_sraw_zext_zext:
	lsr r0, r0, r1
	bx lr
.globl aext_srliw_aext
aext_srliw_aext:
	lsr r0, r0, #1
	bx lr
.globl aext_srliw_sext
aext_srliw_sext:
	lsr r0, r0, #2
	bx lr
.globl aext_srliw_zext
aext_srliw_zext:
	lsr r0, r0, #3
	bx lr
.globl aext_srlw_aext_aext
aext_srlw_aext_aext:
	lsr r0, r0, r1
	bx lr
.globl aext_srlw_aext_sext
aext_srlw_aext_sext:
	lsr r0, r0, r1
	bx lr
.globl aext_srlw_aext_zext
aext_srlw_aext_zext:
	lsr r0, r0, r1
	bx lr
.globl aext_srlw_sext_aext
aext_srlw_sext_aext:
	lsr r0, r0, r1
	bx lr
.globl aext_srlw_sext_sext
aext_srlw_sext_sext:
	lsr r0, r0, r1
	bx lr
.globl aext_srlw_sext_zext
aext_srlw_sext_zext:
	lsr r0, r0, r1
	bx lr
.globl aext_srlw_zext_aext
aext_srlw_zext_aext:
	lsr r0, r0, r1
	bx lr
.globl aext_srlw_zext_sext
aext_srlw_zext_sext:
	lsr r0, r0, r1
	bx lr
.globl aext_srlw_zext_zext
aext_srlw_zext_zext:
	lsr r0, r0, r1
	bx lr
.globl aext_subw_aext_aext
aext_subw_aext_aext:
	sub r0, r0, r1
	bx lr
.globl aext_subw_aext_sext
aext_subw_aext_sext:
	sub r0, r0, r1
	bx lr
.globl aext_subw_aext_zext
aext_subw_aext_zext:
	sub r0, r0, r1
	bx lr
.globl aext_subw_sext_aext
aext_subw_sext_aext:
	sub r0, r0, r1
	bx lr
.globl aext_subw_sext_sext
aext_subw_sext_sext:
	sub r0, r0, r1
	bx lr
.globl aext_subw_sext_zext
aext_subw_sext_zext:
	sub r0, r0, r1
	bx lr
.globl aext_subw_zext_aext
aext_subw_zext_aext:
	sub r0, r0, r1
	bx lr
.globl aext_subw_zext_sext
aext_subw_zext_sext:
	sub r0, r0, r1
	bx lr
.globl aext_subw_zext_zext
aext_subw_zext_zext:
	sub r0, r0, r1
	bx lr
.globl sext_addiw_aext
sext_addiw_aext:
	add r0, r0, #4
	bx lr
.globl sext_addiw_sext
sext_addiw_sext:
	add r0, r0, #5
	bx lr
.globl sext_addiw_zext
sext_addiw_zext:
	add r0, r0, #6
	bx lr
.globl sext_addw_aext_aext
sext_addw_aext_aext:
	add r0, r0, r1
	bx lr
.globl sext_addw_aext_sext
sext_addw_aext_sext:
	add r0, r0, r1
	bx lr
.globl sext_addw_aext_zext
sext_addw_aext_zext:
	add r0, r0, r1
	bx lr
.globl sext_addw_sext_aext
sext_addw_sext_aext:
	add r0, r0, r1
	bx lr
.globl sext_addw_sext_sext
sext_addw_sext_sext:
	add r0, r0, r1
	bx lr
.globl sext_addw_sext_zext
sext_addw_sext_zext:
	add r0, r0, r1
	bx lr
.globl sext_addw_zext_aext
sext_addw_zext_aext:
	add r0, r0, r1
	bx lr
.globl sext_addw_zext_sext
sext_addw_zext_sext:
	add r0, r0, r1
	bx lr
.globl sext_addw_zext_zext
sext_addw_zext_zext:
	add r0, r0, r1
	bx lr
.globl sext_slliw_aext
sext_slliw_aext:
	lsl r0, r0, #4
	bx lr
.globl sext_slliw_sext
sext_slliw_sext:
	lsl r0, r0, #5
	bx lr
.globl sext_slliw_zext
sext_slliw_zext:
	lsl r0, r0, #6
	bx lr
.globl sext_sllw_aext_aext
sext_sllw_aext_aext:
	lsl r0, r0, r1
	bx lr
.globl sext_sllw_aext_sext
sext_sllw_aext_sext:
	lsl r0, r0, r1
	bx lr
.globl sext_sllw_aext_zext
sext_sllw_aext_zext:
	lsl r0, r0, r1
	bx lr
.globl sext_sllw_sext_aext
sext_sllw_sext_aext:
	lsl r0, r0, r1
	bx lr
.globl sext_sllw_sext_sext
sext_sllw_sext_sext:
	lsl r0, r0, r1
	bx lr
.globl sext_sllw_sext_zext
sext_sllw_sext_zext:
	lsl r0, r0, r1
	bx lr
.globl sext_sllw_zext_aext
sext_sllw_zext_aext:
	lsl r0, r0, r1
	bx lr
.globl sext_sllw_zext_sext
sext_sllw_zext_sext:
	lsl r0, r0, r1
	bx lr
.globl sext_sllw_zext_zext
sext_sllw_zext_zext:
	lsl r0, r0, r1
	bx lr
.globl sext_sraiw_aext
sext_sraiw_aext:
	lsr r0, r0, #4
	bx lr
.globl sext_sraiw_sext
sext_sraiw_sext:
	lsr r0, r0, #5
	bx lr
.globl sext_sraiw_zext
sext_sraiw_zext:
	lsr r0, r0, #6
	bx lr
.globl sext_sraw_aext_aext
sext_sraw_aext_aext:
	lsr r0, r0, r1
	bx lr
.globl sext_sraw_aext_sext
sext_sraw_aext_sext:
	lsr r0, r0, r1
	bx lr
.globl sext_sraw_aext_zext
sext_sraw_aext_zext:
	lsr r0, r0, r1
	bx lr
.globl sext_sraw_sext_aext
sext_sraw_sext_aext:
	lsr r0, r0, r1
	bx lr
.globl sext_sraw_sext_sext
sext_sraw_sext_sext:
	lsr r0, r0, r1
	bx lr
.globl sext_sraw_sext_zext
sext_sraw_sext_zext:
	lsr r0, r0, r1
	bx lr
.globl sext_sraw_zext_aext
sext_sraw_zext_aext:
	lsr r0, r0, r1
	bx lr
.globl sext_sraw_zext_sext
sext_sraw_zext_sext:
	lsr r0, r0, r1
	bx lr
.globl sext_sraw_zext_zext
sext_sraw_zext_zext:
	lsr r0, r0, r1
	bx lr
.globl sext_srliw_aext
sext_srliw_aext:
	lsr r0, r0, #4
	bx lr
.globl sext_srliw_sext
sext_srliw_sext:
	lsr r0, r0, #5
	bx lr
.globl sext_srliw_zext
sext_srliw_zext:
	lsr r0, r0, #6
	bx lr
.globl sext_srlw_aext_aext
sext_srlw_aext_aext:
	lsr r0, r0, r1
	bx lr
.globl sext_srlw_aext_sext
sext_srlw_aext_sext:
	lsr r0, r0, r1
	bx lr
.globl sext_srlw_aext_zext
sext_srlw_aext_zext:
	lsr r0, r0, r1
	bx lr
.globl sext_srlw_sext_aext
sext_srlw_sext_aext:
	lsr r0, r0, r1
	bx lr
.globl sext_srlw_sext_sext
sext_srlw_sext_sext:
	lsr r0, r0, r1
	bx lr
.globl sext_srlw_sext_zext
sext_srlw_sext_zext:
	lsr r0, r0, r1
	bx lr
.globl sext_srlw_zext_aext
sext_srlw_zext_aext:
	lsr r0, r0, r1
	bx lr
.globl sext_srlw_zext_sext
sext_srlw_zext_sext:
	lsr r0, r0, r1
	bx lr
.globl sext_srlw_zext_zext
sext_srlw_zext_zext:
	lsr r0, r0, r1
	bx lr
.globl sext_subw_aext_aext
sext_subw_aext_aext:
	sub r0, r0, r1
	bx lr
.globl sext_subw_aext_sext
sext_subw_aext_sext:
	sub r0, r0, r1
	bx lr
.globl sext_subw_aext_zext
sext_subw_aext_zext:
	sub r0, r0, r1
	bx lr
.globl sext_subw_sext_aext
sext_subw_sext_aext:
	sub r0, r0, r1
	bx lr
.globl sext_subw_sext_sext
sext_subw_sext_sext:
	sub r0, r0, r1
	bx lr
.globl sext_subw_sext_zext
sext_subw_sext_zext:
	sub r0, r0, r1
	bx lr
.globl sext_subw_zext_aext
sext_subw_zext_aext:
	sub r0, r0, r1
	bx lr
.globl sext_subw_zext_sext
sext_subw_zext_sext:
	sub r0, r0, r1
	bx lr
.globl sext_subw_zext_zext
sext_subw_zext_zext:
	sub r0, r0, r1
	bx lr
.globl zext_addiw_aext
zext_addiw_aext:
	add r0, r0, #7
	bx lr
.globl zext_addiw_sext
zext_addiw_sext:
	add r0, r0, #8
	bx lr
.globl zext_addiw_zext
zext_addiw_zext:
	add r0, r0, #9
	bx lr
.globl zext_addw_aext_aext
zext_addw_aext_aext:
	add r0, r0, r1
	bx lr
.globl zext_addw_aext_sext
zext_addw_aext_sext:
	add r0, r0, r1
	bx lr
.globl zext_addw_aext_zext
zext_addw_aext_zext:
	add r0, r0, r1
	bx lr
.globl zext_addw_sext_aext
zext_addw_sext_aext:
	add r0, r0, r1
	bx lr
.globl zext_addw_sext_sext
zext_addw_sext_sext:
	add r0, r0, r1
	bx lr
.globl zext_addw_sext_zext
zext_addw_sext_zext:
	add r0, r0, r1
	bx lr
.globl zext_addw_zext_aext
zext_addw_zext_aext:
	add r0, r0, r1
	bx lr
.globl zext_addw_zext_sext
zext_addw_zext_sext:
	add r0, r0, r1
	bx lr
.globl zext_addw_zext_zext
zext_addw_zext_zext:
	add r0, r0, r1
	bx lr
.globl zext_slliw_aext
zext_slliw_aext:
	lsl r0, r0, #7
	bx lr
.globl zext_slliw_sext
zext_slliw_sext:
	lsl r0, r0, #8
	bx lr
.globl zext_slliw_zext
zext_slliw_zext:
	lsl r0, r0, #9
	bx lr
.globl zext_sllw_aext_aext
zext_sllw_aext_aext:
	lsl r0, r0, r1
	bx lr
.globl zext_sllw_aext_sext
zext_sllw_aext_sext:
	lsl r0, r0, r1
	bx lr
.globl zext_sllw_aext_zext
zext_sllw_aext_zext:
	lsl r0, r0, r1
	bx lr
.globl zext_sllw_sext_aext
zext_sllw_sext_aext:
	lsl r0, r0, r1
	bx lr
.globl zext_sllw_sext_sext
zext_sllw_sext_sext:
	lsl r0, r0, r1
	bx lr
.globl zext_sllw_sext_zext
zext_sllw_sext_zext:
	lsl r0, r0, r1
	bx lr
.globl zext_sllw_zext_aext
zext_sllw_zext_aext:
	lsl r0, r0, r1
	bx lr
.globl zext_sllw_zext_sext
zext_sllw_zext_sext:
	lsl r0, r0, r1
	bx lr
.globl zext_sllw_zext_zext
zext_sllw_zext_zext:
	lsl r0, r0, r1
	bx lr
.globl zext_sraiw_aext
zext_sraiw_aext:
	lsr r0, r0, #7
	bx lr
.globl zext_sraiw_sext
zext_sraiw_sext:
	lsr r0, r0, #8
	bx lr
.globl zext_sraiw_zext
zext_sraiw_zext:
	lsr r0, r0, #9
	bx lr
.globl zext_sraw_aext_aext
zext_sraw_aext_aext:
	lsr r0, r0, r1
	bx lr
.globl zext_sraw_aext_sext
zext_sraw_aext_sext:
	lsr r0, r0, r1
	bx lr
.globl zext_sraw_aext_zext
zext_sraw_aext_zext:
	lsr r0, r0, r1
	bx lr
.globl zext_sraw_sext_aext
zext_sraw_sext_aext:
	lsr r0, r0, r1
	bx lr
.globl zext_sraw_sext_sext
zext_sraw_sext_sext:
	lsr r0, r0, r1
	bx lr
.globl zext_sraw_sext_zext
zext_sraw_sext_zext:
	lsr r0, r0, r1
	bx lr
.globl zext_sraw_zext_aext
zext_sraw_zext_aext:
	lsr r0, r0, r1
	bx lr
.globl zext_sraw_zext_sext
zext_sraw_zext_sext:
	lsr r0, r0, r1
	bx lr
.globl zext_sraw_zext_zext
zext_sraw_zext_zext:
	lsr r0, r0, r1
	bx lr
.globl zext_srliw_aext
zext_srliw_aext:
	lsr r0, r0, #7
	bx lr
.globl zext_srliw_sext
zext_srliw_sext:
	lsr r0, r0, #8
	bx lr
.globl zext_srliw_zext
zext_srliw_zext:
	lsr r0, r0, #9
	bx lr
.globl zext_srlw_aext_aext
zext_srlw_aext_aext:
	lsr r0, r0, r1
	bx lr
.globl zext_srlw_aext_sext
zext_srlw_aext_sext:
	lsr r0, r0, r1
	bx lr
.globl zext_srlw_aext_zext
zext_srlw_aext_zext:
	lsr r0, r0, r1
	bx lr
.globl zext_srlw_sext_aext
zext_srlw_sext_aext:
	lsr r0, r0, r1
	bx lr
.globl zext_srlw_sext_sext
zext_srlw_sext_sext:
	lsr r0, r0, r1
	bx lr
.globl zext_srlw_sext_zext
zext_srlw_sext_zext:
	lsr r0, r0, r1
	bx lr
.globl zext_srlw_zext_aext
zext_srlw_zext_aext:
	lsr r0, r0, r1
	bx lr
.globl zext_srlw_zext_sext
zext_srlw_zext_sext:
	lsr r0, r0, r1
	bx lr
.globl zext_srlw_zext_zext
zext_srlw_zext_zext:
	lsr r0, r0, r1
	bx lr
.globl zext_subw_aext_aext
zext_subw_aext_aext:
	sub r0, r0, r1
	bx lr
.globl zext_subw_aext_sext
zext_subw_aext_sext:
	sub r0, r0, r1
	bx lr
.globl zext_subw_aext_zext
zext_subw_aext_zext:
	sub r0, r0, r1
	bx lr
.globl zext_subw_sext_aext
zext_subw_sext_aext:
	sub r0, r0, r1
	bx lr
.globl zext_subw_sext_sext
zext_subw_sext_sext:
	sub r0, r0, r1
	bx lr
.globl zext_subw_sext_zext
zext_subw_sext_zext:
	sub r0, r0, r1
	bx lr
.globl zext_subw_zext_aext
zext_subw_zext_aext:
	sub r0, r0, r1
	bx lr
.globl zext_subw_zext_sext
zext_subw_zext_sext:
	sub r0, r0, r1
	bx lr
.globl zext_subw_zext_zext
zext_subw_zext_zext:
	sub r0, r0, r1
	bx lr
