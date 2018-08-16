from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class TextCenter(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=250, blank=True, null=True, default='')
    description = models.TextField(null=True, blank=True, default='')

    def __str__(self):
        return self.title


class ShortHeader(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=250, null=True, blank=True, default='')
    description = models.CharField(max_length=500, null=True, blank=True, default='')
    header_image = models.ImageField(upload_to='header_image/img/', max_length=500, null=True, blank=True,
                                     default='')

    def __str__(self):
        return self.title
