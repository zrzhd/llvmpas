unit b4;

interface
{
function test(x, z: smallint; y: Integer): Boolean;
function test2(x: int64; y: int64): Boolean;
function test3(x: int64; y: uint64): Boolean;
function test4(x: uint64; y: int64): Boolean;
function test5(x: uint64; y: int64): Boolean;}

(*function flt_test1(x, y: Single): Boolean;
function flt_test2(x: Single; y: double): Boolean;
function flt_test3(x: Comp; y: double): Boolean;
function flt_test4(x: Comp; y: double; z: smallint): Boolean;
function flt_test5(x, y: Comp): Boolean;

function cy_test1(x, y: currency): boolean;
function cy_test2(x, y: currency): currency;

function cy_test3(x: currency; y: comp): Boolean;
function cy_test4(x: currency; y: comp): Currency;
*)

{function addr_test2(var x: pointer): pchar;
function addr_test3(var x: byte): char;
}
type
	psmallint = ^smallint;
	ppsmallint = ^psmallint;

function addr_test4(var x: pointer): char;
function addr_test6(x: pointer): char;
//function addr_test5(x: ppsmallint): char;

implementation
{
function addr_test5(x: ppsmallint): char;
begin
	result := char(x^^);
end;}

function addr_test4(var x: pointer): char;
begin
	result := char(x^);
end;

function addr_test6(x: pointer): char;
begin
	result := char(x^);
end;

(*
function addr_test2(var x: pointer): pchar;
begin
	result := pchar(@x);
	// %.1 = load i8** %x.addr
	// %.2 = bitcast i8* %.1 to i8*
	//
end;

function addr_test3(var x: byte): char;
begin
	result := char(x);
end;*)

{
function test(x, z: smallint; y: Integer): Boolean;
begin
	Result := x + z > y;
end;

function test2(x: int64; y: int64): Boolean;
begin
	Result := x > y;
end;

function test3(x: int64; y: uint64): Boolean;
begin
	Result := x > y;
end;

function test4(x: uint64; y: int64): Boolean;
begin
	Result := x <> y;
end;

function test5(x: uint64; y: int64): Boolean;
begin
	Result := x = y;
end;}
(*
function flt_test1(x, y: Single): Boolean;
begin
	Result := x > y;
end;

function flt_test2(x: Single; y: double): Boolean;
begin
	Result := x > y;
end;

function flt_test3(x: Comp; y: double): Boolean;
begin
	Result := x < y;
end;

function flt_test4(x: Comp; y: double; z: smallint): Boolean;
begin
	Result := x + z < y;
end;

function flt_test5(x, y: Comp): Boolean;
begin
	Result := x * 2 < y;
end;

function cy_test1(x, y: currency): boolean;
begin
	result := x + 2 < y;
end;

function cy_test2(x, y: currency): currency;
begin
	result := x * 2 + y;
end;

function cy_test3(x: currency; y: comp): Boolean;
begin
	Result := x > y;
end;

function cy_test4(x: currency; y: comp): Currency;
begin
	result := x * y;
end;
*)

end.