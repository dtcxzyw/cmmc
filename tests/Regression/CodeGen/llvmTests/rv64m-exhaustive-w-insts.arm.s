.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl aext_divuw_aext_aext
aext_divuw_aext_aext:
	udiv r0, r0, r1
	bx lr
.globl aext_divuw_aext_sext
aext_divuw_aext_sext:
	udiv r0, r0, r1
	bx lr
.globl aext_divuw_aext_zext
aext_divuw_aext_zext:
	udiv r0, r0, r1
	bx lr
.globl aext_divuw_sext_aext
aext_divuw_sext_aext:
	udiv r0, r0, r1
	bx lr
.globl aext_divuw_sext_sext
aext_divuw_sext_sext:
	udiv r0, r0, r1
	bx lr
.globl aext_divuw_sext_zext
aext_divuw_sext_zext:
	udiv r0, r0, r1
	bx lr
.globl aext_divuw_zext_aext
aext_divuw_zext_aext:
	udiv r0, r0, r1
	bx lr
.globl aext_divuw_zext_sext
aext_divuw_zext_sext:
	udiv r0, r0, r1
	bx lr
.globl aext_divuw_zext_zext
aext_divuw_zext_zext:
	udiv r0, r0, r1
	bx lr
.globl aext_divw_aext_aext
aext_divw_aext_aext:
	sdiv r0, r0, r1
	bx lr
.globl aext_divw_aext_sext
aext_divw_aext_sext:
	sdiv r0, r0, r1
	bx lr
.globl aext_divw_aext_zext
aext_divw_aext_zext:
	sdiv r0, r0, r1
	bx lr
.globl aext_divw_sext_aext
aext_divw_sext_aext:
	sdiv r0, r0, r1
	bx lr
.globl aext_divw_sext_sext
aext_divw_sext_sext:
	sdiv r0, r0, r1
	bx lr
.globl aext_divw_sext_zext
aext_divw_sext_zext:
	sdiv r0, r0, r1
	bx lr
.globl aext_divw_zext_aext
aext_divw_zext_aext:
	sdiv r0, r0, r1
	bx lr
.globl aext_divw_zext_sext
aext_divw_zext_sext:
	sdiv r0, r0, r1
	bx lr
.globl aext_divw_zext_zext
aext_divw_zext_zext:
	sdiv r0, r0, r1
	bx lr
.globl aext_mulw_aext_aext
aext_mulw_aext_aext:
	mul r0, r0, r1
	bx lr
.globl aext_mulw_aext_sext
aext_mulw_aext_sext:
	mul r0, r0, r1
	bx lr
.globl aext_mulw_aext_zext
aext_mulw_aext_zext:
	mul r0, r0, r1
	bx lr
.globl aext_mulw_sext_aext
aext_mulw_sext_aext:
	mul r0, r0, r1
	bx lr
.globl aext_mulw_sext_sext
aext_mulw_sext_sext:
	mul r0, r0, r1
	bx lr
.globl aext_mulw_sext_zext
aext_mulw_sext_zext:
	mul r0, r0, r1
	bx lr
.globl aext_mulw_zext_aext
aext_mulw_zext_aext:
	mul r0, r0, r1
	bx lr
.globl aext_mulw_zext_sext
aext_mulw_zext_sext:
	mul r0, r0, r1
	bx lr
.globl aext_mulw_zext_zext
aext_mulw_zext_zext:
	mul r0, r0, r1
	bx lr
.globl aext_remuw_aext_aext
aext_remuw_aext_aext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remuw_aext_sext
aext_remuw_aext_sext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remuw_aext_zext
aext_remuw_aext_zext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remuw_sext_aext
aext_remuw_sext_aext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remuw_sext_sext
aext_remuw_sext_sext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remuw_sext_zext
aext_remuw_sext_zext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remuw_zext_aext
aext_remuw_zext_aext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remuw_zext_sext
aext_remuw_zext_sext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remuw_zext_zext
aext_remuw_zext_zext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remw_aext_aext
aext_remw_aext_aext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remw_aext_sext
aext_remw_aext_sext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remw_aext_zext
aext_remw_aext_zext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remw_sext_aext
aext_remw_sext_aext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remw_sext_sext
aext_remw_sext_sext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remw_sext_zext
aext_remw_sext_zext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remw_zext_aext
aext_remw_zext_aext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remw_zext_sext
aext_remw_zext_sext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl aext_remw_zext_zext
aext_remw_zext_zext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_divuw_aext_aext
sext_divuw_aext_aext:
	udiv r0, r0, r1
	bx lr
.globl sext_divuw_aext_sext
sext_divuw_aext_sext:
	udiv r0, r0, r1
	bx lr
.globl sext_divuw_aext_zext
sext_divuw_aext_zext:
	udiv r0, r0, r1
	bx lr
.globl sext_divuw_sext_aext
sext_divuw_sext_aext:
	udiv r0, r0, r1
	bx lr
