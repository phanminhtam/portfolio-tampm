from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from .models import Project, Tag, MediaAsset, LatestWorkSection


@plugin_pool.register_plugin
class LatestWorkOneSectionComponentPlugin(CMSPluginBase):
    model = LatestWorkSection
    render_template = 'portfolio_app/plugin/latest-work-1.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(LatestWorkOneSectionComponentPlugin, self).render(context, instance, placeholder)

        # get 3 latest project
        project_list = Project.objects.filter(is_published=True, is_homepage_display=True).exclude(top_image='') \
                           .order_by('-created_at')[:4]
        context['project_list'] = project_list

        return context