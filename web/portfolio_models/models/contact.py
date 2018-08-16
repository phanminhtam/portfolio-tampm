from django.db import models

from .base_model import BaseModel


class ContactQuerySet(models.QuerySet):
    pass


class ContactManager(models.Manager):

    def get_query_set(self):
        return ContactQuerySet(self.model, using=self.db)

    def seed_data(self):
        contacts = Contact.objects.all()

        if contacts.count() == 0:
            contact = Contact(phone='0123456789', place='Ho Chi Minh city', email='phanminhtam1992@gmail.com')

            contact.save()


class Contact(BaseModel):
    objects = ContactManager()

    phone = models.CharField(max_length=100, null=True, blank=True, default='')
    place = models.CharField(max_length=100, null=True, blank=True, default='')
    email = models.CharField(max_length=250, null=True, blank=True, default='')

    def __str__(self):
        return self.place
