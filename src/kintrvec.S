.globl kintrvec
.globl kintr_handler

.align 4

kintrvec:
    addi sp, sp, -256

    # push kernel thread context to stack
    sd ra,  0x00(sp)
    sd sp,  0x08(sp)
    sd gp,  0x10(sp)
    sd t0,  0x20(sp)
    sd t1,  0x28(sp)
    sd t2,  0x30(sp)
    sd s0,  0x38(sp)
    sd s1,  0x40(sp)
    sd a0,  0x48(sp)
    sd a1,  0x50(sp)
    sd a2,  0x58(sp)
    sd a3,  0x60(sp)
    sd a4,  0x68(sp)
    sd a5,  0x70(sp)
    sd a6,  0x78(sp)
    sd a7,  0x80(sp)
    sd s2,  0x88(sp)
    sd s3,  0x90(sp)
    sd s4,  0x98(sp)
    sd s5,  0xA0(sp)
    sd s6,  0xA8(sp)
    sd s7,  0xB0(sp)
    sd s8,  0xB8(sp)
    sd s9,  0xC0(sp)
    sd s10, 0xC8(sp)
    sd s11, 0xD0(sp)
    sd t3,  0xD8(sp)
    sd t4,  0xE0(sp)
    sd t5,  0xE8(sp)
    sd t6,  0xF0(sp)

    # call kernel interrupt handler
    call kintr_handler

    # load kernel thread context from stack
    ld ra,  0x00(sp)
    ld sp,  0x08(sp)
    ld gp,  0x10(sp)
    ld t0,  0x20(sp)
    ld t1,  0x28(sp)
    ld t2,  0x30(sp)
    ld s0,  0x38(sp)
    ld s1,  0x40(sp)
    ld a0,  0x48(sp)
    ld a1,  0x50(sp)
    ld a2,  0x58(sp)
    ld a3,  0x60(sp)
    ld a4,  0x68(sp)
    ld a5,  0x70(sp)
    ld a6,  0x78(sp)
    ld a7,  0x80(sp)
    ld s2,  0x88(sp)
    ld s3,  0x90(sp)
    ld s4,  0x98(sp)
    ld s5,  0xA0(sp)
    ld s6,  0xA8(sp)
    ld s7,  0xB0(sp)
    ld s8,  0xB8(sp)
    ld s9,  0xC0(sp)
    ld s10, 0xC8(sp)
    ld s11, 0xD0(sp)
    ld t3,  0xD8(sp)
    ld t4,  0xE0(sp)
    ld t5,  0xE8(sp)
    ld t6,  0xF0(sp)

    addi sp, sp, 256
    sret