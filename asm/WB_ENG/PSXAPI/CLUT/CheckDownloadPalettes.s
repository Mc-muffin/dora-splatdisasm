.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckDownloadPalettes
/* 4E5C8 8005DDC8 5811828F */  lw         $v0, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4E5CC 8005DDCC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4E5D0 8005DDD0 1000B0AF */  sw         $s0, 0x10($sp)
/* 4E5D4 8005DDD4 21800000 */  addu       $s0, $zero, $zero
/* 4E5D8 8005DDD8 2000BFAF */  sw         $ra, 0x20($sp)
/* 4E5DC 8005DDDC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 4E5E0 8005DDE0 1800B2AF */  sw         $s2, 0x18($sp)
/* 4E5E4 8005DDE4 22004018 */  blez       $v0, .L8005DE70
/* 4E5E8 8005DDE8 1400B1AF */   sw        $s1, 0x14($sp)
/* 4E5EC 8005DDEC 0C80023C */  lui        $v0, %hi(SavedPalettes)
/* 4E5F0 8005DDF0 28E55124 */  addiu      $s1, $v0, %lo(SavedPalettes)
/* 4E5F4 8005DDF4 21982002 */  addu       $s3, $s1, $zero
/* 4E5F8 8005DDF8 21900000 */  addu       $s2, $zero, $zero
.L8005DDFC:
/* 4E5FC 8005DDFC 21107202 */  addu       $v0, $s3, $s2
/* 4E600 8005DE00 0800438C */  lw         $v1, 0x8($v0)
/* 4E604 8005DE04 00000000 */  nop
/* 4E608 8005DE08 13006010 */  beqz       $v1, .L8005DE58
/* 4E60C 8005DE0C 00000000 */   nop
/* 4E610 8005DE10 0000228E */  lw         $v0, 0x0($s1)
/* 4E614 8005DE14 00000000 */  nop
/* 4E618 8005DE18 0F004010 */  beqz       $v0, .L8005DE58
/* 4E61C 8005DE1C 40121000 */   sll       $v0, $s0, 9
/* 4E620 8005DE20 0400278E */  lw         $a3, 0x4($s1)
/* 4E624 8005DE24 2C17838F */  lw         $v1, %gp_rel(DownloadPalettes)($gp)
/* 4E628 8005DE28 2130E000 */  addu       $a2, $a3, $zero
/* 4E62C 8005DE2C 0200E104 */  bgez       $a3, .L8005DE38
/* 4E630 8005DE30 21206200 */   addu      $a0, $v1, $v0
/* 4E634 8005DE34 3F00E624 */  addiu      $a2, $a3, 0x3F
.L8005DE38:
/* 4E638 8005DE38 83310600 */  sra        $a2, $a2, 6
/* 4E63C 8005DE3C 0200C524 */  addiu      $a1, $a2, 0x2
/* 4E640 8005DE40 80310600 */  sll        $a2, $a2, 6
/* 4E644 8005DE44 2330E600 */  subu       $a2, $a3, $a2
/* 4E648 8005DE48 002A0500 */  sll        $a1, $a1, 8
/* 4E64C 8005DE4C 1BE6010C */  jal        LoadClut
/* 4E650 8005DE50 C003C624 */   addiu     $a2, $a2, 0x3C0
/* 4E654 8005DE54 000020AE */  sw         $zero, 0x0($s1)
.L8005DE58:
/* 4E658 8005DE58 0C003126 */  addiu      $s1, $s1, 0xC
/* 4E65C 8005DE5C 5811828F */  lw         $v0, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4E660 8005DE60 01001026 */  addiu      $s0, $s0, 0x1
/* 4E664 8005DE64 2A100202 */  slt        $v0, $s0, $v0
/* 4E668 8005DE68 E4FF4014 */  bnez       $v0, .L8005DDFC
/* 4E66C 8005DE6C 0C005226 */   addiu     $s2, $s2, 0xC
.L8005DE70:
/* 4E670 8005DE70 2000BF8F */  lw         $ra, 0x20($sp)
/* 4E674 8005DE74 1C00B38F */  lw         $s3, 0x1C($sp)
/* 4E678 8005DE78 1800B28F */  lw         $s2, 0x18($sp)
/* 4E67C 8005DE7C 1400B18F */  lw         $s1, 0x14($sp)
/* 4E680 8005DE80 1000B08F */  lw         $s0, 0x10($sp)
/* 4E684 8005DE84 21100000 */  addu       $v0, $zero, $zero
/* 4E688 8005DE88 0800E003 */  jr         $ra
/* 4E68C 8005DE8C 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckDownloadPalettes, . - CheckDownloadPalettes
