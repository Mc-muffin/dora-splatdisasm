.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DeactivateDig
/* 120A8 800218A8 05008010 */  beqz       $a0, .L800218C0
/* 120AC 800218AC FEFF0324 */   addiu     $v1, $zero, -0x2
/* 120B0 800218B0 2400828C */  lw         $v0, 0x24($a0)
/* 120B4 800218B4 00000000 */  nop
/* 120B8 800218B8 24104300 */  and        $v0, $v0, $v1
/* 120BC 800218BC 240082AC */  sw         $v0, 0x24($a0)
.L800218C0:
/* 120C0 800218C0 0800E003 */  jr         $ra
/* 120C4 800218C4 00000000 */   nop
.size DeactivateDig, . - DeactivateDig
