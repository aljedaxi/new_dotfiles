#!/usr/bin/env python3
import fileinput
from ruamel import yaml
import pyaml
import json

def say(s):
    print(s, end="")

def get_projects(infile="~/current_projects.yml"):
    """
        returns a dictionary mapping the name of the project (the tag used)
        to the directory in which i keep track of its time.
    """
    current_projects = {
        "avalanche": {
            'outfile': "~/avalanche/times.yml",
            'times': {},
        },
    }
    return current_projects

def format_time(time):

    return f"{start_time} -> {end_time}"
    exit()

if __name__ == "__main__":
    reached_json = False
    time_string = ""
    configuration = []

    for line in fileinput.input():
        if reached_json:
            time_string += line
        elif line == "\n":
            reached_json = True
        else:
            configuration.append(line)

    times = json.loads(time_string)
    projects = get_projects()
    projects_tags = projects.keys()

    for time in times:
        #if time in range:
        for tag in time['tags']:
            if tag in projects_tags:
                projects[tag]['times'][day].append(format_time(time))
