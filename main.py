import proccess_aws as paws
import process_files as pf
import const
import settings

def upload_files():
    print("download data")
    pf.download_files(const.data_covid, const.output_covid)
    print("save file data temp s3")
    paws.upload_aws(const.output_covid, settings.bucket, 'covid_tmp', 'data_covid.csv')


def main():
    upload_files()


if __name__ == "__main__":
    main()
