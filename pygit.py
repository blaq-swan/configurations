#!/usr/bin/env python3


import subprocess
import sys

# A python program to add, commit, and push files to github

def git_capture():
    """
    Takes files and commit messages from the command line
    """
    args = sys.argv[1:]
    commit_messages = []
    files = []

    for arg in args:
        if "." not in arg and len(arg) > 0:
            commit_messages.append(arg)
        else:
            files.append(arg)

    return list(zip(files, commit_messages))


def add_commit():
    """
    Pushes files to github
    """
    add = ""
    commit = ""

    for file_mess in git_capture():
        
        subprocess.run(['git', 'add', file_mess[0]])
        subprocess.call(['git', 'commit', '-m', file_mess[1]])
        subprocess.run(["git", "push"])

add_commit()