.globl sext_divuw_sext_sext
sext_divuw_sext_sext:
	udiv r0, r0, r1
	bx lr
.globl sext_divuw_sext_zext
sext_divuw_sext_zext:
	udiv r0, r0, r1
	bx lr
.globl sext_divuw_zext_aext
sext_divuw_zext_aext:
	udiv r0, r0, r1
	bx lr
.globl sext_divuw_zext_sext
sext_divuw_zext_sext:
	udiv r0, r0, r1
	bx lr
.globl sext_divuw_zext_zext
sext_divuw_zext_zext:
	udiv r0, r0, r1
	bx lr
.globl sext_divw_aext_aext
sext_divw_aext_aext:
	sdiv r0, r0, r1
	bx lr
.globl sext_divw_aext_sext
sext_divw_aext_sext:
	sdiv r0, r0, r1
	bx lr
.globl sext_divw_aext_zext
sext_divw_aext_zext:
	sdiv r0, r0, r1
	bx lr
.globl sext_divw_sext_aext
sext_divw_sext_aext:
	sdiv r0, r0, r1
	bx lr
.globl sext_divw_sext_sext
sext_divw_sext_sext:
	sdiv r0, r0, r1
	bx lr
.globl sext_divw_sext_sext_i16
sext_divw_sext_sext_i16:
	sxth r0, r0
	sxth r1, r1
	sdiv r0, r0, r1
	uxth r0, r0
	bx lr
.globl sext_divw_sext_sext_i8
sext_divw_sext_sext_i8:
	sxtb r0, r0
	sxtb r1, r1
	sdiv r0, r0, r1
	uxtb r0, r0
	bx lr
.globl sext_divw_sext_zext
sext_divw_sext_zext:
	sdiv r0, r0, r1
	bx lr
.globl sext_divw_zext_aext
sext_divw_zext_aext:
	sdiv r0, r0, r1
	bx lr
.globl sext_divw_zext_sext
sext_divw_zext_sext:
	sdiv r0, r0, r1
	bx lr
.globl sext_divw_zext_zext
sext_divw_zext_zext:
	sdiv r0, r0, r1
	bx lr
.globl sext_i32_remw_sext_zext_i16
sext_i32_remw_sext_zext_i16:
	sxth r0, r0
	uxth r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_i32_remw_zext_sext_i16
sext_i32_remw_zext_sext_i16:
	uxth r0, r0
	sxth r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_mulw_aext_aext
sext_mulw_aext_aext:
	mul r0, r0, r1
	bx lr
.globl sext_mulw_aext_sext
sext_mulw_aext_sext:
	mul r0, r0, r1
	bx lr
.globl sext_mulw_aext_zext
sext_mulw_aext_zext:
	mul r0, r0, r1
	bx lr
.globl sext_mulw_sext_aext
sext_mulw_sext_aext:
	mul r0, r0, r1
	bx lr
.globl sext_mulw_sext_sext
sext_mulw_sext_sext:
	mul r0, r0, r1
	bx lr
.globl sext_mulw_sext_zext
sext_mulw_sext_zext:
	mul r0, r0, r1
	bx lr
.globl sext_mulw_zext_aext
sext_mulw_zext_aext:
	mul r0, r0, r1
	bx lr
.globl sext_mulw_zext_sext
sext_mulw_zext_sext:
	mul r0, r0, r1
	bx lr
.globl sext_mulw_zext_zext
sext_mulw_zext_zext:
	mul r0, r0, r1
	bx lr
.globl sext_remuw_aext_aext
sext_remuw_aext_aext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remuw_aext_sext
sext_remuw_aext_sext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remuw_aext_zext
sext_remuw_aext_zext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remuw_sext_aext
sext_remuw_sext_aext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remuw_sext_sext
sext_remuw_sext_sext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remuw_sext_zext
sext_remuw_sext_zext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remuw_zext_aext
sext_remuw_zext_aext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remuw_zext_sext
sext_remuw_zext_sext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remuw_zext_zext
sext_remuw_zext_zext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remw_aext_aext
sext_remw_aext_aext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remw_aext_sext
sext_remw_aext_sext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remw_aext_zext
sext_remw_aext_zext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remw_sext_aext
sext_remw_sext_aext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remw_sext_sext
sext_remw_sext_sext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remw_sext_sext_i16
sext_remw_sext_sext_i16:
	sxth r0, r0
	sxth r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	uxth r0, r0
	bx lr
.globl sext_remw_sext_sext_i8
sext_remw_sext_sext_i8:
	sxtb r0, r0
	sxtb r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	uxtb r0, r0
	bx lr
.globl sext_remw_sext_zext
sext_remw_sext_zext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remw_zext_aext
sext_remw_zext_aext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remw_zext_sext
sext_remw_zext_sext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl sext_remw_zext_zext
sext_remw_zext_zext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_divuw_aext_aext
zext_divuw_aext_aext:
	udiv r0, r0, r1
	bx lr
