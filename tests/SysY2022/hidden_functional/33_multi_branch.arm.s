.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	sub sp, sp, #4
	bl getint
	mov r5, #0
	mov r4, r0
	cmp r0, r5
	ble label104
.p2align 4
label4:
	bl getint
	sub r1, r0, #1
	cmp r1, #99
	blo label7
	mov r0, #100
.p2align 4
label5:
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r4, r5
	bgt label4
	b label104
.p2align 4
label7:
	cmp r0, #99
	blt label8
	b label506
label104:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
.p2align 4
label8:
	cmp r0, #98
	blt label9
	mov r0, #98
	b label5
label9:
	cmp r0, #97
	blt label10
	mov r0, #97
	b label5
label10:
	cmp r0, #96
	blt label11
	mov r0, #96
	b label5
label11:
	cmp r0, #95
	blt label12
	mov r0, #95
	b label5
label12:
	cmp r0, #94
	blt label13
	mov r0, #94
	b label5
label13:
	cmp r0, #93
	blt label14
	mov r0, #93
	b label5
label14:
	cmp r0, #92
	blt label15
	mov r0, #92
	b label5
label15:
	cmp r0, #91
	blt label16
	mov r0, #91
	b label5
label16:
	cmp r0, #90
	blt label17
	mov r0, #90
	b label5
label17:
	cmp r0, #89
	blt label18
	mov r0, #89
	b label5
label18:
	cmp r0, #88
	blt label19
	mov r0, #88
	b label5
label19:
	cmp r0, #87
	blt label20
	mov r0, #87
	b label5
label20:
	cmp r0, #86
	blt label21
	mov r0, #86
	b label5
label21:
	cmp r0, #85
	blt label22
	mov r0, #85
	b label5
label22:
	cmp r0, #84
	blt label23
	mov r0, #84
	b label5
label23:
	cmp r0, #83
	blt label24
	mov r0, #83
	b label5
label24:
	cmp r0, #82
	blt label25
	mov r0, #82
	b label5
label25:
	cmp r0, #81
	blt label26
	mov r0, #81
	b label5
label26:
	cmp r0, #80
	blt label27
	mov r0, #80
	b label5
label27:
	cmp r0, #79
	blt label28
	mov r0, #79
	b label5
label28:
	cmp r0, #78
	blt label29
	mov r0, #78
	b label5
label29:
	cmp r0, #77
	blt label30
	mov r0, #77
	b label5
label30:
	cmp r0, #76
	blt label31
	mov r0, #76
	b label5
label31:
	cmp r0, #75
	blt label32
	mov r0, #75
	b label5
label32:
	cmp r0, #74
	blt label33
	mov r0, #74
	b label5
label33:
	cmp r0, #73
	blt label34
	mov r0, #73
	b label5
label34:
	cmp r0, #72
	blt label35
	mov r0, #72
	b label5
label35:
	cmp r0, #71
	blt label36
	mov r0, #71
	b label5
label36:
	cmp r0, #70
	blt label37
	mov r0, #70
	b label5
label37:
	cmp r0, #69
	blt label38
	mov r0, #69
	b label5
label38:
	cmp r0, #68
	blt label39
	mov r0, #68
	b label5
label39:
	cmp r0, #67
	blt label40
	mov r0, #67
	b label5
label40:
	cmp r0, #66
	blt label41
	mov r0, #66
	b label5
label41:
	cmp r0, #65
	blt label42
	mov r0, #65
	b label5
label42:
	cmp r0, #64
	blt label43
	mov r0, #64
	b label5
label43:
	cmp r0, #63
	blt label44
	mov r0, #63
	b label5
label44:
	cmp r0, #62
	blt label45
	mov r0, #62
	b label5
label45:
	cmp r0, #61
	blt label46
	mov r0, #61
	b label5
label46:
	cmp r0, #60
	blt label47
	mov r0, #60
	b label5
label47:
	cmp r0, #59
	blt label48
	mov r0, #59
	b label5
label48:
	cmp r0, #58
	blt label49
	mov r0, #58
	b label5
label49:
	cmp r0, #57
	blt label50
	mov r0, #57
	b label5
label50:
	cmp r0, #56
	blt label51
	mov r0, #56
	b label5
label51:
	cmp r0, #55
	blt label52
	mov r0, #55
	b label5
label52:
	cmp r0, #54
	blt label53
	mov r0, #54
	b label5
label53:
	cmp r0, #53
	blt label54
	mov r0, #53
	b label5
