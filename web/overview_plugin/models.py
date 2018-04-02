from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class Overview(CMSPlugin):
    objects = models.Manager()

    def copy_relations(self, old_instance):
        for overview_item in old_instance.overviewitem_set.all():
            overview_item_object = OverviewItem()

            overview_item_object.overview_id = self
            overview_item_object.title = overview_item.title
            overview_item_object.description = overview_item.description
            overview_item_object.image = overview_item.image

            overview_item_object.save()
            # self.overviewitem_set.add(overview_item)
        pass


class OverviewItem(models.Model):
    object = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    description = models.TextField(null=True, blank=True)
    image = models.ImageField(upload_to='overview/img', null=False, blank=False)

    overview_id = models.ForeignKey(Overview, on_delete=models.CASCADE)

    def __str__(self):
        return self.title