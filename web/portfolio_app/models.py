from django.db import models
from django.utils.text import slugify
from djangocms_text_ckeditor.fields import HTMLField
from django.utils.translation import get_language, ugettext_lazy as _
from filer.fields.image import FilerImageField
from aldryn_apphooks_config.fields import AppHookConfigField
from aldryn_apphooks_config.managers import AppHookConfigManager
from cms.models import CMSPlugin, PlaceholderField

MEDIA_TYPE = (
    (1, 'Image'),
    # (2, 'Youtube Embed Video')
)


# Create your models here.
class Tag(CMSPlugin):
    objects = models.Manager()

    name = models.CharField(max_length=100, null=False, blank=False)

    def __str__(self):
        return self.name

    def filter_tag(self):
        filter_tag = self.name.replace(' ', '-')
        filter_tag = filter_tag.replace('.', '-')

        return filter_tag


class Project(CMSPlugin):
    objects = models.Manager()

    slug = models.SlugField(_('slug'), max_length=255, blank=True, db_index=True)

    title = models.CharField(max_length=250, null=True, blank=True)
    sub_title = models.CharField(max_length=250, null=True, blank=True)
    short_description = models.TextField(default='')
    description = HTMLField(_('description'), blank=True, default='')
    skills = models.CharField(max_length=255, null=True, blank=True)
    roles = models.CharField(max_length=255, null=True, blank=True)
    client = models.CharField(max_length=255, null=True, blank=True)
    length = models.CharField(max_length=50, null=True, blank=True)

    demo_url = models.URLField(max_length=255, null=True, blank=True)
    android_demo_url = models.URLField(max_length=500, null=True, blank=True, default='')
    ios_demo_url = models.URLField(max_length=500, null=True, blank=True, default='')
    youtube_embed_url = models.CharField(max_length=255, null=True, blank=True, default='')

    top_image = models.ImageField(upload_to='portfolio/img/top_image/', max_length=500, null=True, blank=True,
                                  default='')
    # published_date = models.DateTimeField(null=True, blank=True)

    # Placeholder property
    use_case = PlaceholderField('use_case')

    is_published = models.BooleanField(null=False, blank=False, default=True)
    is_homepage_display = models.BooleanField(null=False, blank=False, default=True)
    is_list_display = models.BooleanField(null=False, blank=False, default=True)

    tags = models.ManyToManyField(Tag, verbose_name=_('tag'), related_name='project')

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        """
        Handle some auto configuration during save
        """
        # if self.publish and self.date_published is None:
        #     self.date_published = timezone.now()
        if not self.slug and self.title:
            self.slug = slugify(self.title)
        super(Project, self).save(*args, **kwargs)

    def test_function(self):
        return '{}: test'.format(self.title)

    @property
    def sorted_mediaaset_set(self):
        return self.mediaasset_set.order_by('id')


class MediaAsset(models.Model):
    objects = models.Manager()

    name = models.CharField(max_length=100, null=False, blank=False)
    type = models.PositiveSmallIntegerField(choices=MEDIA_TYPE, default=1)
    media_asset = models.ImageField(upload_to='portfolio/img/', default='', null=True, blank=True)
    youtube_url = models.CharField(max_length=255, null=True, blank=True)

    project_id = models.ForeignKey(Project, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


# Extra model for latest works for homepage component
class LatestWorkSection(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=500, null=True, blank=True, default='')
    message = models.TextField(null=True, blank=True, default='')

    def __str__(self):
        return self.title
