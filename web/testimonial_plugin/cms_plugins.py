from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import Testimonial, TestimonialPlugin
from .admin import TestimonialInline


@plugin_pool.register_plugin
class TestimonialComponentPlugin(CMSPluginBase):
    model = TestimonialPlugin
    render_template = 'testimonial_plugin/plugin/testimonial_component.html'
    inlines = [TestimonialInline]
    cache = False

    def render(self, context, instance, placeholder):
        context = super(TestimonialComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context
