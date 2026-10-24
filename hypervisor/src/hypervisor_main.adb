with Drivers.UART;

procedure Hypervisor_Main is
begin
   Drivers.UART.Put ("eggos hypervisor started" & ASCII.LF);
   loop
      null;
   end loop;
end Hypervisor_Main;