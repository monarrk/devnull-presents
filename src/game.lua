-- DEPENDANCIES/GLOBAL VARS
ioutils = require( "ioutils" )

-- MAIN GAME CHUNK
name = ioutils.questionv("Hello! What is your name?", {})
print(name)