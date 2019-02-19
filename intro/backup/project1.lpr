const maxMeetings=20;

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
    tmp:string;
    i:integer;
    tempFile:string;

procedure uploadDataFromFile(var fileName:string);
var state:boolean;
begin
     state:=false;
     while state<>true do
           begin
                 readln(fileName);
                 assign(file1,fileName);
                 {$I-}
                 reset(file1);
//                 {$I+}
                 if IOResult()<>0 then
                    writeln('файл не найден')
                 else begin
                    writeln('файл найден');
                    state:=true;
                 end;
           end;
end;

begin
     writeln('введите название файла, с которым нужно вести работу (meetings.txt; declared.txt; offenses.txt;)');
     readln(tempFile);
     uploadDataFromFile(tempFile);

     {i:=1;
     setlength(meeting,1);
     assign(file1,'meetings.txt');
     reset(file1);
     while (eof(file1))do
           begin
                readln(file1,tempString);

           end;}
     readln;
end.
