	.file "lab1.c"
.text
.comm _x, 8, 3
.comm _er, 8, 3
.comm _ec, 8, 3
.comm _done, 1, 0
.globl _erf
.def _erf; .scl 2; .type 32; .endef
_erf:
LFB13:
.cfi_startproc 
pushl %ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8 
movl %esp, %ebp
.cfi_def_cfa_register 5 
subl $152, %esp
movl 8(%ebp), %eax 
movl %eax, -128(%ebp) 
movl 12(%ebp), %eax 
movl %eax, -124(%ebp) 
fldl LC0
fstpl -16(%ebp) 
fldl LC1
fstpl -24(%ebp) 
fldl LC1
fstpl -32(%ebp) 
fldl LC2
fstpl -40(%ebp) 
fldl LC3
fstpl -48(%ebp) 
fldl LC4
fstpl -56(%ebp) 
fldl LC5
fstpl -64(%ebp) 
fldl LC6
fstpl -72(%ebp) 
fldl LC7
fstpl -80(%ebp) 
fldl LC8
fstpl -88(%ebp) 
fldl LC9
fstpl -96(%ebp) fldl 
LC10
fstpl -104(%ebp) 
fldl -128(%ebp) 
fmul %st(0), %st 
fstpl -112(%ebp) 
fldl -112(%ebp) 
fmull -104(%ebp) 
faddl -96(%ebp) 
fmull -112(%ebp) 
faddl -88(%ebp) 
fmull -112(%ebp) 
faddl -80(%ebp) 
fmull -112(%ebp) 
faddl -72(%ebp) 
fmull -112(%ebp) 
faddl -64(%ebp) 
fmull -112(%ebp)
faddl -56(%ebp) 
fmull -112(%ebp) 
fldl -48(%ebp) 
faddp %st, %st(1) 
fstpl -120(%ebp) 
fldl -112(%ebp) 
fchs
fstpl (%esp) 
call _exp
fadd %st(0), %st 
fdivl -16(%ebp) 
fldl -112(%ebp) 
fmull -120(%ebp) 
faddl -40(%ebp) 
fmull -112(%ebp) 
faddl -32(%ebp) 
fmull -112(%ebp) 
faddl -24(%ebp) 
fmull -112(%ebp) 
fld1
faddp %st, %st(1) 
fmull -128(%ebp) 
fmulp %st, %st(1) 
leave
.cfi_restore 5
.cfi_def_cfa 4, 4 
ret
.cfi_endproc 
LFE13:
.globl _erfc
.def _erfc; .scl 2; .type 32; .endef
_erfc:
LFB14:
.cfi_startproc 
pushl %ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8 
movl %esp, %ebp
.cfi_def_cfa_register 5 
subl $72, %esp
movl 8(%ebp), %eax 
movl %eax, -48(%ebp) 
movl 12(%ebp), %eax 
movl %eax, -44(%ebp) 
fldl LC0
fstpl -16(%ebp) 
fldl -48(%ebp) 
fmul %st(0), %st 
fstpl -24(%ebp) 
fldl -24(%ebp) 
fadd %st(0), %st 
fld1
fdivp %st, %st(1) 
fstpl -32(%ebp) 
fldl -32(%ebp) 
fldl LC13
fmulp %st, %st(1) 
fldl -32(%ebp) 
fldl LC14
fmulp %st, %st(1) 
fldl -32(%ebp) 
fldl LC15
fmulp %st, %st(1) 
fldl -32(%ebp) 
fldl LC16
fmulp %st, %st(1) 
fldl -32(%ebp) 
fldl LC17
fmulp %st, %st(1) 
fld1
faddp %st, %st(1) 
fdivrp %st, %st(1) 
fld1
faddp %st, %st(1) 
fdivrp %st, %st(1) 
fld1
faddp %st, %st(1) 
fdivrp %st, %st(1) 
fld1
faddp %st, %st(1) 
fdivrp %st, %st(1) 
fld1
faddp %st, %st(1) 
fldl -32(%ebp) 
fdivp %st, %st(1) 
fstpl -40(%ebp) 
fldl -32(%ebp) 
fldl LC18
fmulp %st, %st(1) 
fldl -32(%ebp)
fldl LC19
fmulp %st, %st(1) 
fldl -32(%ebp) 
fldl LC20
fmulp %st, %st(1) 
fldl -32(%ebp) 
fldl LC21
fmulp %st, %st(1) 
fldl -40(%ebp) 
fldl LC22
fmulp %st, %st(1) 
fld1
faddp %st, %st(1) 
fdivrp %st, %st(1) 
fld1
faddp %st, %st(1) 
fdivrp %st, %st(1) 
fld1
faddp %st, %st(1) 
fdivrp %st, %st(1) 
fld1
faddp %st, %st(1) 
fdivrp %st, %st(1) 
fld1
faddp %st, %st(1) 
fldl -32(%ebp) 
fdivp %st, %st(1) 
fstpl -40(%ebp) 
fldl -24(%ebp) 
fstpl (%esp)
call _exp
fmull -48(%ebp) 
fmull -16(%ebp) 
fldl -40(%ebp) 
fld %st(0)
faddp %st, %st(1) 
fld1
faddp %st, %st(1) 
fldl -32(%ebp) 
fdivp %st, %st(1) 
fld1
faddp %st, %st(1) 
fmulp %st, %st(1) 
fld1
fdivp %st, %st(1)
leave
.cfi_restore 5
.cfi_def_cfa 4, 4 
ret
.cfi_endproc 
LFE14:
.def	main; .scl 2; .type 32; .endef
.section .rdata,"dr" 
LC23:
.ascii "clr\0" 
LC24:
.ascii "Arg? \0" 
LC25:
.ascii "%lf\0"
.align 4 
LC28:
.ascii "X= %8.4f, Erf= %12f, Erfc= %12f\12\0"
.text
.globl _main
.def _main; .scl 2; .type 32; .endef
_main:
LFB15:
.cfi_startproc 
pushl %ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8 
movl %esp, %ebp
.cfi_def_cfa_register 5 
andl $-16, %esp
subl $32, %esp 
call	main
movl $LC23, (%esp) 
call _system
movb $1, _done 
movl $10, (%esp) 
call _putchar 
L14:
movl $LC24, (%esp) 
call _printf
movl $_x, 4(%esp) 
movl $LC25, (%esp) 
call _scanf
fldl _x 
fldz 
fcompp
fnstsw %ax 
sahf
jbe L19
movb $0, _done 
jmp L8
L19:
fldl _x 
fldz
fucomp %st(1) 
fnstsw %ax

