.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetCelMem
/* 3F224 8004EA24 7C158327 */  addiu      $v1, $gp, %gp_rel(MEM_PolyPool)
/* 3F228 8004EA28 0980023C */  lui        $v0, %hi(ot_ndx)
/* 3F22C 8004EA2C 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 3F230 8004EA30 7415848F */  lw         $a0, %gp_rel(MEM_ISO_Cels)($gp)
/* 3F234 8004EA34 80100200 */  sll        $v0, $v0, 2
/* 3F238 8004EA38 21104300 */  addu       $v0, $v0, $v1
/* 3F23C 8004EA3C 0000438C */  lw         $v1, 0x0($v0)
/* 3F240 8004EA40 0200023C */  lui        $v0, (0x20000 >> 16)
/* 3F244 8004EA44 F80E80AF */  sw         $zero, %gp_rel(NumF3Cels)($gp)
/* 3F248 8004EA48 FC0E80AF */  sw         $zero, %gp_rel(NumF4Cels)($gp)
/* 3F24C 8004EA4C 000F80AF */  sw         $zero, %gp_rel(NumG3Cels)($gp)
/* 3F250 8004EA50 040F80AF */  sw         $zero, %gp_rel(NumG4Cels)($gp)
/* 3F254 8004EA54 080F80AF */  sw         $zero, %gp_rel(NumFT3Cels)($gp)
/* 3F258 8004EA58 0C0F80AF */  sw         $zero, %gp_rel(NumFT4Cels)($gp)
/* 3F25C 8004EA5C 100F80AF */  sw         $zero, %gp_rel(NumGT3Cels)($gp)
/* 3F260 8004EA60 140F80AF */  sw         $zero, %gp_rel(NumGT4Cels)($gp)
/* 3F264 8004EA64 180F80AF */  sw         $zero, %gp_rel(NumISOCels)($gp)
/* 3F268 8004EA68 841584AF */  sw         $a0, %gp_rel(ISO_Cels)($gp)
/* 3F26C 8004EA6C 881583AF */  sw         $v1, %gp_rel(MEM_PolyPoolCurrent)($gp)
/* 3F270 8004EA70 21186200 */  addu       $v1, $v1, $v0
/* 3F274 8004EA74 8C1583AF */  sw         $v1, %gp_rel(MEM_PolyPoolEnd)($gp)
/* 3F278 8004EA78 0800E003 */  jr         $ra
/* 3F27C 8004EA7C 00000000 */   nop
.size ResetCelMem, . - ResetCelMem
