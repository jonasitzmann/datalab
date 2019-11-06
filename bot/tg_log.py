import os
import ast
import sys


def log(text, chat_id):
    try:
        maybedict = ast.literal_eval(text)
        if type(maybedict) is dict:
            text = maybedict
    except Exception as ex:
        pass
    if type(text) is dict:
        for key, value in text.items():
            log("{}:".format(key))
            log(str(value))
    else:
            text = text.replace("[", "\[")
            #text = text.replace("]", "\]")
            text = text.replace("_", "\_")
            text = text.replace("'", "\"")
            for line in text.split('\n'):
                os.system("bot '{}' '{}'".format(line, chat_id))

class Logger():
    def __init__(self, chat_id):
        self.old_stdout = sys.stdout
        self.chat_id = chat_id

    def write(self, text):
        text = str(text).rstrip()
        if len(text) == 0:
            return
        self.old_stdout.write('logging: ' + text + '\n')
        log(text, self.chat_id)

    def flush(self):
        pass


