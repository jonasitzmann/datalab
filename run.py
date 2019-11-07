import os
import sys
import traceback
from bot.tg_log import Logger
from argparse import ArgumentParser
TRAIN_STR: str = 'train'
TEST_STR: str = 'test'
parser = ArgumentParser()
parser.add_argument('--unit', type=int, required=True)
parser.add_argument('--challenge', type=int, required=True)
parser.add_argument('--mode', type=str, required=True, choices=[TRAIN_STR, TEST_STR])
parser.add_argument('--chat_id', type=int, required=False, default=None)
args = parser.parse_args()

print("installing packages from requirements.txt")
os.system('pip install -r requirements.txt > /dev/null')
print('done')

if args.chat_id is not None:
    sys.stdout = Logger(args.chat_id)
try:
    from main import get_task
    task = get_task(args.unit, args.challenge)
    if args.mode == TRAIN_STR:
        task.find_params()
    else:
        task.evaluate()
except Exception:
    print(traceback.format_exc())
