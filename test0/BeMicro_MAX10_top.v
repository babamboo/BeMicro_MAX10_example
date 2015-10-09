/* This is a Verilog template for use with the BeMicro MAX 10 development kit */
/* It is used for showing the IO pin names and directions                     */
/* Ver 0.2 10.07.2014                                                         */

/* NOTE: A VHDL version of this template is also provided with this design    */
/* example for users that prefer VHDL. This BeMicro_MAX10_top.v file would    */
/* need to be removed from the project and replaced with the                  */
/* BeMicro_MAX10_top.vhd file to switch to the VHDL template.                 */

/* The signals below are documented in the "BeMicro MAX 10 Getting Started    */
/* User Guide."  Please refer to that document for additional signal details. */

module BeMicro_MAX10_top (
	/* Clock inputs, SYS_CLK = 50MHz, USER_CLK = 24MHz */
	input SYS_CLK,
	input USER_CLK,
	
	/* DAC, 12-bit, SPI interface (AD5681) */
	output AD5681R_LDACn,
	output AD5681R_RSTn,
	output AD5681R_SCL,
	output AD5681R_SDA,
	output AD5681R_SYNCn,
	
	/* Temperature sensor, I2C interface (ADT7420) */
	input ADT7420_CT,
	input ADT7420_INT,
	inout ADT7420_SCL,
	inout ADT7420_SDA,
	
	/* Accelerometer, 3-Axis, SPI interface (ADXL362)*/
	output ADXL362_CS,
	input ADXL362_INT1,
	input ADXL362_INT2,
	input ADXL362_MISO,
	output ADXL362_MOSI,
	output ADXL362_SCLK,
	
	/* 8MB SDRAM, ISSI IS42S16400J-7TL SDRAM device */
	output [12:0] SDRAM_A,
	output [1:0] SDRAM_BA,
	output SDRAM_CASn,
	output SDRAM_CKE,
	output SDRAM_CLK,
	output SDRAM_CSn,
	inout [15:0] SDRAM_DQ,
	output SDRAM_DQMH,
	output SDRAM_DQML,
	output SDRAM_RASn,
	output SDRAM_WEn,
	
	/* Serial SPI Flash, 16Mbit, Micron M25P16-VMN6 */
	input SFLASH_ASDI,
	input SFLASH_CSn,
	inout SFLASH_DATA,
	inout SFLASH_DCLK,
	
	/* MAX10 analog inputs */
	input [7:0] AIN,
	
	/* pushbutton switch inputs */
	input [4:1] PB,
	
	/* LED outputs */
	output [8:1] USER_LED,
	
	/* BeMicro 80-pin Edge Connector */ 
	inout EG_P1,
	inout EG_P10,
	inout EG_P11,
	inout EG_P12,
	inout EG_P13,
	inout EG_P14,
	inout EG_P15,
	inout EG_P16,
	inout EG_P17,
	inout EG_P18,
	inout EG_P19,
	inout EG_P2,
	inout EG_P20,
	inout EG_P21,
	inout EG_P22,
	inout EG_P23,
	inout EG_P24,
	inout EG_P25,
	inout EG_P26,
	inout EG_P27,
	inout EG_P28,
	inout EG_P29,
	inout EG_P3,
	inout EG_P35,
	inout EG_P36,
	inout EG_P37,
	inout EG_P38,
	inout EG_P39,
	inout EG_P4,
	inout EG_P40,
	inout EG_P41,
	inout EG_P42,
	inout EG_P43,
	inout EG_P44,
	inout EG_P45,
	inout EG_P46,
	inout EG_P47,
	inout EG_P48,
	inout EG_P49,
	inout EG_P5,
	inout EG_P50,
	inout EG_P51,
	inout EG_P52,
	inout EG_P53,
	inout EG_P54,
	inout EG_P55,
	inout EG_P56,
	inout EG_P57,
	inout EG_P58,
	inout EG_P59,
	inout EG_P6,
	inout EG_P60,
	inout EG_P7,
	inout EG_P8,
	inout EG_P9,
	input EXP_PRESENT,
	output RESET_EXPn,
	
	/* Expansion headers (pair of 40-pin headers) */
	inout GPIO_01,
	inout GPIO_02,
	inout GPIO_03,
	inout GPIO_04,
	inout GPIO_05,
	inout GPIO_06,
	inout GPIO_07,
	inout GPIO_08,
	inout GPIO_09,
	inout GPIO_10,
	inout GPIO_11,
	inout GPIO_12,
	inout GPIO_A,
	inout GPIO_B,
	inout I2C_SCL,
	inout I2C_SDA,
	//The following group of GPIO_J3_* signals can be used as differential pair 
	//receivers as defined by some of the Terasic daughter card that are compatible 
	//with the pair of 40-pin expansion headers. To use the differential pairs, 
	//there are guidelines regarding neighboring pins that must be followed.  
	//Please refer to the "Using LVDS on the BeMicro MAX 10" document for details.
	inout GPIO_J3_15,
	inout GPIO_J3_16,
	inout GPIO_J3_17,
	inout GPIO_J3_18,
	inout GPIO_J3_19,
	inout GPIO_J3_20,
	inout GPIO_J3_21,
	inout GPIO_J3_22,
	inout GPIO_J3_23,
	inout GPIO_J3_24,
	inout GPIO_J3_25,
	inout GPIO_J3_26,
	inout GPIO_J3_27,
	inout GPIO_J3_28,
	inout GPIO_J3_31,
	inout GPIO_J3_32,
	inout GPIO_J3_33,
	inout GPIO_J3_34,
	inout GPIO_J3_35,
	inout GPIO_J3_36,
	inout GPIO_J3_37,
	inout GPIO_J3_38,
	inout GPIO_J3_39,
	inout GPIO_J3_40,
	//The following group of GPIO_J4_* signals can be used as true LVDS transmitters 
	//as defined by some of the Terasic daughter card that are compatible 
	//with the pair of 40-pin expansion headers. To use the differential pairs, 
	//there are guidelines regarding neighboring pins that must be followed.  
	//Please refer to the "Using LVDS on the BeMicro MAX 10" document for details.
	inout GPIO_J4_11,
	inout GPIO_J4_12,
	inout GPIO_J4_13,
	inout GPIO_J4_14,
	inout GPIO_J4_15,
	inout GPIO_J4_16,
	inout GPIO_J4_19,
	inout GPIO_J4_20,
	inout GPIO_J4_21,
	inout GPIO_J4_22,
	inout GPIO_J4_23,
	inout GPIO_J4_24,
	inout GPIO_J4_27,
	inout GPIO_J4_28,
	inout GPIO_J4_29,
	inout GPIO_J4_30,
	inout GPIO_J4_31,
	inout GPIO_J4_32,
	inout GPIO_J4_35,
	inout GPIO_J4_36,
	inout GPIO_J4_37,
	inout GPIO_J4_38,
	inout GPIO_J4_39,
	inout GPIO_J4_40,
	
	/* PMOD connectors */
	inout [3:0] PMOD_A,
	inout [3:0] PMOD_B,
	inout [3:0] PMOD_C,
	inout [3:0] PMOD_D
);

   // chattering cancel
	reg [8:0] 	r_reset_cnt;
	reg 		r_reset_n;
	always @(posedge SYS_CLK) begin
		if (!PB[1])
			r_reset_cnt <= 0;
		else if (r_reset_cnt != 'h1ff)
			r_reset_cnt <= r_reset_cnt + 1;
	end
	always @(posedge SYS_CLK) begin
		if (r_reset_cnt != 'h1ff)
			r_reset_n <= 0;
		else 
			r_reset_n <= 1;
	end

	// Qsys module
	wire [3:0] w_dummy;
	test0 u0 (
		.clk_clk       (SYS_CLK), 		// clk.clk
		.pio_export    (USER_LED),  	// pio.export
		.reset_reset_n (r_reset_n)		// reset.reset_n
	);

endmodule
