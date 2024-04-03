.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Print
/* 494C0 80058CC0 0C00A7AF */  sw         $a3, 0xC($sp)
/* 494C4 80058CC4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 494C8 80058CC8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 494CC 80058CCC 009C0400 */  sll        $s3, $a0, 16
/* 494D0 80058CD0 1000B0AF */  sw         $s0, 0x10($sp)
/* 494D4 80058CD4 0B80103C */  lui        $s0, %hi(bufC.70)
/* 494D8 80058CD8 98B61026 */  addiu      $s0, $s0, %lo(bufC.70)
/* 494DC 80058CDC 21200002 */  addu       $a0, $s0, $zero
/* 494E0 80058CE0 1800B2AF */  sw         $s2, 0x18($sp)
/* 494E4 80058CE4 00940500 */  sll        $s2, $a1, 16
/* 494E8 80058CE8 2128E000 */  addu       $a1, $a3, $zero
/* 494EC 80058CEC 1400B1AF */  sw         $s1, 0x14($sp)
/* 494F0 80058CF0 008C0600 */  sll        $s1, $a2, 16
/* 494F4 80058CF4 3800A627 */  addiu      $a2, $sp, 0x38
/* 494F8 80058CF8 039C1300 */  sra        $s3, $s3, 16
/* 494FC 80058CFC 03941200 */  sra        $s2, $s2, 16
/* 49500 80058D00 038C1100 */  sra        $s1, $s1, 16
/* 49504 80058D04 2000BFAF */  sw         $ra, 0x20($sp)
/* 49508 80058D08 7F61010C */  jal        pssprintf
/* 4950C 80058D0C 3400A7AF */   sw        $a3, 0x34($sp)
/* 49510 80058D10 21200002 */  addu       $a0, $s0, $zero
/* 49514 80058D14 21286002 */  addu       $a1, $s3, $zero
/* 49518 80058D18 21304002 */  addu       $a2, $s2, $zero
/* 4951C 80058D1C EA60010C */  jal        TextAddString
/* 49520 80058D20 21382002 */   addu      $a3, $s1, $zero
/* 49524 80058D24 2000BF8F */  lw         $ra, 0x20($sp)
/* 49528 80058D28 1C00B38F */  lw         $s3, 0x1C($sp)
/* 4952C 80058D2C 1800B28F */  lw         $s2, 0x18($sp)
/* 49530 80058D30 1400B18F */  lw         $s1, 0x14($sp)
/* 49534 80058D34 1000B08F */  lw         $s0, 0x10($sp)
/* 49538 80058D38 0800E003 */  jr         $ra
/* 4953C 80058D3C 2800BD27 */   addiu     $sp, $sp, 0x28
.size Print, . - Print
