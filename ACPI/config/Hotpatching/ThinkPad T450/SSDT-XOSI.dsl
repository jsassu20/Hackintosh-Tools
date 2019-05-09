// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | Returns XOSI MethodObj Is Called By ACPI...
//
// Voids _OSI MethodObj And Replaces It With XOSI For Returning "Darwin" During OS Probing And Instead Returns "Windows" As The OS In Use | More Stable With ACPI Patching Done By Clover...
//
// Requires Clover Configurator ACPI/Patch "change _OSI to XOSI" In Order To Work...
//
//DefinitionBlock("", "SSDT", 1, "TP-T450", "_XOSI", 0)
//{
    // All _OSI calls in DSDT are routed to XOSI...
    // As written, this XOSI simulates "Windows 2012" (which is Windows 8)
    // Note: According to ACPI spec, _OSI("Windows") must also return true
    //  Also, it should return true for all previous versions of Windows.
    Method(XOSI, 1)
    {
        // simulation targets
        // source: (google 'Microsoft Windows _OSI')
        //  http://download.microsoft.com/download/7/E/7/7E7662CF-CBEA-470B-A97E-CE7CE0D98DC2/WinACPI_OSI.docx
        Local0 = Package()
        {
            "Windows",              // generic Windows query
            //"Windows 2001",       // Windows XP
            "Windows 2001 SP2",     // Windows XP SP2
            //"Windows 2001.1",     // Windows Server 2003
            //"Windows 2001.1 SP1", // Windows Server 2003 SP1
            //"Windows 2006",       // Windows Vista
            //"Windows 2006 SP1",   // Windows Vista SP1
            //"Windows 2006.1",     // Windows Server 2008
            "Windows 2009",         // Windows 7/Windows Server 2008 R2
            "Windows 2012",         // Windows 8/Windows Server 2012
            "Windows 2013",         // Windows 8.1/Windows Server 2012 R2
            "Windows 2015",         // Windows 10/Windows Server TP
        }
        Return (Ones != Match(Local0, MEQ, Arg0, MTR, 0, 0))
    }
//}
//EOF