.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BootsSkateOff
/* 26220 80035A20 E809838F */  lw         $v1, %gp_rel(BootsSkateStatus)($gp)
/* 26224 80035A24 01000224 */  addiu      $v0, $zero, 0x1
/* 26228 80035A28 09006214 */  bne        $v1, $v0, .L80035A50
/* 2622C 80035A2C 0A80023C */   lui       $v0, %hi(AnimationList)
/* 26230 80035A30 DC09838F */  lw         $v1, %gp_rel(BootsAnims1)($gp)
/* 26234 80035A34 E009848F */  lw         $a0, %gp_rel(BootsAnims2)($gp)
/* 26238 80035A38 E409858F */  lw         $a1, %gp_rel(BootsAnims3)($gp)
/* 2623C 80035A3C 80514224 */  addiu      $v0, $v0, %lo(AnimationList)
/* 26240 80035A40 E80980AF */  sw         $zero, %gp_rel(BootsSkateStatus)($gp)
/* 26244 80035A44 C80743AC */  sw         $v1, 0x7C8($v0)
/* 26248 80035A48 DC0744AC */  sw         $a0, 0x7DC($v0)
/* 2624C 80035A4C 040845AC */  sw         $a1, 0x804($v0)
.L80035A50:
/* 26250 80035A50 0800E003 */  jr         $ra
/* 26254 80035A54 00000000 */   nop
.size BootsSkateOff, . - BootsSkateOff
