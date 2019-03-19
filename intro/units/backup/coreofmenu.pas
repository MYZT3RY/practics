unit coreOfMenu;

{$mode objfpc}{$H+}

interface

uses crt,
	 coreOfOffense,
     coreOfMeeting,
     coreOfDeclared;

procedure lineMeetings();
procedure lineDeclared();
procedure lineOffense();
procedure showMenu();
procedure initMenu(marker:integer);
procedure initSubMenu(marker:integer);
procedure showMenuForMeetings();
procedure showMenuForDeclared();
procedure showMenuForOffenses();
procedure lineOutput();
procedure lineAdd();
procedure lineRemove();
procedure lineFind();
procedure lineBack();

implementation

procedure lineMeetings();
begin
	write('|    ');textColor(5); write('�������'); textColor(15); writeln('              |');
    writeln('|    ���������            |');
    writeln('|    ���������            |');
end;

procedure lineDeclared();
begin
    writeln('|    �������              |');
	write('|    '); textColor(5); write('���������'); textColor(15); writeln('            |');
    writeln('|    ���������            |');
end;

procedure lineOffense();
begin
    writeln('|    �������              |');
    writeln('|    ���������            |');
	write('|    '); textcolor(5); write('���������'); textcolor(15); writeln('            |');
end;

procedure showMenu();
var key:integer;
  	state:integer;
    pointer:integer;
begin
    pointer:=1;
    state:=2;
	while (state<>6)do begin
        case state of
            1: begin
				key:=ord(readkey);
                clrscr;
                state:=2;
                case key of
        	        13:
            	        case pointer of
                            1: state:=3;
                            2: state:=4;
                            3: state:=5;
                        end;
                    72:
                        case pointer of
                            2..3: dec(pointer);
                            else pointer:=3;
                        end;
                    80:
                        case pointer of
                            1..2: inc(pointer);
                            else pointer:=1;
                        end;
                    27:
                        halt();
                end;
            end;
            2: begin
				initMenu(pointer);
                state:=1;
            end;
            3: begin
            	uploadDataForMeetings();
                showMenuForMeetings();
            end;
            4: begin
				uploadDataForDeclared();
                showMenuForDeclared();
            end;
            5: begin
				uploadDataForOffenses();
                showMenuForOffenses();
            end;
        end;
    end;
end;

procedure initMenu(marker:integer);
begin
    writeln('===========================');
	writeln('|    ����� �������        |');
    case marker of
    	1: lineMeetings();
    	2: lineDeclared();
    	3: lineOffense();
    end;
    writeln('===========================');
end;

procedure showMenuForMeetings();
var state:integer;
	pointer:integer;
    key:integer;
begin
    pointer:=1;
    state:=2;
	while (state<>8)do begin
    	case state of
            1: begin
                key:=ord(readkey);
                clrscr;
				state:=2;
                case key of
        	        13:
            	        case pointer of
                            1: state:=3;
                            2: state:=4;
                            3: state:=5;
                            4: state:=6;
                            5: state:=7;
                        end;
                    72:
                        case pointer of
                            2..5: dec(pointer);
                            else pointer:=5;
                        end;
                    80:
                        case pointer of
                            1..4: inc(pointer);
                            else pointer:=1;
                        end;
                end;
            end;
            2: begin
            	initSubMenu(pointer);
            	state:=1;
            end;
            3: begin
            end;
            4: begin
            end;
            5: begin
        	end;
            6: begin
            end;
            7: begin
				showMenu();
            end;
        end;
    end;
end;

procedure showMenuForDeclared();
var state:integer;
	pointer:integer;
    key:integer;
begin
    pointer:=1;
    state:=2;
	while (state<>8)do begin
    	case state of
            1: begin
                key:=ord(readkey);
                clrscr;
				state:=2;
                case key of
        	        13:
            	        case pointer of
                            1: state:=3;
                            2: state:=4;
                            3: state:=5;
                            4: state:=6;
                            5: state:=7;
                        end;
                    72:
                        case pointer of
                            2..5: dec(pointer);
                            else pointer:=5;
                        end;
                    80:
                        case pointer of
                            1..4: inc(pointer);
                            else pointer:=1;
                        end;
                end;
            end;
            2: begin
            	initSubMenu(pointer);
            	state:=1;
            end;
            3: begin
            end;
            4: begin
            end;
            5: begin
        	end;
            6: begin
            end;
            7: begin
				showMenu();
            end;
        end;
    end;
end;

procedure showMenuForOffenses();
var state:integer;
    pointer:integer;
    key:integer;
begin
    pointer:=1;
    state:=2;
    while (state<>8)do begin
        case state of
            1: begin
                key:=ord(readkey);
                clrscr;
    			state:=2;
                case key of
            	    13:
                	    case pointer of
                            1: state:=3;
                            2: state:=4;
                            3: state:=5;
                            4: state:=6;
                            5: state:=7;
                        end;
                    72:
                        case pointer of
                            2..5: dec(pointer);
                            else pointer:=5;
                        end;
                    80:
                        case pointer of
                            1..4: inc(pointer);
                            else pointer:=1;
                        end;
                end;
            end;
            2: begin
                initSubMenu(pointer);
                state:=1;
            end;
            3: begin
            end;
            4: begin
            end;
            5: begin
            end;
            6: begin
            end;
            7: begin
    			showMenu();
            end;
        end;
    end;
end;

procedure lineOutput();
begin
    write('|    '); textcolor(5); write('������� ��� ������'); textcolor(15); writeln('   |');
	writeln('|    �������� ������      |');
    writeln('|    ������� ������       |');
    writeln('|    ����� ������         |');
    writeln('|    ��������� �������    |');
end;

procedure lineAdd();
begin
    writeln('|    ������� ��� ������   |');
    write('|    '); textcolor(5); write('�������� ������'); textcolor(15); writeln('      |');
    writeln('|    ������� ������       |');
    writeln('|    ����� ������         |');
    writeln('|    ��������� �������    |');
end;

procedure lineRemove();
begin
	writeln('|    ������� ��� ������   |');
    writeln('|    �������� ������      |');
    write('|    '); textcolor(5); write('������� ������'); textcolor(15); writeln('       |');
    writeln('|    ����� ������         |');
    writeln('|    ��������� �������    |');
end;

procedure lineFind();
begin
	writeln('|    ������� ��� ������   |');
    writeln('|    �������� ������      |');
    writeln('|    ������� ������       |');
    write('|    '); textcolor(5); write('����� ������'); textcolor(15); writeln('         |');
    writeln('|    ��������� �������    |');
end;

procedure lineBack();
begin
	writeln('|    ������� ��� ������   |');
    writeln('|    �������� ������      |');
    writeln('|    ������� ������       |');
    writeln('|    ����� ������         |');
    write('|    '); textcolor(5); write('��������� �������'); textcolor(15); writeln('    |');
end;

procedure initSubMenu(marker:integer);
begin
	writeln('===========================');
	writeln('|    ��� ����� �������?   |');
    case marker of
        1: lineOutput();
        2: lineAdd();
        3: lineRemove();
        4: lineFind();
        5: lineBack();
    end;
	writeln('===========================');
end;

end.
