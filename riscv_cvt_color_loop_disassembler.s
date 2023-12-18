	.file	"sample.cpp"
	.option nopic
	.text
	.align	1
	.globl	_Z19v_load_deinterleavePKhRDv16_hS2_S2_S2_
	.type	_Z19v_load_deinterleavePKhRDv16_hS2_S2_S2_, @function
_Z19v_load_deinterleavePKhRDv16_hS2_S2_S2_:
.LFB15202:
	.cfi_startproc
	addi	sp,sp,-400
	.cfi_def_cfa_offset 400
	sd	s0,392(sp)
	.cfi_offset 8, -8
	addi	s0,sp,400
	.cfi_def_cfa 8, 0
	sd	a0,-360(s0)
	sd	a1,-368(s0)
	sd	a2,-376(s0)
	sd	a3,-384(s0)
	sd	a4,-392(s0)
	ld	a5,-360(s0)
	sd	a5,-344(s0)
	li	a5,16
	sd	a5,-352(s0)
	ld	a4,-352(s0)
	ld	a5,-344(s0)
	vsetvli	zero,a4,e8,m1
	vlseg4e.v	v8,0(a5)
	addi	a5,s0,-80
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	addi	a5,s0,-336
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	addi	a5,s0,-336
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a5)
	ld	a5,-368(s0)
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	addi	a5,s0,-272
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	addi	a5,s0,-272
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a5)
	vsetvli	zero,x0,e8,m1
	vmv.v.v	v8,v9
	ld	a5,-376(s0)
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	addi	a5,s0,-208
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	addi	a5,s0,-208
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a5)
	vsetvli	zero,x0,e8,m1
	vmv.v.v	v8,v10
	ld	a5,-384(s0)
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	addi	a5,s0,-144
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	addi	a5,s0,-144
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a5)
	vsetvli	zero,x0,e8,m1
	vmv.v.v	v8,v11
	ld	a5,-392(s0)
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	nop
	ld	s0,392(sp)
	.cfi_restore 8
	addi	sp,sp,400
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15202:
	.size	_Z19v_load_deinterleavePKhRDv16_hS2_S2_S2_, .-_Z19v_load_deinterleavePKhRDv16_hS2_S2_S2_
	.align	1
	.globl	_Z18v_store_interleavePhRKDv16_hS2_S2_S2_
	.type	_Z18v_store_interleavePhRKDv16_hS2_S2_S2_, @function
