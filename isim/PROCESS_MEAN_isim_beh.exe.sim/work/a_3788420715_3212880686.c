/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Mins/Documents/Xilinx/RealTimeFiltering/PROCESS_MEAN.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3788420715_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    int t26;
    int t27;

LAB0:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2752U);
    t6 = xsi_signal_has_event(t1);
    if (t6 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(75, ng0);
    t7 = (t0 + 1032U);
    t12 = *((char **)t7);
    t7 = (t0 + 9348U);
    t13 = (t0 + 1192U);
    t14 = *((char **)t13);
    t13 = (t0 + 9364U);
    t15 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t12, t7, t14, t13);
    t16 = (t11 + 12U);
    t17 = *((unsigned int *)t16);
    t18 = (1U * t17);
    t19 = (9U != t18);
    if (t19 == 1)
        goto LAB11;

LAB12:    t20 = (t0 + 5752);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 9U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 9380U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 9396U);
    t12 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t2, t1, t8, t7);
    t13 = (t11 + 12U);
    t17 = *((unsigned int *)t13);
    t18 = (1U * t17);
    t3 = (9U != t18);
    if (t3 == 1)
        goto LAB13;

LAB14:    t14 = (t0 + 5816);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 9U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 9428U);
    t7 = (t0 + 1992U);
    t8 = *((char **)t7);
    t7 = (t0 + 9444U);
    t12 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t2, t1, t8, t7);
    t13 = (t11 + 12U);
    t17 = *((unsigned int *)t13);
    t18 = (1U * t17);
    t3 = (9U != t18);
    if (t3 == 1)
        goto LAB15;

LAB16:    t14 = (t0 + 5880);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 9U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 9460U);
    t7 = (t0 + 2312U);
    t8 = *((char **)t7);
    t7 = (t0 + 9476U);
    t12 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t2, t1, t8, t7);
    t13 = (t11 + 12U);
    t17 = *((unsigned int *)t13);
    t18 = (1U * t17);
    t3 = (9U != t18);
    if (t3 == 1)
        goto LAB17;

LAB18:    t14 = (t0 + 5944);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 9U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 9508U);
    t7 = (t0 + 3272U);
    t8 = *((char **)t7);
    t7 = (t0 + 9524U);
    t12 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t2, t1, t8, t7);
    t13 = (t11 + 12U);
    t17 = *((unsigned int *)t13);
    t18 = (1U * t17);
    t3 = (10U != t18);
    if (t3 == 1)
        goto LAB19;

LAB20:    t14 = (t0 + 6008);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 10U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 9540U);
    t7 = (t0 + 3592U);
    t8 = *((char **)t7);
    t7 = (t0 + 9556U);
    t12 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t2, t1, t8, t7);
    t13 = (t11 + 12U);
    t17 = *((unsigned int *)t13);
    t18 = (1U * t17);
    t3 = (10U != t18);
    if (t3 == 1)
        goto LAB21;

LAB22:    t14 = (t0 + 6072);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 10U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 9572U);
    t7 = (t0 + 3912U);
    t8 = *((char **)t7);
    t7 = (t0 + 9588U);
    t12 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t2, t1, t8, t7);
    t13 = (t11 + 12U);
    t17 = *((unsigned int *)t13);
    t18 = (1U * t17);
    t3 = (11U != t18);
    if (t3 == 1)
        goto LAB23;

LAB24:    t14 = (t0 + 6136);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 11U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t17 = (10 - 7);
    t18 = (t17 * 1U);
    t25 = (0 + t18);
    t1 = (t2 + t25);
    t7 = (t0 + 6200);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 4368U);
    t2 = *((char **)t1);
    t26 = *((int *)t2);
    t27 = (t26 + 1);
    t1 = (t0 + 4368U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t27;
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 4368U);
    t2 = *((char **)t1);
    t26 = *((int *)t2);
    t3 = (t26 == 3);
    if (t3 != 0)
        goto LAB25;

LAB27:
LAB26:    goto LAB6;

LAB8:    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t5 = t10;
    goto LAB10;

LAB11:    xsi_size_not_matching(9U, t18, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(9U, t18, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(9U, t18, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(9U, t18, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(10U, t18, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(10U, t18, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(11U, t18, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 6264);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB26;

}


extern void work_a_3788420715_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3788420715_3212880686_p_0};
	xsi_register_didat("work_a_3788420715_3212880686", "isim/PROCESS_MEAN_isim_beh.exe.sim/work/a_3788420715_3212880686.didat");
	xsi_register_executes(pe);
}
