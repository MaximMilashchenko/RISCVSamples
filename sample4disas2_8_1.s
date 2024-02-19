	.file	"sample4disas.cpp"
	.option nopic
	.text
	.align	1
	.globl	_Z11intrin_loopPhS_S_ii
	.type	_Z11intrin_loopPhS_S_ii, @function
_Z11intrin_loopPhS_S_ii:
.LFB22939:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	t0,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	t0,vlenb
	li	t2,-6
	mul	t0,t0,t2
	add	sp,sp,t0
	addi	sp,sp,-160
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a6,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a6,vlenb
	li	a5,-6
	mul	a5,a6,a5
	addi	a5,a5,-136
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a0,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a0,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a0,vlenb
	li	a5,-6
	mul	a5,a0,a5
	addi	a5,a5,-144
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a1,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a1,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a1,vlenb
	li	a5,-6
	mul	a5,a1,a5
	addi	a5,a5,-152
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a2,0(a5)
	mv	a2,a3
	mv	a3,a4
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-156
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a4,a2
	sw	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-160
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a4,a3
	sw	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-160
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-3
	mul	a5,a3,a5
	addi	a5,a5,-16
	addi	a5,a5,-16
	add	a3,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a2,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a2,vlenb
	li	a5,-6
	mul	a5,a2,a5
	addi	a5,a5,-152
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	sd	a5,0(a3)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-3
	mul	a5,a3,a5
	addi	a5,a5,-24
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-3
	mul	a5,a4,a5
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a4,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-3
	mul	a5,a3,a5
	addi	a5,a5,-24
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	sd	a5,0(a4)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-3
	mul	a5,a4,a5
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	vsetvli	a4,a5,e8,m1
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-3
	mul	a5,a3,a5
	addi	a5,a5,-40
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-3
	mul	a5,a4,a5
	addi	a5,a5,-16
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	vle.v	v1,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-1
	mul	a5,a4,a5
	addi	a5,a5,-8
	addi	a5,a5,-16
	add	a5,a5,s0
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vse.v	v1,0(a5)
	vsetvl	x0, t5, t6
	sw	zero,-20(s0)
.L10:
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-156
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-20(s0)
	lw	a5,0(a5)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L11
	lw	a4,-20(s0)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-136
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	add	a3,a5,a4
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-160
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a2,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a2,vlenb
	li	a5,-6
	mul	a5,a2,a5
	addi	a5,a5,-104
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a3,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-112
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-120
	addi	a5,a5,-16
	add	a4,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-112
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	sd	a5,0(a4)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-120
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	vsetvli	a4,a5,e8,m1
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-128
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-104
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	vle.v	v1,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-2
	mul	a5,a4,a5
	addi	a5,a5,-8
	addi	a5,a5,-16
	add	a5,a5,s0
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vse.v	v1,0(a5)
	vsetvl	x0, t5, t6
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-160
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-5
	mul	a5,a3,a5
	addi	a5,a5,-72
	addi	a5,a5,-16
	add	a3,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a2,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a2,vlenb
	li	a5,-2
	mul	a5,a2,a5
	addi	a5,a5,-8
	addi	a5,a5,-16
	add	a5,a5,s0
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vle.v	v1,0(a5)
	vsetvl	x0, t5, t6
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vse.v	v1,0(a3)
	vsetvl	x0, t5, t6
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-72
	addi	a5,a5,-16
	add	a3,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a2,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a2,vlenb
	li	a5,-1
	mul	a5,a2,a5
	addi	a5,a5,-8
	addi	a5,a5,-16
	add	a5,a5,s0
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vle.v	v1,0(a5)
	vsetvl	x0, t5, t6
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vse.v	v1,0(a3)
	vsetvl	x0, t5, t6
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-80
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-88
	addi	a5,a5,-16
	add	a4,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-80
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	sd	a5,0(a4)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-88
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	vsetvli	a4,a5,e8,m1
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-96
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-5
	mul	a5,a4,a5
	addi	a5,a5,-72
	addi	a5,a5,-16
	add	a4,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-72
	addi	a5,a5,-16
	add	a5,a5,s0
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vle.v	v1,0(a4)
	vsetvl	x0, t5, t6
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vle.v	v2,0(a5)
	vsetvl	x0, t5, t6
	vrgather.vv	v3,v1,v2
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vmv.v.v	v1,v3
	vsetvl	x0, t5, t6
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-3
	mul	a5,a4,a5
	addi	a5,a5,-8
	addi	a5,a5,-16
	add	a5,a5,s0
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vse.v	v1,0(a5)
	vsetvl	x0, t5, t6
	lw	a4,-20(s0)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-6
	mul	a5,a3,a5
	addi	a5,a5,-144
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	add	a3,a5,a4
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-160
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a2,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a2,vlenb
	li	a5,-3
	mul	a5,a2,a5
	addi	a5,a5,-48
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a3,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-4
	mul	a5,a3,a5
	addi	a5,a5,-48
	addi	a5,a5,-16
	add	a3,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a2,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a2,vlenb
	li	a5,-3
	mul	a5,a2,a5
	addi	a5,a5,-8
	addi	a5,a5,-16
	add	a5,a5,s0
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vle.v	v1,0(a5)
	vsetvl	x0, t5, t6
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vse.v	v1,0(a3)
	vsetvl	x0, t5, t6
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-4
	mul	a5,a3,a5
	addi	a5,a5,-56
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-4
	mul	a5,a4,a5
	addi	a5,a5,-64
	addi	a5,a5,-16
	add	a4,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-4
	mul	a5,a3,a5
	addi	a5,a5,-56
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	sd	a5,0(a4)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-4
	mul	a5,a4,a5
	addi	a5,a5,-64
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,0(a5)
	vsetvli	a4,a5,e8,m1
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-4
	mul	a5,a3,a5
	addi	a5,a5,-72
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a4,0(a5)
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-4
	mul	a5,a4,a5
	addi	a5,a5,-48
	addi	a5,a5,-16
	add	a4,a5,s0
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a3,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a3,vlenb
	li	a5,-3
	mul	a5,a3,a5
	addi	a5,a5,-48
	addi	a5,a5,-16
	add	a5,a5,s0
	csrr	t5, vl
	csrr	t6, vtype
	vsetvli	x0,x0,e8,m1
	vle.v	v1,0(a4)
	vsetvl	x0, t5, t6
	ld	a5,0(a5)
	vse.v	v1,0(a5)
	nop
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	a4,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	a4,vlenb
	li	a5,-6
	mul	a5,a4,a5
	addi	a5,a5,-160
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-20(s0)
	lw	a5,0(a5)
	addw	a5,a4,a5
	sw	a5,-20(s0)
	j	.L10
.L11:
	nop
	csrr	x30,vl
	csrr	x31,vtype
	vsetvli	t0,x0,e8,m1
	vsetvl	x0,x30,x31	#csrr	t0,vlenb
	li	t2,6
	mul	t0,t0,t2
	add	sp,sp,t0
	addi	sp,sp,160
	.cfi_def_cfa 2, 16
	ld	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22939:
	.size	_Z11intrin_loopPhS_S_ii, .-_Z11intrin_loopPhS_S_ii
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB22940:
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
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22940:
	.size	main, .-main
	.ident	"GCC: (Xuantie-900 linux-5.10.4 glibc gcc Toolchain V2.8.1 B-20240115) 10.4.0"
	.section	.note.GNU-stack,"",@progbits
