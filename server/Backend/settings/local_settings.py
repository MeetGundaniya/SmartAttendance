"""
Overrides settings specific to the local environment.
If Backend/Environ/Dev.env file exists.
"""

import os
import sys
from Backend.settings import base_settings as bs

if 'shell_plus' in sys.argv:

  bs.INSTALLED_APPS.append(
    "django_extensions"
  )

  os.environ['JUPYTER_ALLOW_INSECURE_WRITES'] = 'true'
  os.environ["DJANGO_ALLOW_ASYNC_UNSAFE"] = 'true'
  os.environ["JUPYTER_PATH"] = str(bs.BASE_DIR)

  bs.SHELL_PLUS = 'notebook'
  bs.NOTEBOOK_ARGUMENTS = ['--no-browser']
