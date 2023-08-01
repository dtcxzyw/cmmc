.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1082130432
.bss
.align 8
.globl x
x:
	.zero	40
.text
.p2align 2
.globl cse_imm
cse_imm:
	sll $t0, $a1, 2
	addu $t0, $t0, $a1
	sll $t0, $t0, 1
	xor $t0, $a2, $t0
	sll $t1, $a0, 2
	addu $t1, $t1, $a0
	sll $t1, $t1, 1
	addu $v0, $t0, $t1
	jr $ra
	nop
.p2align 2
.globl cse_global
cse_global:
	lui $t1, %hi(x)
	addiu $t0, $t1, %lo(x)
	lw $t1, %lo(x)($t1)
	lw $t0, 4($t0)
	addu $v0, $t1, $t0
	jr $ra
	nop
.p2align 2
.globl cse_fp
cse_fp:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	mul.s $f6, $f12, $f4
	mul.s $f4, $f14, $f4
	add.s $f0, $f6, $f4
	jr $ra
	nop
.p2align 2
.globl imm_build_pattern1
imm_build_pattern1:
	li $t0, 1
	sw $t0, 0($a0)
	li $t0, 2
	sw $t0, 4($a0)
	li $t0, 4
	sw $t0, 8($a0)
	li $t0, 8
	sw $t0, 12($a0)
	li $t0, 16
	sw $t0, 16($a0)
	li $t0, 32
	sw $t0, 20($a0)
	li $t0, 64
	sw $t0, 24($a0)
	li $t0, 128
	sw $t0, 28($a0)
	li $t0, 256
	sw $t0, 32($a0)
	li $t0, 512
	sw $t0, 36($a0)
	li $t0, 1024
	sw $t0, 40($a0)
	li $t0, 2048
	sw $t0, 44($a0)
	li $t0, 4096
	sw $t0, 48($a0)
	li $t0, 8192
	sw $t0, 52($a0)
	li $t0, 16384
	sw $t0, 56($a0)
	li $t0, 32768
	sw $t0, 60($a0)
	li $t0, 65536
	sw $t0, 64($a0)
	li $t0, 131072
	sw $t0, 68($a0)
	li $t0, 262144
	sw $t0, 72($a0)
	li $t0, 524288
	sw $t0, 76($a0)
	li $t0, 1048576
	sw $t0, 80($a0)
	li $t0, 2097152
	sw $t0, 84($a0)
	li $t0, 4194304
	sw $t0, 88($a0)
	li $t0, 8388608
	sw $t0, 92($a0)
	li $t0, 16777216
	sw $t0, 96($a0)
	li $t0, 33554432
	sw $t0, 100($a0)
	li $t0, 67108864
	sw $t0, 104($a0)
	li $t0, 134217728
	sw $t0, 108($a0)
	li $t0, 268435456
	sw $t0, 112($a0)
	li $t0, 536870912
	sw $t0, 116($a0)
	li $t0, 1073741824
	sw $t0, 120($a0)
	jr $ra
	nop
.p2align 2
.globl imm_build_pattern2
imm_build_pattern2:
	li $t0, 1024000
	sw $t0, 0($a0)
	li $t0, 512000
	sw $t0, 4($a0)
	li $t0, 256000
	sw $t0, 8($a0)
	li $t0, 128000
	sw $t0, 12($a0)
	li $t0, 64000
	sw $t0, 16($a0)
	li $t0, 32000
	sw $t0, 20($a0)
	li $t0, 16000
	sw $t0, 24($a0)
	li $t0, 8000
	sw $t0, 28($a0)
	li $t0, 4000
	sw $t0, 32($a0)
	jr $ra
	nop
.p2align 2
.globl imm_build_pattern3
imm_build_pattern3:
	sw $zero, 0($a0)
	li $t0, 400
	sw $t0, 4($a0)
	li $t0, 800
	sw $t0, 8($a0)
	li $t0, 1200
	sw $t0, 12($a0)
	li $t0, 1600
	sw $t0, 16($a0)
	li $t0, 2000
	sw $t0, 20($a0)
	li $t0, 2400
	sw $t0, 24($a0)
	li $t0, 2800
	sw $t0, 28($a0)
	li $t0, 3200
	sw $t0, 32($a0)
	jr $ra
	nop
