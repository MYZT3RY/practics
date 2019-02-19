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
    writeln('загрузка из базы данных завершена');

end;

procedure uploadDataForDeclared();
begin
   writeln('загрузка из базы данных завершена');
end;

procedure uploadDataForOffenses();
begin
   writeln('загрузка из базы данных завершена');
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
      writeln('файл не найден! попробуйте ещё раз (meetings.txt; declared.txt; offenses.txt;)');
      result:=checkFile();
   end else begin
      writeln('начинается загрузка');
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
   writeln('введите название файла, с которым нужно вести работу (meetings.txt; declared.txt; offenses.txt;)');
   checkFile();
   readln;
end.
