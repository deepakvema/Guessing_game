let files=$(ls -l|wc -l)
echo "How many files are present in current directory?"
let exit=1
while [[ $exit -eq 1 ]]
do
        read input
        if [[ $input =~ [^0-9] ]]
        then
                echo "Please enter a number"
                let exit=1
        elif [[ $input -eq $files ]]
        then
                let exit=0
        elif [[ $input -lt 1 ]]
        then
                echo "Your guess is low. Please try again...."
        else
                echo "Your guess is high. Please try again..."
        fi
done
if [[ $exit -eq 0 ]]
then
        echo "Your Guess is correct!"
fi