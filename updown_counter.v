module updown_counter (
    input clk,
    input rst,
    input updown,  // 1 for up, 0 for down
    output reg [2:0] count
);

always @(posedge clk  ) begin
    if (rst)
        count <= 3'b000;
    else if(updown)
       count<=count+1;
   else
      count<=count-1;
        
      
end

endmodule
