The big idea is that all anagrams are identical when sorted. So if you build a hash of lists, 
where the keys are sorted words and the value is the list of words that sorts to the given key, 
then you can find anagrams very quickly by sorting the word and looking up in your hash.

ie dictionary_hash = {'dgo' => ['dog', 'god'], 'aelrt' => ['alert', 'alter', 'later']}

then you would sort the input word by character and compare it to the dictionary_hash.keys

"Taler" (dont forget to downcase) would sort to 'aelrt' which matches a key in dictionary_hash, 
therefore "Taler" is an anagram
