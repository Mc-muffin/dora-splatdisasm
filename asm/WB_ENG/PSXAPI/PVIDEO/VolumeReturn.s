.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel VolumeReturn
/* 4C1EC 8005B9EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4C1F0 8005B9F0 0A80023C */  lui        $v0, %hi(pxm_mix)
/* 4C1F4 8005B9F4 0980053C */  lui        $a1, %hi(MusicVolume)
/* 4C1F8 8005B9F8 9C49A58C */  lw         $a1, %lo(MusicVolume)($a1)
/* 4C1FC 8005B9FC 0980033C */  lui        $v1, %hi(EffectsVolume)
/* 4C200 8005BA00 A049638C */  lw         $v1, %lo(EffectsVolume)($v1)
/* 4C204 8005BA04 0980043C */  lui        $a0, %hi(atv)
/* 4C208 8005BA08 08588424 */  addiu      $a0, $a0, %lo(atv)
/* 4C20C 8005BA0C 1000BFAF */  sw         $ra, 0x10($sp)
/* 4C210 8005BA10 C87F45AC */  sw         $a1, %lo(pxm_mix)($v0)
/* 4C214 8005BA14 C87F4224 */  addiu      $v0, $v0, %lo(pxm_mix)
/* 4C218 8005BA18 040043AC */  sw         $v1, 0x4($v0)
/* 4C21C 8005BA1C 2BCD000C */  jal        cdSetVol
/* 4C220 8005BA20 00000000 */   nop
/* 4C224 8005BA24 1000BF8F */  lw         $ra, 0x10($sp)
/* 4C228 8005BA28 00000000 */  nop
/* 4C22C 8005BA2C 0800E003 */  jr         $ra
/* 4C230 8005BA30 1800BD27 */   addiu     $sp, $sp, 0x18
.size VolumeReturn, . - VolumeReturn
