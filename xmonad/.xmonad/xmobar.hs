Config { font = "xft:Office Code Pro:bold:size=11"
       , border = NoBorder
       , borderColor = "#fdf6e5"
       , bgColor = "#fdf6e5"
       , fgColor = "#93a1a1"
       , position = TopW L 100
       , commands = [ Run StdinReader
                    , Run Com "/home/jared/bin/timer_status.sh" [] "timer" 50
                    , Run Date "<fc=#839496>%d %B %Y</fc>, <fc=#586e75>%H:%M</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ <fc=#268bd2>%timer%</fc> %date% "
       }