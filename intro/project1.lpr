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
     addressOfMeeting:string[50];
     declaredMembers:integer;
     members:integer;
     listOfMembers:integer;
     acceptFlag:integer;
end;

var meeting:array of mtngs;
    fileMeetings:file of mtngs;

procedure uploadDataForMeetings();
var i:integer;
begin
  i:=0;
  writeln('загрузка из базы данных завершена');
  assign(fileMeetings,'meetings.txt');
  reset(fileMeetings);
  setlength(meeting,100);
  while(not eof(fileMeetings))do begin
    read(fileMeetings,meeting[i]);
    writeln('id ',meeting[i].id);
    writeln(' address ',meeting[i].addressOfMeeting);
    writeln(' flag ',meeting[i].acceptFlag);
    writeln(' day ',meeting[i].dateOfMeeting.day);
    writeln(' month ',meeting[i].dateOfMeeting.month);
    writeln(' year ',meeting[i].dateOfMeeting.year);
    writeln(' declared ',meeting[i].declaredMembers);
    writeln(' list ', meeting[i].listOfMembers);
    writeln(' hour ',meeting[i].timeOfMeeting.hour);
    writeln(' minute ',meeting[i].timeOfMeeting.minute);
    inc(i);
  end;
  setlength(meeting,i);
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
    file1:text;
begin
   readln(fileName);
   assign(file1,fileName);
   {$I-}
   reset(file1);
   {$I+}
   if IOResult()<>0 then begin
      writeln('файл не найден! попробуйте ещЄ раз (meetings.txt; declared.txt; offenses.txt;)');
      result:=checkFile();
   end else begin
      writeln('начинаетс€ загрузка');
      delay(3000);
      if (fileName = 'meetings.txt') then
         uploadDataForMeetings()
      else if (fileName = 'declared.txt') then
         uploadDataForDeclared()
      else if (fileName = 'offenses.txt') then
         uploadDataForOffenses();
   end;
end;

procedure writeInFile();
begin
     assign(fileMeetings,'meetings.txt');
     rewrite(fileMeetings);
     setlength(meeting,2);
     meeting[0].id:=2;
     meeting[1].id:=3;
     meeting[0].addressOfMeeting:='улица пушкина дом калатушкина';
     meeting[1].addressOfMeeting:='г. ћосква';
     write(fileMeetings,meeting[0]);
     write(fileMeetings,meeting[1]);
end;

begin
   writeln('введите название файла, с которым нужно вести работу (meetings.txt; declared.txt; offenses.txt;)');
   //checkFile();
   readln;
end.
