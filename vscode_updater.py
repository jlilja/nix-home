#!/bin/env python3

import json
from urllib import request

def get_extensions():
    with open("jonas/desktop/vscodium/extensions.json") as extensions:
        return json.load(extensions)

def get_updates(extensions):
    for extension in extensions:
        name = extension['name']
        publisher = extension['publisher']
        current_version = extension['version']

        req = request.Request('https://marketplace.visualstudio.com/_apis/public/gallery/extensionquery', method='POST')
        req.add_header('Content-Type', 'application/json')
        req.add_header('Accept', 'application/json;api-version=7.2-preview.1;excludeUrls=true')

        data = {
            "assetTypes": None,
            "filters": [
                {
                    "criteria": [
                        {
                            "filterType": 7,
                            "value": "{0}.{1}".format(publisher, name)
                        }
                    ],
                    "direction": 2,
                    "pageSize": 3,
                    "pageNumber": 1,
                    "sortBy": 0,
                    "sortOrder": 0,
                    "pagingToken": None
                }
            ],
            "flags": 2151
        }
        data = json.dumps(data)
        data = data.encode()

        response = request.urlopen(req, data=data)
        payload = json.load(response)

        versions = payload['results'][0]['extensions'][0]['versions']
        get_condensed_version = list(map(lambda i: {
            'publisher': publisher,
            'name': name,
            'versions': {
                'current': current_version,
                'latest': i['version'],
                'update_available': current_version != i['version']
            }
        }, versions))

        print(get_condensed_version[0])


if __name__ == '__main__':
    extensions = get_extensions()
    get_updates(extensions)
