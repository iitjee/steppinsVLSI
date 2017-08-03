//Instantiation of a modules gives Instance.


    // Define the top-level module called ripple carry
    // counter.It instantiates 4T-flipflops.
      module ripple-carry-counter(q, clk, reset);
          output [3:0] q; 
          input clk, reset;
      //Four instances of the module T-FF are created. Each has a unique name.Each instance is passed a set of signals.     
      // notice,that each instance is a copy of the module T-FF.
          T-FF tffO(q[O],clk,reset);
          T-FF tffl(q[l],g[0],reset); 
          T-FF tff2(q[2],q[1], reset); 
          T-FF tff3(q[3],q[2],reset);
    endmodule
    
                                                      
    // Define the module T-FF. It instantiates a D-flipflop. We assumed // that module
    //D-flipflop is defined elsewhere in the design
        module T-FF(q, clk, reset);
            output q;
            input clk, reset;
            wire d;
            D-FF dff0(q,d, clk, reset); // Instantiate D-FF. Call it dff0. 
            not nl(d, q); //not gate is a verilog primitive
        endmodule



In Verilog, it is illegal to nest modules. One module definition cannot contain another module definition within the module 
and endmodule statements. Instead, a module definition can incorporate copies of other modules by instantiating them.

    
    
    
Testing:
     The functionality of the design block can be tested by applying stimulus and checking results. We call such a block the 
    stimulus block.(aka test bench).Different test benches can be used to thoroughly test the design block.

Two styles of stimulus application are in usage:
    
