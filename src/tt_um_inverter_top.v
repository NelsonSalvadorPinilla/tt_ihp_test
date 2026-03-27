`default_nettype none

module tt_um_inverter_top (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   wire CLK;
   wire RST;
   wire X;

   assign CLK = clk;
   assign RST= !rst_n;
    assign X= ui_in[0];

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   wire Q0;
   wire Q1;
   wire Q2;
   wire Z;

    assign uo_out[3:0] = {Q0, Q1, Q2, Z};
    assign uo_out[7:4]= 0;

    assign uio_out = 8'b00000000;
    assign uio_oe  = 8'b00000000;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet10;
   wire s_logisimNet11;
   wire s_logisimNet12;
   wire s_logisimNet13;
   wire s_logisimNet14;
   wire s_logisimNet15;
   wire s_logisimNet16;
   wire s_logisimNet17;
   wire s_logisimNet18;
   wire s_logisimNet19;
   wire s_logisimNet2;
   wire s_logisimNet20;
   wire s_logisimNet21;
   wire s_logisimNet22;
   wire s_logisimNet23;
   wire s_logisimNet24;
   wire s_logisimNet25;
   wire s_logisimNet26;
   wire s_logisimNet27;
   wire s_logisimNet28;
   wire s_logisimNet29;
   wire s_logisimNet3;
   wire s_logisimNet30;
   wire s_logisimNet31;
   wire s_logisimNet32;
   wire s_logisimNet33;
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;
   wire s_logisimNet7;
   wire s_logisimNet8;
   wire s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet10 = CLK;
   assign s_logisimNet3  = X;
   assign s_logisimNet6  = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Q0 = s_logisimNet2;
   assign Q1 = s_logisimNet1;
   assign Q2 = s_logisimNet0;
   assign Z  = s_logisimNet18;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet20 = ~s_logisimNet2;

   // NOT Gate
   assign s_logisimNet11 = ~s_logisimNet1;

   // NOT Gate
   assign s_logisimNet24 = ~s_logisimNet3;

   // NOT Gate
   assign s_logisimNet4 = ~s_logisimNet0;

   // NOT Gate
   assign s_logisimNet16 = ~s_logisimNet3;

   // NOT Gate
   assign s_logisimNet21 = ~s_logisimNet2;

   // NOT Gate
   assign s_logisimNet25 = ~s_logisimNet2;

   // NOT Gate
   assign s_logisimNet12 = ~s_logisimNet3;

   // NOT Gate
   assign s_logisimNet30 = ~s_logisimNet1;

   // NOT Gate
   assign s_logisimNet31 = ~s_logisimNet3;

   // NOT Gate
   assign s_logisimNet26 = ~s_logisimNet0;

   // NOT Gate
   assign s_logisimNet13 = ~s_logisimNet2;

   // NOT Gate
   assign s_logisimNet27 = ~s_logisimNet3;

   // NOT Gate
   assign s_logisimNet32 = ~s_logisimNet2;

   // NOT Gate
   assign s_logisimNet5 = ~s_logisimNet3;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_1 (.input1(s_logisimNet0),
               .input2(s_logisimNet20),
               .input3(s_logisimNet3),
               .result(s_logisimNet15));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_2 (.input1(s_logisimNet0),
               .input2(s_logisimNet11),
               .input3(s_logisimNet24),
               .result(s_logisimNet29));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_3 (.input1(s_logisimNet4),
               .input2(s_logisimNet1),
               .input3(s_logisimNet2),
               .input4(s_logisimNet16),
               .result(s_logisimNet8));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_4 (.input1(s_logisimNet0),
               .input2(s_logisimNet1),
               .input3(s_logisimNet21),
               .result(s_logisimNet28));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_5 (.input1(s_logisimNet1),
               .input2(s_logisimNet25),
               .input3(s_logisimNet12),
               .result(s_logisimNet17));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_6 (.input1(s_logisimNet30),
               .input2(s_logisimNet2),
               .input3(s_logisimNet31),
               .result(s_logisimNet23));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_7 (.input1(s_logisimNet26),
               .input2(s_logisimNet13),
               .input3(s_logisimNet27),
               .result(s_logisimNet33));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_8 (.input1(s_logisimNet0),
               .input2(s_logisimNet32),
               .input3(s_logisimNet3),
               .result(s_logisimNet22));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_9 (.input1(s_logisimNet0),
               .input2(s_logisimNet1),
               .input3(s_logisimNet2),
               .input4(s_logisimNet5),
               .result(s_logisimNet9));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_10 (.input1(s_logisimNet15),
                .input2(s_logisimNet29),
                .input3(s_logisimNet8),
                .result(s_logisimNet7));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_11 (.input1(s_logisimNet28),
                .input2(s_logisimNet17),
                .input3(s_logisimNet23),
                .result(s_logisimNet19));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_12 (.input1(s_logisimNet33),
                .input2(s_logisimNet22),
                .input3(s_logisimNet9),
                .result(s_logisimNet14));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_13 (.input1(s_logisimNet0),
                .input2(s_logisimNet1),
                .input3(s_logisimNet2),
                .result(s_logisimNet18));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_14 (.clock(s_logisimNet10),
                 .d(s_logisimNet7),
                 .preset(1'b0),
                 .q(s_logisimNet0),
                 .qBar(),
                 .reset(s_logisimNet6),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_15 (.clock(s_logisimNet10),
                 .d(s_logisimNet19),
                 .preset(1'b0),
                 .q(s_logisimNet1),
                 .qBar(),
                 .reset(s_logisimNet6),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_16 (.clock(s_logisimNet10),
                 .d(s_logisimNet14),
                 .preset(1'b0),
                 .q(s_logisimNet2),
                 .qBar(),
                 .reset(s_logisimNet6),
                 .tick(1'b1));


endmodule

