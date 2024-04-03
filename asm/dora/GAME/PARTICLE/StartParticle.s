.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StartParticle
/* 20254 8002FA54 0800E003 */  jr         $ra
/* 20258 8002FA58 00000000 */   nop
.size StartParticle, . - StartParticle
