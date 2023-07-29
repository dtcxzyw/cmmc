.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, zero
	mv s0, a0
	ble a0, zero, label104
.p2align 2
label4:
	jal getint
	li a2, 99
	addiw a1, a0, -1
	bltu a1, a2, label7
	li a0, 100
.p2align 2
label5:
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	bgt s0, s1, label4
	j label104
.p2align 2
label7:
	li a1, 99
	blt a0, a1, label8
	j label610
label104:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label8:
	li a1, 98
	blt a0, a1, label9
	li a0, 98
	j label5
label9:
	li a1, 97
	blt a0, a1, label10
	li a0, 97
	j label5
label10:
	li a1, 96
	blt a0, a1, label11
	li a0, 96
	j label5
label11:
	li a1, 95
	blt a0, a1, label12
	li a0, 95
	j label5
label12:
	li a1, 94
	blt a0, a1, label13
	li a0, 94
	j label5
label13:
	li a1, 93
	blt a0, a1, label14
	li a0, 93
	j label5
label14:
	li a1, 92
	blt a0, a1, label15
	li a0, 92
	j label5
label15:
	li a1, 91
	blt a0, a1, label16
	li a0, 91
	j label5
label16:
	li a1, 90
	blt a0, a1, label17
	li a0, 90
	j label5
label17:
	li a1, 89
	blt a0, a1, label18
	li a0, 89
	j label5
label18:
	li a1, 88
	blt a0, a1, label19
	li a0, 88
	j label5
label19:
	li a1, 87
	blt a0, a1, label20
	li a0, 87
	j label5
label20:
	li a1, 86
	blt a0, a1, label21
	li a0, 86
	j label5
label21:
	li a1, 85
	blt a0, a1, label22
	li a0, 85
	j label5
label22:
	li a1, 84
	blt a0, a1, label23
	li a0, 84
	j label5
label23:
	li a1, 83
	blt a0, a1, label24
	li a0, 83
	j label5
label24:
	li a1, 82
	blt a0, a1, label25
	li a0, 82
	j label5
label25:
	li a1, 81
	blt a0, a1, label26
	li a0, 81
	j label5
label26:
	li a1, 80
	blt a0, a1, label27
	li a0, 80
	j label5
label27:
	li a1, 79
	blt a0, a1, label28
	li a0, 79
	j label5
label28:
	li a1, 78
	blt a0, a1, label29
	li a0, 78
	j label5
label29:
	li a1, 77
	blt a0, a1, label30
	li a0, 77
	j label5
label30:
	li a1, 76
	blt a0, a1, label31
	li a0, 76
	j label5
label31:
	li a1, 75
	blt a0, a1, label32
	li a0, 75
	j label5
label32:
	li a1, 74
	blt a0, a1, label33
	li a0, 74
	j label5
label33:
	li a1, 73
	blt a0, a1, label34
	li a0, 73
	j label5
label34:
	li a1, 72
	blt a0, a1, label35
	li a0, 72
	j label5
label35:
	li a1, 71
	blt a0, a1, label36
	li a0, 71
	j label5
label36:
	li a1, 70
	blt a0, a1, label37
	li a0, 70
	j label5
label37:
	li a1, 69
	blt a0, a1, label38
	li a0, 69
	j label5
label38:
	li a1, 68
	blt a0, a1, label39
	li a0, 68
	j label5
label39:
	li a1, 67
	blt a0, a1, label40
	li a0, 67
	j label5
label40:
	li a1, 66
	blt a0, a1, label41
	li a0, 66
	j label5
label41:
	li a1, 65
	blt a0, a1, label42
	li a0, 65
	j label5
label42:
	li a1, 64
	blt a0, a1, label43
	li a0, 64
	j label5
label43:
	li a1, 63
	blt a0, a1, label44
	li a0, 63
	j label5
label44:
	li a1, 62
	blt a0, a1, label45
	li a0, 62
	j label5
label45:
	li a1, 61
	blt a0, a1, label46
	li a0, 61
	j label5
label46:
	li a1, 60
	blt a0, a1, label47
	li a0, 60
	j label5
label47:
	li a1, 59
	blt a0, a1, label48
	li a0, 59
	j label5
label48:
	li a1, 58
	blt a0, a1, label49
	li a0, 58
	j label5
label49:
	li a1, 57
	blt a0, a1, label50
	li a0, 57
	j label5
label50:
	li a1, 56
	blt a0, a1, label51
	li a0, 56
	j label5
label51:
	li a1, 55
	blt a0, a1, label52
	li a0, 55
	j label5
label52:
	li a1, 54
	blt a0, a1, label53
	li a0, 54
	j label5
label53:
	li a1, 53
	blt a0, a1, label54
	li a0, 53
	j label5
label54:
	li a1, 52
	blt a0, a1, label55
	li a0, 52
	j label5
