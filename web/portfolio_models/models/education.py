from django.db import models
from django.core.validators import MinValueValidator

from .base_model import BaseModel


class EducationQuerySet(models.QuerySet):

    def get_all_order_by_order(self):
        return self.filter(is_enabled=True).order_by('order', 'updated_at')


class EducationManager(models.Manager):

    def get_query_set(self):
        return EducationQuerySet(self.model, using=self.db)

    def get_all_order_by_order(self):
        return self.get_query_set().get_all_order_by_order()

    def seed_data(self):
        educations = Education.objects.all()

        if educations.count() == 0:
            education = Education(
                name='University of Science, Vietnam National University - Bachelor of Engineering (B.Eng.)',
                major='Software Engineering',
                time='2010 - 2014',
                order=1
            )

            education.save()


class Education(BaseModel):
    objects = EducationManager()

    name = models.CharField(max_length=500, null=False, blank=False, default='')
    major = models.CharField(max_length=250, null=True, blank=True, default='')
    time = models.CharField(max_length=250, null=True, blank=True, default='')
    order = models.IntegerField(unique=True, validators=[MinValueValidator(1)])

    def __str__(self):
        return self.name