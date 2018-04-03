from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import Profile, MilestoneItem
from .admin import MilestoneItemInline


@plugin_pool.register_plugin
class ProfileComponentPlugin(CMSPluginBase):
    model = Profile
    render_template = 'profile_plugin/plugin/profile_component.html'
    inlines = [MilestoneItemInline]
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ProfileComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context