label54:
	cmp r0, #52
	blt label55
	mov r0, #52
	b label5
label55:
	cmp r0, #51
	blt label56
	mov r0, #51
	b label5
label56:
	cmp r0, #50
	blt label57
	mov r0, #50
	b label5
label57:
	cmp r0, #49
	blt label58
	mov r0, #49
	b label5
label58:
	cmp r0, #48
	blt label59
	mov r0, #48
	b label5
label59:
	cmp r0, #47
	blt label60
	mov r0, #47
	b label5
label60:
	cmp r0, #46
	blt label61
	mov r0, #46
	b label5
label61:
	cmp r0, #45
	blt label62
	mov r0, #45
	b label5
label62:
	cmp r0, #44
	blt label63
	mov r0, #44
	b label5
label63:
	cmp r0, #43
	blt label64
	mov r0, #43
	b label5
label64:
	cmp r0, #42
	blt label65
	mov r0, #42
	b label5
label65:
	cmp r0, #41
	blt label66
	mov r0, #41
	b label5
label66:
	cmp r0, #40
	blt label67
	mov r0, #40
	b label5
label67:
	cmp r0, #39
	blt label68
	mov r0, #39
	b label5
label68:
	cmp r0, #38
	blt label69
	mov r0, #38
	b label5
label69:
	cmp r0, #37
	blt label70
	mov r0, #37
	b label5
label70:
	cmp r0, #36
	blt label71
	mov r0, #36
	b label5
label71:
	cmp r0, #35
	blt label72
	mov r0, #35
	b label5
label72:
	cmp r0, #34
	blt label73
	mov r0, #34
	b label5
label73:
	cmp r0, #33
	blt label74
	mov r0, #33
	b label5
label74:
	cmp r0, #32
	blt label75
	mov r0, #32
	b label5
label75:
	cmp r0, #31
	blt label76
	mov r0, #31
	b label5
label76:
	cmp r0, #30
	blt label77
	mov r0, #30
	b label5
label77:
	cmp r0, #29
	blt label78
	mov r0, #29
	b label5
label78:
	cmp r0, #28
	blt label79
	mov r0, #28
	b label5
label79:
	cmp r0, #27
	blt label80
	mov r0, #27
	b label5
label80:
	cmp r0, #26
	blt label81
	mov r0, #26
	b label5
label81:
	cmp r0, #25
	blt label82
	mov r0, #25
	b label5
label82:
	cmp r0, #24
	blt label83
	mov r0, #24
	b label5
label83:
	cmp r0, #23
	blt label84
	mov r0, #23
	b label5
label84:
	cmp r0, #22
	blt label85
	mov r0, #22
	b label5
label85:
	cmp r0, #21
	blt label86
	mov r0, #21
	b label5
label86:
	cmp r0, #20
	blt label87
	mov r0, #20
	b label5
label87:
	cmp r0, #19
	blt label88
	mov r0, #19
	b label5
label88:
	cmp r0, #18
	blt label89
	mov r0, #18
	b label5
label89:
	cmp r0, #17
	blt label90
	mov r0, #17
	b label5
label90:
	cmp r0, #16
	blt label91
	mov r0, #16
	b label5
label91:
	cmp r0, #15
	blt label92
	mov r0, #15
	b label5
label92:
	cmp r0, #14
	blt label93
	mov r0, #14
	b label5
label93:
	cmp r0, #13
	blt label94
	mov r0, #13
	b label5
label94:
	cmp r0, #12
	blt label95
	mov r0, #12
	b label5
label95:
	cmp r0, #11
	blt label96
	mov r0, #11
	b label5
label96:
	cmp r0, #10
	blt label97
	mov r0, #10
	b label5
label97:
	cmp r0, #9
	blt label98
	mov r0, #9
	b label5
label98:
	cmp r0, #8
	blt label99
	mov r0, #8
	b label5
label99:
	cmp r0, #7
	blt label100
	mov r0, #7
	b label5
label100:
	cmp r0, #6
	blt label101
	mov r0, #6
	b label5
label101:
	cmp r0, #5
	blt label102
	mov r0, #5
	b label5
label102:
	cmp r0, #4
	blt label103
	mov r0, #4
	b label5
label103:
	cmp r0, #2
	mov r1, #0
	movwlt r1, #1
	cmp r0, #3
	rsb r1, r1, #2
	mov r0, #3
	movlt r0, r1
	b label5
.p2align 4
label506:
	mov r0, #99
	b label5