.globl zext_divuw_aext_sext
zext_divuw_aext_sext:
	udiv r0, r0, r1
	bx lr
.globl zext_divuw_aext_zext
zext_divuw_aext_zext:
	udiv r0, r0, r1
	bx lr
.globl zext_divuw_sext_aext
zext_divuw_sext_aext:
	udiv r0, r0, r1
	bx lr
.globl zext_divuw_sext_sext
zext_divuw_sext_sext:
	udiv r0, r0, r1
	bx lr
.globl zext_divuw_sext_zext
zext_divuw_sext_zext:
	udiv r0, r0, r1
	bx lr
.globl zext_divuw_zext_aext
zext_divuw_zext_aext:
	udiv r0, r0, r1
	bx lr
.globl zext_divuw_zext_sext
zext_divuw_zext_sext:
	udiv r0, r0, r1
	bx lr
.globl zext_divuw_zext_zext
zext_divuw_zext_zext:
	udiv r0, r0, r1
	bx lr
.globl zext_divuw_zext_zext_i16
zext_divuw_zext_zext_i16:
	uxth r0, r0
	uxth r1, r1
	sdiv r0, r0, r1
	uxth r0, r0
	bx lr
.globl zext_divuw_zext_zext_i8
zext_divuw_zext_zext_i8:
	uxtb r0, r0
	uxtb r1, r1
	sdiv r0, r0, r1
	uxtb r0, r0
	bx lr
.globl zext_divw_aext_aext
zext_divw_aext_aext:
	sdiv r0, r0, r1
	bx lr
.globl zext_divw_aext_sext
zext_divw_aext_sext:
	sdiv r0, r0, r1
	bx lr
.globl zext_divw_aext_zext
zext_divw_aext_zext:
	sdiv r0, r0, r1
	bx lr
.globl zext_divw_sext_aext
zext_divw_sext_aext:
	sdiv r0, r0, r1
	bx lr
.globl zext_divw_sext_sext
zext_divw_sext_sext:
	sdiv r0, r0, r1
	bx lr
.globl zext_divw_sext_zext
zext_divw_sext_zext:
	sdiv r0, r0, r1
	bx lr
.globl zext_divw_zext_aext
zext_divw_zext_aext:
	sdiv r0, r0, r1
	bx lr
.globl zext_divw_zext_sext
zext_divw_zext_sext:
	sdiv r0, r0, r1
	bx lr
.globl zext_divw_zext_zext
zext_divw_zext_zext:
	sdiv r0, r0, r1
	bx lr
.globl zext_mulw_aext_aext
zext_mulw_aext_aext:
	mul r0, r0, r1
	bx lr
.globl zext_mulw_aext_sext
zext_mulw_aext_sext:
	mul r0, r0, r1
	bx lr
.globl zext_mulw_aext_zext
zext_mulw_aext_zext:
	mul r0, r0, r1
	bx lr
.globl zext_mulw_sext_aext
zext_mulw_sext_aext:
	mul r0, r0, r1
	bx lr
.globl zext_mulw_sext_sext
zext_mulw_sext_sext:
	mul r0, r0, r1
	bx lr
.globl zext_mulw_sext_zext
zext_mulw_sext_zext:
	mul r0, r0, r1
	bx lr
.globl zext_mulw_zext_aext
zext_mulw_zext_aext:
	mul r0, r0, r1
	bx lr
.globl zext_mulw_zext_sext
zext_mulw_zext_sext:
	mul r0, r0, r1
	bx lr
.globl zext_mulw_zext_zext
zext_mulw_zext_zext:
	mul r0, r0, r1
	bx lr
.globl zext_remuw_aext_aext
zext_remuw_aext_aext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remuw_aext_sext
zext_remuw_aext_sext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remuw_aext_zext
zext_remuw_aext_zext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remuw_sext_aext
zext_remuw_sext_aext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remuw_sext_sext
zext_remuw_sext_sext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remuw_sext_zext
zext_remuw_sext_zext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remuw_zext_aext
zext_remuw_zext_aext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remuw_zext_sext
zext_remuw_zext_sext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remuw_zext_zext
zext_remuw_zext_zext:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remuw_zext_zext_i16
zext_remuw_zext_zext_i16:
	uxth r0, r0
	uxth r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	uxth r0, r0
	bx lr
.globl zext_remuw_zext_zext_i8
zext_remuw_zext_zext_i8:
	uxtb r0, r0
	uxtb r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	uxtb r0, r0
	bx lr
.globl zext_remw_aext_aext
zext_remw_aext_aext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remw_aext_sext
zext_remw_aext_sext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remw_aext_zext
zext_remw_aext_zext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remw_sext_aext
zext_remw_sext_aext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remw_sext_sext
zext_remw_sext_sext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remw_sext_zext
zext_remw_sext_zext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remw_zext_aext
zext_remw_zext_aext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remw_zext_sext
zext_remw_zext_sext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl zext_remw_zext_zext
zext_remw_zext_zext:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
