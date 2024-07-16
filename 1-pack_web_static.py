#!/usr/bin/python3
""" Fabric script that generates .tgz archive from the contents of web_static
    to execute use: fab -f 1-pack_web_static.py do_pack
"""

from datetime import datetime
from fabric.api import local


def do_pack():
    """ Generates .tgz archive from the contents of web_static """

    time = datetime.now()
    archive = 'web_static_' + time.strftime("%Y%m%d%H%M%S") + '.tgz'
    local('mkdir -p versions')
    create = local(f'tar -cvzf versions/{archive} web_static')
    if create is not None:
        return archive
    else:
        return None
