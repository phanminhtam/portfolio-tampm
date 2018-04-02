from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class ShortContact(CMSPlugin):
    objects = models.Manager()

    email = models.CharField(max_length=100, null=False, blank=False)
    phone = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return self.email


class Message(CMSPlugin):
    objects = models.Manager()

    name = models.CharField(max_length=100, null=False, blank=False)
    email_address = models.CharField(max_length=100, null=False, blank=False)
    message = models.TextField(null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.name