label55:
	li a1, 51
	blt a0, a1, label56
	li a0, 51
	j label5
label56:
	li a1, 50
	blt a0, a1, label57
	li a0, 50
	j label5
label57:
	li a1, 49
	blt a0, a1, label58
	li a0, 49
	j label5
label58:
	li a1, 48
	blt a0, a1, label59
	li a0, 48
	j label5
label59:
	li a1, 47
	blt a0, a1, label60
	li a0, 47
	j label5
label60:
	li a1, 46
	blt a0, a1, label61
	li a0, 46
	j label5
label61:
	li a1, 45
	blt a0, a1, label62
	li a0, 45
	j label5
label62:
	li a1, 44
	blt a0, a1, label63
	li a0, 44
	j label5
label63:
	li a1, 43
	blt a0, a1, label64
	li a0, 43
	j label5
label64:
	li a1, 42
	blt a0, a1, label65
	li a0, 42
	j label5
label65:
	li a1, 41
	blt a0, a1, label66
	li a0, 41
	j label5
label66:
	li a1, 40
	blt a0, a1, label67
	li a0, 40
	j label5
label67:
	li a1, 39
	blt a0, a1, label68
	li a0, 39
	j label5
label68:
	li a1, 38
	blt a0, a1, label69
	li a0, 38
	j label5
label69:
	li a1, 37
	blt a0, a1, label70
	li a0, 37
	j label5
label70:
	li a1, 36
	blt a0, a1, label71
	li a0, 36
	j label5
label71:
	li a1, 35
	blt a0, a1, label72
	li a0, 35
	j label5
label72:
	li a1, 34
	blt a0, a1, label73
	li a0, 34
	j label5
label73:
	li a1, 33
	blt a0, a1, label74
	li a0, 33
	j label5
label74:
	li a1, 32
	blt a0, a1, label75
	li a0, 32
	j label5
label75:
	li a1, 31
	blt a0, a1, label76
	li a0, 31
	j label5
label76:
	li a1, 30
	blt a0, a1, label77
	li a0, 30
	j label5
label77:
	li a1, 29
	blt a0, a1, label78
	li a0, 29
	j label5
label78:
	li a1, 28
	blt a0, a1, label79
	li a0, 28
	j label5
label79:
	li a1, 27
	blt a0, a1, label80
	li a0, 27
	j label5
label80:
	li a1, 26
	blt a0, a1, label81
	li a0, 26
	j label5
label81:
	li a1, 25
	blt a0, a1, label82
	li a0, 25
	j label5
label82:
	li a1, 24
	blt a0, a1, label83
	li a0, 24
	j label5
label83:
	li a1, 23
	blt a0, a1, label84
	li a0, 23
	j label5
label84:
	li a1, 22
	blt a0, a1, label85
	li a0, 22
	j label5
label85:
	li a1, 21
	blt a0, a1, label86
	li a0, 21
	j label5
label86:
	li a1, 20
	blt a0, a1, label87
	li a0, 20
	j label5
label87:
	li a1, 19
	blt a0, a1, label88
	li a0, 19
	j label5
label88:
	li a1, 18
	blt a0, a1, label89
	li a0, 18
	j label5
label89:
	li a1, 17
	blt a0, a1, label90
	li a0, 17
	j label5
label90:
	li a1, 16
	blt a0, a1, label91
	li a0, 16
	j label5
label91:
	li a1, 15
	blt a0, a1, label92
	li a0, 15
	j label5
label92:
	li a1, 14
	blt a0, a1, label93
	li a0, 14
	j label5
label93:
	li a1, 13
	blt a0, a1, label94
	li a0, 13
	j label5
label94:
	li a1, 12
	blt a0, a1, label95
	li a0, 12
	j label5
label95:
	li a1, 11
	blt a0, a1, label96
	li a0, 11
	j label5
label96:
	li a1, 10
	blt a0, a1, label97
	li a0, 10
	j label5
label97:
	li a1, 9
	blt a0, a1, label98
	li a0, 9
	j label5
label98:
	li a1, 8
	blt a0, a1, label99
	li a0, 8
	j label5
label99:
	li a1, 7
	blt a0, a1, label100
	li a0, 7
	j label5
label100:
	li a1, 6
	blt a0, a1, label101
	li a0, 6
	j label5
label101:
	li a1, 5
	blt a0, a1, label102
	li a0, 5
	j label5
label102:
	li a1, 4
	blt a0, a1, label103
	li a0, 4
	j label5
label103:
	slti a1, a0, 2
	li a4, 2
	li a2, 3
	subw a3, a4, a1
	mv a1, a3
	blt a0, a2, label606
	li a1, 3
label606:
	mv a0, a1
	j label5
.p2align 2
label610:
	li a0, 99
	j label5
