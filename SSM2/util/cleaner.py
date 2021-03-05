import os
import io
import glob
import shutil

# List of files to be deleted according to name
with io.open('./util/names.txt', 'r', encoding='utf8') as f:
    names = f.read().split('\n')
f.close()

items = list()
for name in names:
    items = glob.glob('./**/' + name, recursive = True)
    # If at least one 'name' element has been found
    print('Checking ' + name)
    if items:
        for item in items:
            print('>  Found ' + item)
            # If item is a _minted* folder
            if names.index(name) == 0:
                try:
                    shutil.rmtree(item)
                except OSError as err:
                    print("Error: %s : %s" % (item, err.strerror))
            else:
                try:
                    os.unlink(item)
                except OSError as err:
                    print("Error: %s : %s" % (item, err.strerror))

print('Working directory is clean')