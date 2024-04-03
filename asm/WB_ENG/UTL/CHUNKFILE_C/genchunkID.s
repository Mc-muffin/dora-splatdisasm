.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel genchunkID
/* 410BC 800508BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 410C0 800508C0 1000B0AF */  sw         $s0, 0x10($sp)
/* 410C4 800508C4 1400BFAF */  sw         $ra, 0x14($sp)
/* 410C8 800508C8 A3C2010C */  jal        strlen
/* 410CC 800508CC 21808000 */   addu      $s0, $a0, $zero
/* 410D0 800508D0 03000292 */  lbu        $v0, 0x3($s0)
/* 410D4 800508D4 02000392 */  lbu        $v1, 0x2($s0)
/* 410D8 800508D8 01000492 */  lbu        $a0, 0x1($s0)
/* 410DC 800508DC 1400BF8F */  lw         $ra, 0x14($sp)
/* 410E0 800508E0 00160200 */  sll        $v0, $v0, 24
/* 410E4 800508E4 001C0300 */  sll        $v1, $v1, 16
/* 410E8 800508E8 25104300 */  or         $v0, $v0, $v1
/* 410EC 800508EC 00220400 */  sll        $a0, $a0, 8
/* 410F0 800508F0 25104400 */  or         $v0, $v0, $a0
/* 410F4 800508F4 00000392 */  lbu        $v1, 0x0($s0)
/* 410F8 800508F8 1000B08F */  lw         $s0, 0x10($sp)
/* 410FC 800508FC 25104300 */  or         $v0, $v0, $v1
/* 41100 80050900 0800E003 */  jr         $ra
/* 41104 80050904 1800BD27 */   addiu     $sp, $sp, 0x18
.size genchunkID, . - genchunkID
