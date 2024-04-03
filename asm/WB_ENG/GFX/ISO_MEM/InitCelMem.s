.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCelMem
/* 3F1E8 8004E9E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3F1EC 8004E9EC 801F023C */  lui        $v0, (0x1F800000 >> 16)
/* 3F1F0 8004E9F0 1000BFAF */  sw         $ra, 0x10($sp)
/* 3F1F4 8004E9F4 741582AF */  sw         $v0, %gp_rel(MEM_ISO_Cels)($gp)
/* 3F1F8 8004E9F8 841582AF */  sw         $v0, %gp_rel(ISO_Cels)($gp)
/* 3F1FC 8004E9FC 2B3F010C */  jal        new_malloc
/* 3F200 8004EA00 0400043C */   lui       $a0, (0x40000 >> 16)
/* 3F204 8004EA04 0200033C */  lui        $v1, (0x20000 >> 16)
/* 3F208 8004EA08 1000BF8F */  lw         $ra, 0x10($sp)
/* 3F20C 8004EA0C 21184300 */  addu       $v1, $v0, $v1
/* 3F210 8004EA10 7C1582AF */  sw         $v0, %gp_rel(MEM_PolyPool)($gp)
/* 3F214 8004EA14 801583AF */  sw         $v1, %gp_rel(MEM_PolyPool + 0x4)($gp)
/* 3F218 8004EA18 881582AF */  sw         $v0, %gp_rel(MEM_PolyPoolCurrent)($gp)
/* 3F21C 8004EA1C 0800E003 */  jr         $ra
/* 3F220 8004EA20 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitCelMem, . - InitCelMem
