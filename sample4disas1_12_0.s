	.file	"sample4disas.cpp"
	.option nopic
	.text
	.align	1
	.globl	_Z11intrin_loopPhS_S_ii
	.type	_Z11intrin_loopPhS_S_ii, @function
_Z11intrin_loopPhS_S_ii:
.LFB15202:
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sd	s0,232(sp)
	.cfi_offset 8, -8
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sd	a0,-216(s0)
	sd	a1,-224(s0)
	sd	a2,-232(s0)
	mv	a5,a3
	sw	a5,-236(s0)
	mv	a5,a4
	sw	a5,-240(s0)
	lw	a5,-240(s0)
	ld	a4,-232(s0)
	sd	a4,-88(s0)
	sd	a5,-96(s0)
	ld	a4,-96(s0)
	ld	a5,-88(s0)
	vsetvli	zero,a4,e8,m1
	vle.v	v8,0(a5)
	addi	a5,s0,-48
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	sw	zero,-20(s0)
.L7:
	lw	a4,-20(s0)
	lw	a5,-236(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L8
	lw	a5,-20(s0)
	ld	a4,-216(s0)
	add	a4,a4,a5
	lw	a5,-240(s0)
	sd	a4,-192(s0)
	sd	a5,-200(s0)
	ld	a4,-200(s0)
	ld	a5,-192(s0)
	vsetvli	zero,a4,e8,m1
	vle.v	v8,0(a5)
	addi	a5,s0,-64
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	lw	a5,-240(s0)
	addi	a4,s0,-160
	addi	a3,s0,-64
	vsetvli	zero,x0,e8,m1
	vle.v	v8,0(a3)
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a4)
	addi	a4,s0,-176
	addi	a3,s0,-48
	vsetvli	zero,x0,e8,m1
	vle.v	v8,0(a3)
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a4)
	sd	a5,-184(s0)
	ld	a5,-184(s0)
	addi	a4,s0,-160
	mv	a3,a4
	addi	a4,s0,-176
	vsetvli	zero,x0,e8,m1
	vle.v	v8,0(a3)
	vsetvli	zero,x0,e8,m1
	vle.v	v9,0(a4)
	vsetvli	zero,a5,e8,m1
	vrgather.vv	v10,v8,v9
	vsetvli	zero,x0,e8,m1
	vmv.v.v	v8,v10
	addi	a5,s0,-80
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	lw	a5,-20(s0)
	ld	a4,-224(s0)
	add	a4,a4,a5
	lw	a5,-240(s0)
	sd	a4,-104(s0)
	addi	a4,s0,-128
	addi	a3,s0,-80
	vsetvli	zero,x0,e8,m1
	vle.v	v8,0(a3)
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a4)
	sd	a5,-136(s0)
	ld	a4,-136(s0)
	addi	a5,s0,-128
	mv	a3,a5
	ld	a5,-104(s0)
	vsetvli	zero,x0,e8,m1
	vle.v	v8,0(a3)
	vsetvli	zero,a4,e8,m1
	vse.v	v8,0(a5)
	lw	a4,-20(s0)
	lw	a5,-240(s0)
	addw	a5,a4,a5
	sw	a5,-20(s0)
	j	.L7
.L8:
	nop
	ld	s0,232(sp)
	.cfi_restore 8
	addi	sp,sp,240
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15202:
	.size	_Z11intrin_loopPhS_S_ii, .-_Z11intrin_loopPhS_S_ii
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB15203:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a5,0
	mv	a0,a5
	ld	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15203:
	.size	main, .-main
	.ident	"GCC: (V1.12.0) 8.4.0"
