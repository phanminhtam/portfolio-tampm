from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class HeroArea(CMSPlugin):
    objects = models.Manager()

    name = models.CharField(max_length=100, null=False, blank=False)
    message = models.CharField(max_length=100, null=True, blank=True)
    image_file = models.ImageField(upload_to='hero_area/img/', null=False, default='')
    youtube_introduction = models.CharField(max_length=255, null=True, blank=True)

    def __str__(self):
        return self.name