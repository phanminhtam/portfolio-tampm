from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class ServiceContainer(CMSPlugin):
    objects = models.Manager()

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)


class ServiceContent(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    content = models.CharField(max_length=500, null=False, blank=False)
    icon_class_name = models.CharField(max_length=250, null=False, blank=False)

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.title

