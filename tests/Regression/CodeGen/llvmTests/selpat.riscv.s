.data
.data
.align 4
.globl t
t:
	.4byte	10
.align 4
.globl f
f:
	.4byte	199
.align 4
.globl a
a:
	.4byte	1
.align 4
.globl b
b:
	.4byte	10
.align 4
.globl c
c:
	.4byte	1
.align 4
.globl z1
z1:
	.4byte	0
.align 4
.globl z2
z2:
	.4byte	0
.align 4
.globl z3
z3:
	.4byte	0
.align 4
.globl z4
z4:
	.4byte	0
.text
.globl calc_seleq
calc_seleq:
pcrel53:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel53)(a0)
pcrel54:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel54)(a0)
pcrel55:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel55)(a1)
pcrel56:
	auipc a2, %pcrel_hi(b)
	lw a2, %pcrel_lo(pcrel56)(a2)
	xor a2, a3, a2
	sltiu a4, a2, 1
	mv a2, a0
	bne a4, zero, label52
	mv a2, a1
label52:
	auipc a4, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label52)(a4)
pcrel57:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(pcrel57)(a4)
pcrel58:
	auipc a2, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel58)(a2)
	xor a2, a2, a3
	sltiu a2, a2, 1
	bne a2, zero, label50
	mv a1, a0
label50:
	auipc a0, %pcrel_hi(z3)
	sw a1, %pcrel_lo(label50)(a0)
pcrel59:
	auipc a0, %pcrel_hi(z4)
	sw a1, %pcrel_lo(pcrel59)(a0)
	ret
.globl calc_seleqk
calc_seleqk:
pcrel117:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel117)(a0)
	xori a0, a3, 1
	sltiu a4, a0, 1
pcrel118:
	auipc a0, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel118)(a0)
pcrel119:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(pcrel119)(a1)
	mv a2, a0
	bne a4, zero, label116
	mv a2, a1
label116:
	auipc a4, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label116)(a4)
	xori a2, a3, 10
	sltiu a3, a2, 1
	mv a2, a1
	bne a3, zero, label114
	mv a2, a0
label114:
	auipc a3, %pcrel_hi(z2)
	sw a2, %pcrel_lo(label114)(a3)
pcrel120:
	auipc a2, %pcrel_hi(b)
	lw a3, %pcrel_lo(pcrel120)(a2)
	xori a2, a3, 3
	sltiu a4, a2, 1
	mv a2, a1
	bne a4, zero, label112
	mv a2, a0
label112:
	auipc a4, %pcrel_hi(z3)
	sw a2, %pcrel_lo(label112)(a4)
	xori a2, a3, 10
	sltiu a2, a2, 1
	bne a2, zero, label110
	mv a0, a1
label110:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label110)(a1)
	ret
.globl calc_seleqz
calc_seleqz:
pcrel175:
	auipc a0, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel175)(a0)
pcrel176:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(pcrel176)(a1)
pcrel177:
	auipc a2, %pcrel_hi(a)
	lw a2, %pcrel_lo(pcrel177)(a2)
	sltiu a3, a2, 1
	mv a2, a0
	bne a3, zero, label174
	mv a2, a1
label174:
	auipc a3, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label174)(a3)
pcrel178:
	auipc a3, %pcrel_hi(b)
	lw a3, %pcrel_lo(pcrel178)(a3)
	sltiu a4, a3, 1
	mv a3, a1
	bne a4, zero, label172
	mv a3, a0
label172:
	auipc a4, %pcrel_hi(z2)
	sw a3, %pcrel_lo(label172)(a4)
pcrel179:
	auipc a3, %pcrel_hi(c)
	lw a3, %pcrel_lo(pcrel179)(a3)
	sltiu a3, a3, 1
	bne a3, zero, label170
	mv a0, a1
label170:
	auipc a1, %pcrel_hi(z3)
	sw a0, %pcrel_lo(label170)(a1)
pcrel180:
	auipc a0, %pcrel_hi(z4)
	sw a2, %pcrel_lo(pcrel180)(a0)
	ret
.globl calc_selge
calc_selge:
pcrel246:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel246)(a0)
pcrel247:
	auipc a0, %pcrel_hi(b)
	lw a4, %pcrel_lo(pcrel247)(a0)
	slt a0, a3, a4
	xori a5, a0, 1
