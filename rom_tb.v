module rom_tb;
    reg [2:0] addr;
    wire [3:0] data_out; //4 bit width

    rom uut(.data_out(data_out),.addr(addr));
    
    initial begin
        //read from each of 8 addresses 
        addr = 3'd0;
        #10;
        addr = 3'd1;
        #10;
        addr = 3'd2;
        #10;
        addr = 3'd3;
        #10;
        addr = 3'd4;
        #10;
        addr = 3'd5;
        #10;
        addr = 3'd6;
        #10;
        addr = 3'd7;
        #10;
        
        $finish;
    end

endmodule
