
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