pcrel248:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel248)(a0)
pcrel249:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel249)(a1)
	mv a2, a0
	bne a5, zero, label245
	mv a2, a1
label245:
	auipc a5, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label245)(a5)
	slt a2, a4, a3
	xori a4, a2, 1
	mv a2, a1
	bne a4, zero, label243
	mv a2, a0
label243:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(label243)(a4)
pcrel250:
	auipc a2, %pcrel_hi(c)
	lw a4, %pcrel_lo(pcrel250)(a2)
	slt a2, a4, a3
	xori a5, a2, 1
	mv a2, a1
	bne a5, zero, label241
	mv a2, a0
label241:
	auipc a5, %pcrel_hi(z3)
	sw a2, %pcrel_lo(label241)(a5)
	slt a2, a3, a4
	xori a2, a2, 1
	bne a2, zero, label239
	mv a1, a0
label239:
	auipc a0, %pcrel_hi(z4)
	sw a1, %pcrel_lo(label239)(a0)
	ret
.globl calc_selgt
calc_selgt:
pcrel312:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel312)(a0)
pcrel313:
	auipc a0, %pcrel_hi(b)
	lw a4, %pcrel_lo(pcrel313)(a0)
	slt a5, a4, a3
pcrel314:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel314)(a0)
pcrel315:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel315)(a1)
	mv a2, a0
	bne a5, zero, label311
	mv a2, a1
label311:
	auipc a5, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label311)(a5)
	slt a4, a3, a4
	mv a2, a1
	bne a4, zero, label309
	mv a2, a0
label309:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(label309)(a4)
pcrel316:
	auipc a2, %pcrel_hi(c)
	lw a4, %pcrel_lo(pcrel316)(a2)
	slt a5, a3, a4
	mv a2, a0
	bne a5, zero, label307
	mv a2, a1
label307:
	auipc a5, %pcrel_hi(z3)
	sw a2, %pcrel_lo(label307)(a5)
	slt a2, a4, a3
	bne a2, zero, label305
	mv a0, a1
label305:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label305)(a1)
	mv a0, zero
	ret
.globl calc_selle
calc_selle:
pcrel382:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel382)(a0)
pcrel383:
	auipc a0, %pcrel_hi(b)
	lw a4, %pcrel_lo(pcrel383)(a0)
	slt a0, a4, a3
	xori a5, a0, 1
pcrel384:
	auipc a0, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel384)(a0)
pcrel385:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(pcrel385)(a1)
	mv a2, a0
	bne a5, zero, label381
	mv a2, a1
label381:
	auipc a5, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label381)(a5)
	slt a2, a3, a4
	xori a4, a2, 1
	mv a2, a1
	bne a4, zero, label379
	mv a2, a0
label379:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(label379)(a4)
pcrel386:
	auipc a2, %pcrel_hi(c)
	lw a4, %pcrel_lo(pcrel386)(a2)
	slt a2, a3, a4
	xori a5, a2, 1
	mv a2, a0
	bne a5, zero, label377
	mv a2, a1
label377:
	auipc a5, %pcrel_hi(z3)
	sw a2, %pcrel_lo(label377)(a5)
	slt a2, a4, a3
	xori a2, a2, 1
	bne a2, zero, label375
	mv a0, a1
label375:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label375)(a1)
	ret
.globl calc_selltk
calc_selltk:
pcrel450:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel450)(a0)
	slti a4, a3, 10
pcrel451:
	auipc a0, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel451)(a0)
pcrel452:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(pcrel452)(a1)
	mv a2, a0
	bne a4, zero, label449
	mv a2, a1
label449:
	auipc a4, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label449)(a4)
pcrel453:
	auipc a2, %pcrel_hi(b)
	lw a2, %pcrel_lo(pcrel453)(a2)
	slti a4, a2, 2
	mv a2, a1
	bne a4, zero, label447
	mv a2, a0
label447:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(label447)(a4)
pcrel454:
	auipc a2, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel454)(a2)
	li a4, 2
	slt a5, a4, a2
	mv a2, a1
	bne a5, zero, label445
	mv a2, a0
label445:
	auipc a5, %pcrel_hi(z3)
	sw a2, %pcrel_lo(label445)(a5)
	slt a2, a4, a3
	bne a2, zero, label443
	mv a1, a0
label443:
	auipc a0, %pcrel_hi(z4)
	sw a1, %pcrel_lo(label443)(a0)
	ret
