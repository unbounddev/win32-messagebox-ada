with win32;
with interfaces.c;
with system;

procedure main is
    use type interfaces.c.unsigned;
    result: interfaces.c.int;
    message: interfaces.c.char_array := interfaces.c.to_c("This is the message text.");
    title: interfaces.c.char_array := interfaces.c.to_c("Window Title.");
    options: interfaces.c.unsigned := win32.MB_YESNO or win32.MB_ICONINFORMATION;
begin
    result := win32.message_box(system.null_address, message, title, options);
end;