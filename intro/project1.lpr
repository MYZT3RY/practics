uses crt, Unit1;

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

type ffns=record
     id:integer;
     idOfMeeting:integer;
     idOfDeclared:integer;
     regulatoryFact:string[64];
     articleAndParagraphOfRegulatoryFact:real;
     flagOfCourtConviction:boolean;
end;

var meeting:array of mtngs;
    declared:array of dclrd;
    offense:array of ffns;
    fileMeetings:file of mtngs;
    fileDeclared:file of dclrd;
    fileOffense:file of ffns;

procedure uploadDataForMeetings();
var i:integer;
begin
	i:=0;
	writeln('загрузка из базы данных завершена');
	assign(fileMeetings,'митинги.txt');
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
    close(fileMeetings);
end;

procedure reWriteDataForMeetings();
var i:integer;
begin
	assign(fileMeetings,'митинги.txt');
    rewrite(fileMeetings);
    for i:=0 to length(meeting) do
        write(fileMeetings,meeting[i]);
    close(fileMeetings);
end;

procedure uploadDataForDeclared();
var i:integer;
begin
	i:=0;
    writeln('загрузка из базы данных завершена');
    assign(fileDeclared,'заявители.txt');
    reset(fileDeclared);
    while (not eof(fileDeclared))do begin
        read(fileDeclared,declared[i]);
        write('id ',declared[i].id);
        write(' name ',declared[i].name.name);
        write(' lastname ',declared[i].name.lastname);
        write(' pantronymic ',declared[i].name.pantronymic);
        write(' flagofoffense ',declared[i].flagOfOffense);
        inc(i);
        setlength(declared,i);
    end;
    close(fileDeclared);
end;

procedure reWriteDataForDeclared();
var i:integer;
begin
	assign(fileDeclared,'заявители.txt');
    rewrite(fileDeclared);
    for i:=0 to length(declared) do
    	write(fileDeclared,declared[i]);
    close(fileDeclared);
end;

procedure uploadDataForOffenses();
var i:integer;
begin
	i:=0;
	writeln('загрузка из базы данных завершена');
    assign(fileOffense,'правонарушения.txt');
    reset(fileOffense);
    while (not eof(fileOffense))do begin
        read(fileOffense,offense[i]);
        write('id ',offense[i].id);
        write(' idofmeeting ',offense[i].idOfMeeting);
        write(' idofdeclared ',offense[i].idOfDeclared);
        write(' regilatoryfact ',offense[i].regulatoryFact);
        write(' articleandparagraphofregulatoryfact ',offense[i].articleAndParagraphOfRegulatoryFact);
        write(' flagofcourtconviction ',offense[i].flagOfCourtConviction);
		inc(i);
        setlength(offense,i);
    end;
end;

procedure reWriteDataForOffenses();
var i:integer;
begin
    assign(fileOffense,'правонарушения.txt');
    rewrite(fileOffense);
    for i:=0 to length(offense) do
        write(fileOffense,offense[i]);
	close(fileOffense);
end;

function checkFile():integer;
var fileName:string;
    file1:text;
begin
	readln(fileName);
	assign(file1,fileName);
	{$I-} reset(file1); {$I+}
	if IOResult()<>0 then begin
		writeln('файл не найден! попробуйте ещё раз (meetings.txt; declared.txt; offenses.txt;)');
		result:=checkFile();
	end else begin
		writeln('начинается загрузка');
		delay(3000);
		if (fileName = 'митинги.txt') then
			uploadDataForMeetings()
		else if (fileName = 'заявители.txt') then
			uploadDataForDeclared()
		else if (fileName = 'правонарушения.txt') then
			uploadDataForOffenses();
	end;
end;

function showMenu():integer;
var key:integer;
begin
	clrscr;
	writeln('***************************');
	writeln('*       выбор таблицы     *');
	writeln('*   митинги               *');
	writeln('*   заявители             *');
	writeln('*   правонарушения        *');
	writeln('***************************');  //вверх - 72; вниз - 80; влево - 75; вправо - 77;
    while true do begin
    	key:=ord(readkey);
	    if (key=72) then
	    	writeln('вверх')
        else if (key=80) then
	    	writeln('вниз');
    end;
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
