
#To Disable CORS in chrome
chrome.exe--user - data - dir="C:/Chrome dev session" --disable - web - security

var url = "http://localhost:8080/formattedGreetings";

var data = {
  "id": 0,
  "content": "HELLO"
};


$.ajax({
  type: "POST",
  url: url,
  data: JSON.stringify(data),
  contentType: "application/JSON",
  dataType: "json"
}).done(function (success) {
  debugger;
}).fail(function (error) {
  debugger;
}).always(function (data) {
  debugger;
});

SSH termial clolour RGB  48/10/36 or  #300A24

VS code short cuts
Select a bunch of lines, then Shift + Alt/Option + I will put a cursor at the end of every selected line
Select a word and press Shift + Cmd + L to select all instances of your selection