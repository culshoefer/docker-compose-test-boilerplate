#!/usr/bin/env python
import os
import shutil
import sys

import django
from django.conf import settings
from django.test.utils import get_runner

TEST_RES_DIR='test-results'
COB_TEST_RESULTS_FILE=TEST_RES_DIR + '/cobertura-coverage.xml'
DJANGO_TEST_RESULTS_FILE=TEST_RES_DIR + '/django-test-results-xunit.xml'
DJANGO_COVER_DIR=TEST_RES_DIR + '/django-cover-html'
if __name__ == "__main__":
   if not os.path.exists(TEST_RES_DIR):
      os.makedirs(TEST_RES_DIR)
   else:
      if os.path.exists(COB_TEST_RESULTS_FILE):
         os.remove(COB_TEST_RESULTS_FILE)
      if os.path.exists(DJANGO_TEST_RESULTS_FILE):
         os.remove(DJANGO_TEST_RESULTS_FILE)
      if os.path.exists(DJANGO_COVER_DIR):
         shutil.rmtree(DJANGO_COVER_DIR)
         os.makedirs(DJANGO_COVER_DIR)
   os.environ['DJANGO_SETTINGS_MODULE'] = 'tests.test_settings'
   django.setup()
   TestRunner = get_runner(settings)
   test_runner = TestRunner()
   failures = test_runner.run_tests(["tests"])
   os.system('coverage xml -o ' + COB_TEST_RESULTS_FILE + ' '
             + '--omit=__init__.py,settings.py')
   sys.exit(bool(failures))
