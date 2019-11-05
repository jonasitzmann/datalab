def log(text):
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
                os.system("bot '{}'".format(line))

class Logger():
    def __init__(self):
        self.old_stdout=sys.stdout

    def write(self, text):
        text = str(text).rstrip()
        if len(text) == 0:
            return
        self.old_stdout.write('logging: ' + text + '\n')
        log(text)

    def flush(self):
        pass

sys.stdout = Logger()
