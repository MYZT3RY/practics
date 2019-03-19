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
	write('|    ');textColor(5); write('митинги'); textColor(15); writeln('              |');
    writeln('|    заявители            |');
    writeln('|    нарушения            |');
end;

procedure lineDeclared();
begin
    writeln('|    митинги              |');
	write('|    '); textColor(5); write('заявители'); textColor(15); writeln('            |');
    writeln('|    нарушения            |');
end;

procedure lineOffense();
begin
    writeln('|    митинги              |');
    writeln('|    заявители            |');
	write('|    '); textcolor(5); write('нарушения'); textcolor(15); writeln('            |');
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
	writeln('|    выбор таблицы        |');
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
    write('|    '); textcolor(5); write('вывести все данные'); textcolor(15); writeln('   |');
	writeln('|    добавить данные      |');
    writeln('|    удалить данные       |');
    writeln('|    найти данные         |');
    writeln('|    вернуться обратно    |');
end;

procedure lineAdd();
begin
    writeln('|    вывести все данные   |');
    write('|    '); textcolor(5); write('добавить данные'); textcolor(15); writeln('      |');
    writeln('|    удалить данные       |');
    writeln('|    найти данные         |');
    writeln('|    вернуться обратно    |');
end;

procedure lineRemove();
begin
	writeln('|    вывести все данные   |');
    writeln('|    добавить данные      |');
    write('|    '); textcolor(5); write('удалить данные'); textcolor(15); writeln('       |');
    writeln('|    найти данные         |');
    writeln('|    вернуться обратно    |');
end;

procedure lineFind();
begin
	writeln('|    вывести все данные   |');
    writeln('|    добавить данные      |');
    writeln('|    удалить данные       |');
    write('|    '); textcolor(5); write('найти данные'); textcolor(15); writeln('         |');
    writeln('|    вернуться обратно    |');
end;

procedure lineBack();
begin
	writeln('|    вывести все данные   |');
    writeln('|    добавить данные      |');
    writeln('|    удалить данные       |');
    writeln('|    найти данные         |');
    write('|    '); textcolor(5); write('вернуться обратно'); textcolor(15); writeln('    |');
end;

procedure initSubMenu(marker:integer);
begin
	writeln('===========================');
	writeln('|    что нужно сделать?   |');
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