sahf 
jp L21 
fldz
fucompp 
fnstsw %ax 
sahf
jne L9 
fldz 
fstpl _er 
fld1 
fstpl _ec 
jmp L8 
L21:
fstp %st(0) 
L9:
fldl _x 
fldl LC27 
fcompp
fnstsw %ax 
sahf
jbe L20 
fldl _x
fstpl (%esp) 
call _erf 
fstpl _er 
fldl _er
fld1
fsubp %st, %st(1) 
fstpl _ec
jmp L13 
L20:
fldl _x
fstpl (%esp) 
call _erfc
fstpl _ec 
fldl _ec 
fld1
fsubp %st, %st(1) 
fstpl _er
L13:
fldl _ec 
fldl _er 
fldl _x
fxch %st(2) 
fstpl 20(%esp) 
fstpl 12(%esp) 
fstpl 4(%esp)
movl $LC28, (%esp) 
call _printf
L8:
movzbl _done, %eax 
testb %al, %al
jne L14
movl $0, %eax 
leave
.cfi_restore 5
.cfi_def_cfa 4, 4 
ret
.cfi_endproc 
LFE15:
.section .rdata,"dr"
.align 8 
LC0:
.long -2079671268
.long 1073503224
.align 8 
LC1:
.long 1461679763
.long 1071994197
.align 8 
LC2:
.long 601740724
.long 1068728632
.align 8 
LC3:
.long -256263175
.long 1066489450
.align 8 
LC4:
.long 112156783
.long 1063860193
.align 8 
LC5:
.long -1465145423
.long 1061095858
.align 8 
LC6:
.long -1886360939
.long 1058049460
.align 8 
LC7:
.long 1685304208
.long 1054812379
.align 8 
LC8:
.long 1473632397
.long 1051344218
.align 8 
LC9:
.long -1115619875
.long 1047789051
.align 8 
LC10:
.long 793809704
.long 1044107436
.align 8 
LC13:
.long 0
.long 1075838976
.align 8 
LC14:
.long 0
.long 1075970048
.align 8 
LC15:
.long 0
.long 1076101120
.align 8 
LC16:
.long 0
.long 1076232192
.align 8 
LC17:
.long 0
.long 1076363264
.align 8 
LC18:
.long 0
.long 1074266112
.align 8 
LC19:
.long 0
.long 1074790400
.align 8 
LC20:
.long 0
.long 1075052544
.align 8 
LC21:
.long 0
.long 1075314688
.align 8 
LC22:
.long 0
.long 1075576832
.align 8 
LC27:
.long 0
.long 1073217536
.ident "GCC: (MinGW.org GCC Build-20200227-1) 9.2.0"
.def _exp; .scl 2; .type 32; .endef
.def _system; .scl 2; .type 32; .endef
.def _putchar; .scl 2; .type 32; .endef
.def _printf; .scl 2; .type 32; .endef
.def _scanf; .scl 2; .type 32; .endef