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
    url(r'api/',include(candidate_info.urls)),#call the api from api.py file
    url(r'dashboard','analytics.views.dashboard'),# redirect you to home page
    url(r'genchart','analytics.views.genchart'),#Get the data of students by their gender
    url(r'courchart','analytics.views.courchart'),#Get the data of students by their course seleted
    url(r'agedata','analytics.views.agedata'),#Get the data of students by their age
    url(r'$','analytics.views.dashboard')
)