.globl calc_selne
calc_selne:
pcrel507:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel507)(a0)
pcrel508:
	auipc a0, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel508)(a0)
pcrel509:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(pcrel509)(a1)
pcrel510:
	auipc a2, %pcrel_hi(b)
	lw a2, %pcrel_lo(pcrel510)(a2)
	xor a2, a3, a2
	sltu a4, zero, a2
	mv a2, a0
	bne a4, zero, label506
	mv a2, a1
label506:
	auipc a4, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label506)(a4)
pcrel511:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(pcrel511)(a4)
pcrel512:
	auipc a2, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel512)(a2)
	xor a2, a2, a3
	sltu a2, zero, a2
	bne a2, zero, label504
	mv a1, a0
label504:
	auipc a0, %pcrel_hi(z3)
	sw a1, %pcrel_lo(label504)(a0)
pcrel513:
	auipc a0, %pcrel_hi(z4)
	sw a1, %pcrel_lo(pcrel513)(a0)
	ret
.globl calc_selnek
calc_selnek:
pcrel571:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel571)(a0)
	xori a0, a3, 1
	sltu a4, zero, a0
pcrel572:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel572)(a0)
pcrel573:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel573)(a1)
	mv a2, a0
	bne a4, zero, label570
	mv a2, a1
label570:
	auipc a4, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label570)(a4)
	xori a2, a3, 10
	sltu a3, zero, a2
	mv a2, a1
	bne a3, zero, label568
	mv a2, a0
label568:
	auipc a3, %pcrel_hi(z2)
	sw a2, %pcrel_lo(label568)(a3)
pcrel574:
	auipc a2, %pcrel_hi(b)
	lw a3, %pcrel_lo(pcrel574)(a2)
	xori a2, a3, 3
	sltu a4, zero, a2
	mv a2, a1
	bne a4, zero, label566
	mv a2, a0
label566:
	auipc a4, %pcrel_hi(z3)
	sw a2, %pcrel_lo(label566)(a4)
	xori a2, a3, 10
	sltu a2, zero, a2
	bne a2, zero, label564
	mv a0, a1
label564:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label564)(a1)
	ret
.globl calc_selnez
calc_selnez:
pcrel629:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel629)(a0)
pcrel630:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel630)(a1)
pcrel631:
	auipc a2, %pcrel_hi(a)
	lw a2, %pcrel_lo(pcrel631)(a2)
	sltu a3, zero, a2
	mv a2, a0
	bne a3, zero, label628
	mv a2, a1
label628:
	auipc a3, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label628)(a3)
pcrel632:
	auipc a3, %pcrel_hi(b)
	lw a3, %pcrel_lo(pcrel632)(a3)
	sltu a4, zero, a3
	mv a3, a1
	bne a4, zero, label626
	mv a3, a0
label626:
	auipc a4, %pcrel_hi(z2)
	sw a3, %pcrel_lo(label626)(a4)
pcrel633:
	auipc a3, %pcrel_hi(c)
	lw a3, %pcrel_lo(pcrel633)(a3)
	sltu a3, zero, a3
	bne a3, zero, label624
	mv a0, a1
label624:
	auipc a1, %pcrel_hi(z3)
	sw a0, %pcrel_lo(label624)(a1)
pcrel634:
	auipc a0, %pcrel_hi(z4)
	sw a2, %pcrel_lo(pcrel634)(a0)
	ret
.globl calc_selnez2
calc_selnez2:
pcrel689:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel689)(a0)
pcrel690:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel690)(a1)
pcrel691:
	auipc a2, %pcrel_hi(a)
	lw a2, %pcrel_lo(pcrel691)(a2)
	sltu a3, zero, a2
	mv a2, a0
	bne a3, zero, label688
	mv a2, a1
label688:
	auipc a3, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label688)(a3)
pcrel692:
	auipc a3, %pcrel_hi(b)
	lw a3, %pcrel_lo(pcrel692)(a3)
	sltu a4, zero, a3
	mv a3, a1
	bne a4, zero, label686
	mv a3, a0
label686:
	auipc a4, %pcrel_hi(z2)
	sw a3, %pcrel_lo(label686)(a4)
pcrel693:
	auipc a3, %pcrel_hi(c)
	lw a3, %pcrel_lo(pcrel693)(a3)
	sltu a3, zero, a3
	bne a3, zero, label684
	mv a0, a1
