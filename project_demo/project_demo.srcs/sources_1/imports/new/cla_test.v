`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 13:18:42
// Design Name: 
// Module Name: cla_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cla_test;

    reg [31:0] a,b;
    reg cin;
    wire [31:0] s; 
    wire cout;
        
    //cla_32 c1(.a(a),.b(b),.cin(cin),.s(s),.cout(cout)); 
    
    full_adder c2(.a(a),.b(b),.cin(cin),.sum(s),.cout(cout));
    
    initial     
    begin 
    //a = 32'b1111_1111_1111_1111_1111_1111_1111_0000; 
    //b = 32'b1111_1111_1111_1111_1111_1111_1111_0000; 
    a = 32'b0000_0000_0000_0000_0000_0000_1111_0000;
    b = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
    cin = 1'b0; 
 
    #100    
    a = 32'b0111_1111_1111_1111_1111_1111_1111_0000; 
    b = 32'b0111_1111_1111_1111_1111_1111_1111_0000; 
    cin = 1'b0; 
    
    #100 
    //a = 32'b1000_1111_1111_1111_1111_1111_1111_1110; 
    //b = 32'b1000_0000_0000_0000_0000_0000_0000_0001; 
    
    a = 32'b0000_0000_0000_0000_0000_0000_1000_0000; // 128
    b = 32'b1111_1111_1111_1111_1111_1111_1111_1110; // 1
    
    cin = 1'b1; 
    end 

endmodule
