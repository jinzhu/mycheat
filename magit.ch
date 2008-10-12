= magit: |-
  Starting
  -------
  
  M-x magit-status
  
  Status Buffer
  -------------
  
  l   show history buffer starting from head
  L   show history buffer starting from a specified point
  
  b   check out a different branch
  B   create and check out a new branch
  d   compare working tree with specified branch
  
  m   manual merge
  M   automatic merge
  
  R   rebase / continue to rebase
  
  F   pull
  P   push
  p   show a buffer with push/pull command transcript
  
  g   refresh
  s   add a file to the staging area
  i   ignore a file
  
  S   move all hunks of all diffs into the staging area
  U   unstage all hunks
  
  In a hunk
  
  s   stage hunk
  u   unstage hunk
  
  c   pop up a buffer to write the change description
      C-c C-c to commit the staged changes
  
  History Buffer
  --------------
  
  RET show more info about the commit
  l   use commit as starting point of the history buffer
  R   revert selected commit in working tree and staging area
  P   apply current commit in the normal way
  C   switch your current working tree to the commit
  .   mark current commit
  =   diff marked commit and current commit
  x   soft reset to current commit
  X   hard reset to current commit
