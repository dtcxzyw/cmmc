.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl aext_addiw_aext
aext_addiw_aext:
	addiw a0, a0, 1
	ret
.globl aext_addiw_sext
aext_addiw_sext:
	addiw a0, a0, 2
	ret
.globl aext_addiw_zext
aext_addiw_zext:
	addiw a0, a0, 3
	ret
.globl aext_addw_aext_aext
aext_addw_aext_aext:
	addw a0, a0, a1
	ret
.globl aext_addw_aext_sext
aext_addw_aext_sext:
	addw a0, a0, a1
	ret
.globl aext_addw_aext_zext
aext_addw_aext_zext:
	addw a0, a0, a1
	ret
.globl aext_addw_sext_aext
aext_addw_sext_aext:
	addw a0, a0, a1
	ret
.globl aext_addw_sext_sext
aext_addw_sext_sext:
	addw a0, a0, a1
	ret
.globl aext_addw_sext_zext
aext_addw_sext_zext:
	addw a0, a0, a1
	ret
.globl aext_addw_zext_aext
aext_addw_zext_aext:
	addw a0, a0, a1
	ret
.globl aext_addw_zext_sext
aext_addw_zext_sext:
	addw a0, a0, a1
	ret
.globl aext_addw_zext_zext
aext_addw_zext_zext:
	addw a0, a0, a1
	ret
.globl aext_slliw_aext
aext_slliw_aext:
	slliw a0, a0, 1
	ret
.globl aext_slliw_sext
aext_slliw_sext:
	slliw a0, a0, 2
	ret
.globl aext_slliw_zext
aext_slliw_zext:
	slliw a0, a0, 3
	ret
.globl aext_sllw_aext_aext
aext_sllw_aext_aext:
	sllw a0, a0, a1
	ret
.globl aext_sllw_aext_sext
aext_sllw_aext_sext:
	sllw a0, a0, a1
	ret
.globl aext_sllw_aext_zext
aext_sllw_aext_zext:
	sllw a0, a0, a1
	ret
.globl aext_sllw_sext_aext
aext_sllw_sext_aext:
	sllw a0, a0, a1
	ret
.globl aext_sllw_sext_sext
aext_sllw_sext_sext:
	sllw a0, a0, a1
	ret
.globl aext_sllw_sext_zext
aext_sllw_sext_zext:
	sllw a0, a0, a1
	ret
.globl aext_sllw_zext_aext
aext_sllw_zext_aext:
	sllw a0, a0, a1
	ret
.globl aext_sllw_zext_sext
aext_sllw_zext_sext:
	sllw a0, a0, a1
	ret
.globl aext_sllw_zext_zext
aext_sllw_zext_zext:
	sllw a0, a0, a1
	ret
.globl aext_sraiw_aext
aext_sraiw_aext:
	srliw a0, a0, 1
	ret
.globl aext_sraiw_sext
aext_sraiw_sext:
	srliw a0, a0, 2
	ret
.globl aext_sraiw_zext
aext_sraiw_zext:
	srliw a0, a0, 3
	ret
.globl aext_sraw_aext_aext
aext_sraw_aext_aext:
	srlw a0, a0, a1
	ret
.globl aext_sraw_aext_sext
aext_sraw_aext_sext:
	srlw a0, a0, a1
	ret
.globl aext_sraw_aext_zext
aext_sraw_aext_zext:
	srlw a0, a0, a1
	ret
.globl aext_sraw_sext_aext
aext_sraw_sext_aext:
	srlw a0, a0, a1
	ret
.globl aext_sraw_sext_sext
aext_sraw_sext_sext:
	srlw a0, a0, a1
	ret
.globl aext_sraw_sext_zext
aext_sraw_sext_zext:
	srlw a0, a0, a1
	ret
.globl aext_sraw_zext_aext
aext_sraw_zext_aext:
	srlw a0, a0, a1
	ret
