# Useful Functions
Some functions that help me make new scripts.

## ctos-functions

#### check_root()

Use this function if your script needs to be run as root. It will exit the script with a message when you are not running as root/sudo.

If called with anything passed to it e.g. `check_root q` it will return a 0 if root and a 1 if not, otherwise it will exit returning a 1.

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

#### test_service()

This tests if a system-D service is active or not returning a 0 for active and a 1 if not.

#### test_installed()

This simply tests if a package is installed or not returning a 0 if installed and a 1 if not.

#### do_install()

This function will install a list of packages without prompting for user input. It will check if sudo is needed or not.

#### not_my_dir()

This simply echos a generic error message when an expected directory (thing) is not found.

#### test_location()

This tests a path location to see if it exist, is a directory and not a file. It returns 0 for a PASS and 1 for a FAIL.

#### test_file()

This tests if a file is in a given location and that if the file exists and is a file and not a directory. It returns 0 for a PASS and 1 for a FAIL.

#### find_old_pkgs()

This function finds old packages and deletes them leaving the new ones in place. This does not know how to deal with names that have the same prefixes.

This script needs 3 parameters passed to it:

- The location to look in
- The prefix of the file to search for
- The suffix of the file

#### to_continue()

This function simply adds a break point in the script task the user if they want to continue or not. If not then the script is ended with `exit 0`.

#### auto_continue()

This is simply a wrapper function for `to_continue` that will run `to_continue` if nothing is passed to it. This can be expanded as necessary with safer logic. This has yet to be tested.

#### is_correct()

This function returns a 0 for yes and a 1 for no to indicate weather a user deems the result to be correct in any situation.
