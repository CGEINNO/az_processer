
`include "nettype.h"
`include "stddef.h"
`include "global_config.h"


`include "bus.h"


module bus_slave_mux (

	input  wire				   s0_cs_,	   
	input  wire				   s1_cs_,	   
	input  wire				   s2_cs_,	   
	input  wire				   s3_cs_,	  
	input  wire				   s4_cs_,	   
	input  wire				   s5_cs_,	   
	input  wire				   s6_cs_,	   
	input  wire				   s7_cs_,	   


	input  wire [`WordDataBus] s0_rd_data, 
	input  wire				   s0_rdy_,	   

	input  wire [`WordDataBus] s1_rd_data, 
	input  wire				   s1_rdy_,	   

	input  wire [`WordDataBus] s2_rd_data, 
	input  wire				   s2_rdy_,	   

	input  wire [`WordDataBus] s3_rd_data, 
	input  wire				   s3_rdy_,	   

	input  wire [`WordDataBus] s4_rd_data, 
	input  wire				   s4_rdy_,	   

	input  wire [`WordDataBus] s5_rd_data, 
	input  wire				   s5_rdy_,	  

	input  wire [`WordDataBus] s6_rd_data, 
	input  wire				   s6_rdy_,	  

	input  wire [`WordDataBus] s7_rd_data, 
	input  wire				   s7_rdy_,	   

	output reg	[`WordDataBus] m_rd_data,  
	output reg				   m_rdy_	   
);


	always @(*) begin

		if (s0_cs_ == `ENABLE_) begin		   
			m_rd_data = s0_rd_data;
			m_rdy_	  = s0_rdy_;
		end else if (s1_cs_ == `ENABLE_) begin 
			m_rd_data = s1_rd_data;
			m_rdy_	  = s1_rdy_;
		end else if (s2_cs_ == `ENABLE_) begin 
			m_rd_data = s2_rd_data;
			m_rdy_	  = s2_rdy_;
		end else if (s3_cs_ == `ENABLE_) begin 
			m_rd_data = s3_rd_data;
			m_rdy_	  = s3_rdy_;
		end else if (s4_cs_ == `ENABLE_) begin 
			m_rd_data = s4_rd_data;
			m_rdy_	  = s4_rdy_;
		end else if (s5_cs_ == `ENABLE_) begin 
			m_rd_data = s5_rd_data;
			m_rdy_	  = s5_rdy_;
		end else if (s6_cs_ == `ENABLE_) begin 
			m_rd_data = s6_rd_data;
			m_rdy_	  = s6_rdy_;
		end else if (s7_cs_ == `ENABLE_) begin
			m_rd_data = s7_rd_data;
			m_rdy_	  = s7_rdy_;
		end else begin						   
			m_rd_data = `WORD_DATA_W'h0;
			m_rdy_	  = `DISABLE_;
		end
	end

endmodule
