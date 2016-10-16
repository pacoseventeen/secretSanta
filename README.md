# Secret Santa
Code and test data for a secret santa script. 

The script reads in a JSON formatted file containing 
the list of participants and their contact info. It
then anonymizes the data, partners everyone up, sends
the mailer their recipients name and address over Slack,
and then destroys the data. The goal is for the secret
to remain a secret to every single person involved.

The included usersExampleFile.json shows the expected
formatting for the users file. We hash the names to
ensure each person has a unique value associated 
with their info.

NOTE: name hash method hasn't been decided yet. It
doesn't need to be anything crazy, just need to make 
sure each unique user gets assigned a unique value
regardless of whether two people share the same name.
