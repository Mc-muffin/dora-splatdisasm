.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ScaleBrainBomb
/* 36D8C 8004658C 1400828C */  lw         $v0, 0x14($a0)
/* 36D90 80046590 780D838F */  lw         $v1, %gp_rel(BrainBombScaleInc)($gp)
/* 36D94 80046594 740D858F */  lw         $a1, %gp_rel(BrainBombMaxScale)($gp)
/* 36D98 80046598 21104300 */  addu       $v0, $v0, $v1
/* 36D9C 8004659C 140082AC */  sw         $v0, 0x14($a0)
/* 36DA0 800465A0 2A104500 */  slt        $v0, $v0, $a1
/* 36DA4 800465A4 02004014 */  bnez       $v0, .L800465B0
/* 36DA8 800465A8 00000000 */   nop
/* 36DAC 800465AC 140085AC */  sw         $a1, 0x14($a0)
.L800465B0:
/* 36DB0 800465B0 4C00828C */  lw         $v0, 0x4C($a0)
/* 36DB4 800465B4 1400838C */  lw         $v1, 0x14($a0)
/* 36DB8 800465B8 00000000 */  nop
/* 36DBC 800465BC 18004300 */  mult       $v0, $v1
/* 36DC0 800465C0 12100000 */  mflo       $v0
/* 36DC4 800465C4 03130200 */  sra        $v0, $v0, 12
/* 36DC8 800465C8 0800E003 */  jr         $ra
/* 36DCC 800465CC 500082AC */   sw        $v0, 0x50($a0)
.size ScaleBrainBomb, . - ScaleBrainBomb
