function csv --description 'View contents of a csv'
    mlr --icsv --opprint -C --key-color darkcyan --value-color grey70 bat $argv
end
