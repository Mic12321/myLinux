echo "Executing test.sh"
read -p "Please enter your choice: " user_choice
echo "Your choice is: " $user_choice

case $user_choice in
        "all")
            echo "all"
            ;;

        "main")
            echo "main"
            ;;

        "optional")
            echo "optional"
            ;;

        "develop_env")
            echo "devlop_env"
            ;;

        * )
            echo "Invalid input"
            ;;

esac
