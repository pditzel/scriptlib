# scriptlib
Common scriptfunctions moved into a scriptlibrary  

## include into your bash-scripts

Insert the following lines at the beginning of your script:

```
for LIB in /PATH/TO/THE/LIBS*; do
	source $LIB
done
```

Alternatively

```
source /PATH/TO/LIB/*
```

Do not forget to set the correct path to scriptlib.

## Configuration

If the configuration variables are not set the script lib/defaultconfig.sh will set all variables to default values. You can show all available varaibles by running this script with -s:
```
./lib/defaultconfig.sh -s
```

