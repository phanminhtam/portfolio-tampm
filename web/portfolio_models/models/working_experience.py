from django.db import models
from django.core.validators import MinValueValidator
from djangocms_text_ckeditor.fields import HTMLField
from django.utils.translation import get_language, ugettext_lazy as _

from .base_model import BaseModel


class WorkingExperienceQuerySet(models.QuerySet):

    def get_all_order_by_order(self):
        return self.filter(is_enabled=True).order_by('order', 'updated_at')


class WorkingExperienceManager(models.Manager):

    def get_query_set(self):
        return WorkingExperienceQuerySet(self.model, using=self.db)

    def get_all_order_by_order(self):
        return self.get_query_set().get_all_order_by_order()

    def seed_data(self):
        working_experiences = WorkingExperience.objects.all()

        if working_experiences.count() == 0:
            working_experience = WorkingExperience(
                company_name='Beesight Soft Co',
                company_url='https://beesightsoft.com/',
                time='Jan 2014 - Dec 2017',
                description='<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
                            'et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut '
                            'aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse '
                            'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in '
                            'culpa qui officia deserunt mollit anim id est laborum.</p>',
                order=1
            )

            working_experience.save()


class WorkingExperience(BaseModel):
    objects = WorkingExperienceManager()

    company_name = models.CharField(max_length=250, null=False, blank=False)
    company_url = models.CharField(max_length=500, null=True, blank=True, default='')
    time = models.CharField(max_length=250, null=True, blank=True, default='')
    description = HTMLField(_('description'), blank=True, default='')
    order = models.IntegerField(unique=True, validators=[MinValueValidator(1)])

    def __str__(self):
        return self.company_name
