# amend to last commit and push force and rec flux cluster
function ci --argument filename
    git add .
    git commit --amend --no-edit
    git push -f origin main
    task flux:rec
    k9s
end
