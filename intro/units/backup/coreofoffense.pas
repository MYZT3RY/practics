unit coreOfOffense;

{$mode objfpc}{$H+}

interface

type ffns=record
     id:integer;
     idOfMeeting:integer;
     idOfDeclared:integer;
     regulatoryFact:string[64];
     articleAndParagraphOfRegulatoryFact:real;
     flagOfCourtConviction:boolean;
end;

var offense:array of ffns;
    fileOffense:file of ffns;

function uploadDataForOffenses():integer;
function reWriteDataForOffenses():integer;

implementation

function uploadDataForOffenses():integer;
var i:integer;
begin
	i:=0;
	writeln('загрузка из базы данных завершена');
    assign(fileOffense,'offenses');
    reset(fileOffense);
    setlength(offense,1);
    while (not eof(fileOffense))do begin
        read(fileOffense,offense[i]);
		inc(i);
        setlength(offense,i);
    end;
    close(fileOffense);
end;

function reWriteDataForOffenses():integer;
var i:integer;
begin
    assign(fileOffense,'offenses');
    rewrite(fileOffense);
    for i:=0 to length(offense) do
        write(fileOffense,offense[i]);
	close(fileOffense);
end;

end.
