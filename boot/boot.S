.section .text.boot
.global _start

_start:
    // Set up stack
    ldr x0, =stack_top
    mov sp, x0

    // Zero BSS
    ldr x1, =__bss_start
    ldr x2, =__bss_end
bss_loop:
    cmp x1, x2
    b.ge bss_done
    str xzr, [x1], #8
    b bss_loop
bss_done:

    // Call Ada entry point
    bl hypervisor_main

    // Hang if it returns
hang:
    wfi
    b hang

.section .bss
.align 16
stack_bottom:
    .skip 16384          // 16 KiB stack
stack_top: