from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class TestimonialPlugin(CMSPlugin):
    objects = models.Manager()

    def copy_relations(self, old_instance):
        for testimonial in old_instance.testimonial_set.all():
            testimonial_object = Testimonial()

            testimonial_object.customer_name = testimonial.customer_name
            testimonial_object.content = testimonial.content
            testimonial_object.customer_position = testimonial.customer_position
            testimonial_object.testimonial_plugin_id = self

            testimonial_object.save()
        pass


class Testimonial(models.Model):
    objects = models.Manager()

    customer_name = models.CharField(max_length=100, blank=False, null=False)
    content = models.TextField(null=True, blank=True)
    customer_position = models.CharField(max_length=100, null=True, blank=True)

    testimonial_plugin_id = models.ForeignKey(TestimonialPlugin, on_delete=models.CASCADE)

    def __str__(self):
        return self.customer_name
