from django.db import models
from djangocms_text_ckeditor.fields import HTMLField
from cms.models.pluginmodel import CMSPlugin
from django.utils.translation import get_language, ugettext_lazy as _

from .base_model import BaseModel


class ProfileManager(models.Manager):

    @staticmethod
    def seed_data():
        profiles = Profile.objects.all()

        if profiles.count() == 0:
            p1 = Profile(name='Tam Phan', title='Full-Stack Web Developer', is_enabled=True)
            p1.save()


class Profile(BaseModel):
    objects = ProfileManager()

    name = models.CharField(max_length=150, null=True, blank=True, default='')
    title = models.CharField(max_length=500, null=True, blank=True, default='')
    description = HTMLField(_('description'), blank=True, default='')
    avatar = models.ImageField(upload_to='profile/img/top_image/', max_length=500, null=True, blank=True,
                               default='')
    introduction_youtube_url = models.CharField(max_length=250, null=True, blank=True, default='')

    def __str__(self):
        return self.name
