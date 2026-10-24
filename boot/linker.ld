ENTRY(_start)

SECTIONS
{
    . = 0x40000000;

    .text : {
        *(.text.boot)
        *(.text)
    }

    .rodata : { *(.rodata) }

    .data : { *(.data) }

    .bss : {
        __bss_start = .;
        *(.bss)
        __bss_end = .;
    }

    . = ALIGN(16);
}