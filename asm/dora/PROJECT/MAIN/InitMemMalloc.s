.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitMemMalloc
/* C298 8001BA98 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C29C 8001BA9C 1F80053C */  lui        $a1, (0x801FE000 >> 16)
/* C2A0 8001BAA0 00E0A534 */  ori        $a1, $a1, (0x801FE000 & 0xFFFF)
/* C2A4 8001BAA4 0C80043C */  lui        $a0, %hi(D_800C5EF8)
/* C2A8 8001BAA8 F85E8424 */  addiu      $a0, $a0, %lo(D_800C5EF8)
/* C2AC 8001BAAC 2328A400 */  subu       $a1, $a1, $a0
/* C2B0 8001BAB0 1000BFAF */  sw         $ra, 0x10($sp)
/* C2B4 8001BAB4 241385AF */  sw         $a1, %gp_rel(BS)($gp)
/* C2B8 8001BAB8 5840010C */  jal        get_base
/* C2BC 8001BABC 00000000 */   nop
/* C2C0 8001BAC0 1000BF8F */  lw         $ra, 0x10($sp)
/* C2C4 8001BAC4 00000000 */  nop
/* C2C8 8001BAC8 0800E003 */  jr         $ra
/* C2CC 8001BACC 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitMemMalloc, . - InitMemMalloc
