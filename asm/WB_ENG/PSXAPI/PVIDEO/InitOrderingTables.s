.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitOrderingTables
/* 4A574 80059D74 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4A578 80059D78 1800B2AF */  sw         $s2, 0x18($sp)
/* 4A57C 80059D7C 0B80123C */  lui        $s2, %hi(g_nt)
/* 4A580 80059D80 68BB5226 */  addiu      $s2, $s2, %lo(g_nt)
/* 4A584 80059D84 21204002 */  addu       $a0, $s2, $zero
/* 4A588 80059D88 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 4A58C 80059D8C 0B80133C */  lui        $s3, %hi(gDoubleBuffer)
/* 4A590 80059D90 E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4A594 80059D94 78B97326 */  addiu      $s3, $s3, %lo(gDoubleBuffer)
/* 4A598 80059D98 2000BFAF */  sw         $ra, 0x20($sp)
/* 4A59C 80059D9C 1400B1AF */  sw         $s1, 0x14($sp)
/* 4A5A0 80059DA0 1000B0AF */  sw         $s0, 0x10($sp)
/* 4A5A4 80059DA4 C0110200 */  sll        $v0, $v0, 7
/* 4A5A8 80059DA8 21105300 */  addu       $v0, $v0, $s3
/* 4A5AC 80059DAC E81682AF */  sw         $v0, %gp_rel(cdb)($gp)
/* 4A5B0 80059DB0 DA2A010C */  jal        ClearNTag
/* 4A5B4 80059DB4 88130524 */   addiu     $a1, $zero, 0x1388
/* 4A5B8 80059DB8 0B80103C */  lui        $s0, %hi(g_nt2)
/* 4A5BC 80059DBC A8571026 */  addiu      $s0, $s0, %lo(g_nt2)
/* 4A5C0 80059DC0 21200002 */  addu       $a0, $s0, $zero
/* 4A5C4 80059DC4 DA2A010C */  jal        ClearNTag
/* 4A5C8 80059DC8 F2030524 */   addiu     $a1, $zero, 0x3F2
/* 4A5CC 80059DCC 0B80113C */  lui        $s1, %hi(g_nt3)
/* 4A5D0 80059DD0 38773126 */  addiu      $s1, $s1, %lo(g_nt3)
/* 4A5D4 80059DD4 21202002 */  addu       $a0, $s1, $zero
/* 4A5D8 80059DD8 DA2A010C */  jal        ClearNTag
/* 4A5DC 80059DDC 00040524 */   addiu     $a1, $zero, 0x400
/* 4A5E0 80059DE0 21204002 */  addu       $a0, $s2, $zero
/* 4A5E4 80059DE4 E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4A5E8 80059DE8 88130524 */  addiu      $a1, $zero, 0x1388
/* 4A5EC 80059DEC C22A010C */  jal        UnlinkNTagR
/* 4A5F0 80059DF0 7000C624 */   addiu     $a2, $a2, 0x70
/* 4A5F4 80059DF4 21200002 */  addu       $a0, $s0, $zero
/* 4A5F8 80059DF8 E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4A5FC 80059DFC F2030524 */  addiu      $a1, $zero, 0x3F2
/* 4A600 80059E00 C22A010C */  jal        UnlinkNTagR
/* 4A604 80059E04 7400C624 */   addiu     $a2, $a2, 0x74
/* 4A608 80059E08 21202002 */  addu       $a0, $s1, $zero
/* 4A60C 80059E0C E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4A610 80059E10 00040524 */  addiu      $a1, $zero, 0x400
/* 4A614 80059E14 C22A010C */  jal        UnlinkNTagR
/* 4A618 80059E18 7800C624 */   addiu     $a2, $a2, 0x78
/* 4A61C 80059E1C 21204002 */  addu       $a0, $s2, $zero
/* 4A620 80059E20 E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4A624 80059E24 88130524 */  addiu      $a1, $zero, 0x1388
/* 4A628 80059E28 01006338 */  xori       $v1, $v1, 0x1
/* 4A62C 80059E2C C0110300 */  sll        $v0, $v1, 7
/* 4A630 80059E30 21105300 */  addu       $v0, $v0, $s3
/* 4A634 80059E34 E41083AF */  sw         $v1, %gp_rel(ot_ndx)($gp)
/* 4A638 80059E38 E81682AF */  sw         $v0, %gp_rel(cdb)($gp)
/* 4A63C 80059E3C C22A010C */  jal        UnlinkNTagR
/* 4A640 80059E40 70004624 */   addiu     $a2, $v0, 0x70
/* 4A644 80059E44 21200002 */  addu       $a0, $s0, $zero
/* 4A648 80059E48 E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4A64C 80059E4C F2030524 */  addiu      $a1, $zero, 0x3F2
/* 4A650 80059E50 C22A010C */  jal        UnlinkNTagR
/* 4A654 80059E54 7400C624 */   addiu     $a2, $a2, 0x74
/* 4A658 80059E58 21202002 */  addu       $a0, $s1, $zero
/* 4A65C 80059E5C E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4A660 80059E60 00040524 */  addiu      $a1, $zero, 0x400
/* 4A664 80059E64 C22A010C */  jal        UnlinkNTagR
/* 4A668 80059E68 7800C624 */   addiu     $a2, $a2, 0x78
/* 4A66C 80059E6C 2000BF8F */  lw         $ra, 0x20($sp)
/* 4A670 80059E70 1C00B38F */  lw         $s3, 0x1C($sp)
/* 4A674 80059E74 1800B28F */  lw         $s2, 0x18($sp)
/* 4A678 80059E78 1400B18F */  lw         $s1, 0x14($sp)
/* 4A67C 80059E7C 1000B08F */  lw         $s0, 0x10($sp)
/* 4A680 80059E80 0800E003 */  jr         $ra
/* 4A684 80059E84 2800BD27 */   addiu     $sp, $sp, 0x28
.size InitOrderingTables, . - InitOrderingTables
