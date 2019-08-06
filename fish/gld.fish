function gld
    git log --format=format:'%C(bold blue)%h%C(reset)%C(auto) %d%C(reset)%C(white) %s%C(reset) - %C(dim white) %an: %ar%C(reset)' -25 --decorate
end