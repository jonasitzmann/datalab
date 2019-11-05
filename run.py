import tg_log
import os
print("installing packages from requirements.txt")
os.system('pip install -r requirements.txt')
print('done')
from spam_classification import big_run
big_run()
