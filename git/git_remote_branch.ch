= git_remote_branch: |-
  grb create branch_name [origin_server]
  
  grb delete branch_name [origin_server]
  
  grb track branch_name [origin_server]
  
  If origin_server is not specified, the name 'origin' is assumed (git's default)
    
== All commands also have aliases:
  create: create, new
  delete: delete, destroy, kill, remove
  track: track, follow, grab, fetch
