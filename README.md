# Useful Functions
Some functions that help me make new scripts.

## ctos-functions

#### check_root()

Use this function is your script needs to be run as root. It will exit the script with a message when you are not running as root/sudo.

#### line_break()

This function echos a line to the terminal. This is used to increase and highlight pieces of text. It is purely for decoration.

To use it you can just call it or you can pass some things to it.

##### Usage Example

`line_break '*' '25'`

`line_break <the character you want to use> <The length of the line>`

The first thing that is passed is the character to be used for the line. The second thing is the length  of the line. If nothing is used then the default `'='` is used for the character and `46` is the default length.

#### say_goodbye()

This function simply echos a goodbye message to the terminal.

#### something_wrong()

This simply echos a generic error message and exits the script on an error. `exit 1`

#### not_my_dir()

This simply echos a generic error message when an expected directory (thing) is not found.

#### test_location()

This test a passed location to see if it exist, is a directory and not a file. It returns 0 for a PASS and 1 for a FAIL.

#### find_old_pkgs()

This function finds old packages and deletes them leaving the new ones in place. This does not know how to deal with names that have the same prefixs.

This script needs 3 parameters passed to it:

- The location to look in
- The prefix of the file to search for
- The suffix of the file

#### to_continue()

This function simply adds a break point in the script task the user if they want to continue or not. If not then the script is ended with `exit 0`.
