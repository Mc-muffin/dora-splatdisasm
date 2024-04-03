.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BootsSkateOn
/* 261D4 800359D4 E809828F */  lw         $v0, %gp_rel(BootsSkateStatus)($gp)
/* 261D8 800359D8 00000000 */  nop
/* 261DC 800359DC 0E004014 */  bnez       $v0, .L80035A18
/* 261E0 800359E0 0A80023C */   lui       $v0, %hi(AnimationList)
/* 261E4 800359E4 80514224 */  addiu      $v0, $v0, %lo(AnimationList)
/* 261E8 800359E8 C807458C */  lw         $a1, 0x7C8($v0)
/* 261EC 800359EC DC07468C */  lw         $a2, 0x7DC($v0)
/* 261F0 800359F0 0408478C */  lw         $a3, 0x804($v0)
/* 261F4 800359F4 0008448C */  lw         $a0, 0x800($v0)
/* 261F8 800359F8 01000324 */  addiu      $v1, $zero, 0x1
/* 261FC 800359FC E80983AF */  sw         $v1, %gp_rel(BootsSkateStatus)($gp)
/* 26200 80035A00 DC0985AF */  sw         $a1, %gp_rel(BootsAnims1)($gp)
/* 26204 80035A04 E00986AF */  sw         $a2, %gp_rel(BootsAnims2)($gp)
/* 26208 80035A08 E40987AF */  sw         $a3, %gp_rel(BootsAnims3)($gp)
/* 2620C 80035A0C C80744AC */  sw         $a0, 0x7C8($v0)
/* 26210 80035A10 DC0744AC */  sw         $a0, 0x7DC($v0)
/* 26214 80035A14 040844AC */  sw         $a0, 0x804($v0)
.L80035A18:
/* 26218 80035A18 0800E003 */  jr         $ra
/* 2621C 80035A1C 00000000 */   nop
.size BootsSkateOn, . - BootsSkateOn
