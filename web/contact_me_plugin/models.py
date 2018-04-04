from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class ShortContact(CMSPlugin):
    objects = models.Manager()

    email = models.CharField(max_length=100, null=False, blank=False)
    phone = models.CharField(max_length=100, null=True, blank=True)
    working_location = models.CharField(max_length=100, null=True, blank=True, default='Ho Chi Minh, Vietnam')

    def __str__(self):
        return self.email


class Message(CMSPlugin):
    objects = models.Manager()

    name = models.CharField(max_length=100, null=False, blank=False)
    email_address = models.CharField(max_length=100, null=False, blank=False)
    phone = models.CharField(max_length=50, null=True, blank=True, default='')
    subject = models.CharField(max_length=250, null=True, blank=True, default='')
    message = models.TextField(null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        subject = self.subject
        if subject == '':
            subject = 'No Subject'
        return '{}: {}'.format(self.name, subject)