from django.db import models
from cms.models.pluginmodel import CMSPlugin
from djangocms_text_ckeditor.fields import HTMLField
from django.utils.translation import ugettext_lazy as _

SKILL_CHOICES = (
    (1, 'ASP.NET'),
    (2, 'Angular'),
    (3, 'Nodejs'),
    (4, 'Vuejs')
)


UNIT_CHOICES = (
    (1, 'Integer'),
    (2, 'Percentage'),
    (3, 'Dollar')
)


# Create your models here.
class SkillContainer(CMSPlugin):
    objects = models.Manager()

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)


class SkillContent(CMSPlugin):
    objects = models.Manager()

    name = models.CharField(max_length=100, null=False, blank=False)
    skill_percentage = models.IntegerField(blank=False, null=False, default=50)

    skill_type = models.PositiveSmallIntegerField(choices=SKILL_CHOICES, default=1)

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.name


class AboutMe(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=250, blank=False, null=False)
    description = HTMLField(_('description'), blank=True, default='')

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.title


class Statistic(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    statistic = models.IntegerField()
    statistic_unit = models.PositiveSmallIntegerField(choices=UNIT_CHOICES, null=False, blank=False, default=1)
    font_icon = models.CharField(max_length=100, null=True, blank=True, default='')

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.title


