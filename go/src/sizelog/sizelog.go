package main

import (
	"time"
	//"bufio"
	"fmt"
	"io/ioutil"
	"log"
	"os"
)

func main() {
	t := time.Now().UTC();
	dir := os.Args[1]
	files, err := ioutil.ReadDir(dir)
	if err != nil {
		log.Fatal(err)
	}
	for _, file := range files {
		
		s := fmt.Sprintf("%s\t%d\t%s", file.Name(), file.Size(),t.Format("2006-01-02T15:04:05"))
		fmt.Println(s)
	}
	//reader := bufio.NewReader(os.Stdin)
	//reader.ReadString('\n')
}
