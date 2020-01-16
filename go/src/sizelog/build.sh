#!/bin/sh
name="sizelog"
env GOOS=windows GOARCH=amd64 go build -o "../../bin/${name}-win-amd64.exe" "${name}.go"
env GOOS=linux GOARCH=amd64 go build -o "../../bin/${name}-linux-amd64" "${name}.go"
