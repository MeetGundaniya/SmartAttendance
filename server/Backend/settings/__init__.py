"""
This module helps to manage environment settings.
"""

# import only ENV variables (uppercase variable)
from Backend.settings.base_settings import *

# environment settings
try:
  if DEBUG:
    from . import local_settings
  else:
    from . import prod_settings
except ImportError:
  pass

