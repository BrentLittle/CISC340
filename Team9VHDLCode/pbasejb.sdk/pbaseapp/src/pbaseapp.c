
/*
 * main.c
 *
 *  Created on: Aug 23, 2019
 *      Author: dave
 */
//AXI GPIO driver
#include "xgpio.h"
//#include "sleep.h"
//send data over UART
#include "xil_printf.h"

//information about AXI peripherals
#include "xparameters.h"
//#include "platform.h"
#include "xsysmon.h"
#define RX_BUFFER_SIZE 4 // defines how many XADC channels are read
#define xadc XPAR_SYSMON_0_DEVICE_ID
XSysMon xadc_inst;
int xsts;
char *channel[] ={"VAUX14","VAUX07","VAUX15","VAUX06"}; //for RawData printf
int sample[4] = {XSM_CH_AUX_MIN + 14,XSM_CH_AUX_MIN + 7,XSM_CH_AUX_MIN + 15,XSM_CH_AUX_MIN + 6};
//sample array used to specify channel when reading ADC data into XADC_Buf
int main()
{
	XGpio gpio;
	XGpio gpio1;
	XGpio gpio2;
	XGpio gpio3;
	XGpio gpio4;
	u32 btn, led;
	u32 sw;
	u32 jbin, digin, rpiin;
    u32 jcout;
    u32 bcdout;
    
	XGpio_Initialize(&gpio, 0); //buttons and leds
	XGpio_Initialize(&gpio1, 1); //switches
	XGpio_Initialize(&gpio2, 2); //JB connector
	XGpio_Initialize(&gpio3, 3); //JC connector
	XGpio_Initialize(&gpio4, 4); //Seven Segment Display
	
	XGpio_SetDataDirection(&gpio, 2, 0x00000000); // set led GPIO channel tristates to All Output
	XGpio_SetDataDirection(&gpio, 1, 0xFFFFFFFF); // set BTN GPIO channel tristates to All Input
	XGpio_SetDataDirection(&gpio1, 1, 0xFFFFFFFF); // set sw GPIO channel tristates to All Input
	XGpio_SetDataDirection(&gpio2, 1, 0xFFFFFFFF); // set JB GPIO channel tristates to All Input
	XGpio_SetDataDirection(&gpio3, 1, 0x00000000); // set JC GPIO channel tristates to All Output
	XGpio_SetDataDirection(&gpio4, 1, 0x00000000); //set bcdout channel to ALL Outputs
	int Index;
	XSysMon *xadc_inst_ptr = &xadc_inst;
	u32 XADC_Buf[RX_BUFFER_SIZE];


	XSysMon_Config *xadc_config;

//	init_platform();

	xil_printf("XADC Example\n\r");

	xadc_config = XSysMon_LookupConfig(xadc);
	if (NULL == xadc_config){
		xil_printf("XSysMon_LookupConfig failed\n");
	}

	XSysMon_CfgInitialize(xadc_inst_ptr,xadc_config,xadc_config->BaseAddress);

	xsts=XSysMon_SelfTest(xadc_inst_ptr);
	if (XST_SUCCESS != xsts){
		xil_printf("ADC self test failed\n");
	}
	XSysMon_SetSequencerMode(xadc_inst_ptr,XSM_SEQ_MODE_SAFE);
	XSysMon_SetAlarmEnables(xadc_inst_ptr, 0x00000000);
	XSysMon_SetSequencerMode(xadc_inst_ptr,XSM_SEQ_MODE_SAFE);
	XSysMon_SetAlarmEnables(xadc_inst_ptr, 0x0);
	xsts = XSysMon_SetSeqChEnables(xadc_inst_ptr,
				XSM_SEQ_CH_AUX14 |
				XSM_SEQ_CH_AUX07 |
				XSM_SEQ_CH_AUX15 |
				XSM_SEQ_CH_AUX06);
	if (XST_SUCCESS != xsts){
			xil_printf("Failed to configure XSysMon_SetSeqChEnables\n");
	}
	xsts=XSysMon_SetSeqInputMode(xadc_inst_ptr,0);
	if (XST_SUCCESS != xsts){
		xil_printf("Failed to configure all XADC channels as unipolar\n");
	}
	XSysMon_SetSequencerMode(xadc_inst_ptr,XSM_SEQ_MODE_CONTINPASS);

	while(1)
	{
		/*********PushButton, Switch, and Led Section*************/
		sw  = XGpio_DiscreteRead(&gpio1,1); // read in values from switches
		jbin  = XGpio_DiscreteRead(&gpio2,1); // read in value from jb GPIO pmod
		
		jbin = jbin | 0xF00; // add a dash to the left of the number
		
		jbin = (jbin<<4) | 0x000F; // shift the bit to the left and add a hyphen at the end
		
		XGpio_DiscreteWrite(&gpio4, 1, jbin); // write what is coming in from jbin to the 7seg display
		
		int maskSW0 =  0b0000000000000001; // mask to isolate the bit sor switch 0
		int maskSW1 =  0b0000000000000010; // mask to isolate the bit for switch 1 
		
		if ((maskSW0 & sw) == 1) 
			xil_printf("\r%d\n",1); // if switch is on set our Ferenheit output to 1 over the serial output
		else 
			xil_printf("\r%d\n",0); // if switch is on set our Ferenheit output to 0 over the serial output
			
		if ((maskSW1 & sw) == 2) 
			xil_printf("\r%d\n",1); // if switch is on set our armed output to 1 over the serial output
		else 
			xil_printf("\r%d\n",0); // if switch is not on set our armed output to 0 over the serial output
		
		/*************end of section*************/

		/*************XADC section*************/
		XSysMon_GetStatus(xadc_inst_ptr); //Clear the old status
		
		// OUTPUT ONLY VAUX06 VALUE
		for (Index = 3;Index<RX_BUFFER_SIZE;Index++)
		{ 											
			while((XSysMon_GetStatus(xadc_inst_ptr)& XSM_SR_EOS_MASK) != XSM_SR_EOS_MASK)
			{
				XADC_Buf[Index] = XSysMon_GetAdcData(xadc_inst_ptr,sample[Index]);
			}
		}
		
		// OUTPUT ONLY VAUX06 VALUE
		for(Index = 3;Index<RX_BUFFER_SIZE;Index++)
		{
		    xil_printf("%d\n",(int)(XADC_Buf[Index]>>4)); 
		}
		
		//xil_printf("   \n");
		sleep(1);
		/*************end of section*************/
	} //end of while(1)
	return 0;
}



