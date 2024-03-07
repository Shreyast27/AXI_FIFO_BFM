`ifndef FIFO_BFM_320B_WR_INCR_ALLIGNED_SEQ_AWLEN_9_INCLUDED_
`define FIFO_BFM_320B_WR_INCR_ALLIGNED_SEQ_AWLEN_9_INCLUDED_

class fifo_bfm_320b_wr_incr_alligned_seq_awlen_9 extends base_sequence;

  `uvm_object_utils(fifo_bfm_320b_wr_incr_alligned_seq_awlen_9)
   
  function new(string name = "fifo_bfm_320b_wr_incr_alligned_seq_awlen_9");
    super.new(name);
  endfunction

  virtual task body();
    super.body();
    req = write_fifo_seq_item :: type_id :: create("req");
    `uvm_info(get_type_name(),"Before fifo_bfm_320b_wr_incr_alligned_seq_awlen_9",UVM_DEFAULT)
    repeat(1)begin
      start_item(req);
      if(!req.randomize() with {req.type_of_pkt==0; req.awlen==9; req.awsize==WRITE_4_BYTES; req.awburst==WRITE_INCR; req.wstrb=4'b1111;})
       begin
          `uvm_fatal("axi4","Rand failed");
       end 
      finish_item(req);
    end
  endtask

endclass

`endif
