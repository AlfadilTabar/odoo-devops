from odoo:14.0

USER root
RUN mkdir /opt/odoo && mkdir /opt/odoo/extra-addons
WORKDIR /opt/odoo

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY extra-addons /opt/odoo/extra-addons
RUN chown -R odoo /opt/odoo
USER odoo

