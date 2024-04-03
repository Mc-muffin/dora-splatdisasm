.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_emitter_toggle
/* 43EB4 800536B4 21500000 */  addu       $t2, $zero, $zero
/* 43EB8 800536B8 21400000 */  addu       $t0, $zero, $zero
/* 43EBC 800536BC 21588000 */  addu       $t3, $a0, $zero
/* 43EC0 800536C0 0980093C */  lui        $t1, %hi(pxm_numemitters)
/* 43EC4 800536C4 6458298D */  lw         $t1, %lo(pxm_numemitters)($t1)
/* 43EC8 800536C8 0980043C */  lui        $a0, %hi(pxm_emitters)
/* 43ECC 800536CC 8458848C */  lw         $a0, %lo(pxm_emitters)($a0)
/* 43ED0 800536D0 15002011 */  beqz       $t1, .L80053728
/* 43ED4 800536D4 FF00E730 */   andi      $a3, $a3, 0xFF
/* 43ED8 800536D8 21288000 */  addu       $a1, $a0, $zero
.L800536DC:
/* 43EDC 800536DC 0000A48C */  lw         $a0, 0x0($a1)
/* 43EE0 800536E0 00000000 */  nop
/* 43EE4 800536E4 00008394 */  lhu        $v1, 0x0($a0)
/* 43EE8 800536E8 04008294 */  lhu        $v0, 0x4($a0)
/* 43EEC 800536EC 001C0300 */  sll        $v1, $v1, 16
/* 43EF0 800536F0 C31D0300 */  sra        $v1, $v1, 23
/* 43EF4 800536F4 00140200 */  sll        $v0, $v0, 16
/* 43EF8 800536F8 05006B14 */  bne        $v1, $t3, .L80053710
/* 43EFC 800536FC C3150200 */   sra       $v0, $v0, 23
/* 43F00 80053700 03004614 */  bne        $v0, $a2, .L80053710
/* 43F04 80053704 00000000 */   nop
/* 43F08 80053708 1000A7AC */  sw         $a3, 0x10($a1)
/* 43F0C 8005370C 2140A000 */  addu       $t0, $a1, $zero
.L80053710:
/* 43F10 80053710 01004A25 */  addiu      $t2, $t2, 0x1
/* 43F14 80053714 2B104901 */  sltu       $v0, $t2, $t1
/* 43F18 80053718 03004010 */  beqz       $v0, .L80053728
/* 43F1C 8005371C 2C00A524 */   addiu     $a1, $a1, 0x2C
/* 43F20 80053720 EEFF0011 */  beqz       $t0, .L800536DC
/* 43F24 80053724 00000000 */   nop
.L80053728:
/* 43F28 80053728 0800E003 */  jr         $ra
/* 43F2C 8005372C 00000000 */   nop
.size pxm_emitter_toggle, . - pxm_emitter_toggle
