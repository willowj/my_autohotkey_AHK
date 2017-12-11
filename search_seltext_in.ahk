
#e:: ;win+e quick search selected words filename by everything
search_seltext_in("C:\Program Files\Everything\Everything.exe -s ")
return

#g:: ;win+g quick search selected words in google
search_seltext_in("http://www.google.com/search?q=")
return

search_seltext_in(search_egine)
    {
    ClipSaved := ClipboardAll
    clipboard =
    ;
    Send ^c
    ClipWait
    run, %search_egine%%clipboard%
    ;
    Clipboard := ClipSaved
    ClipSaved =
    return
}
