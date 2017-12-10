#q::
    runcurrentcmd()


runcurrentcmd()
{
    WinGetText, full_path, A
    StringSplit, word_array, full_path, `n
    Loop, %word_array0%
    {
        this_w := word_array%a_index%

        if RegExMatch(this_w, "[a-zA-Z]:(\\([a-zA-Z0-9_])+)+", path_)
        {
            IfInString path_, :\
            {
                Run, cmd /K cd /D "%path_%" ;
                return
            }
            else
            {
                Run, cmd /K cd /D "C:/ "
                return
            }
        }
    }
}