_Z18v_store_interleavePhRKDv16_hS2_S2_S2_:
.LFB15203:
	.cfi_startproc
	addi	sp,sp,-544
	.cfi_def_cfa_offset 544
	sd	s0,536(sp)
	.cfi_offset 8, -8
	addi	s0,sp,544
	.cfi_def_cfa 8, 0
	sd	a0,-504(s0)
	sd	a1,-512(s0)
	sd	a2,-520(s0)
	sd	a3,-528(s0)
	sd	a4,-536(s0)
	addi	a5,s0,-80
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	ld	a5,-512(s0)
	vsetvli	zero,x0,e8,m1
	vle.v	v12,0(a5)
	addi	a5,s0,-480
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	addi	a5,s0,-496
	vsetvli	zero,x0,e8,m1
	vse.v	v12,0(a5)
	addi	a5,s0,-480
	mv	a4,a5
	addi	a5,s0,-496
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vle.v	v12,0(a5)
	vsetvli	zero,x0,e8,m1
	vmv.v.v	v8,v12
	addi	a5,s0,-80
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	ld	a5,-520(s0)
	vsetvli	zero,x0,e8,m1
	vle.v	v12,0(a5)
	addi	a5,s0,-400
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	addi	a5,s0,-416
	vsetvli	zero,x0,e8,m1
	vse.v	v12,0(a5)
	addi	a5,s0,-400
	mv	a4,a5
	addi	a5,s0,-416
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vle.v	v12,0(a5)
	vsetvli	zero,x0,e8,m1
	vmv.v.v	v9,v12
	addi	a5,s0,-80
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	ld	a5,-528(s0)
	vsetvli	zero,x0,e8,m1
	vle.v	v12,0(a5)
	addi	a5,s0,-320
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	addi	a5,s0,-336
	vsetvli	zero,x0,e8,m1
	vse.v	v12,0(a5)
	addi	a5,s0,-320
	mv	a4,a5
	addi	a5,s0,-336
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vle.v	v12,0(a5)
	vsetvli	zero,x0,e8,m1
	vmv.v.v	v10,v12
	addi	a5,s0,-80
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	ld	a5,-536(s0)
	vsetvli	zero,x0,e8,m1
	vle.v	v12,0(a5)
	addi	a5,s0,-240
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	addi	a5,s0,-256
	vsetvli	zero,x0,e8,m1
	vse.v	v12,0(a5)
	addi	a5,s0,-240
	mv	a4,a5
	addi	a5,s0,-256
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vle.v	v12,0(a5)
	vsetvli	zero,x0,e8,m1
	vmv.v.v	v11,v12
	addi	a5,s0,-80
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	ld	a5,-504(s0)
	sd	a5,-88(s0)
	addi	a5,s0,-160
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vsseg4e.v	v8,0(a5)
	li	a5,16
	sd	a5,-168(s0)
	ld	a4,-168(s0)
	addi	a5,s0,-160
	mv	a3,a5
	ld	a5,-88(s0)
	vsetvli	zero,x0,e8,m1
	vlseg4e.v	v8,0(a3)
	vsetvli	zero,a4,e8,m1
	vsseg4e.v	v8,0(a5)
	nop
	ld	s0,536(sp)
	.cfi_restore 8
	addi	sp,sp,544
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15203:
	.size	_Z18v_store_interleavePhRKDv16_hS2_S2_S2_, .-_Z18v_store_interleavePhRKDv16_hS2_S2_S2_
	.align	1
	.globl	_Z3cvtPKhPhi
	.type	_Z3cvtPKhPhi, @function
_Z3cvtPKhPhi:
.LFB15204:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	sd	a1,-144(s0)
	mv	a5,a2
	sw	a5,-148(s0)
	li	a5,4
	sw	a5,-24(s0)
	li	a5,4
	sw	a5,-28(s0)
	li	a5,2
	sw	a5,-32(s0)
	sw	zero,-20(s0)
	li	a5,16
	sw	a5,-36(s0)
.L16:
	lw	a5,-148(s0)
	addiw	a5,a5,-15
	sext.w	a4,a5
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,a4,.L17
	addi	a4,s0,-128
	addi	a3,s0,-112
	addi	a2,s0,-96
	addi	a5,s0,-80
	mv	a1,a5
	ld	a0,-136(s0)
	call	_Z19v_load_deinterleavePKhRDv16_hS2_S2_S2_
	addi	a5,s0,-64
	addi	a4,s0,-80
	vsetvli	zero,x0,e8,m1
	vle.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	addi	a5,s0,-112
	vsetvli	zero,x0,e8,m1
	vle.v	v8,0(a5)
	addi	a5,s0,-80
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	addi	a5,s0,-112
	addi	a4,s0,-64
	vsetvli	zero,x0,e8,m1
	vle.v	v8,0(a4)
	vsetvli	zero,x0,e8,m1
	vse.v	v8,0(a5)
	addi	a4,s0,-128
	addi	a3,s0,-80
	addi	a2,s0,-96
	addi	a5,s0,-112
	mv	a1,a5
	ld	a0,-144(s0)
	call	_Z18v_store_interleavePhRKDv16_hS2_S2_S2_
	lw	a5,-20(s0)
	addiw	a5,a5,16
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-136(s0)
	add	a5,a5,a4
	sd	a5,-136(s0)
	lw	a5,-28(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-144(s0)
	add	a5,a5,a4
	sd	a5,-144(s0)
	j	.L16
.L17:
	nop
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	addi	sp,sp,160
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15204:
	.size	_Z3cvtPKhPhi, .-_Z3cvtPKhPhi
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB15205:
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
.L20:
	lw	a4,-36(s0)
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L19
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
	j	.L20
.L19:
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
.LFE15205:
	.size	main, .-main
	.ident	"GCC: (V1.12.0) 8.4.0"
