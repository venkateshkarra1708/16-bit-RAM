module ram(
    input [3:0] indata,
    output reg [3:0] outdata,
    input clk,
    input [3:0]addr,
    input rst,
    input en,
    input wr
    );
    reg [3:0]mem[15:0];
    always@(posedge clk,posedge rst)
    begin
    if (rst ==1)
    outdata<=4'b0000;
    else if (en==1 & wr==1)
    mem[addr]<=indata;
    else if (en==1 & wr==0)
    outdata<=mem[addr];
    else 
    outdata<=4'bxxxx;
    end
endmodule
