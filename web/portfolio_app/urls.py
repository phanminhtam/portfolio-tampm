from django.conf.urls import url

from .views import ProjectIndexView, ProjectDetailView

urlpatterns = [
    url(r'^(?P<slug>[-\w]+)/$', ProjectDetailView.as_view(), name='project detail'),
    url(r'^$', ProjectIndexView.as_view(), name='project index')
]