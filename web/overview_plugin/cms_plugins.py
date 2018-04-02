from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import Overview, OverviewItem
from .admin import OverviewItemInline


@plugin_pool.register_plugin
class OverviewComponentPlugin(CMSPluginBase):
    model = Overview
    render_template = 'overview_plugin/plugin/overview_component.html'
    inlines = [OverviewItemInline]
    cache = False

    def render(self, context, instance, placeholder):
        context = super(OverviewComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context
