= Git Branch:
== checkout branch
  git checkout -b knowledge refs/remotes/origin/knowledge

== Push your local branch
  $ git push origin master:branch
  $ git push origin <local branch name>:refs/heads/<remote branch name>

  See that all remote branch:
  $ git branch -r

== Delete a remote branch off the remote server
  $ git push origin :<remote branch name>
  $ git push origin :heads/branch

== Create a new local branch that tracks a remote branch
  $ git branch <local branch name> origin/<remote branch name>
  # Stop tracking a remote branch
  $ git branch -d -r origin/<remote branch name>

