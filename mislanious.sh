
#To Disable CORS in chrome
C:\Program Files (x86)\Google\Chrome\Application chrome.exe--user - data - dir="C:/Chrome dev session" --disable - web - security

var url = "http://localhost:8080/richa/v1/rest/fetchAPI";

var data = {
    "test": "Laura"
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

$WShell = New-Object -Com "Wscript.Shell"
while (1) {$WShell.SendKeys("{SCROLLLOCK}"); sleep 60}

keycloack
docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:23.0.3 start-dev
