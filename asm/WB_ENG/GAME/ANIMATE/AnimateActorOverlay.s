.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AnimateActorOverlay
/* 297FC 80038FFC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 29800 80039000 2800B2AF */  sw         $s2, 0x28($sp)
/* 29804 80039004 21908000 */  addu       $s2, $a0, $zero
/* 29808 80039008 2000B0AF */  sw         $s0, 0x20($sp)
/* 2980C 8003900C 2C015026 */  addiu      $s0, $s2, 0x12C
/* 29810 80039010 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 29814 80039014 2400B1AF */  sw         $s1, 0x24($sp)
/* 29818 80039018 2800028E */  lw         $v0, 0x28($s0)
/* 2981C 8003901C 00000000 */  nop
/* 29820 80039020 03004010 */  beqz       $v0, .L80039030
/* 29824 80039024 58015126 */   addiu     $s1, $s2, 0x158
/* 29828 80039028 B3E0000C */  jal        AnimateStream
/* 2982C 8003902C 21280002 */   addu      $a1, $s0, $zero
.L80039030:
/* 29830 80039030 2800228E */  lw         $v0, 0x28($s1)
/* 29834 80039034 00000000 */  nop
/* 29838 80039038 01004230 */  andi       $v0, $v0, 0x1
/* 2983C 8003903C 13004010 */  beqz       $v0, .L8003908C
/* 29840 80039040 21204002 */   addu      $a0, $s2, $zero
/* 29844 80039044 21280002 */  addu       $a1, $s0, $zero
/* 29848 80039048 080A878F */  lw         $a3, %gp_rel(STARTJOINT)($gp)
/* 2984C 8003904C 0C0A838F */  lw         $v1, %gp_rel(ENDJOINT)($gp)
/* 29850 80039050 21302002 */  addu       $a2, $s1, $zero
/* 29854 80039054 1400A0AF */  sw         $zero, 0x14($sp)
/* 29858 80039058 1800A0AF */  sw         $zero, 0x18($sp)
/* 2985C 8003905C 5BE1000C */  jal        AnimateAndFilterStream
/* 29860 80039060 1000A3AF */   sw        $v1, 0x10($sp)
/* 29864 80039064 21204002 */  addu       $a0, $s2, $zero
/* 29868 80039068 21280002 */  addu       $a1, $s0, $zero
/* 2986C 8003906C 21302002 */  addu       $a2, $s1, $zero
/* 29870 80039070 100A878F */  lw         $a3, %gp_rel(STARTJOINT2)($gp)
/* 29874 80039074 140A838F */  lw         $v1, %gp_rel(ENDJOINT2)($gp)
/* 29878 80039078 01000224 */  addiu      $v0, $zero, 0x1
/* 2987C 8003907C 1400A0AF */  sw         $zero, 0x14($sp)
/* 29880 80039080 1800A2AF */  sw         $v0, 0x18($sp)
/* 29884 80039084 5BE1000C */  jal        AnimateAndFilterStream
/* 29888 80039088 1000A3AF */   sw        $v1, 0x10($sp)
.L8003908C:
/* 2988C 8003908C 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 29890 80039090 2800B28F */  lw         $s2, 0x28($sp)
/* 29894 80039094 2400B18F */  lw         $s1, 0x24($sp)
/* 29898 80039098 2000B08F */  lw         $s0, 0x20($sp)
/* 2989C 8003909C 0800E003 */  jr         $ra
/* 298A0 800390A0 3000BD27 */   addiu     $sp, $sp, 0x30
.size AnimateActorOverlay, . - AnimateActorOverlay
