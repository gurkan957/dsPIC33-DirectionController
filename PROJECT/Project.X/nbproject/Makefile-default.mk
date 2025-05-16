#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Project.c lib/src/dataXfer.c lib/src/dataXferImpl.c lib/src/pic24_adc.c lib/src/pic24_clockfreq.c lib/src/pic24_configbits.c lib/src/pic24_ecan.c lib/src/pic24_flash.c lib/src/pic24_i2c.c lib/src/pic24_serial.c lib/src/pic24_spi.c lib/src/pic24_stdio_uart.c lib/src/pic24_timer.c lib/src/pic24_uart.c lib/src/pic24_util.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Project.o ${OBJECTDIR}/lib/src/dataXfer.o ${OBJECTDIR}/lib/src/dataXferImpl.o ${OBJECTDIR}/lib/src/pic24_adc.o ${OBJECTDIR}/lib/src/pic24_clockfreq.o ${OBJECTDIR}/lib/src/pic24_configbits.o ${OBJECTDIR}/lib/src/pic24_ecan.o ${OBJECTDIR}/lib/src/pic24_flash.o ${OBJECTDIR}/lib/src/pic24_i2c.o ${OBJECTDIR}/lib/src/pic24_serial.o ${OBJECTDIR}/lib/src/pic24_spi.o ${OBJECTDIR}/lib/src/pic24_stdio_uart.o ${OBJECTDIR}/lib/src/pic24_timer.o ${OBJECTDIR}/lib/src/pic24_uart.o ${OBJECTDIR}/lib/src/pic24_util.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Project.o.d ${OBJECTDIR}/lib/src/dataXfer.o.d ${OBJECTDIR}/lib/src/dataXferImpl.o.d ${OBJECTDIR}/lib/src/pic24_adc.o.d ${OBJECTDIR}/lib/src/pic24_clockfreq.o.d ${OBJECTDIR}/lib/src/pic24_configbits.o.d ${OBJECTDIR}/lib/src/pic24_ecan.o.d ${OBJECTDIR}/lib/src/pic24_flash.o.d ${OBJECTDIR}/lib/src/pic24_i2c.o.d ${OBJECTDIR}/lib/src/pic24_serial.o.d ${OBJECTDIR}/lib/src/pic24_spi.o.d ${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d ${OBJECTDIR}/lib/src/pic24_timer.o.d ${OBJECTDIR}/lib/src/pic24_uart.o.d ${OBJECTDIR}/lib/src/pic24_util.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Project.o ${OBJECTDIR}/lib/src/dataXfer.o ${OBJECTDIR}/lib/src/dataXferImpl.o ${OBJECTDIR}/lib/src/pic24_adc.o ${OBJECTDIR}/lib/src/pic24_clockfreq.o ${OBJECTDIR}/lib/src/pic24_configbits.o ${OBJECTDIR}/lib/src/pic24_ecan.o ${OBJECTDIR}/lib/src/pic24_flash.o ${OBJECTDIR}/lib/src/pic24_i2c.o ${OBJECTDIR}/lib/src/pic24_serial.o ${OBJECTDIR}/lib/src/pic24_spi.o ${OBJECTDIR}/lib/src/pic24_stdio_uart.o ${OBJECTDIR}/lib/src/pic24_timer.o ${OBJECTDIR}/lib/src/pic24_uart.o ${OBJECTDIR}/lib/src/pic24_util.o

