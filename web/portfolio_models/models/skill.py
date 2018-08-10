from django.db import models

from .base_model import BaseModel


class SkillQuerySet(models.QuerySet):

    def get_all_order_by_percentage(self):
        return self.all().order_by('-percentage')


class SkillManager(models.Manager):

    def get_query_set(self):
        return SkillQuerySet(self.model, using=self.db)

    def get_all_order_by_percentage(self):
        return self.get_query_set().get_all_order_by_percentage()

    def seed_data(self):
        skills = self.get_query_set().all()

        if skills.count() == 0:
            dotnet = Skill(title='.Net', description='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tempus ipsum elementum quam pulvinar, id blandit augue auctor. ', percentage=90, class_name='')
            angular = Skill(title='Angular', description='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tempus ipsum elementum quam pulvinar, id blandit augue auctor. ', percentage=80, class_name='')
            nodejs = Skill(title='Nodejs', description='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tempus ipsum elementum quam pulvinar, id blandit augue auctor. ', percentage=75, class_name='')

            dotnet.save()
            angular.save()
            nodejs.save()


class Skill(BaseModel):
    objects = SkillManager()

    title = models.CharField(max_length=250, null=False, blank=False)
    description = models.TextField(blank=True, null=True, default='')
    percentage = models.IntegerField(null=False, blank=False, default=50)
    logo = models.ImageField(null=True, blank=True, upload_to='skill/logo/', default='')
    class_name = models.CharField(max_length=250, null=True, blank=True, default='')

    def __str__(self):
        return self.title
