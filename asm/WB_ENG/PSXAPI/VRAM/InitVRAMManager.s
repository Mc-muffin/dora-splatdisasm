.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitVRAMManager
/* 4D218 8005CA18 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4D21C 8005CA1C 00240400 */  sll        $a0, $a0, 16
/* 4D220 8005CA20 03240400 */  sra        $a0, $a0, 16
/* 4D224 8005CA24 002C0500 */  sll        $a1, $a1, 16
/* 4D228 8005CA28 032C0500 */  sra        $a1, $a1, 16
/* 4D22C 8005CA2C 00340600 */  sll        $a2, $a2, 16
/* 4D230 8005CA30 03340600 */  sra        $a2, $a2, 16
/* 4D234 8005CA34 003C0700 */  sll        $a3, $a3, 16
/* 4D238 8005CA38 033C0700 */  sra        $a3, $a3, 16
/* 4D23C 8005CA3C 2B010324 */  addiu      $v1, $zero, 0x12B
/* 4D240 8005CA40 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 4D244 8005CA44 38AD4224 */  addiu      $v0, $v0, %lo(VRAMItems)
/* 4D248 8005CA48 3000A887 */  lh         $t0, 0x30($sp)
/* 4D24C 8005CA4C 3400A987 */  lh         $t1, 0x34($sp)
/* 4D250 8005CA50 6C174224 */  addiu      $v0, $v0, 0x176C
/* 4D254 8005CA54 1800BFAF */  sw         $ra, 0x18($sp)
.L8005CA58:
/* 4D258 8005CA58 000040A0 */  sb         $zero, 0x0($v0)
/* 4D25C 8005CA5C FFFF6324 */  addiu      $v1, $v1, -0x1
/* 4D260 8005CA60 FDFF6104 */  bgez       $v1, .L8005CA58
/* 4D264 8005CA64 ECFF4224 */   addiu     $v0, $v0, -0x14
/* 4D268 8005CA68 1000A8AF */  sw         $t0, 0x10($sp)
/* 4D26C 8005CA6C A172010C */  jal        ResetVRAMWorkSpace
/* 4D270 8005CA70 1400A9AF */   sw        $t1, 0x14($sp)
/* 4D274 8005CA74 1800BF8F */  lw         $ra, 0x18($sp)
/* 4D278 8005CA78 00000000 */  nop
/* 4D27C 8005CA7C 0800E003 */  jr         $ra
/* 4D280 8005CA80 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitVRAMManager, . - InitVRAMManager
