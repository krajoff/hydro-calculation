function h = headHtml
    b = '0';
    h = ['<!DOCTYPE html>\n' ...
        '<html lang="ru">\n' ...
        '<head>\n' ...
        '<title>��������� �������</title>\n' ...
        '<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">\n' ...
        '<style>\n' ...
        '.cwdtable{font-size:14px;' ...
            'color:#000;' ...
            'width:630px;' ...
            'border-collapse:collapse;' ...
            'padding:2px;' ...
            'border:0px solid black;' ...
            'font-family:Arial;' ...
            'margin-left:auto;' ... 
            'margin-right:auto;}\n' ...
        '.cwdtable tr {background:#fff;' ...
            'border-top:0px solid #999;' ...
            'border-bottom:1px solid #999;' ...
            'color:#154360;}\n' ...
        '.heighttr {height:25px;' ...
            'border:' b 'px solid black;}\n' ...
        '.boldtype {font-weight:bold;' ... 
            'text-align:center;' ...
            'font-size:16px}\n'...
        '.signtext {font-size:6px;' ... 
            'padding:2px;' ... 
            'color:#111;}\n' ...
        '.borderon td{border:1px ' ...
            'solid black;}\n' ...
        '.weight {font-weight:bold;}\n' ...
        '.borderbtm {border-bottom:' b 'px solid black;}\n' ...
        '.borderall {border:' b 'px solid black;}\n' ...
        '.font {font-size:20px;}\n' ...
        '.center {text-align:center;}\n' ...
        '.right {text-align:right;}\n' ...
        '.left {text-align:left;}\n' ...
	    '.bordertd {border:' b 'px solid black;}\n' ...
        '.ultd {border:' b 'px solid black;' ...
            'padding-left:20px}\n' ...
        '</style>\n' ...
        '</head>\n' ...
        '<body>\n'];
end