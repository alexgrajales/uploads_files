import const
import urllib3


def download_files(urls, output):
    http = urllib3.PoolManager()
    response = http.request('GET', urls)
    print(response.status)
    print(response.headers)
    data_to_write = response.data
    with open(output, 'wb') as f:
        f.write(data_to_write)
