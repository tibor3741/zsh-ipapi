# IP API

Very simple ZSH function for retrieving and displaying informations about IP addresses.

![Screenshot](https://github.com/tibor3741/zsh-ipapi/assets/36704519/49b1bb67-fe9e-42df-9bfa-1d1d5f837286)

## Description 

The ipapi function makes use of the [IP API](https://ip-api.com/) service to retrieve data for a given IP address. It sends a request to the IP API endpoint, receives the JSON response and extracts specific information from it using `jq` (you have to install it). The function then formats and displays the retrieved data beautifully. 🐆

## How to Use

1. Clone this repository to your local machine or download the ip-api.zsh file directly.
2. Open your ZSH configuration file (usually .zshrc) in a text editor.
3. Import the ip-api.zsh file by adding the following line to your .zshrc file:
`source /path/to/ip-api.zsh`

4. Replace /path/to/ip-api.zsh with the actual path to the ip-api.zsh file on your system.
5. Save and close the .zshrc file.
6. Run `source ~/.zshrc` to apply the changes.

To use the ipapi function, open a new terminal session and run the following command:

`ipapi <ip_address>`

Replace <ip_address> with the IP address you want to retrieve information for.

## Dependencies

Curl
JQ
Ncurses-utils (Tput)