.globl aext_sraw_zext_sext
aext_sraw_zext_sext:
	srlw a0, a0, a1
	ret
.globl aext_sraw_zext_zext
aext_sraw_zext_zext:
	srlw a0, a0, a1
	ret
.globl aext_srliw_aext
aext_srliw_aext:
	srliw a0, a0, 1
	ret
.globl aext_srliw_sext
aext_srliw_sext:
	srliw a0, a0, 2
	ret
.globl aext_srliw_zext
aext_srliw_zext:
	srliw a0, a0, 3
	ret
.globl aext_srlw_aext_aext
aext_srlw_aext_aext:
	srlw a0, a0, a1
	ret
.globl aext_srlw_aext_sext
aext_srlw_aext_sext:
	srlw a0, a0, a1
	ret
.globl aext_srlw_aext_zext
aext_srlw_aext_zext:
	srlw a0, a0, a1
	ret
.globl aext_srlw_sext_aext
aext_srlw_sext_aext:
	srlw a0, a0, a1
	ret
.globl aext_srlw_sext_sext
aext_srlw_sext_sext:
	srlw a0, a0, a1
	ret
.globl aext_srlw_sext_zext
aext_srlw_sext_zext:
	srlw a0, a0, a1
	ret
.globl aext_srlw_zext_aext
aext_srlw_zext_aext:
	srlw a0, a0, a1
	ret
.globl aext_srlw_zext_sext
aext_srlw_zext_sext:
	srlw a0, a0, a1
	ret
.globl aext_srlw_zext_zext
aext_srlw_zext_zext:
	srlw a0, a0, a1
	ret
.globl aext_subw_aext_aext
aext_subw_aext_aext:
	subw a0, a0, a1
	ret
.globl aext_subw_aext_sext
aext_subw_aext_sext:
	subw a0, a0, a1
	ret
.globl aext_subw_aext_zext
aext_subw_aext_zext:
	subw a0, a0, a1
	ret
.globl aext_subw_sext_aext
aext_subw_sext_aext:
	subw a0, a0, a1
	ret
.globl aext_subw_sext_sext
aext_subw_sext_sext:
	subw a0, a0, a1
	ret
.globl aext_subw_sext_zext
aext_subw_sext_zext:
	subw a0, a0, a1
	ret
.globl aext_subw_zext_aext
aext_subw_zext_aext:
	subw a0, a0, a1
	ret
.globl aext_subw_zext_sext
aext_subw_zext_sext:
	subw a0, a0, a1
	ret
.globl aext_subw_zext_zext
aext_subw_zext_zext:
	subw a0, a0, a1
	ret
.globl sext_addiw_aext
sext_addiw_aext:
	addiw a0, a0, 4
	ret
.globl sext_addiw_sext
sext_addiw_sext:
	addiw a0, a0, 5
	ret
.globl sext_addiw_zext
sext_addiw_zext:
	addiw a0, a0, 6
	ret
.globl sext_addw_aext_aext
sext_addw_aext_aext:
	addw a0, a0, a1
	ret
.globl sext_addw_aext_sext
sext_addw_aext_sext:
	addw a0, a0, a1
	ret
.globl sext_addw_aext_zext
sext_addw_aext_zext:
	addw a0, a0, a1
	ret
.globl sext_addw_sext_aext
sext_addw_sext_aext:
	addw a0, a0, a1
	ret
.globl sext_addw_sext_sext
sext_addw_sext_sext:
	addw a0, a0, a1
	ret
.globl sext_addw_sext_zext
sext_addw_sext_zext:
	addw a0, a0, a1
	ret
.globl sext_addw_zext_aext
sext_addw_zext_aext:
	addw a0, a0, a1
	ret
.globl sext_addw_zext_sext
sext_addw_zext_sext:
	addw a0, a0, a1
	ret
.globl sext_addw_zext_zext
sext_addw_zext_zext:
	addw a0, a0, a1
	ret
