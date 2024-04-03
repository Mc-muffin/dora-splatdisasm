.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Honk
/* 35280 80044A80 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 35284 80044A84 000D828F */  lw         $v0, %gp_rel(AudAttackStartScale)($gp)
/* 35288 80044A88 EC0C868F */  lw         $a2, %gp_rel(AUD_ATTACK_BRAIN_TIMER)($gp)
/* 3528C 80044A8C 0C0D878F */  lw         $a3, %gp_rel(AUD_ATTACK_INITAL_SPEED)($gp)
/* 35290 80044A90 21288000 */  addu       $a1, $a0, $zero
/* 35294 80044A94 1800BFAF */  sw         $ra, 0x18($sp)
/* 35298 80044A98 180080AC */  sw         $zero, 0x18($a0)
/* 3529C 80044A9C 1000A2AF */  sw         $v0, 0x10($sp)
/* 352A0 80044AA0 0000848C */  lw         $a0, 0x0($a0)
/* 352A4 80044AA4 D711010C */  jal        SendAudAttack
/* 352A8 80044AA8 00000000 */   nop
/* 352AC 80044AAC 1800BF8F */  lw         $ra, 0x18($sp)
/* 352B0 80044AB0 00000000 */  nop
/* 352B4 80044AB4 0800E003 */  jr         $ra
/* 352B8 80044AB8 2000BD27 */   addiu     $sp, $sp, 0x20
.size Honk, . - Honk