# Source Files
SOURCEFILES=Project.c lib/src/dataXfer.c lib/src/dataXferImpl.c lib/src/pic24_adc.c lib/src/pic24_clockfreq.c lib/src/pic24_configbits.c lib/src/pic24_ecan.c lib/src/pic24_flash.c lib/src/pic24_i2c.c lib/src/pic24_serial.c lib/src/pic24_spi.c lib/src/pic24_stdio_uart.c lib/src/pic24_timer.c lib/src/pic24_uart.c lib/src/pic24_util.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP128GP502
MP_LINKER_FILE_OPTION=,--script="lib\application_linker_file\p33EP128GP502_application.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Project.o: Project.c  .generated_files/flags/default/7d7ff24732843bfd01eeb394c39b00b5293635c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Project.o.d 
	@${RM} ${OBJECTDIR}/Project.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Project.c  -o ${OBJECTDIR}/Project.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Project.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/dataXfer.o: lib/src/dataXfer.c  .generated_files/flags/default/2b754b0543ba815de06cce3e072b291ae5d41142 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/dataXfer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/dataXfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/dataXfer.c  -o ${OBJECTDIR}/lib/src/dataXfer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/dataXfer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/dataXferImpl.o: lib/src/dataXferImpl.c  .generated_files/flags/default/75a6af224e0e303df65470e5cc01f3c52ea0e0ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/dataXferImpl.o.d 
	@${RM} ${OBJECTDIR}/lib/src/dataXferImpl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/dataXferImpl.c  -o ${OBJECTDIR}/lib/src/dataXferImpl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/dataXferImpl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_adc.o: lib/src/pic24_adc.c  .generated_files/flags/default/8fbfc008b045a3820a8d3a688fc73e19338afa8d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_adc.c  -o ${OBJECTDIR}/lib/src/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_adc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_clockfreq.o: lib/src/pic24_clockfreq.c  .generated_files/flags/default/628b645d940294111d25b9671367d53cb556054c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/lib/src/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_clockfreq.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_configbits.o: lib/src/pic24_configbits.c  .generated_files/flags/default/61cbe9eb318d1fbbb3818eef7ba5daa964de9132 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_configbits.c  -o ${OBJECTDIR}/lib/src/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_configbits.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_ecan.o: lib/src/pic24_ecan.c  .generated_files/flags/default/bcf33be4441c72334cec353ebbef6b80ac448e66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_ecan.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_ecan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_ecan.c  -o ${OBJECTDIR}/lib/src/pic24_ecan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_ecan.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_flash.o: lib/src/pic24_flash.c  .generated_files/flags/default/8c9d209d700a4cd392f106ea21d540ea0b5cb25d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_flash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_flash.c  -o ${OBJECTDIR}/lib/src/pic24_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_i2c.o: lib/src/pic24_i2c.c  .generated_files/flags/default/97d1b5a8faa681cba4aa3d3cbd6c08b61da9427f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_i2c.c  -o ${OBJECTDIR}/lib/src/pic24_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_i2c.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_serial.o: lib/src/pic24_serial.c  .generated_files/flags/default/22ff0fae561827e53bd7a7a901e37ef882b8b181 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_serial.c  -o ${OBJECTDIR}/lib/src/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_serial.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_spi.o: lib/src/pic24_spi.c  .generated_files/flags/default/425c33168dcd0f083ade426b0bbb88879ee36d59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_spi.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_spi.c  -o ${OBJECTDIR}/lib/src/pic24_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_stdio_uart.o: lib/src/pic24_stdio_uart.c  .generated_files/flags/default/4189e66a928443446db7892faa83ebd0103c13d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_stdio_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_stdio_uart.c  -o ${OBJECTDIR}/lib/src/pic24_stdio_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_timer.o: lib/src/pic24_timer.c  .generated_files/flags/default/528394b292e5373708bc6326340624d7ef2d5f67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_timer.c  -o ${OBJECTDIR}/lib/src/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_uart.o: lib/src/pic24_uart.c  .generated_files/flags/default/708d94d94fe2e9aac88e2e90b7b13f30a84407a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_uart.c  -o ${OBJECTDIR}/lib/src/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_util.o: lib/src/pic24_util.c  .generated_files/flags/default/5b037cb4c2c928145658e18e98d15f04d90f805c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_util.c  -o ${OBJECTDIR}/lib/src/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_util.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/Project.o: Project.c  .generated_files/flags/default/f2ac8a7f556163b190d5388bf4e5a9f6172f0981 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Project.o.d 
	@${RM} ${OBJECTDIR}/Project.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Project.c  -o ${OBJECTDIR}/Project.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Project.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/dataXfer.o: lib/src/dataXfer.c  .generated_files/flags/default/2a2227fd5d89799cc72250e3e2a20331e700bfaa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/dataXfer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/dataXfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/dataXfer.c  -o ${OBJECTDIR}/lib/src/dataXfer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/dataXfer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/dataXferImpl.o: lib/src/dataXferImpl.c  .generated_files/flags/default/257e88d30d6f8e8298d731a81308202607077bdd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/dataXferImpl.o.d 
	@${RM} ${OBJECTDIR}/lib/src/dataXferImpl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/dataXferImpl.c  -o ${OBJECTDIR}/lib/src/dataXferImpl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/dataXferImpl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_adc.o: lib/src/pic24_adc.c  .generated_files/flags/default/1562fdeb3e41df396885af5b5980bb8ad17f13e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_adc.c  -o ${OBJECTDIR}/lib/src/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_adc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_clockfreq.o: lib/src/pic24_clockfreq.c  .generated_files/flags/default/b8dc3d0b81f3dfa6d11646aa8b437376e16f6169 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/lib/src/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_clockfreq.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_configbits.o: lib/src/pic24_configbits.c  .generated_files/flags/default/2444618e2f2eb2827a60a03a04fe43f640a26797 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_configbits.c  -o ${OBJECTDIR}/lib/src/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_configbits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_ecan.o: lib/src/pic24_ecan.c  .generated_files/flags/default/93e4e5f9b004061828931efcbbf6584f2a3105ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_ecan.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_ecan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_ecan.c  -o ${OBJECTDIR}/lib/src/pic24_ecan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_ecan.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_flash.o: lib/src/pic24_flash.c  .generated_files/flags/default/e1c572acf9d893368f45859f278cf9e370b20869 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_flash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_flash.c  -o ${OBJECTDIR}/lib/src/pic24_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_i2c.o: lib/src/pic24_i2c.c  .generated_files/flags/default/fb066d770b697570097396113ab0ef8fa18074b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_i2c.c  -o ${OBJECTDIR}/lib/src/pic24_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_i2c.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_serial.o: lib/src/pic24_serial.c  .generated_files/flags/default/d435c2b5ac9cc9ef29606c404598379525d5280b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_serial.c  -o ${OBJECTDIR}/lib/src/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_spi.o: lib/src/pic24_spi.c  .generated_files/flags/default/bfb9c3d5da0f1523f47e56da21e218107ddc7e54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_spi.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_spi.c  -o ${OBJECTDIR}/lib/src/pic24_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_stdio_uart.o: lib/src/pic24_stdio_uart.c  .generated_files/flags/default/5c851dc1f2d006dc0bcaee8ff10a98b14de648c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_stdio_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_stdio_uart.c  -o ${OBJECTDIR}/lib/src/pic24_stdio_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_timer.o: lib/src/pic24_timer.c  .generated_files/flags/default/28083f7a79133ee489ef8e4ccac30279f0148912 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_timer.c  -o ${OBJECTDIR}/lib/src/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_uart.o: lib/src/pic24_uart.c  .generated_files/flags/default/f22a196ad7e538dd2efd89b5a3562835518a03d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_uart.c  -o ${OBJECTDIR}/lib/src/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_util.o: lib/src/pic24_util.c  .generated_files/flags/default/2e0bef79a2af7aedde8e9aac1929dfe19dc53498 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_util.c  -o ${OBJECTDIR}/lib/src/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_util.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    lib/application_linker_file/p33EP128GP502_application.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   lib/application_linker_file/p33EP128GP502_application.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/Project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