.globl sext_slliw_aext
sext_slliw_aext:
	slliw a0, a0, 4
	ret
.globl sext_slliw_sext
sext_slliw_sext:
	slliw a0, a0, 5
	ret
.globl sext_slliw_zext
sext_slliw_zext:
	slliw a0, a0, 6
	ret
.globl sext_sllw_aext_aext
sext_sllw_aext_aext:
	sllw a0, a0, a1
	ret
.globl sext_sllw_aext_sext
sext_sllw_aext_sext:
	sllw a0, a0, a1
	ret
.globl sext_sllw_aext_zext
sext_sllw_aext_zext:
	sllw a0, a0, a1
	ret
.globl sext_sllw_sext_aext
sext_sllw_sext_aext:
	sllw a0, a0, a1
	ret
.globl sext_sllw_sext_sext
sext_sllw_sext_sext:
	sllw a0, a0, a1
	ret
.globl sext_sllw_sext_zext
sext_sllw_sext_zext:
	sllw a0, a0, a1
	ret
.globl sext_sllw_zext_aext
sext_sllw_zext_aext:
	sllw a0, a0, a1
	ret
.globl sext_sllw_zext_sext
sext_sllw_zext_sext:
	sllw a0, a0, a1
	ret
.globl sext_sllw_zext_zext
sext_sllw_zext_zext:
	sllw a0, a0, a1
	ret
.globl sext_sraiw_aext
sext_sraiw_aext:
	srliw a0, a0, 4
	ret
.globl sext_sraiw_sext
sext_sraiw_sext:
	srliw a0, a0, 5
	ret
.globl sext_sraiw_zext
sext_sraiw_zext:
	srliw a0, a0, 6
	ret
.globl sext_sraw_aext_aext
sext_sraw_aext_aext:
	srlw a0, a0, a1
	ret
.globl sext_sraw_aext_sext
sext_sraw_aext_sext:
	srlw a0, a0, a1
	ret
.globl sext_sraw_aext_zext
sext_sraw_aext_zext:
	srlw a0, a0, a1
	ret
.globl sext_sraw_sext_aext
sext_sraw_sext_aext:
	srlw a0, a0, a1
	ret
.globl sext_sraw_sext_sext
sext_sraw_sext_sext:
	srlw a0, a0, a1
	ret
.globl sext_sraw_sext_zext
sext_sraw_sext_zext:
	srlw a0, a0, a1
	ret
.globl sext_sraw_zext_aext
sext_sraw_zext_aext:
	srlw a0, a0, a1
	ret
.globl sext_sraw_zext_sext
sext_sraw_zext_sext:
	srlw a0, a0, a1
	ret
.globl sext_sraw_zext_zext
sext_sraw_zext_zext:
	srlw a0, a0, a1
	ret
.globl sext_srliw_aext
sext_srliw_aext:
	srliw a0, a0, 4
	ret
.globl sext_srliw_sext
sext_srliw_sext:
	srliw a0, a0, 5
	ret
.globl sext_srliw_zext
sext_srliw_zext:
	srliw a0, a0, 6
	ret
.globl sext_srlw_aext_aext
sext_srlw_aext_aext:
	srlw a0, a0, a1
	ret
.globl sext_srlw_aext_sext
sext_srlw_aext_sext:
	srlw a0, a0, a1
	ret
.globl sext_srlw_aext_zext
sext_srlw_aext_zext:
	srlw a0, a0, a1
	ret
.globl sext_srlw_sext_aext
sext_srlw_sext_aext:
	srlw a0, a0, a1
	ret
.globl sext_srlw_sext_sext
sext_srlw_sext_sext:
	srlw a0, a0, a1
	ret
.globl sext_srlw_sext_zext
sext_srlw_sext_zext:
	srlw a0, a0, a1
	ret
