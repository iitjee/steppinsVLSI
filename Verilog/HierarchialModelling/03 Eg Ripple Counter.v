let us build the complete simulation of a ripple carry counter. We will define the design block and the stimulus block. We 
will apply stimulus to the design block and monitor the outputs. 

        module ripple-carry-counter(q, clk, reset);
          output [3:01 q;
          input clk, reset;

          T-FF tffO(q[O],clk,reset);
          T-FF tff1(q[1],q[O],reset);
          T-FF tff2(q[2],q[1],reset);
          T-FF tff3(q[3l,q[2],reset);

        endmodule

In the above module, four instances of the module T F F (T-flipflop) are used. Therefore, we must now define the 
internals of the module T-FF

        module T-FF (q, clk, reset);
          output q;
          input clk, reset; wire d;
          
          D-FF dff0(q,d, clk, reset);
          not n1(d,q);
        endmodule
        
        
Since T-FF instantiates D-FF, we must now define the internals of module D-FF. 
       // module D-FF with synchronous reset
      module D-FF(q, d, clk, reset);
        output q;
        input d, clk, reset; reg q;
      // Ignore the functionality of the constructs. 
      // Concentrate on how the design block is built in a top-down fashion. 
      
      always @(posedge reset or negedge clk)
      if (reset)
         q = l'bO;
      // module D-FF with synchronous reset 
      else
        q=d;
      endmodule
      
All modules have been defined down to the lowest-level leaf cells in the design methodology. The design block is now complete


Stimulus Block:
We must now write the stimulus block to check if the ripple carry counter design is functioning correctly. In this case, we 
must control the signals clk and reset so that the regular function of the ripple carry counter and the asynchronous reset 
mechanism are both tested.

(see text book for some timing diagrams - needed!)
          module stimulus;
            reg clk; 
            reg reset; 
            wire[3:01 q;
            
            // instantiate the design block 
            ripple-carry-counter r1(q, clk, reset);
           
           // Control the clk signal that drives the design block. Cycletime=l0
            initial
              clk = l'bO; //set clk to 0 
            always
              #5 clk = ~clk; //toggle clk every 5 time units
              
            // Control the reset signal that drives the design block 
            // reset is asserted from 0 to 20 and from 200 to 220. 
            initial
            begin
              reset = 1'bl;
              #15 reset = 1'bO;
              #180 reset = 1'b1;
              #10 reset = 1'bO;
              #20 $finish; //terminate the simulation
          end
          
          // Monitor the outputs initial
          $monitor($time, " Output q = %d", q); 
          endmodule
          
          
Once  the stimulus block is completed, we are ready to run the simulation and verify the functional correctness of the design 
block. 
