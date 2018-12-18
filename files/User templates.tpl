v1
wc
[FILENAME]
debug [FILENAME]
(* MARK_DEBUG="true" *)

array default [FILENAME]
 = '{default:'d0};

clk [FILENAME]
	always @( posedge clk )
		begin
			if ( rst )
				begin
					
				end
			else
				begin
					
				end
		end

clk rst inst [FILENAME]
	wire rst_int;
	rst_resync rst_resync 
		(
		.in_rst(rst),
		.clk(clk),
		.out_rst(rst_int)
		);
	
	always @( posedge clk )
		begin
			if ( rst_int )
				begin
					
				end
			else
				begin
					
				end
		end

rst resync [FILENAME]
	reg rstInt_done = 0;
	reg [3:0] rstInt_proc = 0;
	always @( posedge clk or posedge rst )
		begin
			if ( rst ) 
				begin
					rstInt_done <= 1'b0;
					rstInt_proc <= 0;
				end
			else
				begin
					if ( rstInt_proc[3] )
						begin
							rstInt_done <= 1'b1;
						end
					else
						begin
							rstInt_done <= 1'b0;
							rstInt_proc[3:0] <= rstInt_proc[3:0] + 4'd1;
						end
				end
		end

rst resync inst [FILENAME]
	wire rst_int;
	rst_resync rst_resync 
		(
		.in_rst(rst),
		.clk(clk),
		.out_rst(rst_int)
		);

testbench [FILENAME]
   	reg [31:0] i_clk = 0;
	
	initial
		begin
			clk <= 0;
			i_clk <= 0;
		end
	
	always
		begin
			#5 clk <= ~clk;
		end
	
	always @( negedge clk )
		begin
			i_clk <= i_clk + 1;
			if ( i_clk == 1000 ) $finish;
		end
	
	always @( posedge clk )
		begin
			case ( i_clk )
				1 :
					begin
						
					end
				10 :
					begin
						
					end
			endcase
		end