.globl sext_srlw_zext_aext
sext_srlw_zext_aext:
	srlw a0, a0, a1
	ret
.globl sext_srlw_zext_sext
sext_srlw_zext_sext:
	srlw a0, a0, a1
	ret
.globl sext_srlw_zext_zext
sext_srlw_zext_zext:
	srlw a0, a0, a1
	ret
.globl sext_subw_aext_aext
sext_subw_aext_aext:
	subw a0, a0, a1
	ret
.globl sext_subw_aext_sext
sext_subw_aext_sext:
	subw a0, a0, a1
	ret
.globl sext_subw_aext_zext
sext_subw_aext_zext:
	subw a0, a0, a1
	ret
.globl sext_subw_sext_aext
sext_subw_sext_aext:
	subw a0, a0, a1
	ret
.globl sext_subw_sext_sext
sext_subw_sext_sext:
	subw a0, a0, a1
	ret
.globl sext_subw_sext_zext
sext_subw_sext_zext:
	subw a0, a0, a1
	ret
.globl sext_subw_zext_aext
sext_subw_zext_aext:
	subw a0, a0, a1
	ret
.globl sext_subw_zext_sext
sext_subw_zext_sext:
	subw a0, a0, a1
	ret
.globl sext_subw_zext_zext
sext_subw_zext_zext:
	subw a0, a0, a1
	ret
.globl zext_addiw_aext
zext_addiw_aext:
	addiw a0, a0, 7
	ret
.globl zext_addiw_sext
zext_addiw_sext:
	addiw a0, a0, 8
	ret
.globl zext_addiw_zext
zext_addiw_zext:
	addiw a0, a0, 9
	ret
.globl zext_addw_aext_aext
zext_addw_aext_aext:
	addw a0, a0, a1
	ret
.globl zext_addw_aext_sext
zext_addw_aext_sext:
	addw a0, a0, a1
	ret
.globl zext_addw_aext_zext
zext_addw_aext_zext:
	addw a0, a0, a1
	ret
.globl zext_addw_sext_aext
zext_addw_sext_aext:
	addw a0, a0, a1
	ret
.globl zext_addw_sext_sext
zext_addw_sext_sext:
	addw a0, a0, a1
	ret
.globl zext_addw_sext_zext
zext_addw_sext_zext:
	addw a0, a0, a1
	ret
.globl zext_addw_zext_aext
zext_addw_zext_aext:
	addw a0, a0, a1
	ret
.globl zext_addw_zext_sext
zext_addw_zext_sext:
	addw a0, a0, a1
	ret
.globl zext_addw_zext_zext
zext_addw_zext_zext:
	addw a0, a0, a1
	ret
.globl zext_slliw_aext
zext_slliw_aext:
	slliw a0, a0, 7
	ret
.globl zext_slliw_sext
zext_slliw_sext:
	slliw a0, a0, 8
	ret
.globl zext_slliw_zext
zext_slliw_zext:
	slliw a0, a0, 9
	ret
.globl zext_sllw_aext_aext
zext_sllw_aext_aext:
	sllw a0, a0, a1
	ret
.globl zext_sllw_aext_sext
zext_sllw_aext_sext:
	sllw a0, a0, a1
	ret
.globl zext_sllw_aext_zext
zext_sllw_aext_zext:
	sllw a0, a0, a1
	ret
.globl zext_sllw_sext_aext
zext_sllw_sext_aext:
	sllw a0, a0, a1
	ret
.globl zext_sllw_sext_sext
zext_sllw_sext_sext:
	sllw a0, a0, a1
	ret
.globl zext_sllw_sext_zext
zext_sllw_sext_zext:
	sllw a0, a0, a1
	ret
.globl zext_sllw_zext_aext
zext_sllw_zext_aext:
	sllw a0, a0, a1
	ret
.globl zext_sllw_zext_sext
zext_sllw_zext_sext:
	sllw a0, a0, a1
	ret
