module encoder_8x3_gate_level (
    input [7:0] data_in,
    output reg [2:0] encoded_out
);

// Intermediate wire to simplify expressions
wire [7:0] inv_data;

// Assign the inverted data_in
assign inv_data = ~data_in;

// Priority encoder logic for encoded_out[0]
assign encoded_out[0] = inv_data[0] & inv_data[1] & inv_data[2] & inv_data[3] & inv_data[4] & inv_data[5] & inv_data[6] & inv_data[7];

// Priority encoder logic for encoded_out[1]
assign encoded_out[1] = (inv_data[0] & inv_data[1] & inv_data[2] & inv_data[3] & inv_data[4] & inv_data[5] & inv_data[6] & data_in[7]) |
                        (inv_data[0] & inv_data[1] & inv_data[2] & inv_data[3] & inv_data[4] & inv_data[5] & data_in[6]) |
                        (inv_data[0] & inv_data[1] & inv_data[2] & inv_data[3] & data_in[5]) |
                        (inv_data[0] & inv_data[1] & inv_data[2] & data_in[4]) |
                        (inv_data[0] & inv_data[1] & data_in[3]) |
                        (inv_data[0] & data_in[2]) |
                        (data_in[1]);

// Priority encoder logic for encoded_out[2]
assign encoded_out[2] = (inv_data[0] & inv_data[1] & inv_data[2] & inv_data[3] & inv_data[4] & inv_data[5] & inv_data[6] & inv_data[7]) |
                        (inv_data[0] & inv_data[1] & inv_data[2] & inv_data[3] & inv_data[4] & inv_data[5] & inv_data[6] & data_in[7]) |
                        (inv_data[0] & inv_data[1] & inv_data[2] & inv_data[3] & inv_data[4] & inv_data[5] & data_in[6]) |
                        (inv_data[0] & inv_data[1] & inv_data[2] & inv_data[3] & inv_data[4] & data_in[5]) |
                        (inv_data[0] & inv_data[1] & inv_data[2] & inv_data[3] & data_in[4]) |
                        (inv_data[0] & inv_data[1] & inv_data[2] & data_in[3]) |
                        (inv_data[0] & inv_data[1] & data_in[2]) |
                        (inv_data[0] & data_in[1]);

endmodule

