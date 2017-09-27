"""
Views
"""
from django.http import HttpResponse


def index(request):  # pylint: disable=unused-argument
    """
    Test function
    :param request: req
    :return: Hello, world!
    """
    return HttpResponse("Hello, world!")
