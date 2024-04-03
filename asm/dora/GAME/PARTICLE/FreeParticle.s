.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FreeParticle
/* 20738 8002FF38 0800E003 */  jr         $ra
/* 2073C 8002FF3C 000080AC */   sw        $zero, 0x0($a0)
.size FreeParticle, . - FreeParticle
