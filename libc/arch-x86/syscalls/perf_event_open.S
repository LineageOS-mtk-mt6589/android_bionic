/* autogenerated by gensyscalls.py */
#include <linux/err.h>
#include <machine/asm.h>
#include <asm/unistd.h>

ENTRY(perf_event_open)
    pushl   %ebx
    pushl   %ecx
    pushl   %edx
    pushl   %esi
    pushl   %edi
    mov     24(%esp), %ebx
    mov     28(%esp), %ecx
    mov     32(%esp), %edx
    mov     36(%esp), %esi
    mov     40(%esp), %edi
    movl    $__NR_perf_event_open, %eax
    int     $0x80
    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno
    addl    $4, %esp
    orl     $-1, %eax
1:
    popl    %edi
    popl    %esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    ret
END(perf_event_open)
