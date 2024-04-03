.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TimerUpdate
/* 4C464 8005BC64 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4C468 8005BC68 1000BFAF */  sw         $ra, 0x10($sp)
/* 4C46C 8005BC6C 0400828C */  lw         $v0, 0x4($a0)
/* 4C470 8005BC70 00000000 */  nop
/* 4C474 8005BC74 0C004010 */  beqz       $v0, .L8005BCA8
/* 4C478 8005BC78 00000000 */   nop
/* 4C47C 8005BC7C 0000828C */  lw         $v0, 0x0($a0)
/* 4C480 8005BC80 00000000 */  nop
/* 4C484 8005BC84 21104500 */  addu       $v0, $v0, $a1
/* 4C488 8005BC88 0700401C */  bgtz       $v0, .L8005BCA8
/* 4C48C 8005BC8C 000082AC */   sw        $v0, 0x0($a0)
/* 4C490 8005BC90 0800828C */  lw         $v0, 0x8($a0)
/* 4C494 8005BC94 00000000 */  nop
/* 4C498 8005BC98 03004010 */  beqz       $v0, .L8005BCA8
/* 4C49C 8005BC9C 00000000 */   nop
/* 4C4A0 8005BCA0 09F84000 */  jalr       $v0
/* 4C4A4 8005BCA4 00000000 */   nop
.L8005BCA8:
/* 4C4A8 8005BCA8 1000BF8F */  lw         $ra, 0x10($sp)
/* 4C4AC 8005BCAC 00000000 */  nop
/* 4C4B0 8005BCB0 0800E003 */  jr         $ra
/* 4C4B4 8005BCB4 1800BD27 */   addiu     $sp, $sp, 0x18
.size TimerUpdate, . - TimerUpdate
