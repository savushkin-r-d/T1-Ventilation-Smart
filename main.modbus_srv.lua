--version  = 1
--Eplanner version = 2022.8.8251.20557
------------------------------------------------------------------------------
function read_holding_registers( n, start_idx, count )
   return read_hr2(n, start_idx, count)
end

function write_holding_registers( n, start_idx, count, buff )
    write_hr2(n, start_idx, count, buff)
end