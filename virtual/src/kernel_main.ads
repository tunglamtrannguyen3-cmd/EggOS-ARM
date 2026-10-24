procedure Kernel_Main
  with SPARK_Mode,
       Export,
       Convention => C,
       External_Name => "kernel_main";
