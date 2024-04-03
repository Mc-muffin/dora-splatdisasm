.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawHUDSprite
/* E9D8 8001E1D8 0400C624 */  addiu      $a2, $a2, 0x4
/* E9DC 8001E1DC 2130C700 */  addu       $a2, $a2, $a3
/* E9E0 8001E1E0 0980033C */  lui        $v1, %hi(ot_ndx)
/* E9E4 8001E1E4 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* E9E8 8001E1E8 5400888C */  lw         $t0, 0x54($a0)
/* E9EC 8001E1EC 80100300 */  sll        $v0, $v1, 2
/* E9F0 8001E1F0 21104300 */  addu       $v0, $v0, $v1
/* E9F4 8001E1F4 C0100200 */  sll        $v0, $v0, 3
/* E9F8 8001E1F8 5000838C */  lw         $v1, 0x50($a0)
/* E9FC 8001E1FC 21208200 */  addu       $a0, $a0, $v0
/* EA00 8001E200 0A0086A4 */  sh         $a2, 0xA($a0)
/* EA04 8001E204 120086A4 */  sh         $a2, 0x12($a0)
/* EA08 8001E208 2130C800 */  addu       $a2, $a2, $t0
/* EA0C 8001E20C 0B80023C */  lui        $v0, %hi(g_nt + 0x8)
/* EA10 8001E210 1A0086A4 */  sh         $a2, 0x1A($a0)
/* EA14 8001E214 220086A4 */  sh         $a2, 0x22($a0)
/* EA18 8001E218 21304000 */  addu       $a2, $v0, $zero
/* EA1C 8001E21C 080085A4 */  sh         $a1, 0x8($a0)
/* EA20 8001E220 180085A4 */  sh         $a1, 0x18($a0)
/* EA24 8001E224 2118A300 */  addu       $v1, $a1, $v1
/* EA28 8001E228 100083A4 */  sh         $v1, 0x10($a0)
/* EA2C 8001E22C 200083A4 */  sh         $v1, 0x20($a0)
/* EA30 8001E230 70BB438C */  lw         $v1, %lo(g_nt + 0x8)($v0)
/* EA34 8001E234 00000000 */  nop
/* EA38 8001E238 09006010 */  beqz       $v1, .L8001E260
/* EA3C 8001E23C 70BB4524 */   addiu     $a1, $v0, %lo(g_nt + 0x8)
/* EA40 8001E240 0200A388 */  lwl        $v1, 0x2($a1)
/* EA44 8001E244 70BBC28C */  lw         $v0, %lo(g_nt + 0x8)($a2)
/* EA48 8001E248 00000000 */  nop
/* EA4C 8001E24C 00120200 */  sll        $v0, $v0, 8
/* EA50 8001E250 020082A8 */  swl        $v0, 0x2($a0)
/* EA54 8001E254 020083A8 */  swl        $v1, 0x2($a0)
/* EA58 8001E258 0800E003 */  jr         $ra
/* EA5C 8001E25C 70BBC4AC */   sw        $a0, %lo(g_nt + 0x8)($a2)
.L8001E260:
/* EA60 8001E260 0400A4AC */  sw         $a0, 0x4($a1)
/* EA64 8001E264 70BBC4AC */  sw         $a0, %lo(g_nt + 0x8)($a2)
/* EA68 8001E268 0800E003 */  jr         $ra
/* EA6C 8001E26C 00000000 */   nop
.size DrawHUDSprite, . - DrawHUDSprite
