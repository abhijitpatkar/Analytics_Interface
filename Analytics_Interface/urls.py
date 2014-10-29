import os
import sys

from django.conf.urls import patterns, include, url
from django.contrib import admin
from analytics.api import CandidateInformation

candidate_info=CandidateInformation()
admin.autodiscover()

FILE_PATH=os.path.realpath(os.path.dirname(__file__))
FILE_PATH=os.path.split(FILE_PATH)[0]

urlpatterns = patterns('',
    url(r'^templates/(?P<path>.*)$', 'django.views.static.serve',  {'document_root': FILE_PATH + '/analytics/templates/'}),
    # Examples:
    # url(r'^$', 'Analytics_Interface.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'api/',include(candidate_info.urls)),
    url(r'dashboard','analytics.views.dashboard'),
    url(r'genchart','analytics.views.genchart'),
    url(r'courchart','analytics.views.courchart'),
)
