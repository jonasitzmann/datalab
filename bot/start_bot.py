
#!/usr/bin/env python
# -*- coding: utf-8 -*-
# This program is dedicated to the public domain under the CC0 license.

"""
Simple Bot to reply to Telegram messages.
First, a few handler functions are defined. Then, those functions are passed to
the Dispatcher and registered at their respective places.
Then, the bot is started and runs until we press Ctrl-C on the command line.
Usage:
Basic Echobot example, repeats messages.
Press Ctrl-C on the command line or send a signal to the process to stop the
bot.
"""

from subprocess import Popen
from subprocess import check_output
import logging
import os
import re

from telegram.ext import Updater, CommandHandler, MessageHandler, Filters

# Enable logging
logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                    level=logging.INFO)

logger = logging.getLogger(__name__)


# Define a few command handlers. These usually take the two arguments update and
# context. Error handlers also receive the raised TelegramError object in error.
def start(update, context):
    """Send a message when the command /start is issued."""
    update.message.reply_text('Hi!')


def help(update, context):
    """Send a message when the command /help is issued."""
    update.message.reply_text('Help!')


def send(text, chat_id):
    os.system("bot '{}' '{}'".format(text, chat_id))


def echo(update, context):
    chat_id = update.effective_chat.id
    text = update.message.text
    cmd_out = ""
    m = re.match("(train|test) (\d) (\d)", text.lower())
    if m:
        send('pulling', chat_id)
        send(check_output(["git pull"], shell=True), chat_id)
        send('executing run.py', chat_id)
        args = '--mode {} --unit {} --challenge {} --chat_id {}'.format(m.group(1), m.group(2), m.group(3), chat_id)
        print(args)
        send(args, chat_id)
        Popen("/home/stud06/env/bin/python run.py '{}'".format(args), shell=True)
    elif text.lower() == 'pull':
        send('pulling', chat_id)
    elif text.lower() == 'push':
        send('pushing', chat_id)
        cmd_out = check_output(["git add -A; git commit -m 'bot commit'; git push"], shell=True)
    elif text.lower() == 'stop':
        send('killing all jobs', chat_id)
        Popen("pkill -f run.py", shell=True)
        Popen("pkill -f loky", shell=True)
    else:
        cmd_out = check_output([text], shell=True)
    update.message.reply_text(cmd_out)


def error(update, context):
    """Log Errors caused by Updates."""
    logger.warning('Update "%s" caused error "%s"', update, context.error)


def main():
    """Start the bot."""
    # Create the Updater and pass it your bot's token.
    # Make sure to set use_context=True to use the new context based callbacks
    # Post version 12 this will no longer be necessary
    TOKEN = "822372321:AAG9saN3bu-BXdWkL16tDqrTpBGF20QOPYU"
    updater = Updater(TOKEN, use_context=True)

    # Get the dispatcher to register handlers
    dp = updater.dispatcher

    # on different commands - answer in Telegram
    dp.add_handler(CommandHandler("start", start))
    dp.add_handler(CommandHandler("help", help))

    # on noncommand i.e message - echo the message on Telegram
    dp.add_handler(MessageHandler(Filters.text, echo))

    # log all errors
    dp.add_error_handler(error)

    # Start the Bot
    updater.start_polling()

    # Run the bot until you press Ctrl-C or the process receives SIGINT,
    # SIGTERM or SIGABRT. This should be used most of the time, since
    # start_polling() is non-blocking and will stop the bot gracefully.
    updater.idle()


if __name__ == '__main__':
    os.system('cd /home/stud06/datalab')
    os.system('export set PATH=$PATH:/home/stud06/env/bin/python')
    os.system('export set PATH=$PATH:/usr/bin/git')
    os.system('export set PATH=$PATH:/home/stud06/datalab/bot')
    os.system("bot 'bot started' 890204671")
    os.chdir("/home/stud06/datalab")
    main()
