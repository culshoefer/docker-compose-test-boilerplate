import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ROOT_URLCONF = 'application.urls'

SECRET_KEY = 'fake-key'

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    "tests",
    "django_nose",
]

TEST_RUNNER = "django_nose.NoseTestSuiteRunner"
NOSE_ARGS = [
    "-v",
    "--with-coverage",
    "--with-doctest",
    "--cover-package=application",
    "--cover-html",
    "--with-xunit",
    "--cover-html-dir=test-results/django-cover-html",
    "--xunit-file=test-results/django-test-results-xunit.xml",
    "--ignore-files=.*__init__.py",
    "--ignore-files=.*settings.py",
]

# Building the Docker image
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
