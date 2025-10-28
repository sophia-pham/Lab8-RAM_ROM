module ram_tb();
	//regs are inputs, wires are outputs
	reg clk, rst, w;
	reg [7:0] data_in;
	reg [2:0] addr;
	wire [7:0] data_out;
	
	//instantiate the module
	ram dut(.clk(clk), .rst(rst), .w(w), .data_in(data_in), .addr(addr), .data_out(data_out));
	
	//set up the clock
	always #5 clk = ~clk;
	
	initial begin
		// clk cycle 1
		clk = 0;
		rst = 1;
		w = x;
		data_in = x;
		addr = x;
		#10; //clk is going up at 5, down at 10 of this delay
		
		// clk cycle 2: store 8'd92 in addr 3'd2
		rst = 0;
		w = 1;
		data_in = 8'd92; //8 bits max is 128
		addr = 3'd2;
		// data_out should be x here since we are writing
		#10; //clk goes up at 5, down at 10
		
		// clk cycle 3: store 8'd42 in addr 3'd7
		//rst still 0, w still 1
		data_in = 8'd42;
		addr = 3'd7;
		#10;
		
		// clk cycle 4: read from addr 3'd2
		w = 0;
		addr = 3'd2;
		// data_out should be 8'd92 here
		#10;
		
		// clk cycle 5: reset
		rst = 1;
		#10;
		
		//clk cycle 6: read from 3'd7
		rst = 0;
		addr = 3'd7;
		// data_out should be 0 here
		#10;
		
		$finish;
	end
endmodule