function gptsec
    # below is the gpt model
    set -l ret (echo -ne "\r")
    set -l tab (echo -ne "\t")
   

    if test "$argv[1]" = "ask"
        commandline -i "sgpt --chat $chat_history --model $model \"\""
        set -l len (string length (commandline))
        commandline -C (math $len - 1)

    else if test "$argv[1]" = "check"
        #set text $text (xclip -o -selection primary | tr '\\n' ' ' | sed 's/\\"/\\\\"/g') 
        set text $text (xclip -o -selection primary | tr '\\n' ' ' | sed 's/\\"/\\\\"/g; s/\$/\\\$/g') 
        sgpt --chat $chat_history --model $model $text

    else if test "$argv[1]" = "inline"
        set -l text "Below is the concerned text of the question below. Be concise in your answer.\n\n########\nTEXT:\n--\n\n"
        #set text $text(xclip -o -selection primary | tr '\\n' ' ' | sed 's/\\"/\\\\"/g') 
        set text $text(xclip -o -selection primary | tr '\\n' ' ' | sed 's/\\"/\\\\"/g; s/\$/\\\$/g') 
        set text $text "\n\n########\n\nQUESTION:\n--\n\n"
      


        commandline -i "sgpt --chat $chat_history --model $model \"$text\"" 
        
        set -l len (string length (commandline))
        commandline -C (math $len - 1)
    end
end
