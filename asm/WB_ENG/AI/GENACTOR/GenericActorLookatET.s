.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericActorLookatET
/* 3AD8C 8004A58C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AD90 8004A590 0980033C */  lui        $v1, %hi(ETActor)
/* 3AD94 8004A594 1400BFAF */  sw         $ra, 0x14($sp)
/* 3AD98 8004A598 1000B0AF */  sw         $s0, 0x10($sp)
/* 3AD9C 8004A59C 5400828C */  lw         $v0, 0x54($a0)
/* 3ADA0 8004A5A0 B05A678C */  lw         $a3, %lo(ETActor)($v1)
/* 3ADA4 8004A5A4 0000868C */  lw         $a2, 0x0($a0)
/* 3ADA8 8004A5A8 0800858C */  lw         $a1, 0x8($a0)
/* 3ADAC 8004A5AC FF0F5030 */  andi       $s0, $v0, 0xFFF
/* 3ADB0 8004A5B0 B05A6224 */  addiu      $v0, $v1, %lo(ETActor)
/* 3ADB4 8004A5B4 0800438C */  lw         $v1, 0x8($v0)
/* 3ADB8 8004A5B8 2320E600 */  subu       $a0, $a3, $a2
/* 3ADBC 8004A5BC 63EF010C */  jal        ratan2
/* 3ADC0 8004A5C0 23286500 */   subu      $a1, $v1, $a1
/* 3ADC4 8004A5C4 0BB6033C */  lui        $v1, (0xB60B60B7 >> 16)
/* 3ADC8 8004A5C8 BC0D848F */  lw         $a0, %gp_rel(glookat)($gp)
/* 3ADCC 8004A5CC B7606334 */  ori        $v1, $v1, (0xB60B60B7 & 0xFFFF)
/* 3ADD0 8004A5D0 00230400 */  sll        $a0, $a0, 12
/* 3ADD4 8004A5D4 18008300 */  mult       $a0, $v1
/* 3ADD8 8004A5D8 10180000 */  mfhi       $v1
/* 3ADDC 8004A5DC 21186400 */  addu       $v1, $v1, $a0
/* 3ADE0 8004A5E0 031A0300 */  sra        $v1, $v1, 8
/* 3ADE4 8004A5E4 C3270400 */  sra        $a0, $a0, 31
/* 3ADE8 8004A5E8 23186400 */  subu       $v1, $v1, $a0
/* 3ADEC 8004A5EC 23184300 */  subu       $v1, $v0, $v1
/* 3ADF0 8004A5F0 FF0F6330 */  andi       $v1, $v1, 0xFFF
/* 3ADF4 8004A5F4 23100302 */  subu       $v0, $s0, $v1
/* 3ADF8 8004A5F8 1400BF8F */  lw         $ra, 0x14($sp)
/* 3ADFC 8004A5FC 1000B08F */  lw         $s0, 0x10($sp)
/* 3AE00 8004A600 21106000 */  addu       $v0, $v1, $zero
/* 3AE04 8004A604 0800E003 */  jr         $ra
/* 3AE08 8004A608 1800BD27 */   addiu     $sp, $sp, 0x18
.size GenericActorLookatET, . - GenericActorLookatET
