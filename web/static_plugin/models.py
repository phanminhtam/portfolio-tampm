from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class HeaderModel(CMSPlugin):
    objects = models.Manager

    header_logo = models.ImageField(upload_to='header/img/', null=False, blank=False, default='')
