uses crt;

type dtOfMtng=record
     day:1..31;
     month:1..12;
     year:integer;
end;

type tmOfMtng=record
     hour:0..23;
     minute:0..59;
end;

type mtngs=record
     id:integer;
     dateOfMeeting:dtOfMtng;
     timeOfMeeting:tmOfMtng;
     addressOfMeeting:string;
     declaredMembers:integer;
     members:integer;
     listOfMembers:integer;
     acceptFlag:integer;
end;

var meeting:array of mtngs;
    file1:text;

procedure uploadDataForMeetings();
begin
    writeln('����㧪� �� ���� ������ �����襭�');

end;

procedure uploadDataForDeclared();
begin
   writeln('����㧪� �� ���� ������ �����襭�');
end;

procedure uploadDataForOffenses();
begin
   writeln('����㧪� �� ���� ������ �����襭�');
end;

function checkFile():integer;
var fileName:string;
begin
   readln(fileName);
   assign(file1,fileName);
   {$I-}
   reset(file1);
   {$I+}
   if IOResult()<>0 then begin
      writeln('䠩� �� ������! ���஡�� ��� ࠧ (meetings.txt; declared.txt; offenses.txt;)');
      result:=checkFile();
   end else begin
      writeln('��稭����� ����㧪�');
      delay(3000);
      if (fileName = 'meetings.txt') then
         uploadDataForMeetings()
      else if (fileName = 'declared.txt') then
         uploadDataForDeclared()
      else if (fileName = 'offenses.txt') then
         uploadDataForOffenses();
   end;
end;

begin
   writeln('������ �������� 䠩��, � ����� �㦭� ���� ࠡ��� (meetings.txt; declared.txt; offenses.txt;)');
   checkFile();
   readln;
end.