.globl zext_sllw_zext_zext
zext_sllw_zext_zext:
	sllw a0, a0, a1
	ret
.globl zext_sraiw_aext
zext_sraiw_aext:
	srliw a0, a0, 7
	ret
.globl zext_sraiw_sext
zext_sraiw_sext:
	srliw a0, a0, 8
	ret
.globl zext_sraiw_zext
zext_sraiw_zext:
	srliw a0, a0, 9
	ret
.globl zext_sraw_aext_aext
zext_sraw_aext_aext:
	srlw a0, a0, a1
	ret
.globl zext_sraw_aext_sext
zext_sraw_aext_sext:
	srlw a0, a0, a1
	ret
.globl zext_sraw_aext_zext
zext_sraw_aext_zext:
	srlw a0, a0, a1
	ret
.globl zext_sraw_sext_aext
zext_sraw_sext_aext:
	srlw a0, a0, a1
	ret
.globl zext_sraw_sext_sext
zext_sraw_sext_sext:
	srlw a0, a0, a1
	ret
.globl zext_sraw_sext_zext
zext_sraw_sext_zext:
	srlw a0, a0, a1
	ret
.globl zext_sraw_zext_aext
zext_sraw_zext_aext:
	srlw a0, a0, a1
	ret
.globl zext_sraw_zext_sext
zext_sraw_zext_sext:
	srlw a0, a0, a1
	ret
.globl zext_sraw_zext_zext
zext_sraw_zext_zext:
	srlw a0, a0, a1
	ret
.globl zext_srliw_aext
zext_srliw_aext:
	srliw a0, a0, 7
	ret
.globl zext_srliw_sext
zext_srliw_sext:
	srliw a0, a0, 8
	ret
.globl zext_srliw_zext
zext_srliw_zext:
	srliw a0, a0, 9
	ret
.globl zext_srlw_aext_aext
zext_srlw_aext_aext:
	srlw a0, a0, a1
	ret
.globl zext_srlw_aext_sext
zext_srlw_aext_sext:
	srlw a0, a0, a1
	ret
.globl zext_srlw_aext_zext
zext_srlw_aext_zext:
	srlw a0, a0, a1
	ret
.globl zext_srlw_sext_aext
zext_srlw_sext_aext:
	srlw a0, a0, a1
	ret
.globl zext_srlw_sext_sext
zext_srlw_sext_sext:
	srlw a0, a0, a1
	ret
.globl zext_srlw_sext_zext
zext_srlw_sext_zext:
	srlw a0, a0, a1
	ret
.globl zext_srlw_zext_aext
zext_srlw_zext_aext:
	srlw a0, a0, a1
	ret
.globl zext_srlw_zext_sext
zext_srlw_zext_sext:
	srlw a0, a0, a1
	ret
.globl zext_srlw_zext_zext
zext_srlw_zext_zext:
	srlw a0, a0, a1
	ret
.globl zext_subw_aext_aext
zext_subw_aext_aext:
	subw a0, a0, a1
	ret
.globl zext_subw_aext_sext
zext_subw_aext_sext:
	subw a0, a0, a1
	ret
.globl zext_subw_aext_zext
zext_subw_aext_zext:
	subw a0, a0, a1
	ret
.globl zext_subw_sext_aext
zext_subw_sext_aext:
	subw a0, a0, a1
	ret
.globl zext_subw_sext_sext
zext_subw_sext_sext:
	subw a0, a0, a1
	ret
.globl zext_subw_sext_zext
zext_subw_sext_zext:
	subw a0, a0, a1
	ret
.globl zext_subw_zext_aext
zext_subw_zext_aext:
	subw a0, a0, a1
	ret
.globl zext_subw_zext_sext
zext_subw_zext_sext:
	subw a0, a0, a1
	ret
.globl zext_subw_zext_zext
zext_subw_zext_zext:
	subw a0, a0, a1
	ret
