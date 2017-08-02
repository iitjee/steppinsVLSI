//Instantiation of a modules gives Instance.


    // Define the top-level module called ripple carry
    // counter.Itinstantiates4T-flipflops.Interconnectionsare // showninSection2.2,4-bitRippleCarryCounter.
      module ripple-carry-counter(q, clk, reset);
        output [3:01 q; //I/O signals and vector declarations //willbe explained later.
        input clk, reset; //I/O signals will be explained later.
      //Four instances of the module T-FF are created. Each has a unique //name.Each instance is passed a set of signals.     
      // notice,that each instance is a copy of the module T-FF.
        T-FF tffO(q[O],~lk,reset);
        T-FF tffl(q[l],g[()],reset); T-FF tff2(q[2],q[ll, reset); T-FF tff3(q[3],q[2],reset);
    endmodule
    // Define the module T-FF. It instantiates a D-flipflop. We assumed // thatmoduleD-
    flipflopisdefinedelsewhereinthedesign.Refer / / to Figure 2-4 for interconnections.
        module T-FF(q, clk, reset);
    //Declarations to be explained later output q;
