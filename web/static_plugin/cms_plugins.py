from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from .models import HeaderModel


@plugin_pool.register_plugin
class FooterComponent(CMSPluginBase):
    model = CMSPlugin
    render_template = 'static_plugin/plugin/footer-component.html'
    cache = False,
    allow_children = False

    def render(self, context, instance, placeholder):
        context = super(FooterComponent, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class HeaderComponent(CMSPluginBase):
    model = HeaderModel
    render_template = 'static_plugin/plugin/header-component.html'
    cache = False,
    allow_children = False

    def render(self, context, instance, placeholder):
        context = super(HeaderComponent, self).render(context, instance, placeholder)

        return context
