with Text_Io, Ada.Integer_Text_Io;
use Text_Io, Ada.Integer_Text_Io;

procedure MainProg is
	package Int_Io is new Integer_Io(Integer);
    use Int_Io;

    task OddTask is
    	entry okDone;
    end OddTask;

    task EvenTask is
    	entry okDone;
    end EvenTask;

-- Odd Task

    task body OddTask is
    begin
	    for k in 1 .. 99 loop
	    	if k rem 2 = 1 then
    			accept okDone; 
	    		Ada.Integer_Text_Io.Put(k);
	    		EvenTask.okDone; 
	    	end if;
	    end loop;	  
    end OddTask;

-- Even Task

    task body EvenTask is
    begin
	    for k in 2 .. 100 loop
	    	if k rem 2 = 0 then
    			accept okDone; 
	    		Ada.Integer_Text_Io.Put(k);
	    		OddTask.okDone;
	    	end if;
	    end loop;	  
    end EvenTask;


begin
	OddTask.okDone;
	-- Text_Io.put("Hello");
end MainProg;
