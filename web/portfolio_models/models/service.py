from django.db import models

from .base_model import BaseModel


class ServiceQuerySet(models.QuerySet):

    def get_all_order_by_updated_time(self):
        return self.all().order_by('-updated_at')


class ServiceManager(models.Manager):

    def get_query_set(self):
        return ServiceQuerySet(self.model, using=self.db)

    def get_all_order_by_updated_time(self):
        return self.get_query_set().get_all_order_by_updated_time()

    def seed_data(self):
        services = self.get_query_set().all()

        if services.count() == 0:
            service = Service(title='Full-Stack Web Development', description='Building clean and robust application using various programming languages: Java, Javascript, Html, Css, Python', icon_class_name='icon icon-Code-Window')
            service2 = Service(title='Agile Consultant', description='Consult, coaching how to steer with Agile best practices, tools, processes: Scrum | Kanban | Scrumban | BDD | TDD | XP', icon_class_name='icon icon-Recycling-2')
            service3 = Service(title='Devops Consultant', description='Architect, design full pipeline of DevOps from ALM (JIRA | Git) through CI (Jenkins) to CD (Docker | Configuration Management)', icon_class_name='icon icon-Sync-Cloud')

            service.save()
            service2.save()
            service3.save()


class Service(BaseModel):
    objects = ServiceManager()

    title = models.CharField(max_length=250, null=False, blank=False)
    description = models.TextField(null=True, blank=True, default='')
    logo = models.ImageField(null=True, blank=True, upload_to='skill/logo/', default='')
    icon_class_name = models.CharField(max_length=100, null=True, blank=True, default='')

    def __str__(self):
        return self.title
