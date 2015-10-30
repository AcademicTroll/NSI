pragma SPARK_Mode(on);

procedure SWAP(X : in out Integer; Y : in out Integer)
  with
    Pre  => (if X >= 0 and Y >= 0 then X <= Integer'Last - Y
                   elsif X < 0 and Y < 0 then X >= Integer'First - Y),
    Post => (X'Old = Y) and (Y'Old = X);
