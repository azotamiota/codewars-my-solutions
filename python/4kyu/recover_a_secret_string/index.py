def recoverSecret(triplets):
    letters = set([letter for triplet in triplets for letter in triplet]) # what are the letters of the final string
    result = '' # this will be the final string
    while len(letters) > 0:
        not_next_letters = set()
        for triplet in triplets: # loop through triplets
            try:
                not_next_letters.update(triplet[1:]) # letter's index is not 0 in the triplet, can't be the next letter
            except:
                pass
        next_letter = list(letters.difference(not_next_letters))[0] # compare "not_next_letters" set to original letters set. The difference is the next letter. Converted to a single string character.
        result += next_letter  
        for i, triplet in enumerate(triplets): # delete the recently added "next_letter" from each triplets
            try:
                if triplet[0] == next_letter: # if the next_letter is in the actual triplet, it will be the first element
                    triplets[i] = triplet[1:]
            except:
                pass
        letters.remove(next_letter) # also delete "next_letter" from the original letters set, and loop until the all letters gone.
    return result
