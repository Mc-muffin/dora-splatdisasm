.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ApplyXYZcomponant
/* 2F370 8003EB70 3400828C */  lw         $v0, 0x34($a0)
/* 2F374 8003EB74 0800838C */  lw         $v1, 0x8($a0)
/* 2F378 8003EB78 03120200 */  sra        $v0, $v0, 8
/* 2F37C 8003EB7C 21186200 */  addu       $v1, $v1, $v0
/* 2F380 8003EB80 0800E003 */  jr         $ra
/* 2F384 8003EB84 080083AC */   sw        $v1, 0x8($a0)
.size ApplyXYZcomponant, . - ApplyXYZcomponant
