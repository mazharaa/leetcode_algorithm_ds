package main

func countConsistentStrings(allowed string, words []string) int {
	ans := len(words)
	m := make(map[byte]bool)

	for i := 0; i < len(allowed); i++ {
		m[allowed[i]] = true
	}

	for i := 0; i < len(words); i++ {
		for j := 0; j < len(words[i]); j++ {
			_, ok := m[words[i][j]]

			if !ok {
				ans--
				break
			}
		}
	}

	return ans
}
