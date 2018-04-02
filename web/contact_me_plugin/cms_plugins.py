from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import ShortContact, Message


@plugin_pool.register_plugin
class ShortContactComponentPlugin(CMSPluginBase):
    model = ShortContact
    render_template = 'contact_me_plugin/plugin/contact_me_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ShortContactComponentPlugin, self).render(context, instance, placeholder)

        request = context['request']
        if request.method == 'POST':
            message = Message(name=request.POST['name'], email_address=request.POST['email'],
                              message=request.POST['message'])
            message.save()

        return context