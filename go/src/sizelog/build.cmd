SET name="sizelog"
SET GOOS=windows
SET GOARCH=amd64
go build -o "../../bin/%name%-win-amd64.exe" "%name%.go"

SET GOOS=linux
SET GOARCH=amd64
go build -o "../../bin/%name%-linux-amd64" "%name%.go"

SET GOOS=darwin
SET GOARCH=amd64
go build -o "../../bin/%name%-macos-amd64" "%name%.go"

PAUSE