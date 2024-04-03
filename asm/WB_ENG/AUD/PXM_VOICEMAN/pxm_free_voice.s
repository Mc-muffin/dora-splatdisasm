.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_free_voice
/* 45DE4 800555E4 200080AC */  sw         $zero, 0x20($a0)
/* 45DE8 800555E8 140080AC */  sw         $zero, 0x14($a0)
/* 45DEC 800555EC 260080A0 */  sb         $zero, 0x26($a0)
/* 45DF0 800555F0 000080AC */  sw         $zero, 0x0($a0)
/* 45DF4 800555F4 1C0080AC */  sw         $zero, 0x1C($a0)
/* 45DF8 800555F8 0800E003 */  jr         $ra
/* 45DFC 800555FC 270080A0 */   sb        $zero, 0x27($a0)
.size pxm_free_voice, . - pxm_free_voice
