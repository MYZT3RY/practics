unit coreOfDeclared;

{$mode objfpc}{$H+}

interface

type nm=record
     name:string[24];
     lastname:string[24];
     pantronymic:string[24];
end;

type dclrd=record
     id:integer;
     name:nm;
     flagOfOffense:boolean;
end;

var declared:array of dclrd;
  	fileDeclared:file of dclrd;

function uploadDataForDeclared():integer;
function reWriteDataForDeclared():integer;

implementation

function uploadDataForDeclared():integer;
var i:integer;
begin
	i:=0;
    writeln('загрузка из базы данных завершена');
    assign(fileDeclared,'declared');
    reset(fileDeclared);
    setlength(declared,1);
    while (not eof(fileDeclared))do begin
        read(fileDeclared,declared[i]);
        inc(i);
        setlength(declared,i);
    end;
    close(fileDeclared);
end;

function reWriteDataForDeclared():integer;
var i:integer;
begin
	assign(fileDeclared,'declared');
    rewrite(fileDeclared);
    for i:=0 to length(declared) do
    	write(fileDeclared,declared[i]);
    close(fileDeclared);
end;

end.
