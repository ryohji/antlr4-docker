# ANTLR v4

This Dockerfile exports the command `antlr4` and `grun`.

Once you build the image, the aliases below might be your help:
```
alias antlr4="docker run --rm -u $UID -w $PWD -v $PWD:$PWD <YOUR-IMAGE-TAG> antlr4 $@"
alias grun="docker run -it --rm -u $UID -w $PWD -v $PWD:$PWD <YOUR-IMAGE-TAG> grun $@"
```