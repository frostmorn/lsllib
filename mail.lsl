// Functions working with mail inside lsl

// Takes key -> transpose to email
string key2Mail(key kObject){
    return (string)kObject + "@lsl.secondlife.com";
}
// Truncate message header
string truncateMailHeader(string message){
    // message should appear after 2 \n met
    return llGetSubString(message, llSubStringIndex(message, "\n\n")+2, -1);
}
// Tekes mail -> transpose to Object key
key mail2Key(string address){
    return (key)(llGetSubString(address, 0, llSubStringIndex(address, "@")-1));
}
