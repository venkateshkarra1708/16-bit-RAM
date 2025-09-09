module ram_tb;
reg [3:0] indata;
reg clk,rst,en,wr;
reg [3:0] addr;
wire [3:0] outdata;

ram dut (.indata(indata),.clk(clk),.addr(addr),
.rst(rst),.en(en),.wr(wr),.outdata(outdata));

initial 
begin
$monitor("indata=%b,clk=%b,rst=%b,addr=%b,en=%b,wr=%b,outdata=%b",
indata,clk,rst,addr,en,wr,outdata);
clk=1;
forever #10 clk=~clk;
end

initial begin
rst=0;
#700;
rst=1;
#100;
rst=0;
#700;
end
initial begin
wr=1;
en=1;
indata=4'b1111;
addr=4'b0000;
#20;
indata=4'b1110;
addr=4'b0001;
#20;
indata=4'b1101;
addr=4'b0010;
#20;
indata=4'b1100;
addr=4'b0011;
#20;
indata=4'b1011;
addr=4'b0100;
#20;
indata=4'b1010;
addr=4'b0101;
#20;
indata=4'b1001;
addr=4'b0110;
#20;
indata=4'b1000;
addr=4'b0111;
#20;
indata=4'b0111;
addr=4'b1000;
#20;
indata=4'b0110;
addr=4'b1001;
#20;
indata=4'b0101;
addr=4'b1010;
#20;
indata=4'b0100;
addr=4'b1011;
#20;
indata=4'b0011;
addr=4'b1100;
#20;
indata=4'b0010;
addr=4'b1101;
#20;
indata=4'b0001;
addr=4'b1110;
#20;
indata=4'b0000;
addr=4'b1111;
#20;


wr=0;
addr=4'b0000;
#20;
addr=4'b0001;
#20;
addr=4'b0010;
#20;
addr=4'b0011;
#20;
addr=4'b0100;
#20;
addr=4'b0101;
#20;
addr=4'b0110;
#20;
addr=4'b0111;
#20;
addr=4'b1000;
#20;
addr=4'b1001;
#20;
addr=4'b1010;
#20;
addr=4'b1011;
#20;
addr=4'b1100;
#20;
addr=4'b1101;
#20;
addr=4'b1110;
#20;
addr=4'b1111;
#20;
addr=4'b0101;
#100;
addr=4'b1010;
#100;


end
endmodule
