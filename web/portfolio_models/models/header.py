from django.db import models
from djangocms_text_ckeditor.fields import HTMLField
from cms.models.pluginmodel import CMSPlugin
from django.utils.translation import get_language, ugettext_lazy as _


# Create your models here.
class Header(CMSPlugin):
    objects = models.Manager()

    name = models.CharField(max_length=150, null=True, blank=True, default='')
    title = models.CharField(max_length=500, null=True, blank=True, default='')
    description = HTMLField(_('description'), blank=True, default='')
    top_image = models.ImageField(upload_to='header/img/top_image/', max_length=500, null=True, blank=True,
                                  default='')

    youtube_url = models.CharField(max_length=250, null=True, blank=True, default='')

    def __str__(self):
        return self.name