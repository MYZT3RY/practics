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
	while(not eof(fileMeetings))do begin
		read(fileMeetings,meeting[i]);
		writeln('id ',meeting[i].id,' address ',meeting[i].addressOfMeeting,' flag ',meeting[i].acceptFlag,' day ',meeting[i].dateOfMeeting.day);
		writeln(' month ',meeting[i].dateOfMeeting.month);
		writeln(' year ',meeting[i].dateOfMeeting.year);
		writeln(' declared ',meeting[i].declaredMembers);
		writeln(' list ', meeting[i].listOfMembers);
		writeln(' hour ',meeting[i].timeOfMeeting.hour);
		writeln(' minute ',meeting[i].timeOfMeeting.minute);
		inc(i);
		setlength(meeting,i);
	end;
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

procedure writeInFile();
begin
	assign(fileMeetings,'meetings.txt');
    rewrite(fileMeetings);
    setlength(meeting,2);
    meeting[0].id:=2;
    meeting[1].id:=3;
    meeting[0].addressOfMeeting:='улица пушкина дом калатушкина';
    meeting[1].addressOfMeeting:='г. Москва';
    write(fileMeetings,meeting[0]);
    write(fileMeetings,meeting[1]);
end;

function showMenu():integer;
var key,resultKey:string;
begin
	clrscr;
	writeln('***************************');
	writeln('*       выбор таблицы     *');
	writeln('*  митинги                *');
	writeln('*  заявители              *');
	writeln('*  правонарушения         *');
	writeln('***************************');
	readkey;
{	while true do begin
		key:=readkey;
		//str(ord(key[2])
		writeln(key);
	end;}
end;

function showInitMessage(countOfPoints:integer):integer;
begin
	if(countOfPoints <> 3)then begin
		write('.');
		inc(countOfPoints);
		delay(1000);
		result:=showInitMessage(countOfPoints);
	end;
	result:=showMenu();
end;

begin
   write('загрузка таблиц из базы данных');
   showInitMessage(0);
end.
