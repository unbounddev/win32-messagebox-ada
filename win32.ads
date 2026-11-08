with interfaces.c;
with system;

package win32 is
    pragma linker_options ("-luser32");
    MB_YESNO : constant interfaces.c.unsigned := 16#04#;
    MB_ICONINFORMATION : constant interfaces.c.unsigned := 16#40#;
    function message_box(
        owner_window: system.address; 
        message: interfaces.c.char_array; 
        title: interfaces.c.char_array; 
        options: interfaces.c.unsigned
    ) return interfaces.c.int
        with import => true, convention => stdcall, external_name => "MessageBoxA";
end win32;