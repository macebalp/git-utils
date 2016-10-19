#!/bin/bash

num_branches_to_remove=10

/bin/bash get_branch_differences.sh -b dev -a | grep 'ALX.*(ahead 0)' | head -n "$num_branches_to_remove" | sed -rn 's/([a-z0-9_-]+).*/\1/ip' \
| while read branch_to_remove; do git show --pretty="format:Removing branch ($branch_to_remove) in commit: %H" $branch_to_remove >> remove_history.log; git branch -D $branch_to_remove; git push origin :$branch_to_remove;done
