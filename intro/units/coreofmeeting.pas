unit coreOfMeeting;

{$mode objfpc}{$H+}

interface
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

function uploadDataForMeetings():integer;
function reWriteDataForMeetings():integer;

implementation

function uploadDataForMeetings():integer;
var i:integer;
begin
	i:=0;
	assign(fileMeetings,'meetings');
	reset(fileMeetings);
    setlength(meeting,1);
	while(not eof(fileMeetings))do begin
		read(fileMeetings,meeting[i]);
		inc(i);
		setlength(meeting,i);
	end;
    close(fileMeetings);
end;

function reWriteDataForMeetings():integer;
var i:integer;
begin
	assign(fileMeetings,'meetings');
    rewrite(fileMeetings);
    for i:=0 to length(meeting) do
        write(fileMeetings,meeting[i]);
    close(fileMeetings);
end;

end.
