	.file	"riscv_cvt_color_loop.cpp"
	.option nopic
	.text
	.align	1
	.globl	_Z3cvtPKhPhi
	.type	_Z3cvtPKhPhi, @function
_Z3cvtPKhPhi:
.LFB15202:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	mv	a5,a2
	sw	a5,-68(s0)
	li	a5,4
	sw	a5,-24(s0)
	li	a5,4
	sw	a5,-28(s0)
	li	a5,2
	sw	a5,-32(s0)
	sw	zero,-20(s0)
	li	a5,16
	sw	a5,-36(s0)
.L3:
	lw	a4,-20(s0)
	lw	a5,-68(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L4
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	sb	a5,-37(s0)
	ld	a5,-56(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	sb	a5,-38(s0)
	ld	a5,-56(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	sb	a5,-39(s0)
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a4,-37(s0)
	sb	a4,0(a5)
	ld	a5,-64(s0)
	addi	a5,a5,1
	lbu	a4,-38(s0)
	sb	a4,0(a5)
	lw	a5,-32(s0)
	xori	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	lbu	a4,-39(s0)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	sb	a5,-40(s0)
	ld	a5,-64(s0)
	addi	a5,a5,3
	lbu	a4,-40(s0)
	sb	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	sd	a5,-56(s0)
	lw	a5,-28(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	sd	a5,-64(s0)
	j	.L3
.L4:
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	addi	sp,sp,80
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15202:
	.size	_Z3cvtPKhPhi, .-_Z3cvtPKhPhi
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB15203:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	li	a0,8294400
	call	_Znam
	mv	a5,a0
	sd	a5,-48(s0)
	li	a5,8192
	addi	a5,a5,-512
	sd	a5,-56(s0)
	li	a0,8294400
	call	_Znam
	mv	a5,a0
	sd	a5,-64(s0)
	li	a5,8192
	addi	a5,a5,-512
	sd	a5,-72(s0)
	li	a5,1920
	sw	a5,-76(s0)
	li	a5,1080
	sw	a5,-80(s0)
	sw	zero,-84(s0)
	sw	zero,-88(s0)
	li	a5,61
	sw	a5,-92(s0)
	lw	a4,-88(s0)
	ld	a5,-56(s0)
	mul	a5,a4,a5
	ld	a4,-48(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	lw	a4,-92(s0)
	ld	a5,-72(s0)
	mul	a5,a4,a5
	ld	a4,-64(s0)
	add	a5,a4,a5
	sd	a5,-32(s0)
	lw	a5,-88(s0)
	sw	a5,-36(s0)
.L7:
	lw	a4,-36(s0)
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L6
	lw	a5,-76(s0)
	mv	a2,a5
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_Z3cvtPKhPhi
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	ld	a4,-24(s0)
	ld	a5,-56(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	ld	a4,-32(s0)
	ld	a5,-72(s0)
	add	a5,a4,a5
	sd	a5,-32(s0)
	j	.L7
.L6:
	li	a5,0
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	addi	sp,sp,96
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15203:
	.size	main, .-main
	.ident	"GCC: (V1.12.0) 8.4.0"
