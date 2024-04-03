.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RemoveInventoryItem
/* E160 8001D960 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* E164 8001D964 21180000 */  addu       $v1, $zero, $zero
/* E168 8001D968 1800B2AF */  sw         $s2, 0x18($sp)
/* E16C 8001D96C 1000123C */  lui        $s2, (0x100000 >> 16)
/* E170 8001D970 0980023C */  lui        $v0, %hi(InventoryActorArray)
/* E174 8001D974 1400B1AF */  sw         $s1, 0x14($sp)
/* E178 8001D978 A0635124 */  addiu      $s1, $v0, %lo(InventoryActorArray)
/* E17C 8001D97C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* E180 8001D980 1000B0AF */  sw         $s0, 0x10($sp)
.L8001D984:
/* E184 8001D984 0000308E */  lw         $s0, 0x0($s1)
/* E188 8001D988 00000000 */  nop
/* E18C 8001D98C 3B000012 */  beqz       $s0, .L8001DA7C
/* E190 8001D990 01006324 */   addiu     $v1, $v1, 0x1
/* E194 8001D994 1000028E */  lw         $v0, 0x10($s0)
/* E198 8001D998 4400038E */  lw         $v1, 0x44($s0)
/* E19C 8001D99C 00014234 */  ori        $v0, $v0, 0x100
/* E1A0 8001D9A0 100002AE */  sw         $v0, 0x10($s0)
/* E1A4 8001D9A4 0000648C */  lw         $a0, 0x0($v1)
/* E1A8 8001D9A8 0400658C */  lw         $a1, 0x4($v1)
/* E1AC 8001D9AC 0800668C */  lw         $a2, 0x8($v1)
/* E1B0 8001D9B0 C3210400 */  sra        $a0, $a0, 7
/* E1B4 8001D9B4 C3290500 */  sra        $a1, $a1, 7
/* E1B8 8001D9B8 0100A524 */  addiu      $a1, $a1, 0x1
/* E1BC 8001D9BC 1694010C */  jal        GetCelIndex
/* E1C0 8001D9C0 C3310600 */   sra       $a2, $a2, 7
/* E1C4 8001D9C4 FF034330 */  andi       $v1, $v0, 0x3FF
/* E1C8 8001D9C8 FF030224 */  addiu      $v0, $zero, 0x3FF
/* E1CC 8001D9CC 11006210 */  beq        $v1, $v0, .L8001DA14
/* E1D0 8001D9D0 80100300 */   sll       $v0, $v1, 2
/* E1D4 8001D9D4 21104300 */  addu       $v0, $v0, $v1
/* E1D8 8001D9D8 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* E1DC 8001D9DC 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* E1E0 8001D9E0 C0100200 */  sll        $v0, $v0, 3
/* E1E4 8001D9E4 21186200 */  addu       $v1, $v1, $v0
/* E1E8 8001D9E8 0800648C */  lw         $a0, 0x8($v1)
/* E1EC 8001D9EC 0004023C */  lui        $v0, (0x4000000 >> 16)
/* E1F0 8001D9F0 24208200 */  and        $a0, $a0, $v0
/* E1F4 8001D9F4 07008010 */  beqz       $a0, .L8001DA14
/* E1F8 8001D9F8 00000000 */   nop
/* E1FC 8001D9FC 4400038E */  lw         $v1, 0x44($s0)
/* E200 8001DA00 00000000 */  nop
/* E204 8001DA04 1C00628C */  lw         $v0, 0x1C($v1)
/* E208 8001DA08 00000000 */  nop
/* E20C 8001DA0C 25105200 */  or         $v0, $v0, $s2
/* E210 8001DA10 1C0062AC */  sw         $v0, 0x1C($v1)
.L8001DA14:
/* E214 8001DA14 4400038E */  lw         $v1, 0x44($s0)
/* E218 8001DA18 00000000 */  nop
/* E21C 8001DA1C 1C00628C */  lw         $v0, 0x1C($v1)
/* E220 8001DA20 00000000 */  nop
/* E224 8001DA24 24105200 */  and        $v0, $v0, $s2
/* E228 8001DA28 0A004014 */  bnez       $v0, .L8001DA54
/* E22C 8001DA2C 6C000426 */   addiu     $a0, $s0, 0x6C
/* E230 8001DA30 0000658C */  lw         $a1, 0x0($v1)
/* E234 8001DA34 00000000 */  nop
/* E238 8001DA38 000005AE */  sw         $a1, 0x0($s0)
/* E23C 8001DA3C 0400668C */  lw         $a2, 0x4($v1)
/* E240 8001DA40 00000000 */  nop
/* E244 8001DA44 040006AE */  sw         $a2, 0x4($s0)
/* E248 8001DA48 0800678C */  lw         $a3, 0x8($v1)
/* E24C 8001DA4C 77FB000C */  jal        MotionPhysics_SetPosition
/* E250 8001DA50 080007AE */   sw        $a3, 0x8($s0)
.L8001DA54:
/* E254 8001DA54 4400028E */  lw         $v0, 0x44($s0)
/* E258 8001DA58 6004848F */  lw         $a0, %gp_rel(NumInventoryActors)($gp)
/* E25C 8001DA5C 1C00438C */  lw         $v1, 0x1C($v0)
/* E260 8001DA60 FFFF8424 */  addiu      $a0, $a0, -0x1
/* E264 8001DA64 04006334 */  ori        $v1, $v1, 0x4
/* E268 8001DA68 1C0043AC */  sw         $v1, 0x1C($v0)
/* E26C 8001DA6C 000020AE */  sw         $zero, 0x0($s1)
/* E270 8001DA70 600484AF */  sw         $a0, %gp_rel(NumInventoryActors)($gp)
/* E274 8001DA74 A2760008 */  j          .L8001DA88
/* E278 8001DA78 00000000 */   nop
.L8001DA7C:
/* E27C 8001DA7C 08006228 */  slti       $v0, $v1, 0x8
/* E280 8001DA80 C0FF4014 */  bnez       $v0, .L8001D984
/* E284 8001DA84 04003126 */   addiu     $s1, $s1, 0x4
.L8001DA88:
/* E288 8001DA88 1C00BF8F */  lw         $ra, 0x1C($sp)
/* E28C 8001DA8C 1800B28F */  lw         $s2, 0x18($sp)
/* E290 8001DA90 1400B18F */  lw         $s1, 0x14($sp)
/* E294 8001DA94 1000B08F */  lw         $s0, 0x10($sp)
/* E298 8001DA98 0800E003 */  jr         $ra
/* E29C 8001DA9C 2000BD27 */   addiu     $sp, $sp, 0x20
.size RemoveInventoryItem, . - RemoveInventoryItem
