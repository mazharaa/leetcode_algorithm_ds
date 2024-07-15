package main

import (
	"fmt"
	"strings"
)

func main() {
	fmt.Println(interpret("(al)G(al)()()G"))
}

func interpret(command string) string {
	parser := strings.NewReplacer("()", "o", "(al)", "al")
	return parser.Replace(command)
}
