from django.db import models
from cms.models.pluginmodel import CMSPlugin
from djangocms_text_ckeditor.fields import HTMLField
from django.utils.translation import ugettext_lazy as _


# Create your models here.
class Profile(CMSPlugin):
    objects = models.Manager()

    name = models.CharField(max_length=100, null=False, blank=False)
    avatar = models.ImageField(upload_to='avatar/img/', max_length=250)
    working_position = models.CharField(max_length=250, null=True, blank=True, default='')
    location = models.CharField(max_length=100, null=False, blank=False)
    date_of_birth = models.CharField(max_length=100, null=False, blank=False)
    email = models.CharField(max_length=100, null=False, blank=False)  # Email
    self_introduction = HTMLField(_('self_introduction'), blank=True, default='')
    programing_language = models.CharField(max_length=250, null=True, blank=True, default='')
    database = models.CharField(max_length=250, null=True, blank=True, default='')
    ide_and_tool = models.CharField(max_length=250, null=True, blank=True, default='')
    vcs_dvcs = models.CharField(max_length=250, null=True, blank=True, default='')
    framework = models.CharField(max_length=250, null=True, blank=True, default='')

    def __str__(self):
        return self.name

    def copy_relations(self, old_instance):
        for milestone_item in old_instance.milestoneitem_set.all():
            milestone_item_object = MilestoneItem()

            milestone_item_object.profile_id = self
            milestone_item_object.title = milestone_item.title
            milestone_item_object.date = milestone_item.date
            milestone_item_object.media_asset = milestone_item.media_asset
            milestone_item_object.description = milestone_item.description

            milestone_item_object.save()

        pass


class MilestoneItem(models.Model):
    objects = models.Manager()

    title = models.CharField(max_length=250, null=False, blank=False)
    date = models.DateField()
    description = HTMLField(_('description'), blank=True, default='')
    media_asset = models.ImageField(upload_to='profile/milestone_image/', null=True, blank=True, default='')

    profile_id = models.ForeignKey(Profile, on_delete=models.CASCADE)
