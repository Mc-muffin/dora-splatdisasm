.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ReserveVRAM
/* 4D480 8005CC80 21188600 */  addu       $v1, $a0, $a2
/* 4D484 8005CC84 2A108300 */  slt        $v0, $a0, $v1
/* 4D488 8005CC88 18004010 */  beqz       $v0, .L8005CCEC
/* 4D48C 8005CC8C 21686000 */   addu      $t5, $v1, $zero
/* 4D490 8005CC90 18178C8F */  lw         $t4, %gp_rel(XCnt)($gp)
/* 4D494 8005CC94 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4D498 8005CC98 38974E24 */  addiu      $t6, $v0, %lo(VRAMGrid)
/* 4D49C 8005CC9C 2130A000 */  addu       $a2, $a1, $zero
.L8005CCA0:
/* 4D4A0 8005CCA0 2140C700 */  addu       $t0, $a2, $a3
/* 4D4A4 8005CCA4 2A10C800 */  slt        $v0, $a2, $t0
/* 4D4A8 8005CCA8 0C004010 */  beqz       $v0, .L8005CCDC
/* 4D4AC 8005CCAC 01008B24 */   addiu     $t3, $a0, 0x1
/* 4D4B0 8005CCB0 21488001 */  addu       $t1, $t4, $zero
/* 4D4B4 8005CCB4 1800C900 */  mult       $a2, $t1
/* 4D4B8 8005CCB8 01000A24 */  addiu      $t2, $zero, 0x1
/* 4D4BC 8005CCBC 23300601 */  subu       $a2, $t0, $a2
/* 4D4C0 8005CCC0 21108E00 */  addu       $v0, $a0, $t6
/* 4D4C4 8005CCC4 12180000 */  mflo       $v1
/* 4D4C8 8005CCC8 21106200 */  addu       $v0, $v1, $v0
.L8005CCCC:
/* 4D4CC 8005CCCC 00004AA0 */  sb         $t2, 0x0($v0)
/* 4D4D0 8005CCD0 FFFFC624 */  addiu      $a2, $a2, -0x1
/* 4D4D4 8005CCD4 FDFFC014 */  bnez       $a2, .L8005CCCC
/* 4D4D8 8005CCD8 21104900 */   addu      $v0, $v0, $t1
.L8005CCDC:
/* 4D4DC 8005CCDC 21206001 */  addu       $a0, $t3, $zero
/* 4D4E0 8005CCE0 2A108D00 */  slt        $v0, $a0, $t5
/* 4D4E4 8005CCE4 EEFF4014 */  bnez       $v0, .L8005CCA0
/* 4D4E8 8005CCE8 2130A000 */   addu      $a2, $a1, $zero
.L8005CCEC:
/* 4D4EC 8005CCEC 0800E003 */  jr         $ra
/* 4D4F0 8005CCF0 00000000 */   nop
.size ReserveVRAM, . - ReserveVRAM
