
module scheduler #(
    parameter DATA_WIDTH = 32,
    parameter CMD_WIDTH = 4,
    parameter COMPUTE_UNIT_NUM = 4,
    parameter MEM_UNIT_NUM = 1,
    parameter ROB_DEPTH = 16
)(
    input wire clk,
    input wire reset,

    input wire consumer_ready,

    input wire [CMD_WIDTH-1:0] command,
    input wire command_valid,
    input wire [DATA_WIDTH-1:0] first_operand,
    input wire [DATA_WIDTH-1:0] second_operand,

    output wire [DATA_WIDTH-1:0] res,
    output wire res_valid,

    output wire [COMPUTE_UNIT_NUM + MEM_UNIT_NUM - 1:0] can_take_result,

    output wire full
);
    // Implement me
endmodule


module compute_unit #(
    parameter DATA_WIDTH = 32,
    parameter CMD_WIDTH = 4,
)(
    input wire clk,
    input wire reset,

    input wire[CMD_WIDTH - 1:0] command,
    input wire command_valid,
    input wire[DATA_WIDTH - 1:0] first_operand,
    input wire[DATA_WIDTH - 1:0] second_operand,

    input wire scheduler_can_take_result,

    output wire[DATA_WIDTH - 1:0] res,
    output wire res_valid,

    output wire can_take_command,
);
    // Implement me
endmodule

module mem_unit #(
    parameter DATA_WIDTH = 32,
    parameter CMD_WIDTH = 2,
)(
    input wire clk,
    input wire reset,

    input wire[CMD_WIDTH - 1:0] command,
    input wire command_valid,
    input wire[DATA_WIDTH - 1:0] first_operand,
    input wire[DATA_WIDTH - 1:0] second_operand,

    input wire scheduler_can_take_result,

    output wire[DATA_WIDTH-1:0] res,
    output wire res_valid,

    output wire can_take_command,
);
    // Implement me
endmodule