label684:
	auipc a1, %pcrel_hi(z3)
	sw a0, %pcrel_lo(label684)(a1)
pcrel694:
	auipc a0, %pcrel_hi(z4)
	sw a2, %pcrel_lo(pcrel694)(a0)
	ret
.globl calc_seluge
calc_seluge:
pcrel757:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel757)(a0)
pcrel758:
	auipc a0, %pcrel_hi(b)
	lw a4, %pcrel_lo(pcrel758)(a0)
	sltu a0, a3, a4
	xori a5, a0, 1
pcrel759:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel759)(a0)
pcrel760:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel760)(a1)
	mv a2, a0
	bne a5, zero, label756
	mv a2, a1
label756:
	auipc a5, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label756)(a5)
	sltu a2, a4, a3
	xori a4, a2, 1
	mv a2, a1
	bne a4, zero, label754
	mv a2, a0
label754:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(label754)(a4)
pcrel761:
	auipc a2, %pcrel_hi(c)
	lw a4, %pcrel_lo(pcrel761)(a2)
	sltu a2, a4, a3
	xori a5, a2, 1
	mv a2, a1
	bne a5, zero, label752
	mv a2, a0
label752:
	auipc a5, %pcrel_hi(z3)
	sw a2, %pcrel_lo(label752)(a5)
	sltu a2, a3, a4
	xori a2, a2, 1
	bne a2, zero, label750
	mv a1, a0
label750:
	auipc a0, %pcrel_hi(z4)
	sw a1, %pcrel_lo(label750)(a0)
	ret
.globl calc_selugt
calc_selugt:
pcrel820:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel820)(a0)
pcrel821:
	auipc a0, %pcrel_hi(b)
	lw a4, %pcrel_lo(pcrel821)(a0)
	sltu a5, a4, a3
pcrel822:
	auipc a0, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel822)(a0)
pcrel823:
	auipc a1, %pcrel_hi(t)
	lw a1, %pcrel_lo(pcrel823)(a1)
	mv a2, a0
	bne a5, zero, label819
	mv a2, a1
label819:
	auipc a5, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label819)(a5)
	sltu a4, a3, a4
	mv a2, a1
	bne a4, zero, label817
	mv a2, a0
label817:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(label817)(a4)
pcrel824:
	auipc a2, %pcrel_hi(c)
	lw a4, %pcrel_lo(pcrel824)(a2)
	sltu a5, a3, a4
	mv a2, a0
	bne a5, zero, label815
	mv a2, a1
label815:
	auipc a5, %pcrel_hi(z3)
	sw a2, %pcrel_lo(label815)(a5)
	sltu a2, a4, a3
	bne a2, zero, label813
	mv a0, a1
label813:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label813)(a1)
	ret
.globl calc_selule
calc_selule:
pcrel887:
	auipc a0, %pcrel_hi(a)
	lw a3, %pcrel_lo(pcrel887)(a0)
pcrel888:
	auipc a0, %pcrel_hi(b)
	lw a4, %pcrel_lo(pcrel888)(a0)
	sltu a0, a4, a3
	xori a5, a0, 1
pcrel889:
	auipc a0, %pcrel_hi(t)
	lw a0, %pcrel_lo(pcrel889)(a0)
pcrel890:
	auipc a1, %pcrel_hi(f)
	lw a1, %pcrel_lo(pcrel890)(a1)
	mv a2, a0
	bne a5, zero, label886
	mv a2, a1
label886:
	auipc a5, %pcrel_hi(z1)
	sw a2, %pcrel_lo(label886)(a5)
	sltu a2, a3, a4
	xori a4, a2, 1
	mv a2, a1
	bne a4, zero, label884
	mv a2, a0
label884:
	auipc a4, %pcrel_hi(z2)
	sw a2, %pcrel_lo(label884)(a4)
pcrel891:
	auipc a2, %pcrel_hi(c)
	lw a4, %pcrel_lo(pcrel891)(a2)
	sltu a2, a3, a4
	xori a5, a2, 1
	mv a2, a0
	bne a5, zero, label882
	mv a2, a1
label882:
	auipc a5, %pcrel_hi(z3)
	sw a2, %pcrel_lo(label882)(a5)
	sltu a2, a4, a3
	xori a2, a2, 1
	bne a2, zero, label880
	mv a0, a1
label880:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label880)(a1)
	ret
