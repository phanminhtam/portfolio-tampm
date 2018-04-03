from cms.app_base import CMSApp
from aldryn_apphooks_config.app_base import CMSConfigApp
from cms.apphook_pool import apphook_pool
from django.utils.translation import ugettext_lazy as _


@apphook_pool.register
class PortfolioApp(CMSApp):
    name = _("Portfolio App")
    urls = ["portfolio_app.urls"]
    app_name = "Portfolio App"

    def get_urls(self, page=None, language=None, **kwargs):
        return ["portfolio_app.urls"]
