.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitISOCels
/* 3F280 8004EA80 801F023C */  lui        $v0, (0x1F800000 >> 16)
/* 3F284 8004EA84 741582AF */  sw         $v0, %gp_rel(MEM_ISO_Cels)($gp)
/* 3F288 8004EA88 841582AF */  sw         $v0, %gp_rel(ISO_Cels)($gp)
/* 3F28C 8004EA8C 0800E003 */  jr         $ra
/* 3F290 8004EA90 00000000 */   nop
.size InitISOCels, . - InitISOCels
