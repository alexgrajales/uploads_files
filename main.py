import proccess_aws as paws
import process_files as pf
import const
import settings

def upload_files():
    # print("download data covid")
    # pf.download_files(const.data_covid, const.output_covid)
    # print("save file data temp s3")
    # paws.upload_aws(const.output_covid, settings.bucket, '{}_temp'.format(const.out_name_s3_data_covid), const.name_covid)
    # print("end file data temp s3")
    #
    print("download data uci")
    pf.download_files(const.data_covid_uci_bogota, const.output_data_covid_uci_bogota)
    print("save file data temp s3")
    paws.upload_aws(const.output_data_covid_uci_bogota, settings.bucket, '{}_temp'.format(const.out_name_s3_data_covid_uci_bogota),
                    const.name_covid_uci_bogota)
    print("end file data temp s3")

    # print("download data ciudades")
    # pf.download_files(const.data_ciudades, const.output_data_ciudades)
    # print("save file data temp s3")
    # paws.upload_aws(const.output_data_ciudades, settings.bucket, '{}_temp'.format(const.out_name_s3_data_ciudades),
    #                 const.name_ciudades)
    # print("end file data temp s3")


def main():
    upload_files()


if __name__ == "__main__":
    main()
