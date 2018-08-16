from django.db import models

from .base_model import BaseModel


class MessageQuerySet(models.QuerySet):
    pass


class MessageManager(models.Manager):

    def get_query_set(self):
        return MessageQuerySet(self.model, using=self.db)


class Message(BaseModel):
    objects = MessageManager()

    name = models.CharField(max_length=100, null=False, blank=False)
    email_address = models.CharField(max_length=100, null=False, blank=False)
    phone = models.CharField(max_length=50, null=True, blank=True, default='')
    subject = models.CharField(max_length=250, null=True, blank=True, default='')
    message_text = models.TextField(null=True, blank=True, default='')

    def __str__(self):
        subject = self.subject
        if subject == '':
            subject = 'No Subject'
        return '{}: {}'.format(self.name, subject)