import os
import sys
import traceback
from bot.tg_log import Logger
print("installing packages from requirements.txt")
os.system('pip install -r requirements.txt')
print('done')
from spam_classification import big_run
from spam_classification import main
if len(sys.argv) > 1:
    chat_id = sys.argv[1]
    sys.stdout = Logger(chat_id)
else:
    print("chat_id is required for tg logging")

try:
    main()
    big_run()
except Exception:
    print(traceback.format_exc())
