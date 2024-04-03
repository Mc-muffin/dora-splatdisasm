.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PickupInit
/* D1C8 8001C9C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D1CC 8001C9CC 1000BFAF */  sw         $ra, 0x10($sp)
/* D1D0 8001C9D0 0C0080AC */  sw         $zero, 0xC($a0)
/* D1D4 8001C9D4 600080AC */  sw         $zero, 0x60($a0)
/* D1D8 8001C9D8 540080AC */  sw         $zero, 0x54($a0)
/* D1DC 8001C9DC 9C0080AC */  sw         $zero, 0x9C($a0)
/* D1E0 8001C9E0 A00080AC */  sw         $zero, 0xA0($a0)
/* D1E4 8001C9E4 DA25010C */  jal        GenericActorInit
/* D1E8 8001C9E8 A40080AC */   sw        $zero, 0xA4($a0)
/* D1EC 8001C9EC 1000BF8F */  lw         $ra, 0x10($sp)
/* D1F0 8001C9F0 00000000 */  nop
/* D1F4 8001C9F4 0800E003 */  jr         $ra
/* D1F8 8001C9F8 1800BD27 */   addiu     $sp, $sp, 0x18
.size PickupInit, . - PickupInit
