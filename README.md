# scriptlib
Common scriptfunctions moved into a scriptlibrary  

## include into your bash-scripts

Insert the following lines at the beginning of your script:

```
for LIB in /PATH/TO/THE/LIBS*; do
	source $LIB
done
```

Do not forget to set the correct path to scriptlib.

