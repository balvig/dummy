# README

Run `bin/rake`

Result:

```

# Running:

F

Failure:
PostTest#test_Scopes_don't_get_stuck [/Users/balvig/Documents/dummy/test/models/post_test.rb:10]:                                                            
Expected "SELECT \"posts\".* FROM \"posts\" WHERE \"posts\".\"read\" = 0 AND \"posts\".\"parent_id\" = 1" to not include "read".                             
```
