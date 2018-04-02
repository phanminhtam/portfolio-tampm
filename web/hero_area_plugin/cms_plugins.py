from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import HeroArea


@plugin_pool.register_plugin
class HeroAreaComponentPlugin(CMSPluginBase):
    model = HeroArea
    render_template = 'hero_area_plugin/plugin/hero_area_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(HeroAreaComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        context['isHasImageFile'] = True
        print(instance.image_file)
        if instance.image_file is None:
            context['isHasImageFile'] = False
            print('test')

        return context
