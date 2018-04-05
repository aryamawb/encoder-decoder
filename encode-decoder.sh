#!/bin/bash
#rdl

red=$(tput setaf 1)
green=$(tput setaf 2)
basic=$(tput sgr0)
blue=$(tput setaf 4)

echo -e "${green}1. Base 64 ${basic}"
echo -e "${green}2. Base 32 ${basic}"
echo -e "${green}3. md5 ${basic}"
echo -n "Choose what you want : "

read chooser

if [[ $chooser = "1" ]]; then
	echo "${blue}1. Decode ${basic}"
	echo "${red}2. Encode ${basic}"
	echo "What you want ?"
	read putli

	if [[ $putli -eq 1 ]]; then
		echo "Input thing you want to Decode : "
		read decode
		echo ${green} && echo $decode | base64 --decode && echo ${basic}
	elif [[ $putli -eq 2 ]]; then
		echo "Input thing you want to encode : "
		read encode
		echo ${green} && echo $encode | base64 && echo ${basic}
	fi
fi

if [[ $chooser = "2" ]]; then
	echo "${blue}1. Decode ${basic}"
	echo "${red}2. Encode ${basic}"
	echo "What you want?"
	read putli

	if [[ $putli -eq 1 ]]; then
		echo "Input thing you want to Decode : "
		read decode
		echo ${green} && echo $decode | base32 --decode && echo ${basic}
	elif [[ $putli -eq 2 ]]; then
			echo "Input thing you want to encode : "
			read encode
			echo ${green} && echo $encode | base32 && echo ${basic}
	fi
fi
if [[ $chooser = "3" ]]; then
	echo "${red}1. Decode ${basic}"
	echo "${blue}2. Encode ${basic}"
	echo "What you want?"
	read putli
	if [[ $putli -eq 1 ]]; then
		echo "Input thing you want to Decode : "
		read decode
		echo ${green} && echo $decode | md5sum --decode && echo ${basic}
	elif [[ $putli -eq 2 ]]; then
		echo "Input thing you want to encode : "
		read encode
		echo ${green} && echo $encode | md5sum && echo ${basic}
	fi
file
